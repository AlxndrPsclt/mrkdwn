#!/usr/bin/env bash

lowdown -s $1 | cat index.1.html.template - index.2.html.template > index.html 

