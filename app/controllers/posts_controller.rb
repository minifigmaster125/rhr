class PostsController < ApplicationController

    def new
    end

    def index
    end

    def show
         @post = Post.find(params[:id])
    end
end
