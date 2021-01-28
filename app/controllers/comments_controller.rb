class CommentsController < ApplicationController
    def new
        @comment = Comment.new
    end

    def create
        # @post = Post.find(params[:id])
        comment = Comment.new(
            user_id: current_user.id,
            # post_id: post.id,
            comment: params[:comment]
        )
        # post.image.attach(params[:image])
        comment.save

        redirect_to '/'
    end

    
end
