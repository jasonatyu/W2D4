def first_anagram?(str1,str2)

  str1.split('').permutation.to_a.map {|ele| ele.join}.include?(str2)
end 

def second_anagram?(str1,str2)
  str1.each_char do |char| 
    idx = str2.index(char) 
    return false if idx.nil?
    str2.delete(char) 
  end 
  true
end 

def third_anagram?(str1,str2)
  str1.split('').sort == str2.split('').sort
end 

def fourth_anagram?(str1,str2)
  h1 = Hash.new(0)
  h2 = Hash.new(0)
  str1.split('').each { |c| h1[c] += 1 }
  str2.split('').each { |c| h2[c] += 1 }
  h1 == h2
end

str1='alepp'
str2='apple'
p fourth_anagram?(str1,str2)