class Admin::CoursesController < ApplicationController
before_action :authenticate_user!, only: [:new, :create, :update, :edit, :destroy, :follow, :unfollow]
before_action :require_is_admin
      def index
        @courses = Course.all

      end

      def new
        @course = Course.new
      end

      def show
        @course = Course.find(params[:id])
      end

      def edit
        @course = Course.find(params[:id])
      end

      def create
        @course = Course.new(course_params)
        if @course.save

          redirect_to admin_courses_path
        else
          render :new
        end
      end

      def update
        @course = Course.find(params[:id])

        if @course.update(course_params)
          redirect_to admin_courses_path, notice: "更新成功"
        else
          render :edit
        end
      end

      def destroy
        @course = Course.find(params[:id])

        @course.destroy

        redirect_to admin_courses_path, alert: "删除成功"

      end

      private

      def course_params
        params.require(:course).permit(:title, :description, :is_hidden)
      end



end
