class Container
  attr_reader :weight, :maximum_holding_weight, :ingredients
  attr_accessor :ingredient

  def initialize(weight, maximum_holding_weight = 0, ingredients = [], count = 0)
    @weight = weight
    @maximum_holding_weight = maximum_holding_weight
    @ingredients = ingredients
    @count = count
  end

  def fill_with_ingredient(ingredient)
    @ingredient = ingredient
    while @ingredients.count * ingredient.weight < @maximum_holding_weight do
      @ingredients << ingredient
    end
    @weight = maximum_holding_weight + weight
  end

  def which_ingredient
    @ingredients.first.name
  end

  def how_many_ingredients
    @ingredients.count
  end

  def remove_one_ingredient
    @ingredients.shift
  end

  def empty
    count = 0
  end
end
