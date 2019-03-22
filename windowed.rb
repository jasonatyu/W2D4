def windowed_max_range(array, window_size) 
  current_max_range=nil
  # (0...array.length).each do |i|  

  i=0 
  while i + window_size <= array.length
    min_idx = i 
    max_idx = i + window_size - 1  
    if current_max_range.to_i < array[min_idx..max_idx].max-array[min_idx..max_idx].min 
      current_max_range = array[min_idx..max_idx].max - array[min_idx..max_idx].min   
    end  
    i = i + 1
  end 
  current_max_range
end 
