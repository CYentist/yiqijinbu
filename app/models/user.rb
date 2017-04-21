class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_many :events
  has_many :courses
  has_many :course_relationships
  has_many :followed_courses, :through => :course_relationships, :source => :course

   def admin?
     is_admin
   end

end
