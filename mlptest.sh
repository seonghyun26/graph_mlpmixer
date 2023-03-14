# CONFIG='train/configs/GraphMLPMixer/zinc.yaml'
# python -m train.zinc --config $CONFIG device 4 model.gnn_type ResGatedGraphConv
# python -m train.zinc --config $CONFIG device 5 model.gnn_type GINEConv
# python -m train.zinc --config $CONFIG device 6 model.gnn_type GCNConv
# python -m train.zinc --config $CONFIG device 7 model.gnn_type TransformerConv


#NOTE: Small real word datasets
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


# NOTE: Peptides
# CONFIG='train/configs/GraphMLPMixer/peptides_func.yaml'
# nohup python -m train.peptides_func --config $CONFIG device 0 model.gnn_type ResGatedGraphConv &
# nohup python -m train.peptides_func --config $CONFIG device 1 model.gnn_type GINEConv          &
# nohup python -m train.peptides_func --config $CONFIG device 2 model.gnn_type GCNConv           &
# nohup python -m train.peptides_func --config $CONFIG device 3 model.gnn_type TransformerConv   &

# CONFIG='train/configs/GraphMLPMixer/moltox21.yaml'
# nohup python -m train.moltox21 --config $CONFIG device 4 model.gnn_type ResGatedGraphConv &
# nohup python -m train.moltox21 --config $CONFIG device 5 model.gnn_type GINEConv          &
# nohup python -m train.moltox21 --config $CONFIG device 6 model.gnn_type GCNConv           &
# nohup python -m train.moltox21 --config $CONFIG device 7 model.gnn_type TransformerConv   ;