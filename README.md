# vim-repo

This is a vim-repo including vim, neovim, zsh, vim-markdown, vim-plug, tmux, taglist, vundle, fzf, youCompleteMe

# Install

After git clone, we need config vim, zsh/bash, tmux
```sh
cp vim-conf/vimrc ~/.vimrc
cp -r vim-conf/vim ~/.vim
cp -r tmux-conf/tmux.conf ~/.tmux.conf
cp neovim/init.vim ~/.config/nvim/.
#zsh
cp sh-config/zshrc ~/.zshrc
#bash
cp sh-config/bashrc ~/.bashrc

#Vundle git clone to runtime patch
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#plug-vim
cp vim-conf/vim-plug/plug.vim  /usr/share/nvim/runtime/autoload/.
```

you can diff your config and my, then update vim plugin in vim editor

```

:source %
:PluginInstall
:PlugInstall

```

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

- V3.3 调整文件树

- V3.4 安装neovim, tmux rename窗口之后固定窗口名，不随着当前路径改变
