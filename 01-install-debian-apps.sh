#!/bin/bash

echo
echo Install useful and required debian apps
echo 

sudo apt install wget curl git npm zim cmatrix firefox

# check if we should install packages that require adding apt sources or else are difficult using
# nix packager !!! -- e.g. brave-browser !

