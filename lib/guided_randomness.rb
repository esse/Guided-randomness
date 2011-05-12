class Array
  
  def get_rand(arr)
    raise "Wrong number of arguments" unless arr.size == self.size
    raise "Currently working only for arrays smaller then 200 elements" if arr.size > 199
    total = arr.inject { |x, y| x+y }
    hash = { }
    self.each_with_index do |arg, i|
      hash[arg] = ((arr[i].to_f / total.to_f) * 100).round
    end
    array_to_load = []
    hash.each_pair do |k,v|
      v.times do 
        array_to_load << k
      end
    end
    value = rand(3) - 1
    array_to_load.sort { |x,y| rand(3)-1 }.first
  end
  
end