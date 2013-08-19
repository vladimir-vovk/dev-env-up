{{ pillar['venv_dir'] }}:
  file.directory:
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

# project environment
virtualenv:
  create:
    - path: {{ pillar['venv_dir'] }}/turbopork:
    - no_site_packages: True
    - runas: {{ pillar['user'] }}
