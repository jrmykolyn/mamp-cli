Config = require '../Config.coffee'

module.exports = class CommandList
  constructor: () ->
    config = new Config
    data = config.fetch()

    if data
      console.log "\nShortcut\tDirectory"
      console.log "========\t========="
      for k,v of data
        console.log "#{k} \t\t#{v}"
      console.log "\n"
    else
      console.log "Error: No shortcuts."
      console.log "Whoops! Looks like you haven't added any shortcuts."
      console.log "Add shortcuts with: mamp add <shortcut>"