class River
  attr_reader :fish
  def initialize(name)
    @name = name
    @fish = []
  end

  def fish_count
      return @fish.count
  end

  def add_fish(fish)
    @fish.push(fish)
  end

  def remove_fish
    @fish.pop()
  end
end
