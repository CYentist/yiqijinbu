module CoursesHelper
  def render_course_status(course)
      if course.is_hidden
        "(Hidden)"
      else
        "(Public)"
      end
    end
  end
