require "../lib/drink"

class Stock
  attr_reader :drink

  def initialize
    @drink = []
    5.times { store(Drink::COKE) }
    5.times { store(Drink::RED_BULL) }
    5.times { store(Drink::WATER) }
  end

  def store(drink)
    @drink << drink
  end

  def uniq_list
    @drink.uniq.sort_by { |drink| drink[:id] }
  end
end