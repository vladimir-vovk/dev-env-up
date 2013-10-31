dev-env-up
==========

Setup develop environment for python-django (or anything else) with Salt.

Why do we need this? Let's imagine we just installed our favourite system or
created new virtual machine. To start develop we need many tools (environment
settings, editors, frameworks, libraries, databases, etc).
We can install all of this things by hand every time... or automate this process.
Why do not use Salt for this task? ;)

1. Just run:

   ```
   wget -O - vladimir-vovk.github.io/dev-env-setup.sh | sh
   ```

   or do all these things manually:

   ```
   # Install salt-minion.

   sudo apt-get install python-software-properties
   sudo add-apt-repository ppa:saltstack/salt
   sudo apt-get update
   sudo apt-get install salt-minion git

   # Get salt state files.

   sudo mkdir /srv
   sudo git clone https://github.com/vladimir-vovk/dev-env-up.git /srv
   ```

2. Then adjust settings in /srv/pillar/settings/init.sls file. And look at
   /srv/salt/top.sls state file. Comment (with #) everything you don't want to
   install and add state files for what you need to be installed.

3. Run salt state.
   ```
   sudo salt-call state.highstate --local
   ```

4. Enjoy! :)


Link to presentation (in russian): https://docs.google.com/presentation/d/1zyQrVHB1qswgrlMtDsGVN1C27l49WDSSwpNSJRsFC4o/pub?start=false&loop=false&delayms=60000

Salt tutorial by Sawn Milo: https://github.com/ShawnMilo/saltdemo

