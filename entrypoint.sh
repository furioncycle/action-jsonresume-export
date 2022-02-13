#!/bin/sh -l

THEME=${1}
RESUME=${2}
OUTPUT=${3}
PDF=${4}

THEME_PACKAGE=jsonresume-theme-${THEME}
echo "Installing theme: ${THEME}"

# NOTE: this needs to be installed locally, not globally
npm install ${THEME_PACKAGE}

echo "Exporting PDF..."
resume export --resume ${RESUME} --theme ${THEME} --format pdf ${PDF}

echo "Exporting HTML..."
resume export --resume ${RESUME} --theme ${THEME} --format html ${OUTPUT}
