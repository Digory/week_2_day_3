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

end
