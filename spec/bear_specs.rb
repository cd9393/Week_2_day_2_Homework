require("minitest/autorun")
require("minitest/rg")
require_relative("../bear")
require_relative("../fish")
require_relative("../river")

class BearTest < Minitest::Test
  def setup
    @bear = Bear.new("Yogi", "Grizzly")
    @river = River.new("Amazon")
    @fish1 = Fish.new("Tuna")
    @fish2 = Fish.new("Tuna")
    @fish3 = Fish.new("Tuna")
    @fish4 = Fish.new("Salmon")
    @fish5 = Fish.new("Salmon")
    @fish6 = Fish.new("Salmon")
  end

  def test_roar
    assert_equal("ROAR", @bear.roar)
  end

  def test_food_count
    assert_equal(0, @bear.food_count)
  end

  def test_take_food_from_river
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    @river.add_fish(@fish3)
    @river.add_fish(@fish6)
    @bear.take_food_from_river(@river)
    @bear.take_food_from_river(@river)
    assert_equal(2, @bear.food_count)
    assert_equal(2, @river.fish_count)
  end
end
