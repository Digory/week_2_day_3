require_relative('drink.rb')

class Pub

  attr_reader :name, :till, :drinks

  def initialize(name)
    @name = name
    @till = 1000.0
    beer = Drink.new("Beer", 3.50, 0.04)
    whisky = Drink.new("Whisky", 4.00, 0.4)
    wine = Drink.new("Wine", 5.00, 0.14)
    @drinks = [beer, whisky, wine]
  end






end
