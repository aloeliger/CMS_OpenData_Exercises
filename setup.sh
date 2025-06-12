#!/usr/bin/env bash

echo "Making python environment..."
python3 -m venv cms_opendata_exercises_env
source cms_opendata_exercises_env/bin/activate
python3 -m pip install -r requirements.txt

echo "Setting up data files..."
tar -xzvf data/basic_files.tar.gz data/basic_files
tar -xzvf data/intermediate_files.tar.gz data/intermediate_files
tar -xzvf data/advanced_files.tar.gz data/advanced_files

echo "Done!"
