class ChatController < ApplicationController
  before_action :sign_in_required
  def index
    
  end
  
  def commit
    json_req = JSON.parse(request.body.read, {:symbolize_names => true})
    current_user.posts.create(message: json_req[:message])
    render nothing: true ,status: 200
  end
end
