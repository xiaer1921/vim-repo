# vim-repo

This is a vim-repo including vim, neovim, zsh, vim-markdown, vim-plug, tmux, taglist, vundle, fzf, youCompleteMe

# Install

After git clone, we need config vim, zsh/bash, tmux
```sh
cp vimrc ~/.vimrc
cp tmux.conf ~/.tmux.conf
cp init.vim ~/.config/nvim/.
cp -r vim ~/.vim
#zsh
cp zshrc ~/.zshrc
#bash
cp bashrc ~/.bashrc
```

you can diff your config and my, then update vim plugin by `:PluginIntall` or `:PluginInstall` in vim editor

# history

- v.1 对本地vim相关配置的整理

- v.2 增加了WManager_Close_On_Select和WManager_GainFocus_On_ToggleOpen实现

    需要了解vim实现的内部逻辑，见[wincmd](https://github.com/yssl/twcmd.vim)

```
WManager_GainFocus_On_ToggleOpen: 打开时光标在winmanager窗口
WManager_Close_On_Select: 在跳转到选择的文件窗口后同时关闭wimmanager窗口
```

- v.3 neovim&zsh&vim-markdown配置

    主要变动如下：

    - neovim配置, 和markdown-preview配合使用，实时预览markdown
    - zsh配置
    - tmux默认开启zsh