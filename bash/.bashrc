# execute every file in ./b.d/ that has a .bash suffix
[[ $- != *i* ]] && return

for f in $(find ~/.b.d/ -type f -name *.bash | sort); do . $f; done

# if .bashrc.priv exists, run it
[[ -f ~/.bashrc.priv ]] && . ~/.bashrc.priv
