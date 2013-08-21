curl:
  pkg.installed

# Install node
salt://node/install_node.sh:
  cmd.script:
    - user: {{ pillar['user'] }}
    - cwd: {{ pillar['home_dir'] }}
    - template: jinja
    - require: curl
    
# Install jshint to allow checking of JS code within emacs
# http://jshint.com/
npm:
  pkg.installed

npm install -g jshint:
  cmd.run:
    - user: {{ pillar['user'] }}
    - cwd: {{ pillar['home_dir'] }}
    - require: npm

# Install rlwrap to provide libreadline features with node
# See: http://nodejs.org/api/repl.html#repl_repl
rlwrap:
  pkg.installed
