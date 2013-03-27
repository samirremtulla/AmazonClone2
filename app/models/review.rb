class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
  attr_accessible :comment
end
