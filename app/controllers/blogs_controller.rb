class BlogsController < InheritedResources::Base
  def index
    @blogs = Blog.all
    if params[:search]
      @blogs = Blog.search(params[:search]).order("created_at DESC")
    else
      @blogs = Blog.all.order("created_at DESC")
    end
  end
  

  private
    def blog_params
      params.require(:blog).permit(:title, :image, :category, :description)
    end   
end

