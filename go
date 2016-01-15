#!/usr/bin/env bash

case "$1" in
  build)
    if [ ! -x "$(which ghc)" ] ; then
      brew install ghc
    fi
    ghc -O3 shokunin.hs
    ;;
  run)
    shift
    time ./shokunin "$@"
    ;;
  *)
    echo "Usage"
    echo "./go build"
    echo "./go run <letter>"
    ;;
esac
