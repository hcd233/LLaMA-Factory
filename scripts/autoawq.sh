python ./scripts/quantize/autoawq.py \
--model_path ../../model/Qwen1.5-4B-Chat \
--quant_path ../../model/Qwen1.5-4B-gptq-4bit-Chat \
--dataset_path ../data/aris_alpaca_deepseek_34k_zh.json \
--text_column output \
--max_steps 10000