class Series
  attr_reader :num_array
  
  def initialize num
    @num_array = num.chars.map {|num| num.to_i}
  end

  def slices(series_size)
    raise ArgumentError if series_size > num_array.size
    series_arr = []
    (0...num_array.size).each do |index| 
      series_arr << num_array.slice(index, series_size)
    end
    series_arr.select {|nested_arr| nested_arr.size == series_size}
  end
end