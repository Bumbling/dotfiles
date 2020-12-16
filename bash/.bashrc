# if not running interactively, do nothing
case $- in
    *i*) ;;
    *) return;;
esac

# execute every file in ./b.d/ that has a .bash suffix
[[ $- != *i* ]] && return
for f in $(find $HOME/.b.d -type f -name *.bash | sort); do . $f; done

# if .bashrc.priv exists, run it
[[ -f ~/.bashrc.priv ]] && . ~/.bashrc.priv
