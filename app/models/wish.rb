class Wish < ActiveRecord::Base
  enum status: [:active, :completed, :paused]
  belongs_to :category
  has_many :steps
end
