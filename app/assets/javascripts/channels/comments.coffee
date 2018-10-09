App.comments = App.cable.subscriptions.create "CommentsChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    $("#messages").prepend(data.comment)

  comment: (comment, article) ->
    @perform 'comment', {comment: comment, article: article}

$(document).on 'click', '.add-comment-button', (event) ->
  App.comments.comment($('#comment_body').val(), $('#article_id').val())
  $('#comment_body').val("")
  event.preventDefault()
