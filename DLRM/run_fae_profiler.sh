#!/bin/bash

# Copyright (c) Facebook, Inc. and its affiliates.
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.

tbsm_py="python dlrm_input_profiler.py"

$tbsm_py  --arch-sparse-feature-size=16 \
			--arch-mlp-top="13-512-256-64-16" \
			--arch-mlp-bot="512-256-1" \
			--data-generation=dataset \
			--data-set=kaggle \
			--raw-data-file=/data/scratch/criteo_accelerate/input/train.txt \
			--processed-data-file=/data/scratch/criteo_accelerate/input/kaggleAdDisplayChallenge_processed.npz \
			--mini-batch-size=1024 \
			--hot-emb-gpu-mem=268435456 \
			--ip-sampling-rate=5
