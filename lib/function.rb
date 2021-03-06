require "../lib/vending_machine"
require "pry"

class Function
  attr_reader :vending_machine

  def initialize
    @vending_machine = VendingMachine.new
  end

  def input
    str = gets.chomp
    str = '0' if str !~ /^\d+$/
    str.to_i
  end

  def insert
    puts "投入金額を入力して下さい"
    change = @vending_machine.insert(input)
    puts "使えないお金です：#{change}" if change > 0
  end

  def drink_list
    list = @vending_machine.purchasable_list

    if list.any?
      list.map { |drink| puts "#{drink[:id]}: #{drink[:name]}: #{drink[:price]}" }
    else
      puts "買えるものはありません"
    end

  end

  def buy(id)
    if id == 0 || id >3
      puts "買える商品がありません"
    else
    drink = @vending_machine.purchase(id)
    puts "#{drink[:name]}を買いました" 
    end
  end

  def total
    puts "投入金額の合計は #{@vending_machine.total} 円です"
  end

  def sale_proceeds
    puts "現在の売上金額は #{@vending_machine.sale_proceeds} 円です"
  end

  def refund
    puts "釣り銭：#{@vending_machine.refund}円です。\nありがとうございました。"
  end
end