PYTHONPATH=. torchrun examples/pytorch/stable_diffusion/lora/finetune_stable_diffusion_lora.py \
    --model 'AI-ModelScope/stable-diffusion-v1-5' \
    --model_revision 'v1.0.9' \
    --prompt "a dog" \
    --work_dir './tmp/lora_diffusion' \
    --train_dataset_name 'buptwq/lora-stable-diffusion-finetune' \
    --max_epochs 100 \
    --lora_rank 4 \
    --save_ckpt_strategy 'by_epoch' \
    --logging_interval 1 \
    --train.dataloader.workers_per_gpu 0 \
    --evaluation.dataloader.workers_per_gpu 0 \
    --train.optimizer.lr 1e-4 \
    --use_model_config true
