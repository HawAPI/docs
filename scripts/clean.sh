#!/usr/bin/env bash

echo
echo "${blue}Script: ${green}$0"
echo

rm -rf .downloads/
rm -rf build/

## Move 'index.md' and 'index.yaml' to a tmp directory
mkdir tmp/
mv SDK\'s/index.md tmp/
mv SDK\'s/index.yaml tmp/

## Remove 'SDK's' and all files.
rm -rf SDK\'s/*

## Move all files from tmp to 'SDK's'
mv tmp/* SDK\'s/

rm -rf tmp/