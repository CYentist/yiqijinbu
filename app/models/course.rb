class Course < ApplicationRecord
  belongs_to :users
  has_many :events

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
