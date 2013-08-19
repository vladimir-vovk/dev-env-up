{{ pillar['venv_dir'] }}:
  file.managed:
    - mode: 755
    - user: {{ pillar['user'] }}
    - group: {{ pillar['group'] }}

python-virtualenv:
  pkg.installed

python-pip:
  pkg.installed

pip-pkgs:
  pip.installed:
    - pkgs: virtualenvwrapper
    - require:
      - pkg: python-pip
