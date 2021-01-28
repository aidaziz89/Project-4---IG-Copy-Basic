class HomepageController < ApplicationController
    def index
        @posts = Post.order(:id)
        # @post.image.attach(params[:image])
    end
    
end