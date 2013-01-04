{print} = require 'util'
{spawn} = require 'child_process'
fs = require 'fs'

CLEAN_FILES = []

unless fs.existsSync "./node_modules/"
  throw "Missing node_modules. Have you run 'npm install .' yet?"

task 'build', 'Build bin/ from src/', ->
  coffee = spawn 'coffee', [ '-c', 'bin']
  coffee.stderr.on 'data', (data) ->
    process.stderr.write data.toString()
  coffee.stdout.on 'data', (data) ->
    print data.toString()
  coffee.on 'exit', (code) ->
    callback?() if code is 0

task 'docs', 'Build the documentation with docco', ->
  coffee = spawn 'docco', ['-o', 'docs', 'src/*.coffee']
  coffee.stderr.on 'data', (data) ->
    process.stderr.write data.toString()
  coffee.stdout.on 'data', (data) ->
    print data.toString()

task 'clean', 'Clean up all generatd files', ->
  doc_files = fs.readdirSync("docs")
  for file in doc_files
    file = "docs/#{file}"
    if fs.existsSync file
      fs.unlink file
      console.log "Removed #{file}"
  for file in CLEAN_FILES
    file = "public/#{file}"
    if fs.existsSync file
      fs.unlink file
      console.log "Removed #{file}"
