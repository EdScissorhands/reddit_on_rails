class SubsController < ApplicationController
  before_action :is_moderator?, only: [:update, :edit]

  def show
    @sub = Sub.find(params[:id])
    @posts = Post.all
    render :show
  end

  def index
    @subs = Sub.all
    render :index
  end

  def create
    # @sub = make new sub_id
    # redirect_to sub_url(@sub)
  end

  def new
    @sub = Sub.new
    render :new
  end

  def edit
    @sub = Sub.find(params[:id])
    render :edit
  end


  def update
    @sub = Sub.find(params[:id])

    render :edit
  end

  def destroy #can't leave out
  end

  private

  def sub_params
    params.require(:sub).permit(:title, :description)
  end
end
