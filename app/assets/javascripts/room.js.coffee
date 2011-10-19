#= require faye

class this.Room
  constructor: (@mountPoint, @roomChannel, @messageTemplate) ->
    
  connect: ->
    client = new Faye.Client(@mountPoint)
    messageTemplate = @messageTemplate
    
    @subscription = client.subscribe @roomChannel, (message) ->
      # This is called when a message is received
      $(messageTemplate).
        find(".author").text(message.author).end().
        find(".body").text(message.body).end().
        appendTo("#messages")
    
    @subscription.errback (error) ->
      alert error.message
  
  close: ->
    @subscription.cancel()