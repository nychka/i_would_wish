class Category < ActiveRecord::Base
  attr_accessor :remote_image_url
  has_many :wishes
  belongs_to :user
  mount_uploader :image, ImageUploader

  def self.make(params)
    category = Category.new
    category.title = "#{params[:noun]} #{KEY_PHRASE} to #{params[:verb]}"
    category.noun = params[:noun]
    category.verb = params[:verb]
    category
  end
end
