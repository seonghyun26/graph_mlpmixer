#!/bin/bash

CONFIG='train/configs/GraphMLPMixer/zinc.yaml'
nohup python -m train.zinc --config $CONFIG device 4 model.gnn_type GCNConv