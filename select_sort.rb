# 並べ替え方法はsorting_methodに以下のいずれかを指定する
# 昇順の場合 -> "asc", 降順の場合 -> "desc"
def select_sort(numbers, sorting_method:)
  puts "最初の配列"
  p numbers

  begin
    for index in 0...(numbers.length - 1)
      case sorting_method
      when "asc" then ascending_order(numbers, index)
      when "desc" then descending_order(numbers, index)
      else raise
      end
    end
  rescue
    puts "Error: sorting_method: \"#{sorting_method}\"は、指定できません"
  end

  puts "最終配列結果:#{sorting_method}"
  p numbers
end

def swap(numbers, index, exchange_number_index)
  numbers[index], numbers[exchange_number_index] = numbers[exchange_number_index], numbers[index]
end

def ascending_order(numbers, index)
  exchange_number_index = numbers.index(numbers[index...numbers.length].min)
  swap(numbers, index, exchange_number_index)
end

def descending_order(numbers, index)
  exchange_number_index = numbers.index(numbers[index...numbers.length].max)
  swap(numbers, index, exchange_number_index)
end

select_sort([*1..100].shuffle.take(5), sorting_method: "asc")
select_sort([*1..100].shuffle.take(5), sorting_method: "desc")
select_sort([*1..100].shuffle.take(5), sorting_method: "xxx")