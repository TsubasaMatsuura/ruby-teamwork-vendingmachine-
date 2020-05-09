require "./function"

function = Function.new

while true
  puts "操作を選択して下さい"
  puts "1. お金を投入する"
  puts "2. 飲み物を買う"
  puts "3. 投入金額を確認する"
  puts "4. 売上金額を確認する"
  puts "5. 取り消し"

  input = function.input

  case input
  when 1
    function.insert
  when 2
    function.purchase(function.input) if function.drink_list
  when 3
    function.total
  when 4
    function.sale_proceeds
  when 5
    function.refund
    break
  end
end