# # NOTE: Simulation datasets
# CONFIG='train/configs/GraphMLPMixer/csl.yaml'
# nohup python -m train.csl --config $CONFIG device 0 model.gnn_type ResGatedGraphConv model.nlayer_gnn 2 &
# nohup python -m train.csl --config $CONFIG device 1 model.gnn_type GINEConv          model.nlayer_gnn 2 &
# nohup python -m train.csl --config $CONFIG device 2 model.gnn_type GCNConv           model.nlayer_gnn 2 &
# nohup python -m train.csl --config $CONFIG device 3 model.gnn_type TransformerConv   model.nlayer_gnn 2 ;

# nohup python -m train.csl --config $CONFIG device 0 model.gnn_type ResGatedGraphConv model.nlayer_gnn 8 &
# nohup python -m train.csl --config $CONFIG device 1 model.gnn_type GINEConv          model.nlayer_gnn 8 &
# nohup python -m train.csl --config $CONFIG device 2 model.gnn_type GCNConv           model.nlayer_gnn 8 &
# nohup python -m train.csl --config $CONFIG device 3 model.gnn_type TransformerConv   model.nlayer_gnn 8 ;

# CONFIG='train/configs/GraphMLPMixer/exp.yaml'
# nohup python -m train.exp --config $CONFIG device 0 model.gnn_type ResGatedGraphConv model.nlayer_gnn 2 &
# nohup python -m train.exp --config $CONFIG device 1 model.gnn_type GINEConv          model.nlayer_gnn 2 &
# nohup python -m train.exp --config $CONFIG device 2 model.gnn_type GCNConv           model.nlayer_gnn 2 &
# nohup python -m train.exp --config $CONFIG device 3 model.gnn_type TransformerConv   model.nlayer_gnn 2 ;

# nohup python -m train.exp --config $CONFIG device 0 model.gnn_type ResGatedGraphConv model.nlayer_gnn 8 &
# nohup python -m train.exp --config $CONFIG device 1 model.gnn_type GINEConv          model.nlayer_gnn 8 &
# nohup python -m train.exp --config $CONFIG device 2 model.gnn_type GCNConv           model.nlayer_gnn 8 &
# nohup python -m train.exp --config $CONFIG device 3 model.gnn_type TransformerConv   model.nlayer_gnn 8 ;



# #NOTE: Small real word datasets

# CONFIG='train/configs/GraphMLPMixer/zinc.yaml'
# nohup python -m train.zinc --config $CONFIG device 0 model.gnn_type ResGatedGraphConv model.nlayer_gnn 2 &
# nohup python -m train.zinc --config $CONFIG device 1 model.gnn_type GINEConv          model.nlayer_gnn 2 &
# nohup python -m train.zinc --config $CONFIG device 2 model.gnn_type GCNConv           model.nlayer_gnn 2 &
# nohup python -m train.zinc --config $CONFIG device 3 model.gnn_type TransformerConv   model.nlayer_gnn 2 ;

# nohup python -m train.zinc --config $CONFIG device 0 model.gnn_type ResGatedGraphConv model.nlayer_gnn 8 &
# nohup python -m train.zinc --config $CONFIG device 1 model.gnn_type GINEConv          model.nlayer_gnn 8 &
# nohup python -m train.zinc --config $CONFIG device 2 model.gnn_type GCNConv           model.nlayer_gnn 8 &
# nohup python -m train.zinc --config $CONFIG device 3 model.gnn_type TransformerConv   model.nlayer_gnn 8 ;

# CONFIG='train/configs/GraphMLPMixer/moltox21.yaml'
# nohup python -m train.moltox21 --config $CONFIG device 0 model.gnn_type ResGatedGraphConv model.nlayer_gnn 2 &
# nohup python -m train.moltox21 --config $CONFIG device 1 model.gnn_type GINEConv          model.nlayer_gnn 2 &
# nohup python -m train.moltox21 --config $CONFIG device 2 model.gnn_type GCNConv           model.nlayer_gnn 2 &
# nohup python -m train.moltox21 --config $CONFIG device 3 model.gnn_type TransformerConv   model.nlayer_gnn 2 ;

# nohup python -m train.moltox21 --config $CONFIG device 0 model.gnn_type ResGatedGraphConv model.nlayer_gnn 8 &
# nohup python -m train.moltox21 --config $CONFIG device 1 model.gnn_type GINEConv          model.nlayer_gnn 8 &
# nohup python -m train.moltox21 --config $CONFIG device 2 model.gnn_type GCNConv           model.nlayer_gnn 8 &
# nohup python -m train.moltox21 --config $CONFIG device 3 model.gnn_type TransformerConv   model.nlayer_gnn 8 ;

# # CONFIG='train/configs/GraphMLPMixer/molhiv.yaml'
# # nohup python -m train.molhiv --config $CONFIG device 0 model.gnn_type ResGatedGraphConv &
# # nohup python -m train.molhiv --config $CONFIG device 1 model.gnn_type GINEConv          &
# # nohup python -m train.molhiv --config $CONFIG device 2 model.gnn_type GCNConv           &
# # nohup python -m train.molhiv --config $CONFIG device 3 model.gnn_type TransformerConv   ;


# # NOTE: Large real-world datasets

# CONFIG='train/configs/GraphMLPMixer/peptides_func.yaml'
# nohup python -m train.peptides_func --config $CONFIG device 0 model.gnn_type ResGatedGraphConv model.nlayer_gnn 2 &
# nohup python -m train.peptides_func --config $CONFIG device 1 model.gnn_type GINEConv          model.nlayer_gnn 2 &
# nohup python -m train.peptides_func --config $CONFIG device 2 model.gnn_type GCNConv           model.nlayer_gnn 2 &
# nohup python -m train.peptides_func --config $CONFIG device 3 model.gnn_type TransformerConv   model.nlayer_gnn 2 ;

# nohup python -m train.peptides_func --config $CONFIG device 0 model.gnn_type ResGatedGraphConv model.nlayer_gnn 8 &
# nohup python -m train.peptides_func --config $CONFIG device 1 model.gnn_type GINEConv          model.nlayer_gnn 8 &
# nohup python -m train.peptides_func --config $CONFIG device 2 model.gnn_type GCNConv           model.nlayer_gnn 8 &
# nohup python -m train.peptides_func --config $CONFIG device 3 model.gnn_type TransformerConv   model.nlayer_gnn 8 ;

# CONFIG='train/configs/GraphMLPMixer/peptides_struct.yaml'
# nohup python -m train.peptides_struct --config $CONFIG device 0 model.gnn_type ResGatedGraphConv model.nlayer_gnn 2 &
# nohup python -m train.peptides_struct --config $CONFIG device 1 model.gnn_type GINEConv          model.nlayer_gnn 2 &
# nohup python -m train.peptides_struct --config $CONFIG device 2 model.gnn_type GCNConv           model.nlayer_gnn 2 &
# nohup python -m train.peptides_struct --config $CONFIG device 3 model.gnn_type TransformerConv   model.nlayer_gnn 2 ;

# nohup python -m train.peptides_struct --config $CONFIG device 0 model.gnn_type ResGatedGraphConv model.nlayer_gnn 8 &
# nohup python -m train.peptides_struct --config $CONFIG device 1 model.gnn_type GINEConv          model.nlayer_gnn 8 &
# nohup python -m train.peptides_struct --config $CONFIG device 2 model.gnn_type GCNConv           model.nlayer_gnn 8 &
# nohup python -m train.peptides_struct --config $CONFIG device 3 model.gnn_type TransformerConv   model.nlayer_gnn 8 ;



# CONFIG='train/configs/GraphMLPMixer/mnist.yaml'
# nohup python -m train.mnist --config $CONFIG device 0 model.gnn_type ResGatedGraphConv model.nlayer_gnn 2 &
# nohup python -m train.mnist --config $CONFIG device 1 model.gnn_type GINEConv          model.nlayer_gnn 2 &
# nohup python -m train.mnist --config $CONFIG device 2 model.gnn_type GCNConv           model.nlayer_gnn 2 &
# nohup python -m train.mnist --config $CONFIG device 3 model.gnn_type TransformerConv   model.nlayer_gnn 2 ;

# nohup python -m train.mnist --config $CONFIG device 0 model.gnn_type ResGatedGraphConv model.nlayer_gnn 8 &
# nohup python -m train.mnist --config $CONFIG device 1 model.gnn_type GINEConv          model.nlayer_gnn 8 &
# nohup python -m train.mnist --config $CONFIG device 2 model.gnn_type GCNConv           model.nlayer_gnn 8 &
# nohup python -m train.mnist --config $CONFIG device 3 model.gnn_type TransformerConv   model.nlayer_gnn 8 ;


CONFIG='train/configs/GraphMLPMixer/cifar10.yaml'
# nohup python -m train.cifar10 --config $CONFIG device 0 model.gnn_type ResGatedGraphConv model.nlayer_gnn 2 &
# nohup python -m train.cifar10 --config $CONFIG device 1 model.gnn_type GINEConv          model.nlayer_gnn 2 &
# nohup python -m train.cifar10 --config $CONFIG device 2 model.gnn_type GCNConv           model.nlayer_gnn 2 &
# nohup python -m train.cifar10 --config $CONFIG device 3 model.gnn_type TransformerConv   model.nlayer_gnn 2 ;

# nohup python -m train.cifar10 --config $CONFIG device 0 model.gnn_type ResGatedGraphConv model.nlayer_gnn 8 &
# nohup python -m train.cifar10 --config $CONFIG device 1 model.gnn_type GINEConv          model.nlayer_gnn 8 &
# nohup python -m train.cifar10 --config $CONFIG device 2 model.gnn_type GCNConv           model.nlayer_gnn 8 &
# nohup python -m train.cifar10 --config $CONFIG device 3 model.gnn_type TransformerConv   model.nlayer_gnn 8 ;

nohup python -m train.cifar10 --config $CONFIG device 0 model.gnn_type GINEConv          model.nlayer_gnn 2 seed 35 &
nohup python -m train.cifar10 --config $CONFIG device 1 model.gnn_type GINEConv          model.nlayer_gnn 2 seed 95 &
nohup python -m train.cifar10 --config $CONFIG device 2 model.gnn_type GINEConv          model.nlayer_gnn 2 seed 41 &
nohup python -m train.cifar10 --config $CONFIG device 3 model.gnn_type GINEConv          model.nlayer_gnn 2 seed 12 ;

nohup python -m train.cifar10 --config $CONFIG device 0 model.gnn_type GINEConv          model.nlayer_gnn 8 seed 35 &
nohup python -m train.cifar10 --config $CONFIG device 1 model.gnn_type GINEConv          model.nlayer_gnn 8 seed 95 &
nohup python -m train.cifar10 --config $CONFIG device 2 model.gnn_type GINEConv          model.nlayer_gnn 8 seed 41 &
nohup python -m train.cifar10 --config $CONFIG device 3 model.gnn_type GINEConv          model.nlayer_gnn 8 seed 12 ;