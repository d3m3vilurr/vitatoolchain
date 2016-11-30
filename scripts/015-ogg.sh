#!/bin/sh -e
# ogg.sh by Sunguk Lee (d3m3vilurr@gmail.com)

OGG="ogg"

if [ ! -d ${OGG} ]; then

  ## Download the source code.
  git clone https://github.com/xiph/ogg.git ${OGG}

fi

## Enter the build directory.
cd ${OGG}

## Configure the build.
./autogen.sh
./configure --host=arm-vita-eabi \
    --prefix=${VITASDK}/arm-vita-eabi

## Compile and install.
${MAKE:-make} -j4 && ${MAKE:-make} install
