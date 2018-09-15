require_relative "menu"

class Order

  attr_reader :complete_order, :food_options

  def initialize(food_options = Menu.new.food_options)
    @complete_order = []
    @food_options = food_options
  end

  def new_item(item)
    food_options.each{ |hash|
      if item == hash[:Dish]
        @complete_order << hash
      end
    }
  end

end
