class CoursesController < ApplicationController
before_action :authenticate_user!, only: [:new, :create, :update, :edit, :destroy, :follow, :unfollow]

    def index
      @courses = Course.published.recent

    end

    def new
      @course = Course.new
    end

    def show
      @course = Course.find(params[:id])
      @events = @course.events.order('created_at DESC')

      if @course.is_hidden
      flash[:warning] = "This course already archived"
      redirect_to root_path
      end
    end

    def edit
      @course = Course.find(params[:id])
    end

    def create
      @course = Course.new(course_params)
      if @course.save
        current_user.follow!(@course)
        redirect_to courses_path
      else
        render :new
      end
    end

    def update
      @course = Course.find(params[:id])

      if @course.update(course_params)
        redirect_to courses_path, notice: "更新成功"
      else
        render :edit
      end
    end

    def destroy
      @course = Course.find(params[:id])

      @course.destroy

      redirect_to courses_path, alert: "删除成功"

    end

    def follow
        @course = Course.find(params[:id])

        if !current_user.is_follower?(@course)
          current_user.follow!(@course)
        else
          flash[:warning] = "已经关注"
        end

        redirect_to :back
      end

      def unfollow
        @course = Course.find(params[:id])

        if current_user.is_follower?(@course)
          current_user.unfollow!(@course)
        else
          flash[:warning] = "您并未关注"
        end
        redirect_to :back
      end
    private

    def course_params
      params.require(:course).permit(:title, :description, :is_hidde, :image)
    end



end
