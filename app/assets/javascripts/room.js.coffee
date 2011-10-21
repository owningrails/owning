#= require faye

class this.Room
  constructor: (@mountPoint, @roomChannel, @messageTemplate) ->
    
  connect: ->
    client = new Faye.Client(@mountPoint)
    messageTemplate = @messageTemplate
    
    @subscription = client.subscribe @roomChannel, (message) ->
      # This is called when a message is received
      messageElement = $(messageTemplate)
      # Fill in values
      messageElement.
        find(".author").text(message.author).end().
        find(".body").text(message.body).end();
      # Add to chat log
      messageElement.appendTo("#messages")
      # Scroll top the bottom to show last message
      $('html,body').animate scrollTop: messageElement.offset().top, 400
    
    @subscription.errback (error) ->
      alert error.message
  
  close: ->
    @subscription.cancel()
