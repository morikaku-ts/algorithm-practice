# 和を求める
def add(a, b)
  puts a + b;
end

add(2, 3)

# 奇数か偶数かを判定
def odd_or_even(num)
  if num %2 == 0
    puts "#{num} は偶数です"
  else
    puts "#{num} は奇数です"
  end
end

for i in 1..100 do
  odd_or_even(i)
end