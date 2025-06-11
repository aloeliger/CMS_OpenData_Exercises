# CMS Open Data Anomaly Detection Exercises

These exercises are designed to be as light on requirements as possible. In general, if you have a linux system with python on it, and a way to look at a Jupyter notebook, you should be able to run these exercises.

I have provided a quick setup script, `setup.sh`.
It will make a python virtual environment, and install several necessary packages. Do not run it more than once.
If you haven't used a virtual environment before, it can be activated (in bash) with `source cms_opendata_exercises_env/bin/activate` and deactivated via `deactivate`.
Any packages installed in a virtual environment will only affect that virtual environment.
The script should leave you in it by default, but if you need to get back in, just activate it again.

The exercises are in jupyter notebooks. If you are `ssh`'d into a machine, I recommend you use port forwarding via:
```
ssh -L <random 4 digit number>:localhost:<the same random 4 digit number> <you>@<hosting machine>
```

And starting the jupyter notebook like so:
```
jupyter notebook --no-browser --port <the same random 4 digit number as before>
```

Jupyter should provide you a local host link you can go to. Open that on your machine, the port forwarding should allow you to access the notebook on the remote machine.

### data file creation
I have included several basic converter scripts here designed to be used alongside Snakemake. If for any reason, you need to recreate the files in `data/`, you will need to be on an XRootD capable machine/account. The files can be created via a simple snakemake command (but may take some time). The ROOT files can be removed later.

### Note:

All exercises here are done with 2016 CMS open data. [See the CERN open data portal for more information](https://opendata.cern.ch/)

In particular, I use:
- `/eos/opendata/cms/derived-data/PFNano/29-Feb-24/ZeroBias/Run2016G-UL2016_MiniAODv2_PFNanoAODv1/`
- `/eos/opendata/cms/derived-data/PFNano/29-Feb-24/JetHT/Run2016G-UL2016_MiniAODv2_PFNanoAODv1/`
- `/eos/opendata/cms/mc/RunIISummer20UL16NanoAODv9/TTJets_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/`
- `/eospublic.cern.ch//eos/opendata/cms/mc/RunIISummer20UL16NanoAODv9/GluGluToRadionToHHTo2B2ZTo2L2J_M-500_narrow_TuneCP5_PSWeights_13TeV-madgraph-pythia8/NANOAODSIM/`
- `/eos/opendata/cms/mc/RunIISummer20UL16NanoAODv9/QCD_Pt-5to10_TuneCP5_Flat2018_13TeV_pythia8/NANOAODSIM/`
