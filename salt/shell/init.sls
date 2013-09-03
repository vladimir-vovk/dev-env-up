shell-pkgs:
  pkg.installed:
    - pkgs:
      - bash
      - tmux
      - mc
      - tree
      - htop
      - w3m

{{ pillar['home_dir'] }}/.bashrc:
  file:
    - managed
    - source: salt://shell/.bashrc
    - template: jinja

{{ pillar['home_dir'] }}/.tmux.conf:
  file:
    - managed
    - source: salt://shell/.tmux.conf

{{ pillar['home_dir'] }}/.gitconfig:
  file:
    - managed
    - source: salt://shell/.gitconfig
    - template: jinja