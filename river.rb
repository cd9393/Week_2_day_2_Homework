class River
  attr_reader :fish
  def initialize(name)
    @name = name
    @fish = []
  end

  def fish_count
    @fish.count
  end

  def add_fish(fish)
    @fish.push(fish)
  end
end
