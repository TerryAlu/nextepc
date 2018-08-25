#!/bin/bash

GITHUB_URL="https://github.com/TerryAlu/nextepc"
BRANCH="tac_select"

cd $HOME
git clone $GITHUB_URL
cd nextepc
git checkout $BRANCH
autoreconf -iv
./configure --prefix=`pwd`/install
make -j `nproc`
make install
