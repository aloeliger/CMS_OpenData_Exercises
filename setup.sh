#!/usr/bin/env bash

echo "Making python environment..."
python3 -m venv cms_opendata_exercises_env
source cms_opendata_exercises_env/bin/activate
python3 -m pip install -r requirements.txt

echo "Setting up data files..."
tar -xzvf data/basic_files.tar.gz --directory data/
tar -xzvf data/intermediate_files.tar.gz --directory data/intermediate_files
tar -xzvf data/advanced_files.tar.gz --directory data/advanced_files
tar -xzvf data/graph_files.tar.gz --directory data/graph_files

echo "Done!"
