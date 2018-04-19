# frozen_string_literal: true

class BlogsController < OpenReadController
  before_action :set_blog, only: %i[show update destroy]
  # GET /blogs
  def index
    @blogs = Blog.all
    render json: @blogs
  end

  # def index
  #   @blogs = blog.where(title:params[:search])
  # end

  # GET /blogs/1
  def show
    render json: @blog
  end

  # POST /blogs
  def create
    @blog = current_user.blogs.build(blog_params)

    if @blog.save
      render json: @blog, status: :created, location: @blog
    else
      render json: @blog.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /blogs/1
  def update
    if @blog.update(blog_params)
      render json: @blog
    else
      render json: @blog.errors, status: :unprocessable_entity
    end
  end

  # DELETE /blogs/1
  def destroy
    @blog.destroy
  end

  private
<<<<<<< HEAD
=======
    # Use callbacks to share common setup or constraints between actions.
    def set_blog
      @blog = current_user.blogs.find(params[:id])
    end
>>>>>>> blog

  # Use callbacks to share common setup or constraints between actions.
  def set_blog
    @blog = current_user.blogs.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def blog_params
    params.require(:blog).permit(:title, :content, :user_id)
  end
end
