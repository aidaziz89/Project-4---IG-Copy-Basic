class PostsController < ApplicationController
    def index
        @posts = Post.order(:id)
    end

    def new
        @post = Post.new
    end

    def create
        # @post.user_id = current_user.id

        # @post = Post.create(params.require(:post).permit(:image,
        #     :description))
        #     @post[:user_id] = current_user.id
        #     redirect_to '/'

        post = Post.new(
            user_id: current_user.id,
            image: params[:image],
            description: params[:description]
        )
        # post.image.attach(params[:image])
        post.save

        redirect_to '/'

        # user = User.find(params[:id])
        # user.photo.attach(params[:photo])
        # user.email = params[:email] 
        # user.fullname = params[:fullname] 
        # user.username = params[:username]        
        # user.password_digest = params[:password]
    end

    def edit
        @post = Post.find(params[:id])
        # @post.image.attach(params[:image])
    end

    def update
        post = Post.find(params[:id])
        post.image = params[:image]
        # post.image.attach(params[:photo])
        post.description = params[:description]

        post.save

        redirect_to '/'

        # if @post.update(post_params)
        #     redirect_to '/'
        # else
        #     render 'edit'
        # end
    end

    def show
        @post = Post.find(params[:id])
        post_id = params[:id],
        @comments = Comment.find(params[:id])
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy

        redirect_to '/'
    end

    # private

    # def post_params
    #     params.require(:post).permit(:image, :description)
    # end

    

    

end
