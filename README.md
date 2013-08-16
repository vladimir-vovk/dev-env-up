dev-env-up
==========

Setup develop environment for python-django (or anything else) with saltstack.

Why do we need it? Let's imagine we just installed our favourite system or
created new virtual machine. To start develop we need many tools (environment
settings, editors, frameworks, libraries, databases, etc).
We can install all of this things by hand every time... or automate this process.
Why do not use "salt state" for this task... ;)

Just run:
```
wget -O - vladimir-vovk.github.io/dev-env-setup.sh | bash
```
or do all things manually:

1. Install salt-minion.
   ```
   sudo apt-get install python-software-properties
   sudo add-apt-repository ppa:saltstack/salt
   sudo apt-get update
   sudo apt-get install salt-minion git
   ```

2. Get salt state files.
   ```
   sudo mkdir -d /srv/salt/
   sudo git clone https://github.com/vladimir-vovk/dev-env-up.git /srv/salt
   ```

3. Run salt state.
   ```
   sudo salt-call state.highstate --local
   ```
