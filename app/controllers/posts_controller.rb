# My go to Posts_controller.rb 
# ! html.erb req for the following: index, edit, update, destroy, post_params
# CRUD maps to GET, POST
class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
 
  def show
    @post = Post.find(params[:id])
  end
 
  def new
    @post = Post.new
  end
 
  def edit
    @post = Post.find(params[:id])
  end
 
  def create                        # either: render or redirect
    @post = Post.new(post_params)
 
    if @post.save 
      redirect_to @post          # redirect just issues a new request
    else
      render 'new'                  # render when save returns false, passes @post back to new template when rendered
    end
  end
 
  def update
    @post = Post.find(params[:id])
 
    if @post.update(post_params)
      redirect_to @post           # redirect just issues a new request
    else
      render 'edit'
    end
  end
 
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
 
    redirect_to posts_path
  end
 
  private 
    def post_params
      params.require(:post).permit(:title, :description)
    end
end