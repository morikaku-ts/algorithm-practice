# 和を求める定義
def add(a, b)
  puts a + b
end

add(2, 3)

puts

# 奇数か偶数かを判定

def odd_even(num)
  num % 2 == 0
end

def odd_or_even(num)
  if odd_even(num)
    puts "#{num}は偶数です。"
  else
    puts "#{num}は奇数です。"
  end
end

for num in 1..100
  odd_or_even(num)
end

puts

def odd_twice_or_even_half(num)
  if odd_even(num)
    puts "#{num}の1/2は#{num/2}です"
  else
    puts "#{num}の2倍は#{num*2}です"
  end
end

for num in 1..100
  odd_twice_or_even_half(num)
end