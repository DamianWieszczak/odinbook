class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @posts = Post.all
    @users = User.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)

    if @post.save
      redirect_to user_post_path(current_user.id, @post.id)
      flash[:success] = "New Post created"
    else
      render :new, status: :unprocessable_entity
      flash.now[:error] = "The post couldn't be created, check your information"
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end
  
end
