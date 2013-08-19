{{ pillar['venv_dir'] }}:
  file.directory:
    - mode: 755
    - user: {{ pillar['user'] }}
    - group: {{ pillar['group'] }}
    - makedirs: True

python-virtualenv:
  pkg.installed

python-pip:
  pkg.installed

virtualenvwrapper:
  pip.installed

ipython:
  pip.installed
