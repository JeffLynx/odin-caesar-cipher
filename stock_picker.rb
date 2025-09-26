def stock_picker(prices)
  #initialize variables to keep track of the best profit, buy day and sell day found
  best_profit, best_buy_day, best_sell_day = 0, 0, 0
  
  #initialize variables to keep track of the earliest day with the best price found
  lowest_price_so_far, lowest_day_so_far = prices[0], 0
  
  #iterate
  prices.each_with_index do |price, index|
    
    #check the profit of the current day
    profit_today = price - lowest_price_so_far
    
    #update the best profit, buy day and sell day if the current day beats any of the previous
    if profit_today > best_profit
      best_profit, best_buy_day, best_sell_day = profit_today, lowest_day_so_far, index
    end
    
    #update the value of the day with the lowest price if the current day beats any of the previous 
    if price < lowest_price_so_far
      lowest_price_so_far, lowest_day_so_far = price, index
    end
  end
  
  #return the best day to buy and the best day to sell
  [best_buy_day, best_sell_day]
end
