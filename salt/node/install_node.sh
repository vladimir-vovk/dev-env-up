# Install nvm: node-version manager
# https://github.com/creationix/nvm
wget -O - https://raw.github.com/creationix/nvm/master/install.sh
sh ./{{ pillar['home_dir'] }}/install.sh
rm {{ pillar['home_dir'] }}/install.sh

# Load nvm and install latest production node
source {{ pillar['home_dir'] }}/.nvm/nvm.sh
nvm install v0.10.12
nvm use v0.10.12
