class Bear
  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

def roar
  return "ROAR"
end

def food_count
  @stomach.count
end

def take_food_from_river(river)
  fish = river.remove_fish # as the fish could be nil (river is empty) we will need to check if the fish is a nil value.
  if fish != nil
  @stomach.push(fish)
end 
end

end
