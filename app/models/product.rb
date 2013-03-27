class Product < ActiveRecord::Base
  attr_accessible :description, :name, :price_in_cents, :price_in_dollars

  def price_in_dollars(price_in_cents)

    @price_in_dollars = price_in_cents /1000
    @price_in_dollars = number_to_currency(@price_in_dollars, :unit => "$")
    return @price_in_dollars

  end

end
