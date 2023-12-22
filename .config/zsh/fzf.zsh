# FZF 默认命令设置
export FZF_DEFAULT_COMMAND='fd --hidden --follow -E ".git" -E "node_modules" . /home /etc'
# 使用 fd 命令作为默认的 FZF 搜索命令，排除了一些目录，提供了更快速和更精确的搜索。

export FZF_COMPLETIONS_TRIGGER='\'
# 设置 FZF 的补全触发符号为 `\`，意味着你可能需要在命令行中键入 `\` 才能触发补全。

export FZF_DEFAULT_OPTS='--height 90% --layout=reverse --preview "bat --style=numbers --color=always {}"'
# 设置 FZF 的默认选项，比如窗口高度、布局方式和预览命令。

zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# 通过 Zsh 的样式设置，定义在命令补全时列表颜色的展示方式，使用了 LS_COLORS 变量。
zstyle ':fzf-tab:*' continuous-trigger '/'
zstyle ':fzf-tab:complete:*:*' fzf-preview 'bat --color=always --style=numbers --line-range :500 $realpath'
# 使用 Zsh 的样式设置来定义在 fzf-tab 中触发连续搜索的方式，并且定义了在补全时预览命令的展示方式。
