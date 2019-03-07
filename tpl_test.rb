require 'test/unit'
require "./#{__FILE__.gsub("_test", "")}"

class TestMain < Test::Unit::TestCase
  def test_main
    result = Main.main(<<~EOS.split(/\R/))
6
4 5 2 3 6 1
EOS

    assert_equal 21, result
  end
end
