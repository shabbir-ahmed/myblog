class PostsController < ApplicationController
  	def index
  	end

 	def new
  		@post = Post.new
  	end

  	def create
  		@post = Post.new(post_params)
  		@post.save

  		redirect_to root_url
  	end

  	def show
  	end
end
