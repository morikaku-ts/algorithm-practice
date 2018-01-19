# 和を求める
def add(a, b)
  puts a + b;
end

add(2, 3)

# 奇数か偶数かを判定
def odd_or_even(num)
  if num %2 == 0
    puts "偶数です"
  else
    puts "奇数です"
  end
end

odd_or_even(2)