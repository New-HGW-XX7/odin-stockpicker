array = [17, 1, 6, 9, 15, 3, 16, 8, 6, 1]

def stock_picker(arr)
  
    hash = {}

    arr.each_with_index do |val, i|

        unless arr[i + 1] == nil

          temp_arr = []

          arr.slice(i + 1..-1).each { |subval| temp_arr << [subval - val, [i, arr.index(subval)]] }

          temp_var = temp_arr.sort.last

          hash[temp_var[1]] = temp_var[0]

        end

    end


    result_days = hash.key(hash.values.max)
    
    result_profit = hash.values.max

    p "Buy on Day #{result_days[0]} and sell on Day #{result_days[1]} for a profit of #{result_profit}."

end

stock_picker(array)