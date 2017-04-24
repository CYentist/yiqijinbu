class PostsController < ApplicationController
before_action :authenticate_user!, only: [:new, :create, :update, :edit, :destroy]

  def index
    @event = Event.find(params[:event_id])
    @posts = @event.posts.order('created_at DESC')
  end

  def new
    @course = Course.find(params[:course_id])
    @event = Event.find(params[:event_id])
    @post = Post.new
  end

  def create
    @course = Course.find(params[:course_id])
    @event = Event.find(params[:event_id])
    @post = Post.new(post_params)
    @post.event = @event
    @post.user = current_user

    if @post.save
      flash[:notice] = "发帖成功"
      redirect_to course_event_path(@course, @event)
    else
      render :new
    end
  end

  def edit
    @course = Course.find(params[:course_id])
    @event = Event.find(params[:event_id])
    @post = Post.find(params[:id])
  end

  def update
    @course = Course.find(params[:course_id])
    @event = Event.find(params[:event_id])
    @post = Post.find(params[:id])
    if @post = Post.update(post_params)
      redirect_to course_event_path(@course, @event), notice: "更新成功"
    else
      render :edit
    end
  end

  def destroy
    @course = Course.find(params[:course_id])
    @event = Event.find(params[:event_id])
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "删除成功"
  end


  private

  def post_params
    params.require(:post).permit(:content, :post_id, :user_id)
  end

end
