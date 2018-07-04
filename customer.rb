require_relative('pub.rb')
#require_relative('drink.rb')

class Customer

  attr_reader :name, :age, :wallet, :drunkeness_level

  def initialize (name, age, wallet)
    @name = name
    @age = age
    @wallet = wallet
    @drunkeness_level = 0
  end

  def buy_drink(pub, drink)

    return false if ((@wallet - drink.price) < 0)

    if pub.sell_drink(@age, drink, @drunkeness_level)
    @wallet -= drink.price
    @drunkeness_level += drink.alcohol_level
    return true
  end
  return false
  end

  def buy_food(pub, food)

  end

end
