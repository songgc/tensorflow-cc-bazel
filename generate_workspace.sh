#!/usr/bin/env bash

cat dep.WORKSPACE third-party/tensorflow/WORKSPACE > ./WORKSPACE

sed -i 's|build_file = "|build_file = "third-party/tensorflow/|g' WORKSPACE

echo "WORKSPACE is generated."
