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

# Check args

for arg in "$@"
do
    case $arg in
       "-B"|"--clean-before")
          clean_before=false
          ;;
        "--help")
          echo "${blue}Usage: ${green}$0 [option...]" >&2
          echo
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

## Check requisites
if ! type retype; then
    echo "${cyan}[$0] ${red}<retype> command not found!"
    exit 1
fi

# Clean

## Remove 'build/' before build
if $clean_before; then
    echo "${cyan}[$0] ${green}Removing 'build/' folder..."
    rm -rf build/
fi


./scripts/get-sdks.sh --clean-downloads

# Build

retype build