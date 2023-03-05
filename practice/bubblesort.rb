def bubble_sort(array)
    sorted = false  

    while sorted == false 
        sorted = true 
            i = 0  
          
                while i < array.length - 1
                    if array[i] > array[i+1]
                        array[i+1],array[i] = array[i], array[i+1]
                        sorted = false 
                    end
                    i+=1
                end
     end

    return array 
end


p bubble_sort([4,3,78,2,0,100])