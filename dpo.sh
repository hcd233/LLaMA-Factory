WANDB_DISABLED=0 accelerate launch src/train.py \
	--stage dpo \
	--model_name_or_path /root/model/Qwen1.5-14B-Chat \
	--output_dir /root/adapter/Aris-Qwen1.5-14B-Chat-Agent-dpo-8K-20240516 \
	--overwrite_output_dir \
	--dataset aris_alpaca_dpo \
	--template aris \
	--per_device_train_batch_size 1 \
	--gradient_accumulation_steps 8 \
	--lr_scheduler_type cosine \
	--logging_steps 10 \
	--save_steps 200 \
	--optim adamw_torch \
	--learning_rate 1e-4 \
	--num_train_epochs 2 \
	--save_total_limit 1 \
	--finetuning_type lora \
	--quantization_bit 4 \
	--warmup_ratio 0.1 \
	--lora_rank 32 \
	--lora_alpha 16 \
	--lora_target all \
	--lora_dropout 0.10 \
	--neftune_noise_alpha 10 \
	--fp16 \
	--cutoff_len 8192 \
	--rope_scaling linear \
	--use_fast_tokenizer True \
	--preprocessing_num_workers 16 \
	--report_to wandb \
	--do_train
