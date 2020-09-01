#!/bin/sh

VENVDIR=$HOME/.venvs
VENV=$VENVDIR/bokeh_samples

if [ ! -d $VENV ]; then
  mkdir -p $VENVDIR
  python3 -m venv $VENV
fi

source $VENV/bin/activate
pip install --upgrade pip
pip install --requirement requirements.txt --quiet

jupyter lab
