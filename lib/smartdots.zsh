#!/usr/bin/env bash

# Quick change directories
# Expands .... -> ../../../
#
# Author: BruceAko, github.com/BruceAko
# License: MIT
# https://github.com/BruceAko/dotfiles

smartdots() {
  if [[ $LBUFFER = *.. ]]; then
    LBUFFER+=/..
  else
    LBUFFER+=.
  fi
}
zle -N smartdots
bindkey . smartdots
