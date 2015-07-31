
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

#codebyte_9
def TimeConvert(num)

  hours = num / 60
  minutes = num - hours * 60
  return "#{hours}:#{minutes}"
         
end

#codebyte_10
def AlphabetSoup(str)

  chars = str.chars.to_a
  
  chars.each_index do |i|
    (chars.length - i - 1).times do |job|
      if chars[job] > chars[job + 1]
        chars[job], chars[job + 1] = chars[job + 1], chars[job]
      end
    end
  end
  
  return chars.join('') 
         
end

#codebyte_11

def ABCheck(str)

  counter = 0
  str.each_char do |x|
    if(x == 'a' && counter + 4 < str.length && str.chars.to_a[counter + 4] == 'b')
      return true
    end
    counter += 1
  end
  return false 
         
end

#codebyte_12

def VowelCount(str)

  counter = 0
  str.each_char do |x|
    if(x.match(/[aieou]/))
      counter += 1
    end
  end
  return counter
         
end

#codebyte_13

def WordCount(str)

  words = str.split(" ")
  return words.length 
         
end

#codebyte_14

def ExOh(str)

  counter1 = 0
  counter2 = 0
  str.each_char do |x|
    if(x == 'x')
      counter1 += 1
    elsif(x == 'o')
      counter2 += 1
    end
  end
  return counter1 == counter2 
         
end

#codebyte_15

def Palindrome(str)
  (str = str.gsub(/\s+/, "")).reverse == str ? "true" : "false"
end

