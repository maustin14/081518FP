class PostsController < ApplicationController
  def new
      @post = Post.new
  end

  def index
  end
    
  def create
  @post = Post.new(params[:post].permit(:title, :text))

   @post.save
   redirect_to @post
 end
  
    
  def show
  end
end
