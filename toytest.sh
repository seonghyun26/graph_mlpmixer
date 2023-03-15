CONFIG='train/configs/GraphMLPMixer/zinc.yaml'
nohup python -m train.zinc --config $CONFIG device 3 model.gnn_type ResGatedGraphConv;