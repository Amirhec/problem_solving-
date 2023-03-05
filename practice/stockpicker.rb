def stock_picker(prices)
    highest_profit = 0
    buy_day = 0
    sell_day = 0
  

        i = 0
            while i < prices.length 
                j = i+1
                    while j <prices.length 
                        if prices[j] - prices[i] > highest_profit 
                            highest_profit = prices[j] - prices[i] 
                            buy_day = i
                            sell_day = j
                                
                        end
                        j+=1
                    end
                i+=1 
            end


        return [buy_day,sell_day]






    

end


p stock_picker([17,3,6,9,15,8,6,1,10])