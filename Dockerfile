FROM runpod/worker-comfyui:5.4.0-base

#update comfyui
RUN comfy install && comfy node update all

# Download models directly with wget (more memory efficient)
RUN wget -O models/diffusion_models/qwen_image_edit_fp8_e4m3fn.safetensors \
    "https://huggingface.co/Comfy-Org/Qwen-Image-Edit_ComfyUI/resolve/main/split_files/diffusion_models/qwen_image_edit_fp8_e4m3fn.safetensors" && \
    wget -O models/loras/Qwen-Image-Lightning-4steps-V1.0.safetensors \
    "https://huggingface.co/lightx2v/Qwen-Image-Lightning/resolve/main/Qwen-Image-Lightning-4steps-V1.0.safetensors" && \
    wget -O models/text_encoders/qwen_2.5_vl_7b_fp8_scaled.safetensors \
    "https://huggingface.co/Comfy-Org/Qwen-Image_ComfyUI/resolve/main/split_files/text_encoders/qwen_2.5_vl_7b_fp8_scaled.safetensors" && \
    wget -O models/vae/qwen_image_vae.safetensors \
    "https://huggingface.co/Comfy-Org/Qwen-Image_ComfyUI/resolve/main/split_files/vae/qwen_image_vae.safetensors"