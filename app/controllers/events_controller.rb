class EventsController < ApplicationController
  before_action :authenticate_user!

  def index
    @course = Course.find(params[:course_id])
    @events = @course.events.order('created_at DESC')
  end

  def new
    @course = Course.find(params[:course_id])
    if current_user.is_follower?(@course)
      @event = Event.new
    else
      flash[:alert] = "你还未关注社群"
      redirect_to course_path(@course)
    end
  end

  def show
    @course = Course.find(params[:course_id])
    @event = Event.find(params[:id])
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
    @event = Event.find(params[:id])
    @event.destroy
  end


    private

    def event_params
      params.require(:event).permit(:title, :description, :course_id, :user_id, :schedule, :city, :is_online, :contac_name, :contac_number)
    end

  end
