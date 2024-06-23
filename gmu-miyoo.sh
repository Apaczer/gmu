#!/bin/sh
cd "$(dirname "$0")" || exit
if ! test -e firstrun; then
    SDL_NOMOUSE=1 LD_LIBRARY_PATH=$(pwd)/libs.miyoo/ ./gmu.bin -c gmu.miyoo.conf
    touch firstrun
else
    SDL_NOMOUSE=1 LD_LIBRARY_PATH=$(pwd)/libs.miyoo/ ./gmu.bin
fi
