def select_sort(numbers)

  index = 0
  last_index_number = numbers.length - 1

  puts "最初の配列"
  p numbers
  puts "----------------"

  for index in 0...last_index_number
    minimum_number = numbers[index..last_index_number].min
    minimum_number_index = numbers.index(minimum_number)
  
    numbers[index], numbers[minimum_number_index] = numbers[minimum_number_index], numbers[index]
    p numbers
  end

  puts "----------------"
  puts "最終昇順配列"
  p numbers
end

select_sort([2, 43, 9, 16, 90, 6, 37, 5])