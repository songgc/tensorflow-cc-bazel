#!/usr/bin/env bash

cat dep.WORKSPACE <(cat third-party/tensorflow/WORKSPACE | \
    sed 's|build_file = "|build_file = "third-party/tensorflow/|g') \
    > ./WORKSPACE

echo "WORKSPACE is generated."
