class MilkShake
  attr_reader :price_of_milkshake
  def initialize
  	@base_price = 3
  	@ingredients = []
  end
  def add_ingredient(ingredient)
  	@ingredients.push(ingredient)
  end
  def price_of_milkshake
     total_price = @base_price
 	 @ingredients.each do |ingredient|
     	total_price += ingredient.price
  	 end
     total_price
  end

end

class Ingredient
  attr_reader :name, :price
  def initialize(name, price)
    @name = name
    @price = price
  end
end

class ShakeShop
	def initialize
  		@menu = []
  		@base_cost = 0.2 # Tip
    end
    def add_milkshake(milkshake)
    	@menu.push(milkshake)
    end
    def number_items
    	total_items = 0
    	@menu.each do |milkshake|
    		total_items += 1
		end
		total_items
	end
    def cost
    	total_cost = @base_cost
 	    @menu.each do |milkshake|
     	   total_cost = total_cost + milkshake.price_of_milkshake
  	    end
        total_cost
    end  	
end

banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
mint = Ingredient.new("Fresh Mint", 1.5)
lemon = Ingredient.new("Lemon", 0.80)
orange = Ingredient.new("Orange", 1.29)
cream = Ingredient.new("Cream", 1.90)

classic_milkshake = MilkShake.new
classic_milkshake.add_ingredient(cream)
classic_milkshake.add_ingredient(chocolate_chips)

acid_milkshake = MilkShake.new
acid_milkshake.add_ingredient(lemon)
acid_milkshake.add_ingredient(orange)

sweet_milkshake = MilkShake.new
sweet_milkshake.add_ingredient(cream)
sweet_milkshake.add_ingredient(chocolate_chips)
sweet_milkshake.add_ingredient(banana)

fresh_milkshake = MilkShake.new
fresh_milkshake.add_ingredient(mint)
fresh_milkshake.add_ingredient(chocolate_chips)

special_milkshake = MilkShake.new
special_milkshake.add_ingredient(cream)
special_milkshake.add_ingredient(chocolate_chips)
special_milkshake.add_ingredient(banana)
special_milkshake.add_ingredient(mint)
special_milkshake.add_ingredient(lemon)
special_milkshake.add_ingredient(orange)

compra_cliente1 = ShakeShop.new
compra_cliente1.add_milkshake(acid_milkshake)
compra_cliente1.add_milkshake(fresh_milkshake)

compra_cliente2 = ShakeShop.new	
compra_cliente2.add_milkshake(classic_milkshake)
compra_cliente2.add_milkshake(classic_milkshake)

compra_cliente3 = ShakeShop.new
compra_cliente3.add_milkshake(acid_milkshake)

compra_cliente4 = ShakeShop.new

def pay(compra_cliente)
	if compra_cliente.number_items == 0
		puts "El cliente no ha comprado nada esta vez."
	elsif compra_cliente.number_items == 1
		puts "El cliente ha comprado un producto, y tiene que pagar #{compra_cliente.cost}."
	else
	    puts "El cliente ha comprado #{compra_cliente.number_items} productos, y tiene que pagar #{compra_cliente.cost}." 
	end
end

pay (compra_cliente1)
pay (compra_cliente2)
pay (compra_cliente3)
pay (compra_cliente4)
