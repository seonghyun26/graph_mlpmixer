import torch
import torch.nn as nn
from einops.layers.torch import Rearrange


BN = True


class FeedForward(nn.Module):
    def __init__(self, dim, hidden_dim, dropout=0.):
        super().__init__()
        self.net = nn.Sequential(
            nn.Dropout(dropout),
            nn.Linear(dim, hidden_dim),
            nn.GELU(),
            nn.Dropout(dropout),
            nn.Linear(hidden_dim, dim)
        )

    def forward(self, x):
        return self.net(x)


class MixerBlock(nn.Module):
        # dim = hidden dimension, num_patch = number of patches, token_dim = hidden dime * 4
    def __init__(self, dim, num_patch, token_dim, channel_dim, dropout=0.):
        super().__init__()
        # batch size, num of patch, dim
        self.token_mix = nn.Sequential(
            nn.LayerNorm(dim),
            Rearrange('b n d -> b d n'),
            FeedForward(num_patch, token_dim, dropout),
            Rearrange('b d n -> b n d')
        )
        self.channel_mix = nn.Sequential(
            nn.LayerNorm(dim),
            FeedForward(dim, channel_dim, dropout),
        )
        self.channel_mix_share = nn.Sequential(
            nn.LayerNorm(dim),
            FeedForward(dim, channel_dim, dropout),
        )

    def forward(self, x, coarsen_adj):
        # a_x.shape [120, 32, 128]
        # x.shape [120, 32, 128]
        a_x = torch.matmul(coarsen_adj, x) if coarsen_adj is not None else x
        # NOTE: ORIGINAL
        # x = x + self.token_mix(a_x)
        # x = x + self.channel_mix(x)
        
        # NOTE: Sharing token mixers among tokens
        x = x + self.token_mix(a_x)
        tokens = x.chunk(32, 1)
        tokens = [self.channel_mix_share(token.squeeze()) for token in tokens]
        tokens = x + torch.stack(tokens, dim=1)
        x = tokens
        
        # NOTE: Channel Mix Only
        # x = x + self.channel_mix(a_x)
        
        return x


class MLPMixer(nn.Module):
    def __init__(self,
                 nlayer,
                 nhid,
                 n_patches,
                 with_final_norm=True,
                 dropout=0):
        super().__init__()
        self.n_patches = n_patches
        self.with_final_norm = with_final_norm
        
        # mixer blocks
        # NOTE: Original
        self.mixer_blocks = nn.ModuleList(
            [MixerBlock(nhid, self.n_patches, nhid*4, nhid//2, dropout=dropout) for _ in range(nlayer)])
        # NOTE: Original
        
        # NOTE: New
        # self.channel_mix = nn.Sequential(
        #     nn.LayerNorm(nhid),
        #     FeedForward(nhid, nhid//2, dropout),
        # )
        # self.mixer_blocks = nn.ModuleList(
        #     [MixerBlock(nhid, self.n_patches, nhid*4, nhid//2, self.channel_mix, dropout=dropout) for _ in range(nlayer)]
        # )
        # NOTE: New
        
        if self.with_final_norm:
            self.layer_norm = nn.LayerNorm(nhid)

    def forward(self, x, coarsen_adj=None):
        for mixer_block in self.mixer_blocks:
            x = mixer_block(x, coarsen_adj)
        if self.with_final_norm:
            x = self.layer_norm(x)
        return x
