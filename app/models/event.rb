class Event < ApplicationRecord
  belongs_to :user
  belongs_to :course
  has_many :posts

  validates :title, presence: true
  validates :schedule, presence: true
  validates :contact_name, presence: true
  validates :contact_number, presence: true
  validates :city, presence: true
end
