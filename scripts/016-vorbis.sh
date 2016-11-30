#!/bin/sh -e
# vorbis.sh by Sunguk Lee (d3m3vilurr@gmail.com)

VORBIS="vorbis"

if [ ! -d ${VORBIS} ]; then

  ## Download the source code.
  git clone https://github.com/xiph/vorbis.git ${VORBIS}

fi

## Enter the build directory.
cd ${VORBIS}

## Configure the build.
./autogen.sh
./configure --host=arm-vita-eabi \
    --prefix=${VITASDK}/arm-vita-eabi

## Compile and install.
${MAKE:-make} -j4 && ${MAKE:-make} install
