class PostsController < ApplicationController



  def new
    @post = Post.new
    @post.photos.build
  end

  def create
    @post = Post.new(post_params)

    if @post.photos.present?










    private
    def post_params
      params.require(:post).permit(:caption, photos_attributes: [:image]).merge(user_id: current_user.id)
    end

end
