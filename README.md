# vim-repo

#including vim, tmux, taglist, lookup, fzf , ag, comman-t, youCompleteMe

#Add following in ~/.bashrc

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

#First exe tar -zxvf bundle.tar.gz

#Add default fzf default path and search preview window color
export FZF_DEFAULT_COMMAND='find /mnt/new-QN3950'
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --preview '(highlight -O ansi {} || cat {}) 2> /dev/null | head -500'"
