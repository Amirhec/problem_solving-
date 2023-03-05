

def caesar_cipher(string, num)
    final_string = ''
    letters = ('a'..'z').to_a
    cap_letters = ("A".."Z").to_a
   
    
    i = 0
  
    while i < string.length 
      if letters.include?(string[i])
        final_string += letters[(letters.index(string[i]) + num) % 26]

      elsif cap_letters.include?(string[i])
        final_string += cap_letters[(cap_letters.index(string[i]) + num) % 26]


      else
        final_string += string[i]
      end
      i += 1
    end
    
    return final_string
  end
    
  p caesar_cipher("What a string!", 5)
  
  








