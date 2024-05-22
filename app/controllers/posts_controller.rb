class PostsController < ApplicationController
  before_action :ensure_correct_user, only: %i[edit update]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    gon.post = @post
  end

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

  def edit
    @post = Post.find(params[:id])
    gon.post = @post
  end

  def update
    @post = current_user_authenticate.user.posts.find(params[:id])
    gon.post = @post
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def post_params
    params.require(:post).permit(:rating, :title, :body, :local, :place_id, :latitude, :longitude, :prefecture_id,
                                 images: [])
  end

  def ensure_correct_user
    @post = Post.find(params[:id])
    return unless @post.user_id != current_user_authenticate.user_id

    redirect_to root_path
  end
end
