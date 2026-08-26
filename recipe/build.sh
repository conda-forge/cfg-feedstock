#!/usr/bin/env bash

set -ex

# configure
meson \
  setup \
  ${MESON_ARGS} \
  --backend=ninja \
  ./_build \
  ${SRC_DIR}

# build
ninja -C ./_build -j ${CPU_COUNT} -v

# install
ninja -C ./_build -j ${CPU_COUNT} -v install
