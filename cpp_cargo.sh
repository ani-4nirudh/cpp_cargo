#!/usr/bin/bash

set -eou pipefail

# TODO: Change this location if the repo download path is different
TEMPLATE_DIR="${HOME}/coding/cpp_scaffolding/files"
BASE_DIR="$(pwd)"

# Define colors
GREEN="\033[0;32m"
BLUE="\033[0;34m"
YELLOW="\033[1;33m"
RED="\033[0;31m"
NC="\033[0m"

echo -e "${GREEN}INFO: Executing script from the following path: ${BASE_DIR}${NC}"

# Check if the name of the project is given as an argument
if [[ $# -ne 1 ]]; then
  echo -e "${RED}ERROR: Incorrect number of arguments!${NC}"
  echo -e "${RED}   Usage: $(basename "$0") <project_name> \n${NC}"
  exit 1
fi

PROJECT_NAME="$1"
CPP_DIR="${BASE_DIR}/${PROJECT_NAME}"

# Checking if the directory exists
if [[ -e ${CPP_DIR} ]]; then
  echo -e "${RED}ERROR: Refusing to overwrite existing path!${NC}"
  echo -e "   ${CPP_DIR}"
  exit 1
fi

# Checking if the scaffold dir exists
if [[ ! -d ${TEMPLATE_DIR} ]]; then
  echo -e "${RED}ERROR: Template directory does not exist!\n${NC}"
  echo -e "   ${TEMPLATE_DIR}"
  exit 1
fi

# Creating the directory
echo -e "${GREEN}INFO: Creating directory at ${CPP_DIR}${NC}"
echo -e "   ${CPP_DIR}\n"
mkdir -p "${CPP_DIR}"

echo -e "${GREEN}INFO: Copying files for the project ...!${NC}"
cp -av "${TEMPLATE_DIR}/." "${CPP_DIR}/"

echo -e "${GREEN}\nINFO: Copied files successfully!${NC}"
