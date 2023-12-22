# Conda 初始化和相关设置
# 这里放置与 Conda 相关的初始化代码
__conda_setup="$('/home/free/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/free/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/free/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/free/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
