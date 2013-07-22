dev-env-up
==========

Setup develop environment for python-django (or anything else) with saltstack.

Why do we need it? Let's imagine we just installed our system or created new virtual machine. 
To start develop we need many tools (favorite editor, framework, libraries, databases, etc).
We can install all of this by hand every time... or write "salt state" one time and then 
just run salt every time we need it. ;)

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

3. Configure minion /etc/salt/minion.
   ```
   file_roots:
      base:
        - /srv/salt/
   ```
  
4. Run salt state.
   ```
   sudo salt-call state.highstate --local
   ```
