class CommentsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "comments"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def comment(data)
    ActionCable.server.broadcast('comments', comment: render_comment(data['comment'], data['article']))
  end

  private

  def render_comment(comment, article_id)
    article = Article.find(article_id)
    time = Time.now
    article.comments.create(body: comment, user: current_user, created_at: time)
    ApplicationController.render(
      partial: 'comments/comment',
      locals: {
        comment: comment,
        user: current_user.email,
        time: time
      }
    )
  end
end
