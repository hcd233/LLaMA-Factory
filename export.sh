WANDB_DISABLED=0 CUDA_VISIBLE_DEVICES= python src/export_model.py \
--model_name_or_path ../../model/Qwen1.5-MoE-A2.7B \
--adapter_name_or_path ./adapters/Qwen1.5-MoE-A2.7B-Chat-Func-20240411/ \
--template default \
--export_dir ./models/Qwen1.5-MoE-A2.7B-Chat-Func-20240411 \
--export_size 5