#!/usr/bin/env bash

red=$(tput setaf 1)
green=$(tput setaf 2)
blue=$(tput setaf 4)
cyan=$(tput setaf 6)

git_raw=https://raw.githubusercontent.com
readme_path=/main/README.md
repositories=(
    https://github.com/HawAPI/js-sdk
    https://github.com/HawAPI/java-sdk
)

clean_before=true
skip_sdks=false

# Check args
for arg in "$@"
do
    case $arg in
       "-S"|"--skip-sdks")
          skip_sdks=true
          ;;
       "-B"|"--clean-before")
          clean_before=false
          ;;
        "--help")
          echo "${blue}Usage: ${green}$0 [option...]" >&2
          echo
          echo "   ${cyan}-S, --skip-sdks           ${green}Skip download of 'sdks'"
          echo "   ${cyan}-B, --clean-before           ${green}Remove 'build/' before build"
          echo "   ${cyan}-D, --clean-downloads        ${green}Remove '.downloads/' before build"
          echo
          exit 0
          ;;
    esac
done

echo
echo "${blue}Script: ${green}$0"
echo

## Install requisites
yarn install
yarn add retypeapp --dev

# Clean

## Remove 'build/' before build
if $clean_before; then
    echo "${cyan}[$0] ${green}Removing 'build/' folder..."
    rm -rf build/
fi

## Get 'sdks'
if ! $skip_sdks; then
    ./scripts/get-sdks.sh --clean-downloads
fi

# Build
yarn retype build

# Update website colors
node scripts/js/update-colors.mjs