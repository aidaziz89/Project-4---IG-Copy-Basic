class UsersController < ApplicationController

  skip_before_action :authorized, only: [:new, :create]

  def index
    @posts = Post.order(:id)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(params.require(:user).permit(:photo,
      :email, 
      :fullname, 
      :username,        
      :password))
      session[:user_id] = @user.id
      redirect_to '/welcome'
  end

  def edit
    # session[:user_id] = @user.id
    @user = User.find(params.require(:id))
    # @user.photo.attach(params[:photo])
  end

  def update
    user = User.find(params[:id])
    # user.photo.attach(params[:photo])
    user.email = params[:email] 
    user.fullname = params[:fullname] 
    user.username = params[:username]        
    user.password_digest = params[:password]

    user.save
    redirect_to '/users'
  end
end
