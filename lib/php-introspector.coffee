PhpIntrospectorCompletionProvider = require './completion-provider'

module.exports =
  provider: null

  activate: ->

  deactivate: ->
    @provider = null

  provide: ->
    unless @provider?
      @provider = new PhpIntrospectorCompletionProvider

    @provider
