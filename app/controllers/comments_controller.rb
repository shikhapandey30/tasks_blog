class CommentsController < ApplicationController
  #before_action :comment
  #before_action :comment, only: [:destroy, :edit, :update]
  def new
    @comment = Comment.new(:blog_id => [:blog_id])
  end
  
	def create
    @blog = Blog.find(params[:blog_id])
    @comment = @blog.comments.create(comment_params)
    redirect_to blog_path(@blog)
  end

  def destroy
    @blog = Blog.find(params[:blog_id])
    @comment = @blog.comments.find(params[:id])
    @comment.destroy
    redirect_to blog_path(@blog)
  end

  def edit
    @blog = Blog.find(params[:blog_id])
    @comment = @blog.comments.find(params[:id])
  end
  
  
  def update
    @blog = Blog.find(params[:blog_id])
    @comment = @blog.comments.find(params[:id])
    if @comment.update(comment_params)
    redirect_to blog_path(@blog)
    else
    render 'edit'
    end
  end
   

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
