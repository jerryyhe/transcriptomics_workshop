# Transcriptomics Primer - Tropini Lab
This repository is for a transcriptomics workshop in the Tropini Lab on 20240221. The repo contains input data and Conda environment specifications to run read pre-processing steps and DESeq2 analysis. 

## Set-Up
### Install Git and miniconda3
If you attended Thad's machine learning workshop, then you can skip the Git and miniconda installation steps. 

You can install miniconda3 from the link here(https://docs.anaconda.com/free/miniconda/). Follow the instructions and choose the distribution compatible with your operating system. For MacOS users, install the Intel x86 64-bit distribution. Most people have conda installed anyway so good work, but if you have an M1 distribution of conda, some packages won't work and you won't be able to run everything we're going to do in the workshop. Oh well.  

It is worth noting that a lot of bioinformatics packages aren't compatible with the new MacOS M1 architecture, so using the Intl 64-bit distribution will actually make your life easier moving forward. Alternatively, if you have access to our Sockeye cluster you could use that instead. Except it's inauspiciously under maintenance...

To install Git:
``` 
conda install conde-forge::git
```

Now clone this repository using the command line. This will create a new folder wherever you're situated in your file system. 
``` 
git clone https://github.com/jerryyhe/transcriptomics_workshop.git
```

### MacOS and Linux with R installed
Create a new conda environment. If you are using the M1 conda distribution - just skip this step - there's nothing I can do for you. This step will probably take a little bit of time. 
```
conda env create -f transcriptomics_env
```

Set up the environment
```
bash -i setup.sh
```

To activate the environment
```
conda activate transcriptomics_workshop
```

### MacOS and Linux without R installed (and refuse to install R)
I would just recommend that you install R and RStudio because otherwise I'll ask you to install Visual Studio Code instead from here(https://code.visualstudio.com/download). VSCode is more useful than RStudio and is a worthwhile investment, there are just some extra steps you'll have to take to get set up. 

If you have a Mac, don't have R, but aren't using the Intel distribution of conda:

```
conda env create -f transcriptomics_R.yml
```

Set up the environment
```
bash -i setup.sh
```

After installing VSCode, open the app and click the "Extensions" panel on the left sidebar. Search for "Jupyter" and install this extension.  

After installing the extension, run the following code
```
conda activate transcriptomics_workshop
Rscript R_setup.R
```

### Windows Users
If you have WSL installed on your Windows machine, then use WSL and run the set up in **MacOS and Linux with R installed**. If not, I don't know what will happen, but good luck. I might be able to help with installation and set up but also I might not. 


