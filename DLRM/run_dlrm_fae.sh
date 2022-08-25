python dlrm_fae.py 	--arch-sparse-feature-size=16 \
						--arch-mlp-bot="13-512-256-64-16" \
						--arch-mlp-top="512-256-1" \
						--data-generation=dataset \
						--data-set=kaggle \
						--raw-data-file=/data/scratch/criteo_accelerate/input/train.txt \
						--processed-data-file=/data/scratch/criteo_accelerate/input/kaggleAdDisplayChallenge_processed.npz \
						--train-hot-file=/data/scratch/criteo_accelerate/kaggle_hot_cold/train_hot.npz \
						--train-normal-file=/data/scratch/criteo_accelerate/kaggle_hot_cold/train_normal.npz \
						--hot-emb-dict-file=/data/scratch/criteo_accelerate/kaggle_hot_cold/hot_emb_dict.npz \
						--loss-function=bce \
						--round-targets=True \
						--mini-batch-size=1024 \
						--print-freq=4096 \
						--print-time