require './lib/guided_randomness'
require 'test/unit'

class RandomnessTest < Test::Unit::TestCase
  
  def test_first_check_randomness_using_law_of_big_numbers
    @array = ["a", "b", "c", "d", "e"]
    @chances = [10, 2, 8, 5, 9]
    helper
    calculate_chances
    check_asserts(0.05)
  end
  
  def test_second_check_randomness_using_law_of_big_numbers
    @array = ["a", "b", "c", "d", "e", "g", "h", "i", "j", "k"]
    @chances = [0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1]
    helper
    calculate_chances
    check_asserts(0.05)
  end
  
  def test_third_check_randomness_using_law_of_big_numbers
    @array = (1..500).to_a
    @chances = [0.1]*500
    helper
    calculate_chances
    check_asserts(0.05)
  end
  
  def test_fourth_check_randomness_using_law_of_big_numbers
    @array = (1..300).to_a
    @chances = (1..300).to_a
    helper
    calculate_chances
    check_asserts(0.05)
  end
  
  
  
  protected
  
  def helper
    @test_hash = {}
    @array.each do |a|
      @test_hash[a] = 0
    end
    @total = @chances.inject { |x, y| x + y }
  end
  
  def calculate_chances
    10000.times do
      @test_hash[@array.get_rand(@chances)] += 1
    end
    @test_hash.each_pair do |k,v|
      @test_hash[k] = v / 10000.0
    end
    @chances = @chances.map do |x|
      x / @total.to_f
    end
  end
  
  def check_asserts(deviation)
    @array.each_with_index do |a, i|
     assert (@test_hash[a] - @chances[i]).abs < deviation, "Devation should be lower then #{deviation}, and actually it is: #{(@test_hash[a] - @chances[i]).abs}"
    end
  end
  
end
