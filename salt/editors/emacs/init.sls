emacs_ppa:
  pkgrepo.managed:
    - ppa: cassou/emacs
    - require_in:
      - pkgs: emacs_pkgs

emacs_pkgs:
  pkg.installed:
    - pkgs:
      - emacs24
      - emacs24-el
      - emacs24-common-non-dfsg

{{ pillar['home_dir'] }}/.emacs.d:
  file.directory:
    - user: {{ pillar['user'] }}
    - group: {{ pillar['group'] }}
    - dir_mode: 755
    - clean

https://github.com/vladimir-vovk/emacs-config.git:
  git.lastest:
    - target: {{ pillar['home_dir'] }}/.emacs.d
    - runas: {{ pillar['user'] }}

pkg_requirements_emacs_config:
  pkg.installed:
    - pkgs:
      - python-mode
      - pep8
      - aspell
      - aspell-ru

pip_requirements_emacs_config:
  pip.installed:
    - names:
      - flake8
      - pylint
