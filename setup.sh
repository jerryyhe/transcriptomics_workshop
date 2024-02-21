#!/bin/bash

# Activate Conda Environment 
source activate transcriptomics_workshop

# Setup Conda Environmental Variables >>>>>
## Make activation/deactivation files
cd $CONDA_PREFIX
mkdir -p ./etc/conda/activate.d
mkdir -p ./etc/conda/deactivate.d
touch ./etc/conda/activate.d/env_vars.sh
touch ./etc/conda/deactivate.d/env_vars.sh

## Write to files
cat >> ./etc/conda/activate.d/env_vars.sh << 'EOF'
#!/bin/bash

export OLDPATH=$PATH
export WORKDIR=$(pwd)
export DATABASE_DIR=${WORKDIR}/databases
export PATH=PATH=${PATH}:${WORKDIR}/scripts

EOF

cat >> ./etc/conda/deactivate.d/env_vars.sh << 'EOF'
#!/bin/bash

PATH=$OLDPATH

EOF

# export WORKDIR=$(pwd)
# export DATABASE_DIR=${WORKDIR}/databases
# export PATH=PATH=${PATH}:${WORKDIR}/scripts