#!/bin/bash


# Go into correct folder
cd ~/Projects/bachelor-thesis/thesis

# Create the build directory
mkdir build

# Copy all relevant files to build directory
cp template/KITreprt.cls build/
cp -a src/. build/
cp -a img/. build/

# Build pdf
cd build
pdflatex thesis
bibtex thesis
pdflatex thesis
pdflatex thesis

# Copy pdf to root folder
cp thesis.pdf ../thesis.pdf
