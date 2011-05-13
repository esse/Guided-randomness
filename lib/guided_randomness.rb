require 'rubygems'
require 'bsearch'

class Array

  def get_rand(weights)
    GuidedRandomness.new(self, weights).sample.first
  end
  
end

class GuidedRandomness < Struct.new(:source, :weights)

  def initialize(*params)
    super
    raise ArgumentError, "Wrong number of array elements!" if weights.size != source.size || weights.size == 0
    @sums = weights.inject([]){|ary, weight| ary << ((ary.last || 0) + weight)}
    @total = @sums.last
  end

  def sample(size = 1)
    size.times.map do
      rand = Kernel.rand*@total
      index = @sums.bsearch_lower_boundary{|x| x <=> rand}
      source[index]
    end
  end

end