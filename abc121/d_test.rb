require 'test/unit'
require "./#{__FILE__.gsub("_test", "")}"

class TestMain < Test::Unit::TestCase
  def test_pos
    assert_equal 0, Main.pos(2,0)
    assert_equal 0, Main.pos(3,0)
    assert_equal 1, Main.pos(3,1)
    assert_equal 0, Main.pos(4,1)
    assert_equal 1, Main.pos(5,1)
    assert_equal 0, Main.pos(4,2)
    assert_equal 1, Main.pos(5,2)
    assert_equal 2, Main.pos(6,2)
    assert_equal 3, Main.pos(7,2)
    assert_equal 0, Main.pos(8,2)
  end

  def test_y
    assert_equal 1, Main.y(2, 3, 0)
    assert_equal 1, Main.y(2, 4, 0)
    assert_equal 0, Main.y(2, 5, 0)

    assert_equal 0, Main.y(2, 5, 1)
    assert_equal 1, Main.y(3, 5, 1)
    assert_equal 0, Main.y(4, 5, 1)
    assert_equal 0, Main.y(5, 5, 1)
    assert_equal 0, Main.y(2, 4, 1)
    assert_equal 0, Main.y(2, 3, 1)
    assert_equal 1, Main.y(2, 2, 1)
  end
end
