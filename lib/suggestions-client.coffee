{File} = require 'atom'
dotenv  = require 'dotenv'
path = require 'path'
rp = require 'request-promise'

module.exports =
class PhpIntrospectorSuggestionsClient
  complete: (bufferContents, cursorRow, cursorColumn) ->
    @parseProjectDotenv().then (projEnv) ->
      rp
        method: 'POST'
        uri: projEnv.INTROSPECTIVE_URI
        form:
          buffer: bufferContents
          row: cursorRow
          column: cursorColumn
          format: 'atom'
      .then JSON.parse

  parseProjectDotenv: ->
    projPath = atom.project.getPaths()[0]
    return unless projPath?

    envPath = path.join projPath, '.env'
    new File envPath
    .read false
    .then dotenv.parse
