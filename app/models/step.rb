class Step < ActiveRecord::Base
  enum status: [:active, :completed]
  belongs_to :wish
end
