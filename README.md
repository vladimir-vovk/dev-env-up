dev-env-up
==========

Setup develop environment with saltstack.

1. Install salt-minion.
   ```
   sudo apt-get install python-software-properties
   sudo add-apt-repository ppa:saltstack/salt
   sudo apt-get update
   sudo apt-get install salt-minion git
   ```

2. Get files for salt.
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