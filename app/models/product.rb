class Product < ActiveRecord::Base
  attr_accessible :description, :name, :price_in_cents, :price_in_dollars

  validates_presence_of :description, :name, :price_in_cents
  #validates :name, :description, :price_in_cents, :presence => true
  validates_numericality_of :price_in_cents, :greater_than => 0

  def price_in_dollars(price_in_cents)

    @price_in_dollars = price_in_cents/100.00
    return @price_in_dollars

  end

end
