
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

#codebyte_6
def LetterCapitalize(str)

  capitalized = ''
  doCap = 1
  str.each_char do |x|
    if doCap == 1
      x = x.upcase
    end
    if(x == ' ')
      doCap = 1
    else
      doCap = 0
    end
    capitalized = capitalized + x
  end
  
  return capitalized 
         
end

#codebyte_7
def SimpleSymbols(str)

  arr = str.chars.to_a
  arr.each_index do |x|
    if(arr[x].match(/[a-zA-Z]/))
      if(x == 0 or x + 1 == arr.length or arr[x - 1] != '+' or arr[x + 1] != '+')
        return "false"
      end
    end
  end
  
  return "true" 
         
end

#codebyte_8
def CheckNums(num1,num2)

  if(num1 == num2)
    return '-1'
  elsif(num1 < num2)
    return 'true'
  end 
  
  return 'false' 
         
end


