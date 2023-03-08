CONFIG='train/configs/GraphMLPMixer/zinc.yaml'
# nohup python -m train.zinc --config $CONFIG device 0 model.gnn_type ResGatedGraphConv &
# nohup python -m train.zinc --config $CONFIG device 1 model.gnn_type GINEConv          &
# nohup python -m train.zinc --config $CONFIG device 2 model.gnn_type GCNConv           &
# nohup python -m train.zinc --config $CONFIG device 3 model.gnn_type TransformerConv   ;

# python -m train.zinc --config train/configs/GraphMLPMixer/zinc.yaml device 0 model.gnn_type ResGatedGraphConv
# python -m train.zinc --config train/configs/GraphMLPMixer/zinc.yaml device 1 model.gnn_type GINEConv
# python -m train.zinc --config train/configs/GraphMLPMixer/zinc.yaml device 2 model.gnn_type GCNConv
# python -m train.zinc --config train/configs/GraphMLPMixer/zinc.yaml device 3 model.gnn_type TransformerConv
