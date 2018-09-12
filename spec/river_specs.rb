require("minitest/autorun")
require("minitest/rg")
require_relative("../river")
require_relative("../fish")

class RiverTest < Minitest::Test
  def setup
    @river = River.new("Amazon")
    @fish1 = Fish.new("Tuna")
    @fish2 = Fish.new("Tuna")
    @fish3 = Fish.new("Tuna")
    @fish4 = Fish.new("Salmon")
    @fish5 = Fish.new("Salmon")
    @fish6 = Fish.new("Salmon")
  end

  def test_fish_count
    assert_equal(0, @river.fish_count)
  end

  def test_add_fish
    @river.add_fish(@fish1)
    assert_equal(1, @river.fish_count)
  end
  def test_remove_fish
    @river.add_fish(@fish1)
    @river.remove_fish
    assert_equal(0, @river.fish_count)
  end
end
