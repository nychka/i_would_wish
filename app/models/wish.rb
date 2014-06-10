class Wish < ActiveRecord::Base
  attr_accessor :remote_image_url
  before_create :set_start_time
  enum status: [:active, :completed, :paused]
  belongs_to :category
  has_many :steps
  mount_uploader :image, ImageUploader
  def set_start_time
    self.start = Time.now
  end
end
