bash:
  pkg.installed

{{ pillar['home_dir'] }}/.bashrc:
  file:
    - managed
    - source: salt://shell/.bashrc
    - template: jinja

tmux:
  pkg.installed
