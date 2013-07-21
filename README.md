dev-env-up
==========

Setup develop environment with saltstack.

1. Install salt-minion.
   ```
   sudo apt-get install python-software-properties
   sudo add-apt-repository ppa:saltstack/salt
   sudo apt-get update
   sudo apt-get install salt-minion
   ```

2. Configure minion /etc/salt/minion.
   ```
   file_roots:
      base:
        - /srv/salt
   ```
  
3. Run salt state.
   ```
   salt-call state.highstate --local
   ```