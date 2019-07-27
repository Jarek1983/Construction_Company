class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :index]
  
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
  	@post = Post.new(post_params)
      if @post.save
        flash[:notice] = "Utworzyłeś post"
        redirect_to post_path(@post)
      else
        render 'new'
      end
  end

  def show
  end

  def edit
  end

  def update
	  if  @post.update(post_params)
      flash[:notice] = "Zaktualizowałeś post"
	    redirect_to post_path(@post)
	  else
		  render 'edit'
	  end
  end

  def destroy
    @post.destroy
    flash[:alert] = "Usunąłeś post"
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:title,:description, :user_id)

  end

  def find_post
    @post = Post.find(params[:id])
  end

end
