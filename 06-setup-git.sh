#!/bin/bash

# setup git
git config --global user.email "kkarasavvas@gmail.com"

git config --global credential.helper cache
git config --global credential.username "karask"

# set credential.helper per repo (maybe automate it?)
#$ git config credential.helper '!f() { printf "%s\n" "username=karask" "password=$(pass show github/current)"; };f'

