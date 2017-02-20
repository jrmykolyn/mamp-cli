Config = require '../Config.coffee'
CommandStop = require './CommandStop'
CommandStart = require './CommandStart'
changeDir = require '../utils/changeDir'

module.exports = class CommandSwitch
  constructor: (argv) ->
    # stop the server
    new CommandStop
    # get the path to the webroot from the config
    newShortcut = argv["_"][1]
    config = new Config
    newTargetDir = config.get(newShortcut)
    # change the dir
    changeDir newTargetDir
    # restart MAMP, small loading indicator
    setInterval ->
      console.log "."
    , 1000
    setTimeout ->
      new CommandStart
    , 10000
