class Post < ApplicationRecord
  belongs_to :user
  after_create_commit {ActionCable.server.broadcast 'post_channel', message: render_message}

  def render_message
    {message: message, user: user.name}
  end
end
