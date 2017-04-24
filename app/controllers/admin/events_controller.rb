class Admin::EventsController < ApplicationController
  before_action :authenticate_user!
  before_action :require_is_admin
  layout "admin"

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
    @course = Course.find(params[:course_id])
    @event = Event.find(params[:id])
  end

  def update
    @course = Course.find(params[:course_id])
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to admin_course_event_path(@course), notice: "更新成功"
    else
      render :edit
    end
  end

  def destroy
    @course = Course.find(params[:course_id])
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to admin_course_path(@course), alert: "删除成功"
  end


    private

    def event_params
      params.require(:event).permit(:title, :description, :course_id, :user_id, :schedule, :city, :is_online, :contac_name, :contac_number)
    end

  end
