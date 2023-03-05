dictionary = "below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"

def substrings(word,words)
    hash = {}
    lower_case = word.downcase 

    i = 0
        while i < words.length 
            matches = lower_case.scan(words[i]).length 
            if matches != 0 
                hash[words[i]] = matches 
            end
            hash[words[i]] = matches 
            i+=1
        end

        return hash.select{|k,v| v > 0}
end

p substrings("low", dictionary )



