class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
  attr_accessible :comment, :user_id, :product_id
  validates_presence_of :user_id, :product_id, :comment
end
