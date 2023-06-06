#!/bin/bash

commit_message=${1:-"code debug"}  # 如果没有传入参数，默认使用 'code debug' 作为提交信息
current_branch=$(git rev-parse --abbrev-ref HEAD)  # 获取当前的分支
echo "Current branch: $current_branch"

# 检查是否存在Git仓库
if ! git rev-parse --is-inside-work-tree > /dev/null 2>&1; then
    echo "Not inside a Git repository. Please initialize Git first."
    exit 1
fi

# 执行Git同步操作
git add .
git commit -m "$commit_message"
git push origin "$current_branch"

echo "Git synchronization to branch $current_branch completed."
