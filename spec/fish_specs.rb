require("minitest/autorun")
require("minitest/rg")
require_relative("../fish")

class FishTest < Minitest::Test
  def setup
    @fish = Fish.new("Tuna")
  end 
end
