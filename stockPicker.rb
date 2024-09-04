def stock_picker(array)
  maxProfit = 0
  bestDays = []
  array.reverse_each.with_index do |sellPrice, reverseSellIndex|
    sellIndex = array.length - 1 - reverseSellIndex
    array[0...sellIndex].each_with_index do |buyPrice, buyIndex|
      profit = sellPrice - buyPrice
      if profit > maxProfit
        maxProfit = profit
        bestDays = [buyIndex, sellIndex]
      end
    end
  end
  bestDays
end


