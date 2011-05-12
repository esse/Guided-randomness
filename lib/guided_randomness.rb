class Array
  def get_rand(weights)
    raise "Wrong number of array elements!" unless weights.size == self.size

    total = weights.inject(0, :+)
    point = Kernel.rand * total

    self.each_with_index do |element, i|
      return element if weights[i] >= point
      point -= weights[i]
    end
  end
end
