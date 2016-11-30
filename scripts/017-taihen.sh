#!/bin/sh -e
# taihen.sh by Sunguk Lee (d3m3vilurr@gmail.com)

TAIHEN="taihen"

if [ ! -d ${TAIHEN} ]; then

  ## Download the source code.
  git clone https://github.com/yifanlu/taiHEN.git ${TAIHEN}

  cd ${TAIHEN}
  ## Download submodules
  git submodule init
  git submodule update

fi

## Enter the build directory.
mkdir -p build && cd build

## Configure the build.
cmake ..

## Compile and install.
${MAKE:-make} -j4 && ${MAKE:-make} install
