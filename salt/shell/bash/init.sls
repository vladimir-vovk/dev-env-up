pkg.installed:
  - bash

rm {{ pillar['home_dir'] }}/.bashrc:
  cmd.run

{{ pillar['home_dir'] }}/.bashrc:
  file:
    - managed
    - source: salt://shell/bash/.bashrc
    - template: jinja