puts "配列を昇順に並び替え"
def bubble_sort_ascending_order(numbers)
  elements = numbers.length
  repeat_times = elements - 1

  puts "最初の配列"
  p numbers
  puts "---------------"

  repeat_times.times do
    for index in 0...repeat_times
      if numbers[index] > numbers[index + 1]
        numbers[index], numbers[index + 1] = numbers[index + 1], numbers[index]
      end
    end
    p numbers
  end

  puts "---------------"
  puts "最終配列結果"
  p numbers
end

bubble_sort_ascending_order([48, 53, 32, 21, 98, 6000, 54, 61, 70, 23, 2, 9, 7])

puts

puts "配列を降順に並び替え"
def bubble_sort_descending_order(numbers)
  elements = numbers.length
  repeat_times = elements - 1

  puts "最初の配列"
  p numbers
  puts "---------------"

  repeat_times.times do
    for index in 0...repeat_times
      if numbers[index] < numbers[index + 1]
        numbers[index], numbers[index + 1] = numbers[index + 1], numbers[index]
      end
    end
    p numbers
  end

  puts "---------------"
  puts "最終配列結果"
  p numbers
end

bubble_sort_descending_order([8, 6, 2, 18, 98, 47, 59, 61, 70, 6000, 89, 7])