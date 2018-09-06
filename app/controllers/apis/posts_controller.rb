class Apis::PostsController < Apis::BaseController
  before_action :authenticate_user!
  def index
    posts = Post
            .all
            .limit(100)
            .map{|p| {email: p.user.email, message: p.message}}
    render json: posts
  end
  
  def commit
    json_req = JSON.parse(request.body.read, {:symbolize_names => true})
    current_user.posts.create(message: json_req[:message])
    render nothing: true ,status: 200
  end
end
