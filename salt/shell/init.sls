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
