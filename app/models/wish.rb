class Wish < ActiveRecord::Base
  before_create :set_start_time
  enum status: [:active, :completed, :paused]
  belongs_to :category
  has_many :steps

  def set_start_time
    self.start = Time.now
  end
end
