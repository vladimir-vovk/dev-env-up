venv-pkgs:
  pkg.installed:
    - pkgs:
      - python-virtualenv:
      - python-pip:
      - python-dev

pip-venv-pkgs:
  pip.installed:
    - names:
      - virtualenvwrapper
      - ipython
      - fabric

# if you need some project environment uncomment this
# {{ pillar['venv_dir'] }}/project-name:
#   virtualenv.managed:
#     - no_site_packages: True
#     - runas: {{ pillar['user'] }}
#     - requirements: {{ pillar['venv_dir']}}/project-name/requirements.txt
#     - requirements: salt://venv/requirements.txt
