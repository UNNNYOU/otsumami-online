class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = current_user_authenticate.user.posts.new(post_params)

    if @post.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def post_params
    params.require(:post).permit(:rating, :title, :body, :local, :place_id, :latitude, :longitude, :prefecture_id)
  end
end
