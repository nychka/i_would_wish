class Category < ActiveRecord::Base
  has_many :wishes
  belongs_to :user

  def self.make(params)
    category = Category.new
    category.title = "#{params[:noun]} #{KEY_PHRASE} to #{params[:verb]}"
    category.noun = params[:noun]
    category.verb = params[:verb]
    category
  end
end
