WANDB_DISABLED=0 accelerate launch src/train.py \
	--stage sft \
	--model_name_or_path /root/model/Yi-1.5-9B-Chat \
	--output_dir /root/adapter/Aris-Yi-1.5-9B-Chat-Agent-16K-20240517 \
	--overwrite_output_dir \
	--dataset aris_identity,aris_instruct_glm4,aris_alpaca_deepseek,glaive_toolcall,aris_toolcall,ruozhiba_gpt4t,aris_code_qa_en,aris_code_qa_zh,aris_sharegpt_zh \
	--template aris \
	--per_device_train_batch_size 1 \
	--gradient_accumulation_steps 8 \
	--lr_scheduler_type cosine \
	--logging_steps 25 \
	--save_steps 500 \
	--optim adamw_torch \
	--learning_rate 1e-4 \
	--num_train_epochs 2 \
	--save_total_limit 1 \
	--finetuning_type lora \
	--quantization_bit 4 \
	--warmup_ratio 0.1 \
	--lora_rank 128 \
	--lora_alpha 32 \
	--lora_target all \
	--lora_dropout 0.06 \
	--neftune_noise_alpha 10 \
	--fp16 \
	--cutoff_len 16384 \
	--rope_scaling linear \
	--use_fast_tokenizer True \
	--preprocessing_num_workers 16 \
	--report_to wandb \
	--do_train
