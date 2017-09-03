#!/bin/bash

git clone https://github.com/IBM-Swift/Package-Builder.git
./Package-Builder/build-package.sh -projectDir $(pwd)
