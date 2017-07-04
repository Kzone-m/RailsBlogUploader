module PostsHelper
  def post_user(post)
    User.find_by(id: post.user_id)
  end
end
