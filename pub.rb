require_relative('drink.rb')
require_relative('food.rb')

class Pub

  attr_reader :name, :till, :drinks

  def initialize(name)
    @name = name
    @till = 1000.0
    @drinks = drinks_stock()
    @foods = foods_stock()
  end

  def drinks_stock
    drinks_array = [
      {name: "beer", stock: 50, price: 3.5, alcohol_level: 0.04},
      {name: "whisky", stock: 50, price: 4.0, alcohol_level: 0.40},
      {name: "wine", stock: 50, price: 5.0, alcohol_level: 0.14},
      {name: "rum", stock: 50, price: 4.0, alcohol_level: 0.40},
      {name: "lemonade", stock: 50, price: 2.0, alcohol_level: 0.00}
    ]
  end

  def foods_stock
    foods_array = [
      {name: "chips", stock: 50, price: 2, alcohol_level: -0.2},
      {name: "roast dinner", stock: 50, price: 10, alcohol_level: -0.6}
    ]
  end


  def sell_drink(age, drink, drunkeness_level)

    return false if drunkeness_level >= 2

    if drink.alcohol_level == 0 && drink_in_stock?(drink)
      @drinks.delete(drink)
      @till += drink.price
      return true
    end
#
    if age >= 18 && drink_in_stock?(drink)
      @drinks.delete(drink)
      @till += drink.price
      return true
    end

    return false
  end

  def sell_food(food)
    for each_food in @foods
      if each_food[:name] == food.name
        each_food[:stock] -= 1
        return true
      end
    end
    return false
  end

  def drink_in_stock?(drink)

    for each_drink in @drinks
      if each_drink[:name] == drink.name
        if each_drink[:stock] > 0
          return true
        end
      end
    end
    return false
  end





end
