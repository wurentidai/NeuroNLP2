#!/usr/bin/env bash
CUDA_VISIBLE_DEVICES=2 python examples/NER.py --mode LSTM --num_epochs 200 --batch_size 16 --hidden_size 256 --num_filters 30 \
 --learning_rate 0.1 --decay_rate 0.05 --schedule 5 --gamma 0.0 --dropout std --p 0.5 \
 --embedding sskip --embedding_dict "data/sskip/sskip.ger.64.gz" \
 --train "data/conll2003/german/ger.train.bioes.conll" --dev "data/conll2003/german/ger.dev.bioes.conll" --test "data/conll2003/german/ger.test.bioes.conll" 
