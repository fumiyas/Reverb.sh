#!/bin/bash

set -u

print() {
  printf '%s\n' "$*"
}

assert_eq() {
  if [ X"$2" = X"$3" ]; then
    print "$1: OK"
  else
    print "$1: NG: Fail: [$2] != [$3]"
  fi
}

rm -f reverb
ln -s ./Reverb.sh reverb

for sh in dash bash ksh zsh; do
  assert_eq "$sh: Load Reverb.sh" \
    "`"$sh" -c ". ./Reverb.sh" "$sh" dummy 2>&1`" \
    '' \
  ;
done

for sh in bash zsh; do
  assert_eq "$sh: Run reverb" \
    "`"$sh" "./reverb"; echo X`" \
    '
X'
  assert_eq "$sh: Run reverb -n" \
    "`"$sh" "./reverb" -n; echo X`" \
    'X'
  assert_eq "$sh: Run reverb foo bar" \
    "`"$sh" "./reverb" foo bar; echo X`" \
    'foo bar
X'
  assert_eq "$sh: Run reverb -n foo bar" \
    "`"$sh" "./reverb" -n foo bar; echo X`" \
    'foo barX'
done

