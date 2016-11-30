#!/bin/sh -e
# onigmo.sh by Sunguk Lee (d3m3vilurr@gmail.com)

ONIGMO="onigmo"

if [ ! -d ${ONIGMO} ]; then

  ## Download the source code.
  git clone https://github.com/k-takata/Onigmo.git ${ONIGMO}

fi

## Enter the build directory.
cd ${ONIGMO}

## Configure the build.
./configure --host=arm-vita-eabi \
    --prefix=${VITASDK}/arm-vita-eabi

## Compile and install.
${MAKE:-make} -j4 && ${MAKE:-make} install
