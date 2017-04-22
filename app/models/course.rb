class Course < ApplicationRecord
  
  has_many :events
  has_many :course_relationships
  has_many :followers, through: :course_relationships, source: :user
  validates :title, presence: true

  def publish!
    self.is_hidden = false
    self.save
  end

  def hide!
    self.is_hidden = true
    self.save
  end
end
