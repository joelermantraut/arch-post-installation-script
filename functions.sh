#!/bin/bash

GREEN='\033[0;32m'
NC='\033[0m' # No Color

printf_c () {
    printf "${GREEN}"
    printf "\n ---------------------------------------------------\n"
    printf "    $1\n"
    printf " ---------------------------------------------------\n\n"
    printf "${NC}"    
}
