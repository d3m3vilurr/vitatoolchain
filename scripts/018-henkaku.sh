#!/bin/sh -e
# taihen.sh by Sunguk Lee (d3m3vilurr@gmail.com)

HENKAKU="henkaku"

if [ ! -d ${HENKAKU} ]; then

  ## Download the source code.
  git clone https://github.com/henkaku/henkaku.git ${HENKAKU}

fi

## Enter the build directory.
cd ${HENKAKU}

## Build rops
bash build.sh sample.config.in

## Build plugins
mkdir -p plugin/build && cd plugin/build
cmake ..

## Compile and install.
${MAKE:-make} -j4
cd henkaku-libs && ${MAKE:-make} install
