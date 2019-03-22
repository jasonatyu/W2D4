
require 'byebug'

# run time n**2

def my_min(list)
  min=list.first
  (0...list.length-1).each do |i| 
    (i+1...list.length).each do |j| 
      if list[i]<list[j] && list[i]<min 
        min =list[i]
      elsif list[j]<list[i] && list[j]<min
        min =list[j]
      end  
    end 
  end 
  min 
end 

# run time n 

def my_fast_min(list)
  min=list.first
  (0...list.length).each do |i|
    if list[i]<min 
      min=list[i]
    end  
  end 
  min
end 

def largest_contiguous_sum(arr)
  subarr=[]
  (0...arr.length).each do |i|
    (1..arr.length-i).each do |j| 
      subarr << arr[i...(j+i)] 
    end 
  end 
  largest=arr.first
  subarr.each do |ele| 
    sum=ele.inject{|acc,ele| acc+ele}
    if sum > largest 
      largest=sum 
    end 
  end 
  largest
end 

def fast_largest_contiguous_sum(arr)
  acc=arr.first 
  max=arr.first
  (0...arr.length-1).each do |i|
    # for arr[-2]
    if i+1==arr.length - 1
      if acc+arr[i+1] > max  
        max = acc+arr[i+1]
      elsif acc > max 
        max = acc
      end
    end 
    # 
    if acc+arr[i+1] < 0 
      if acc > max
        max=acc
        acc=0 
      elsif arr[i]> max 
        max=arr[i]
      end 
    else  
      acc+=arr[i+1]
    end 
  end
  max
end 
# list = [5, 3, -7]
list = [-2, -3, -6, -7, -6,-7]
# list = [-5, -1, -3]
p fast_largest_contiguous_sum(list)














# longest = arr.first 
  # current_sum = 0 
  # (0...arr.length).each do |i| 
  #   current_sum=arr[i] 
  #   next_sum=current_sum+arr[i+1]

# list = [5, 3, -7]
  # current=arr[0]
  # sum=arr.first 
  # largest=sum
  # for i in 1...arr.length 
  #   if sum+arr[i] > largest
  #     largest=sum+arr[i]
  #   elsif sum+arr[i] <largest
  #     sum=0
  #     next 
  #   end 
  # end  
  # largest



  # arr.each_with_index do |ele, i|

    # if longest + arr[i+1] > current_sum 
    #   current_sum = longest + arr[i+1]
    # else
    #   if current_sum > longest
    #     longest = current_sum 
    #     current_sum = 0
    #   end
    # end
  # end