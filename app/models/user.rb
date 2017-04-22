class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_many :events
  has_many :courses
  has_many :course_relationships
  has_many :followed_courses, :through => :course_relationships, :source => :course
  has_many :posts

   def admin?
     is_admin
   end

   def is_follower?(course)
    followed_courses.include?(course)
  end
  def follow!(course)
   followed_courses << course
  end

  def unfollow!(course)
   followed_courses.delete(course)
  end
end
