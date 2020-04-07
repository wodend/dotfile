# Include `.bashrc` if running Bash.
if [ -n "$BASH_VERSION" ]; then
  if [ -f "${HOME}/.bashrc" ]; then
    . "${HOME}/.bashrc"
  fi
fi

# Include private bin if it exists.
if [ -d "${HOME}/.local/bin" ] ; then
 PATH="${HOME}/.local/bin:${PATH}"
fi

if systemctl -q is-active graphical.target \
  && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi
