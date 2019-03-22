def bad_two_sum?(arr, target)
  (0...arr.length-1).each do |i|
    (i+1...arr.length).each do |j|
      return true if arr[i] + arr[j] == target
    end
  end
  false
end

def okay_two_sum?(arr, target)
  arr.sort!             
  arr.each_with_index do |num,idx| 
    reminder=target-num 
    return true if arr[idx+1..-1].include?(reminder) 
  end 
  false 
end 

def two_sum?(arr, target)
  h1 = Hash.new(0)
  arr.each { |ele| h1[ele] += 1 }
  h1.keys.each do |key|
    remainder = target - key 
    return true if h1.key?(remainder) && remainder != key
  end
  false
end

p two_sum?([0,1,5,7], 1)