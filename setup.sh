#!/usr/bin/env bash

python3 -m venv cms_opendata_exercises_env
source cms_opendata_exercises_env/bin/activate
python3 -m pip install -r requirements.txt

tar -xcvf data/basic_files.tar.gz data/basic_files
tar -xcvf data/intermediate_files.tar.gz data/intermediate_files
tar -xcvf data/advanced_files.tar.gz data/advanced_files
