# vim-repo

#create by chejian. email:xiaer1921@aliyun.com 

#including vim, tmux, taglist, bundle,fzf, ag, youCompleteMe


#First step is to exe: tar -zxvf bundle.tar.gz

#Add following in ~/.bashrc
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

#Add default fzf default path and search preview window color in ~/.bashrc
export FZF_DEFAULT_COMMAND='find /mnt/new-QN3950'
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --preview '(highlight -O ansi {} || cat {}) 2> /dev/null | head -500'"



#v.1
1.对.vimrc进行了整理
2.增加了WManager_Close_On_Select和WManager_GainFocus_On_ToggleOpen实现
WManager_GainFocus_On_ToggleOpen: 打开时光标在winmanager窗口
WManager_Close_On_Select: 在跳转到选择的文件窗口后同时关闭wimmanager窗口
