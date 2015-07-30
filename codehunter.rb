
#codebyte_1
def FirstReverse(str)

  # code goes here
  return str.reverse 
         
end

#codebyte_2   
def FirstFactorial(num)

  # code goes here
  if num == 0
    return 1
  else 
    return num*FirstFactorial(num-1)
  end
       
end

#codebyte_3
def LongestWord(sen)

  # code goes here
  longest_word = ""
  
  word = sen.split(" ")
  
  word.each do |word|
    word.gsub!(/\W/, "")
    if word.length > longest_word.length
      longest_word = word
    end
  end  
  
  return longest_word
  
end

#codebyte_4
def LetterChanges(str)

  # code goes here
  str.tr!('a-z','b-z')
  str.tr!('aeiou','AEIOU')
  return str 
         
end

#codebyte_5
def SimpleAdding(num)

  sum = 0
  (num + 1).times do |x|
    sum = sum + x
  end
  return sum 
         
end


