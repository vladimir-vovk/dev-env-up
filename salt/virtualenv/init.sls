{{ pillar['venv_dir'] }}:
  file.directory:
    - user: {{ pillar['user'] }}
    - group: {{ pillar['group'] }}
    - mode: 755
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
{{ pillar['venv_dir'] }}/turbopork:
  file.directory:
    - user: {{ pillar['user'] }}
    - group: {{ pillar['group'] }}
    - mode: 755
    - makedirs: True

{{ pillar['venv_dir'] }}/turbopork:
  virtualenv.managed:
    - no_site_packages: True
    - pip: True
    - runas: {{ pillar['user'] }}
    - requirements: {{ pillar['user'] }}/requirements.txt
