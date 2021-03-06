class Course < ApplicationRecord
  scope :recent, -> { order("created_at DESC") }

  has_many :events
  has_many :course_relationships
  has_many :followers, through: :course_relationships, source: :user
  validates :title, presence: true
  has_attached_file :image, styles: { medium: "500x300>", thumb: "100x100>" }, default_url: "/images/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  def publish!
    self.is_hidden = false
    self.save
  end

  def hide!
    self.is_hidden = true
    self.save
  end

  scope :published, -> { where(is_hidden: false) }
  scope :recent, -> { order('created_at DESC') }

end
