#!/usr/bin/env bash

red=$(tput setaf 1)
green=$(tput setaf 2)
blue=$(tput setaf 4)
cyan=$(tput setaf 6)

git_raw=https://raw.githubusercontent.com
readme_path=/main/README.md
repositories=(
    /HawAPI/js-sdk
    /HawAPI/java-sdk
)

clean_downloads=false

# Check args
for arg in "$@"
do
    case $arg in
       "-D"|"--clean-downloads")
          clean_downloads=true
          ;;
        "--help")
          echo "${blue}Usage: ${green}$0 [option...]" >&2
          echo
          echo "   ${cyan}-D, --clean-downloads        ${green}Remove '.downloads/' before build"
          echo
          exit 0
          ;;
    esac
done

echo
echo "${blue}Script: ${green}$0"
echo

# Clean

## Remove '.downloads/' before build
if $clean_downloads; then
    echo "${cyan}[$0] ${green}Removing '.downloads/' folder..."
    rm -rf .downloads/
fi

# Setup

## Check if '.downloads/' already exist. If not, download all readme files.
if [ -d ".downloads/" ]; then
    ##
    echo "${cyan}[$0] ${red}Found '.downloads/' directory!"
    echo "${cyan}[$0] ${green}Remove current '.downloads/' files? (Y/n)"
    read -n1 -s -r yarn_response
    
    if ! echo "$yarn_response" | grep '^[Yy]\?$'; then
        exit 0
    fi

    rm -rf .downloads/
fi

## Download all readme files.
echo "${cyan}[$0] ${green}Directory '.downloads/' not found!"
echo
mkdir -p .downloads/

for repo in "${repositories[@]}"; do
    echo "${cyan}[$0] ${green}Downloading: '$git_raw$repo$readme_path'..."
    wget "$git_raw$repo$readme_path" -q --show-progress -O ".downloads/${repo##*/}.md"
done

## Copy all files inside '.downloads/' to 'SDK's/'
for file in .downloads/*.md; do
    echo "${cyan}[$0] ${green}Copying: '$file' to 'SDK's/'..."
    cp --remove-destination "$file" "SDK's/${file##*/}"
done