CONFIG='train/configs/GraphMLPMixer/moltox21.yaml'
python -m train.moltox21 --config $CONFIG device 4 model.gnn_type GCNConv