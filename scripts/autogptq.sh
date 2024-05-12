python ./scripts/autogptq.py \
--model_path ../../model/Qwen1.5-4B-Chat \
--quant_path ../../model/Qwen1.5-4B-gptq-4bit-Chat \
--alpaca_dataset ../../dataset/alpaca_zh/alpaca_gpt4_data_zh.json \
--batch_size 4 \
--num_samples 5000