#Each index of the input array prices contains the price of some good on one day.
#Days start at 0.

#example_prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]

#The method returns an array containing
#the best day to buy(lowest price) 
#and the best day to sell(highest price)

def stock_picker(prices)
  #buy = find the index with lowest number
  buy = prices.index(prices.min())
  #sell = find the index with the highest number
  sell = prices.index(prices.max())
  #Return an array conaing the best days to but and sell
  #[lowest, highest]
  [buy, sell]
end

#stock_picker(example_prices)
#=> [7, 0]
