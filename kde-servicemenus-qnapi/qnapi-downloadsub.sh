#!/bin/bash

while [ $# -gt 0 ]; do
    VIDEO=$1
    qnapi -c "$VIDEO"
    shift
done
