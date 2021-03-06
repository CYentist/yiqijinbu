class EventsController < ApplicationController
  before_action :authenticate_user!

  def index
    @course = Course.find(params[:course_id])
    @events = @course.events.order('created_at DESC')
  end

  def new
    @course = Course.find(params[:course_id])
    @event = Event.new
  end

  def show
    @course = Course.find(params[:course_id])
    @event = Event.find(params[:id])
    @posts = @event.posts.order('created_at DESC')
    @post = Post.new
  end

  def create
    @course = Course.find(params[:course_id])
    @event = Event.new(event_params)
    @event.course = @course
    @event.user = current_user

    if @event.save
      flash[:notice] = "成功发起活动"
      redirect_to course_path(@course)
    else
      render :new
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event = Event.update(event_params)
  end

  def destroy
    @course = Course.find(params[:course_id])
    @event = Event.find(params[:id])
    @event.destroy
    flash[:alert] = "成功删除活动"
    redirect_to course_path(@course)
  end


    private

    def event_params
      params.require(:event).permit(:title, :description, :course_id, :user_id, :schedule, :city, :is_online, :contact_name, :contact_number)
    end

  end
