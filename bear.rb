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
  @stomach.push(river.remove_fish)
end
end
