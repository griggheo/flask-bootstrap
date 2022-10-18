#!/bin/bash

set -e

# create venv
export VIRTUAL_ENV=./venv
python3 -m venv $VIRTUAL_ENV
export PATH="$VIRTUAL_ENV/bin:$PATH"

# this will use the pip in the venv
pip3 install -r requirements.txt
pip3 install -e .

# remove pip because it has a disputed "will not fix" CVE: CVE-2018-20225
#rm -rf $VIRTUAL_ENV/lib/python3.10/site-packages/pip*
