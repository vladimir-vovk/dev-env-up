shell-pkgs:
  pkg.installed:
    - pkgs:
      - bash
      - tmux
      - mc
      - tree

{{ pillar['home_dir'] }}/.bashrc:
  file:
    - managed
    - source: salt://shell/.bashrc
    - template: jinja
