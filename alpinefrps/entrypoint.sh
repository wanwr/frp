#!/bin/bash

configs=("/data/frps"*.toml)

# 检查是否有配置文件
if [ ${#configs[@]} -eq 1 ] && [ ! -f "${configs[0]}" ]; then
    echo "未找到任何 frps 配置文件"
    exit 1
fi

# 并行启动所有实例
for config in "${configs[@]}"; do
    # 检查文件是否存在
    if [ -f "$config" ]; then
        echo "启动 frps 实例: $config"
        /data/frps -c "$config" &
    fi
done

wait

echo "所有 frps 实例已启动"