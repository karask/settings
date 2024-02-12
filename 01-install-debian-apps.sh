#!/bin/bash

echo
echo Install useful and required debian apps
echo 

sudo apt -y install vim wget curl git npm zim htop cmatrix firefox pass pdftk python3-venv okular imagemagick

echo
echo "Note: python3-venv is required by mason, nvim, to install certain python plugins"
echo "Note: npm is also required by nvim"
echo
echo "Note: okular, from kde, is used for the generic viewer v alias."
echo

