tools-pkgs:
  pkg.installed:
    - pkgs:
      - git
      - mercurial

{{ pillar['home_dir'] }}/.gitconfig:
  file:
    - managed
    - source: salt://tools/.gitconfig
    - template: jinja

{{ pillar['home_dir'] }}/.hgrc:
  file:
    - managed
    - source: salt://tools/.hgrc
    - template: jinja

# Install Heroku toolbelt
# https://toolbelt.heroku.com/debian
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | bash:
  cmd:
    - run
