[[ $- != *i* ]] && return
for f in $(find $HOME/.bashrc.d -type f -name *.bash | sort); do . $f; done
[[ -f ~/.bashrc.priv ]] && . ~/.bashrc.priv