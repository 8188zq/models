set -aux

BATCH_SIZE=32
EPOCH=10
LEARNING_RATE=1e-5
PRETRAIN_DIR="./roberta_pretrain_oneflow/roberta-base"
KWARGS_PATH="./roberta_pretrain_oneflow/roberta-base/roberta-base.json"
SAVE_DIR="./pretrain_model_SST-2"

if [ ! -d "SAVE_DIR" ]; then
    mkdir $SAVE_DIR
fi

python3 train_flow.py \
    --batch_size $BATCH_SIZE \
    --n_epochs $EPOCH \
    --lr $LEARNING_RATE \
    --pretrain_dir $PRETRAIN_DIR\
    --kwargs_path $KWARGS_PATH\
    --model_save_dir $SAVE_DIR  