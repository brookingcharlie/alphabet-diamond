#!/usr/bin/env bash

case "$1" in
  test)
    runghc Shokunin_tests.hs
    ;;
  build)
    if [ ! -x "$(which ghc)" ] ; then
      brew install ghc
    fi
    ghc -O2 main.hs
    ;;
  run)
    shift
    time ./main "$@"
    ;;
  *)
    echo "Usage"
    echo "./go test"
    echo "./go build"
    echo "./go run <letter>"
    ;;
esac
