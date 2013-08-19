pkg.installed:
  - bash

{{ pillar['home_dir'] }}/.bashrc:
  file:
    - managed
    - source: salt://shell/bash/.bashrc
    - template: jinja