PhpIntrospectorSuggestionsClient = require './suggestions-client'

module.exports =
class PhpIntrospectorCompletionProvider
  selector: '.source.php'
  disableForSelector: '.source.php .comment'
  inclusionPriority: 3
  suggestionPriority: 3

  getSuggestions: ({editor, bufferPosition, scopeDescriptor, prefix}) ->
    client = new PhpIntrospectorSuggestionsClient
    client.complete editor.getText(), bufferPosition.row + 1, bufferPosition.column + 1
