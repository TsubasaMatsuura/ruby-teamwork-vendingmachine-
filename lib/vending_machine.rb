require "./stock"

class VendingMachine
  MONEY = [10, 50, 100, 500, 1000].freeze

  attr_accessor :total, :sale_proceeds, :stock

  def initialize
    @total = 0
    @sale_proceeds = 0
    @stock = Stock.new
  end

  def insert(amount)
    if MONEY.include?(amount)
      @total += amount
      amount = 0
    end
    amount
  end

  def refund
    tmp = @total
    @total = 0
    tmp
  end

  def purchase(id)
    index = @stock.drink.find_index { |drink| drink[:id] == id }
    if index
      @total -= @stock.drink[index][:price]
      @sale_proceeds += @stock.drink[index][:price]
      @stock.drink.delete_at(index)
    end
  end

  def purchasable_list
    @stock.uniq_list.select { |drink| drink[:price] <= @total }
  end
end