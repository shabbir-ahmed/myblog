class PostsController < ApplicationController
	before_action :authenticate_user!

  	def index
  	end

 	def new
  		@post = Post.new
  	end

  	def create
  		@post = current_user.posts.new(post_params)
  		@post.save

  		redirect_to root_url
  	end

  	def show
  	end

  	private

  	def post_params
  		param.require(:post).permit(:title, :body)
  	end
end
