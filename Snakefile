rule all:
   input:
      "data/basic_files/ZeroBiasBasicData.h5",
      "data/basic_files/JetHTBasicData.h5",
      "data/basic_files/TTBarBasicData.h5",
      "data/basic_files/RadionBasicData.h5",
      "data/basic_files/SoftQCDBasicData.h5",
      "data/intermediate_files/ZeroBiasIntermediateData.h5",
      "data/intermediate_files/JetHTIntermediateData.h5",
      "data/intermediate_files/TTBarIntermediateData.h5",
      "data/intermediate_files/RadionIntermediateData.h5",
      "data/intermediate_files/SoftQCDIntermediateData.h5",
      "data/advanced_files/ZeroBiasAdvancedData.h5",
      "data/advanced_files/JetHTAdvancedData.h5",
      "data/advanced_files/TTBarAdvancedData.h5",
      "data/advanced_files/RadionAdvancedData.h5",
      "data/advanced_files/SoftQCDAdvancedData.h5",

rule clean:
   shell:
      "rm nano_data2016_1-1.root ;"
      "rm nano_data2016_1-2.root ;"
      "rm nano_data2016_10.root ;"
      "rm jet_nano_data2016_1-1.root ;"
      "rm jet_nano_data2016_1-10.root ;"
      "rm jet_nano_data2016_1-5.root ;"
      "rm ttbar_nano_1.root ;"
      "rm ttbar_nano_1.root ;"
      "rm ttbar_nano_3.root ;"
      "rm radion_nano.root"


rule download_zerobias_data:
   output:
      "nano_data2016_1-1.root",
      "nano_data2016_1-2.root",
      "nano_data2016_10.root"
   shell:
      "xrdcp root://eospublic.cern.ch//eos/opendata/cms/derived-data/PFNano/29-Feb-24/ZeroBias/Run2016G-UL2016_MiniAODv2_PFNanoAODv1/240212_182529/0000/nano_data2016_1-1.root ./ && "
      "xrdcp root://eospublic.cern.ch//eos/opendata/cms/derived-data/PFNano/29-Feb-24/ZeroBias/Run2016G-UL2016_MiniAODv2_PFNanoAODv1/240212_182529/0000/nano_data2016_1-2.root ./ && "
      "xrdcp root://eospublic.cern.ch//eos/opendata/cms/derived-data/PFNano/29-Feb-24/ZeroBias/Run2016G-UL2016_MiniAODv2_PFNanoAODv1/240212_182529/0000/nano_data2016_10.root ./"

rule download_single_jet_data:
   output:
      "jet_nano_data2016_1-1.root",
      "jet_nano_data2016_1-10.root",
      "jet_nano_data2016_1-5.root"
   shell:
      "xrdcp root://eospublic.cern.ch//eos/opendata/cms/derived-data/PFNano/29-Feb-24/JetHT/Run2016G-UL2016_MiniAODv2_PFNanoAODv1/240218_191008/0000/nano_data2016_1-1.root ./jet_nano_data2016_1-1.root &&"
      "xrdcp root://eospublic.cern.ch//eos/opendata/cms/derived-data/PFNano/29-Feb-24/JetHT/Run2016G-UL2016_MiniAODv2_PFNanoAODv1/240218_191008/0000/nano_data2016_1-10.root ./jet_nano_data2016_1-10.root &&"
      "xrdcp root://eospublic.cern.ch//eos/opendata/cms/derived-data/PFNano/29-Feb-24/JetHT/Run2016G-UL2016_MiniAODv2_PFNanoAODv1/240218_191008/0000/nano_data2016_1-5.root ./jet_nano_data2016_1-5.root"

rule download_ttbar:
   output:
      "ttbar_nano_1.root",
      "ttbar_nano_2.root",
      "ttbar_nano_3.root"
   shell:
      "xrdcp root://eospublic.cern.ch//eos/opendata/cms/mc/RunIISummer20UL16NanoAODv9/TTJets_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mcRun2_asymptotic_v17-v1/2530000/017A2287-1E4D-FA48-AD73-84AFE4F10AD9.root ./ttbar_nano_1.root && "
      "xrdcp root://eospublic.cern.ch//eos/opendata/cms/mc/RunIISummer20UL16NanoAODv9/TTJets_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mcRun2_asymptotic_v17-v1/2530000/03EA0B10-8223-E74F-8617-54CC89C97C06.root ./ttbar_nano_2.root && "
      "xrdcp root://eospublic.cern.ch//eos/opendata/cms/mc/RunIISummer20UL16NanoAODv9/TTJets_TuneCP5_13TeV-amcatnloFXFX-pythia8/NANOAODSIM/106X_mcRun2_asymptotic_v17-v1/2530000/3F1553BC-B5BA-C743-9343-E3AABA0CE785.root ./ttbar_nano_3.root"

rule download_radion_dataset:
   output:
      "radion_nano.root"
   shell:
      "xrdcp root://eospublic.cern.ch//eos/opendata/cms/mc/RunIISummer20UL16NanoAODv9/GluGluToRadionToHHTo2B2ZTo2L2J_M-500_narrow_TuneCP5_PSWeights_13TeV-madgraph-pythia8/NANOAODSIM/106X_mcRun2_asymptotic_v17-v1/40000/7B99F4DA-E634-3F41-8395-ABDC7EE73A52.root ./radion_nano.root"

rule download_soft_qcd:
   output:
      "QCD_pt_5_10_nano_1.root",
      "QCD_pt_5_10_nano_2.root",
      "QCD_pt_10_15_nano_1.root",
      "QCD_pt_10_15_nano_2.root"
   shell:
      "xrdcp root://eospublic.cern.ch//eos/opendata/cms/mc/RunIISummer20UL16NanoAODv9/QCD_Pt-5to10_TuneCP5_Flat2018_13TeV_pythia8/NANOAODSIM/106X_mcRun2_asymptotic_v17-v1/2430000/3953B20B-F0B5-8448-AC0C-8490DD5BA431.root ./QCD_pt_5_10_nano_1.root &&"
      "xrdcp root://eospublic.cern.ch//eos/opendata/cms/mc/RunIISummer20UL16NanoAODv9/QCD_Pt-5to10_TuneCP5_Flat2018_13TeV_pythia8/NANOAODSIM/106X_mcRun2_asymptotic_v17-v1/2430000/83594ED5-8E77-124C-81DF-5B306952F966.root ./QCD_pt_5_10_nano_2.root &&"
      "xrdcp root://eospublic.cern.ch//eos/opendata/cms/mc/RunIISummer20UL16NanoAODv9/QCD_Pt-10to15_TuneCP5_Flat2018_13TeV_pythia8/NANOAODSIM/106X_mcRun2_asymptotic_v17-v1/2430000/88694319-C117-8749-8B92-E90F228261ED.root ./QCD_pt_10_15_nano_1.root &&"
      "xrdcp root://eospublic.cern.ch//eos/opendata/cms/mc/RunIISummer20UL16NanoAODv9/QCD_Pt-10to15_TuneCP5_Flat2018_13TeV_pythia8/NANOAODSIM/106X_mcRun2_asymptotic_v17-v1/2430000/911FEDBB-B242-F74E-8C63-036407AB9B70.root ./QCD_pt_10_15_nano_2.root"

rule zerobias_to_basic:
   input:
      "nano_data2016_1-1.root",
      "nano_data2016_1-2.root",
      "nano_data2016_10.root",
   output:
      "data/basic_files/ZeroBiasBasicData.h5"
   shell:
      "python3 convert_nano_to_basic_file.py data/basic_files/ ZeroBiasBasicData.h5 nano_data2016_1-1.root nano_data2016_1-2.root nano_data2016_10.root"
	
rule jetht_to_basic:
   input:
      "jet_nano_data2016_1-1.root",
      "jet_nano_data2016_1-10.root",
      "jet_nano_data2016_1-5.root"
   output:
      "data/basic_files/JetHTBasicData.h5"
   shell:
      "python3 convert_nano_to_basic_file.py data/basic_files/ JetHTBasicData.h5 jet_nano_data2016_1-1.root jet_nano_data2016_1-10.root jet_nano_data2016_1-5.root"

rule ttbar_to_basic:
   input:
      "ttbar_nano_1.root",
      "ttbar_nano_2.root",
      "ttbar_nano_3.root",
   output:
      "data/basic_files/TTBarBasicData.h5"
   shell:
      "python3 convert_nano_to_basic_file.py data/basic_files/ TTBarBasicData.h5 ttbar_nano_1.root ttbar_nano_2.root ttbar_nano_3.root"

rule radion_to_basic:
   input:
      "radion_nano.root"
   output:
      "data/basic_files/RadionBasicData.h5"
   shell:
      "python3 convert_nano_to_basic_file.py data/basic_files/ RadionBasicData.h5 radion_nano.root"

rule softqcd_to_basic:
   input:
      "QCD_pt_5_10_nano_1.root",
      "QCD_pt_5_10_nano_2.root",
      "QCD_pt_10_15_nano_1.root",
      "QCD_pt_10_15_nano_2.root"
   output:
      "data/basic_files/SoftQCDBasicData.h5"
   shell:
      "python3 convert_nano_to_basic_file.py data/basic_files/ SoftQCDBasicData.h5 QCD_pt_5_10_nano_1.root QCD_pt_5_10_nano_2.root QCD_pt_10_15_nano_1.root QCD_pt_10_15_nano_2.root"

#
# Intermediate h5's
#

rule zerobias_to_intermediate:
   input:
      "nano_data2016_1-1.root",
      "nano_data2016_1-2.root",
      "nano_data2016_10.root",
   output:
      "data/intermediate_files/ZeroBiasIntermediateData.h5"
   shell:
      "python3 convert_nano_to_intermediate_file.py data/intermediate_files/ ZeroBiasIntermediateData.h5 nano_data2016_1-1.root nano_data2016_1-2.root nano_data2016_10.root --limit_events=100000"
	

rule jetht_to_intermediate:
   input:
      "jet_nano_data2016_1-1.root",
      "jet_nano_data2016_1-10.root",
      "jet_nano_data2016_1-5.root"
   output:
      "data/intermediate_files/JetHTIntermediateData.h5"
   shell:
      "python3 convert_nano_to_intermediate_file.py data/intermediate_files/ JetHTIntermediateData.h5 jet_nano_data2016_1-1.root jet_nano_data2016_1-10.root jet_nano_data2016_1-5.root --limit_events=100000"

rule ttbar_to_intermediate:
   input:
      "ttbar_nano_1.root",
      "ttbar_nano_2.root",
      "ttbar_nano_3.root",
   output:
      "data/intermediate_files/TTBarIntermediateData.h5"
   shell:
      "python3 convert_nano_to_intermediate_file.py data/intermediate_files/ TTBarIntermediateData.h5 ttbar_nano_1.root ttbar_nano_2.root ttbar_nano_3.root --limit_events=100000"

rule radion_to_intermediate:
   input:
      "radion_nano.root"
   output:
      "data/intermediate_files/RadionIntermediateData.h5"
   shell:
      "python3 convert_nano_to_intermediate_file.py data/intermediate_files/ RadionIntermediateData.h5 radion_nano.root --limit_events=100000"

rule softqcd_to_intermediate:
   input:
      "QCD_pt_5_10_nano_1.root",
      "QCD_pt_5_10_nano_2.root",
      "QCD_pt_10_15_nano_1.root",
      "QCD_pt_10_15_nano_2.root"
   output:
      "data/intermediate_files/SoftQCDIntermediateData.h5"
   shell:
      "python3 convert_nano_to_intermediate_file.py data/intermediate_files/ SoftQCDIntermediateData.h5 QCD_pt_5_10_nano_1.root QCD_pt_5_10_nano_2.root QCD_pt_10_15_nano_1.root QCD_pt_10_15_nano_2.root --limit_events=100000"

#
# Advanced h5s
#

rule zerobias_to_advanced:
   input:
      "nano_data2016_1-1.root",
      "nano_data2016_1-2.root",
      "nano_data2016_10.root",
   output:
      "data/advanced_files/ZeroBiasAdvancedData.h5"
   shell:
      "python3 convert_nano_to_advanced_file.py data/advanced_files/ ZeroBiasAdvancedData.h5 nano_data2016_1-1.root nano_data2016_1-2.root nano_data2016_10.root --limit_events=64000"
	
rule jetht_to_advanced:
   input:
      "jet_nano_data2016_1-1.root",
      "jet_nano_data2016_1-10.root",
      "jet_nano_data2016_1-5.root"
   output:
      "data/advanced_files/JetHTAdvancedData.h5"
   shell:
      "python3 convert_nano_to_advanced_file.py data/advanced_files/ JetHTAdvancedData.h5 jet_nano_data2016_1-1.root jet_nano_data2016_1-10.root jet_nano_data2016_1-5.root --limit_events=64000"

rule ttbar_to_advanced:
   input:
      "ttbar_nano_1.root",
      "ttbar_nano_2.root",
      "ttbar_nano_3.root",
   output:
      "data/advanced_files/TTBarAdvancedData.h5"
   shell:
      "python3 convert_nano_to_advanced_file.py data/advanced_files/ TTBarAdvancedData.h5 ttbar_nano_1.root ttbar_nano_2.root ttbar_nano_3.root --limit_events=64000"

rule radion_to_advanced:
   input:
      "radion_nano.root"
   output:
      "data/advanced_files/RadionAdvancedData.h5"
   shell:
      "python3 convert_nano_to_advanced_file.py data/advanced_files/ RadionAdvancedData.h5 radion_nano.root --limit_events=64000"

rule softqcd_to_advanced:
   input:
      "QCD_pt_5_10_nano_1.root",
      "QCD_pt_5_10_nano_2.root",
      "QCD_pt_10_15_nano_1.root",
      "QCD_pt_10_15_nano_2.root"
   output:
      "data/advanced_files/SoftQCDAdvancedData.h5"
   shell:
      "python3 convert_nano_to_advanced_file.py data/advanced_files/ SoftQCDAdvancedData.h5 QCD_pt_5_10_nano_1.root QCD_pt_5_10_nano_2.root QCD_pt_10_15_nano_1.root QCD_pt_10_15_nano_2.root --limit_events=64000"
