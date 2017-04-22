class PostsController < ApplicationController
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

  private

  def post_params
    params.require(:post).permit(:content, :post_id, :user_id)
  end

end
