require 'test/unit'
require "./#{__FILE__.gsub("_test", "")}"

class TestMain < Test::Unit::TestCase
  def test_main1
    p __method__
    result = Main.main(<<~EOS.split(/\R/))
    4 5
    1 2
    3 4
    1 3
    2 3
    1 4
    EOS

    assert_equal <<~EOS, result
    0
    0
    4
    5
    6
    EOS
  end
  def test_main2
    p __method__
    result = Main.main(<<~EOS.split(/\R/))
    6 5
    2 3
    1 2
    5 6
    3 4
    4 5
    EOS

    assert_equal <<~EOS, result
    8
    9
    12
    14
    15
    EOS
  end
  def test_main3
    p __method__
    result = Main.main(<<~EOS.split(/\R/))
    2 1
    1 2
    EOS

    assert_equal <<~EOS, result
    1
    EOS
  end
  def test_main4
    p __method__
    n = 5-1
    input = ["#{n+1} #{n}"]
    input += [*1..n].map {|x| "#{x} #{x+1}"}

    result = Main.main(input)

    assert_equal [*1..n]
        .reverse
        .inject([]) {|m, i| m << ((m.length > 0) ? m.last+i : i)}
        .map(&:to_s),
      result.split(/\R/)
  end
end
