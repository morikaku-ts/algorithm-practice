# 並べ替え方法はsorting_methodに以下のいずれかを指定する
# 昇順の場合 -> "asc", 降順の場合 -> "desc"
def select_sort(numbers, sorting_method:)
  puts "最初の配列"
  p numbers

  for index in 0...(numbers.length - 1)
    exchange_index = index
    case sorting_method
    when "asc" then ascending_order(numbers, index, exchange_index)
    when "desc" then descending_order(numbers, index, exchange_index)
    else break puts "Error: sorting_method: \"#{sorting_method}\"は、指定できません"
    end
  end

  puts "最終配列結果:#{sorting_method}"
  p numbers
end

def swap(numbers, index, swap_index)
  if index != swap_index
    numbers[index], numbers[swap_index] = numbers[swap_index], numbers[index]
  end
end

def minimum_number_index(numbers, index, exchange_index)
  for compare_index in (index + 1)..(numbers.length - 1)
    if numbers[exchange_index] > numbers[compare_index]
      exchange_index = compare_index
    end
  end
  exchange_index
end

def maximum_number_index(numbers, index, exchange_index)
  for compare_index in (index + 1)..(numbers.length - 1)
    if numbers[exchange_index] < numbers[compare_index]
      exchange_index = compare_index
    end
  end
  exchange_index
end

def ascending_order(numbers, index, exchange_index)
  swap_index = minimum_number_index(numbers, index, exchange_index)
  swap(numbers, index, swap_index)
end

def descending_order(numbers, index, exchange_index)
  swap_index = maximum_number_index(numbers, index, exchange_index)
  swap(numbers, index, swap_index)
end

select_sort([*1..100].shuffle.take(5), sorting_method: "asc")
select_sort([*1..100].shuffle.take(5), sorting_method: "desc")
select_sort([*1..100].shuffle.take(5), sorting_method: "xxx")