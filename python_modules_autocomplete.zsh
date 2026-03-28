_python_argcomplete_setup() {
  if [[ -n "$VIRTUAL_ENV" && -z "$_ARGCOMPLETE_INITIALIZED" ]]; then
    for mod in $python_modules; do
      if command -v "$mod" &>/dev/null; then
        eval "$(register-python-argcomplete "$mod")"
      fi
    done
    export _ARGCOMPLETE_INITIALIZED=1
  fi
}

autoload -Uz add-zsh-hook
add-zsh-hook precmd _python_argcomplete_setup
