class Drink
  COKE     = { id: 1, name: "コーラ", price: 120 }
  RED_BULL = { id: 2, name: "レッドブル", price: 200 }
  WATER    = { id: 3, name: "水", price: 100 }
end

# class Drink

#   attr_reader :name, :price, :id

#   def initialize(name, price, id)
#     @name = name
#     @price = price
#     @id = id
#   end

#   def self.COKE
#     self.new(:cola, 120,1)
#   end

#   def self.RED_BULL
#     self.new(:redbull, 200,2)
#   end

#   def self.WATER
#     self.new(:water, 100,3)
#   end

# end