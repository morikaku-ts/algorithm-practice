# 並べ替え方法はsorting_methodに以下のいずれかを指定する
# 昇順の場合 -> "asc", 降順の場合 -> "desc"
def bubble_sort(numbers, sorting_method:)
  puts "最初の配列"
  p numbers

  for i in 1...(numbers.length)
    for index in 0...(numbers.length - i)
      case sorting_method
      when "asc" then ascending_order(numbers, index)
      when "desc" then descending_order(numbers, index)
      end
    end
  end

  puts "最終配列結果:#{sorting_method}"
  p numbers
end

def swap(numbers, index)
  numbers[index], numbers[index + 1] = numbers[index + 1], numbers[index]
end

def ascending_order(numbers, index)
  if numbers[index] > numbers[index + 1]
    swap(numbers, index)
  end
end

def descending_order(numbers, index)
  if numbers[index] < numbers[index + 1]
    swap(numbers, index)
  end
end

bubble_sort([*0..200].shuffle.take(10), sorting_method: "asc")
bubble_sort([*0..200].shuffle.take(10), sorting_method: "desc")