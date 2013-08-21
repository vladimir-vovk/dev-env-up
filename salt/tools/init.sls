tools-pkgs:
  pkg.installed:
    - pkgs:
      - git
      - mercurial

# Install Heroku toolbelt
# https://toolbelt.heroku.com/debian
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | bash:
  cmd:
    - run
