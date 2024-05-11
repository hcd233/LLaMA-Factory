python ./scripts/quantize/autoawq.py \
--model_path ../../model/Qwen1.5-4B-Chat \
--quant_path ../../model/Qwen1.5-4B-gptq-4bit-Chat \
--calib_data ../../dataset/pileval \
--split ../evaluation