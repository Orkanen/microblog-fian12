#!/bin/sh

WORKING_DIR="/home/"
CHILD_A=${CHILD_A:=/home/deps}
CHILD_B=${CHILD_B:=/home/microblog}

cd $CHILD_A
. .venv/bin/activate
cd $CHILD_B

make test
make bandit
