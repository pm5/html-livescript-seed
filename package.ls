name: "html-livescript-seed"
version: "0.0.1"
description: ""
private: true
scripts:
  env: "env"
  republish: "lsc -cj package.ls"
  test: "echo \"Error: no test specified\" && exit 1"
  "build:html": "jade -o _public/ src/*.jade"
  "watch:html": "watch 'npm run build:html' src/"
  build: "npm run build:html"
  "build:watch": "parallelshell 'npm run watch:html'"
  livereload: "live-reload --port 9090 _public/"
  serve: "http-server _public/"
  dev: "parallelshell 'npm run build:watch' 'npm run livereload' 'npm run serve'"
author: "Pomin Wu <pomin5@gmail.com>"
license: "MIT"
dependencies: {}
devDependencies:
  "http-server": "^0.7.4"
  jade: "^1.9.1"
  "live-reload": "^0.2.0"
  parallelshell: "^1.0.3"
  stylus: "^0.50.0"
  watch: "^0.13.0"
