require_relative('drink.rb')

class Pub

  attr_reader :name, :till, :drinks

  def initialize(name)
    @name = name
    @till = 1000.0
    beer = Drink.new("Beer", 3.5, 0.04)
    whisky = Drink.new("Whisky", 4.0, 0.4)
    wine = Drink.new("Wine", 5.0, 0.14)
    rum = Drink.new("Rum", 4.0, 0.40)
    lemonade = Drink.new("Lemonade", 2.0, 0.00)
    @drinks = [beer, whisky, wine, rum, lemonade]
  end

  def sell_drink(age, drink, drunkeness_level)

    return false if drunkeness_level >= 2

    if drink.alcohol_level == 0 && drink_in_stock?(drink)
      @drinks.delete(drink)
      @till += drink.price
      return true
    end

    if age >= 18 && drink_in_stock?(drink)
      @drinks.delete(drink)
      @till += drink.price
      return true
    end

    return false
  end

  def drink_in_stock?(drink)
    for each_drink in @drinks
      return true if each_drink.name == drink.name
    end
    return false
  end





end
