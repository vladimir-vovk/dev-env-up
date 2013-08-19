pkg.installed:
  - bash

{{ pillar['home_dir'] }}/.bashrc:
  file:
    - managed
    - source: salt://shell/.bashrc
    - template: jinja

pkg.installed:
  - tmux
