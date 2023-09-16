#!/bin/bash

git config credential.helper '!f() { printf "%s\n" "username=karask" "password=$(pass show github/current)"; };f'
