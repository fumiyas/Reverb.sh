#!/bin/bash
# or
#!/bin/sh (library)
#!/bin/ksh (library)
#!/bin/zsh
##
## Reverb.sh: Portable 'echo' command replacement
## Copyright (C) 2013 SATOH Fumiyasu @ OSS Technology Corp., Japan
##               <https://GitHub.com/fumiyas/Reverb.sh>
##               <http://fumiyas.github.io>
##               <http://www.OSSTech.co.jp/>
##
## License: GNU General Public License version 3
##

reverb() {
  if [ X"${1-}" = X"-n" ]; then
    shift
    printf '%s' "$*"
  else
    printf '%s' "$*
"
  fi
}

if [ -n "${BASH_VERSION-}" ] && [ "${BASH_SOURCE[0]##*/}" != Reverb.sh ] ||
   [ X"${zsh_eval_context-}" = X"toplevel" ]; then
  set -u
  if [ X"${0##*/}" != X"reverb" ]; then
    set -- "${0##*/}" "$@"
  fi
  reverb "$@"
  exit $?
fi

return 0

