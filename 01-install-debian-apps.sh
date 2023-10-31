#!/bin/bash

echo
echo Install useful and required debian apps
echo 

sudo apt -y install wget curl git npm zim cmatrix firefox pass pdftk python3-venv 

echo
echo Note: python3-venv is required by mason (nvim) to install certain python plugins
echo

