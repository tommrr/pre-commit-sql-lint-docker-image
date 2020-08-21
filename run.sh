#! /bin/bash

cd /src

shopt -s globstar

for f in **/*.sql; do  
    sqlint $f
done