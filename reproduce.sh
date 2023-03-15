#NOTE: Simulation datasets
CONFIG='train/configs/GraphMLPMixer/csl.yaml'
nohup python -m train.csl --config $CONFIG device 0 model.gnn_type ResGatedGraphConv &
nohup python -m train.csl --config $CONFIG device 1 model.gnn_type GINEConv          &
nohup python -m train.csl --config $CONFIG device 2 model.gnn_type GCNConv           &
nohup python -m train.csl --config $CONFIG device 3 model.gnn_type TransformerConv   ;

CONFIG='train/configs/GraphMLPMixer/exp.yaml'
nohup python -m train.exp --config $CONFIG device 0 model.gnn_type ResGatedGraphConv &
nohup python -m train.exp --config $CONFIG device 1 model.gnn_type GINEConv          &
nohup python -m train.exp --config $CONFIG device 2 model.gnn_type GCNConv           &
nohup python -m train.exp --config $CONFIG device 3 model.gnn_type TransformerConv   ;

CONFIG='train/configs/GraphMLPMixer/sr25.yaml'
nohup python -m train.sr25 --config $CONFIG device 0 model.gnn_type ResGatedGraphConv &
nohup python -m train.sr25 --config $CONFIG device 1 model.gnn_type GINEConv          &
nohup python -m train.sr25 --config $CONFIG device 2 model.gnn_type GCNConv           &
nohup python -m train.sr25 --config $CONFIG device 3 model.gnn_type TransformerConv   ;

# ${workspaceFolder}/.env


#NOTE: Small real word datasets

# CONFIG='train/configs/GraphMLPMixer/zinc.yaml'
# nohup python -m train.zinc --config $CONFIG device 4 model.gnn_type ResGatedGraphConv &
# nohup python -m train.zinc --config $CONFIG device 5 model.gnn_type GINEConv          &
# nohup python -m train.zinc --config $CONFIG device 6 model.gnn_type GCNConv           &
# nohup python -m train.zinc --config $CONFIG device 7 model.gnn_type TransformerConv   ;

# CONFIG='train/configs/GraphMLPMixer/moltox21.yaml'
# nohup python -m train.moltox21 --config $CONFIG device 0 model.gnn_type ResGatedGraphConv &
# nohup python -m train.moltox21 --config $CONFIG device 1 model.gnn_type GINEConv          &
# nohup python -m train.moltox21 --config $CONFIG device 2 model.gnn_type GCNConv           &
# nohup python -m train.moltox21 --config $CONFIG device 3 model.gnn_type TransformerConv   ;

# CONFIG='train/configs/GraphMLPMixer/mnist.yaml'
# nohup python -m train.mnist --config $CONFIG device 0 model.gnn_type ResGatedGraphConv &
# nohup python -m train.mnist --config $CONFIG device 1 model.gnn_type GINEConv          &
# nohup python -m train.mnist --config $CONFIG device 2 model.gnn_type GCNConv           &
# nohup python -m train.mnist --config $CONFIG device 3 model.gnn_type TransformerConv   &

# CONFIG='train/configs/GraphMLPMixer/cifar10.yaml'
# nohup python -m train.cifar10 --config $CONFIG device 4 model.gnn_type ResGatedGraphConv &
# nohup python -m train.cifar10 --config $CONFIG device 5 model.gnn_type GINEConv          &
# nohup python -m train.cifar10 --config $CONFIG device 6 model.gnn_type GCNConv           &
# nohup python -m train.cifar10 --config $CONFIG device 7 model.gnn_type TransformerConv   ;




# NOTE: Large real-world datasets

# CONFIG='train/configs/GraphMLPMixer/peptides_func.yaml'
# nohup python -m train.peptides_func --config $CONFIG device 0 model.gnn_type ResGatedGraphConv &
# nohup python -m train.peptides_func --config $CONFIG device 1 model.gnn_type GINEConv          &
# nohup python -m train.peptides_func --config $CONFIG device 2 model.gnn_type GCNConv           &
# nohup python -m train.peptides_func --config $CONFIG device 3 model.gnn_type TransformerConv   &

# CONFIG='train/configs/GraphMLPMixer/peptides_struct.yaml'
# nohup python -m train.peptides_struct --config $CONFIG device 4 model.gnn_type ResGatedGraphConv &
# nohup python -m train.peptides_struct --config $CONFIG device 5 model.gnn_type GINEConv          &
# nohup python -m train.peptides_struct --config $CONFIG device 6 model.gnn_type GCNConv           &
# nohup python -m train.peptides_struct --config $CONFIG device 7 model.gnn_type TransformerConv   ;

# CONFIG='train/configs/GraphMLPMixer/tree_neighbour.yaml'
# DEPTH=2
# nohup python -m train.tree_neighbour --config $CONFIG depth $DEPTH metis.n_patches 8 train.dropout 0.5 device 4 model.gnn_type GATConv           &
# nohup python -m train.tree_neighbour --config $CONFIG depth $DEPTH metis.n_patches 8 train.dropout 0.5 device 5 model.gnn_type GINEConv          &
# nohup python -m train.tree_neighbour --config $CONFIG depth $DEPTH metis.n_patches 8 train.dropout 0.5 device 6 model.gnn_type GCNConv           &
# nohup python -m train.tree_neighbour --config $CONFIG depth $DEPTH metis.n_patches 8 train.dropout 0.5 device 7 model.gnn_type GatedGraphConv    ;

# for DEPTH in 3 4 5 6 7 8
# do
#   NLAYER_GNN=$(($DEPTH+1))
#   nohup python -m train.tree_neighbour --config $CONFIG model.nlayer_gnn $NLAYER_GNN device 4 model.gnn_type GATConv           &
#   nohup python -m train.tree_neighbour --config $CONFIG model.nlayer_gnn $NLAYER_GNN device 5 model.gnn_type GINEConv          &
#   nohup python -m train.tree_neighbour --config $CONFIG model.nlayer_gnn $NLAYER_GNN device 6 model.gnn_type GCNConv           &
#   nohup python -m train.tree_neighbour --config $CONFIG model.nlayer_gnn $NLAYER_GNN device 7 model.gnn_type GatedGraphConv    ;
# done