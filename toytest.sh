#!/bin/bash

CONFIG='train/configs/GraphMLPMixer/zinc.yaml'
# python -m train.zinc --config train/configs/GraphMLPMixer/zinc.yaml device 3 model.gnn_type GCNConv wandb "False" model.nlayer_gnn 1
nohup python -m train.zinc --config $CONFIG device 0 model.gnn_type ResGatedGraphConv &
nohup python -m train.zinc --config $CONFIG device 1 model.gnn_type GINEConv          &
nohup python -m train.zinc --config $CONFIG device 2 model.gnn_type GCNConv           &
nohup python -m train.zinc --config $CONFIG device 3 model.gnn_type TransformerConv   ;


# CONFIG='train/configs/GraphMLPMixer/peptides_struct.yaml'
# nohup python -m train.peptides_struct --config $CONFIG device 0 model.gnn_type ResGatedGraphConv &
# nohup python -m train.peptides_struct --config $CONFIG device 1 model.gnn_type GINEConv          &
# nohup python -m train.peptides_struct --config $CONFIG device 2 model.gnn_type GCNConv           &
# nohup python -m train.peptides_struct --config $CONFIG device 3 model.gnn_type TransformerConv   ;
