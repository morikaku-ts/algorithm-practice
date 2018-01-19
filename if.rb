# 奇数の場合は「奇数です」、偶数の場合は「偶数です」と表示
num = rand (1..100)

puts num
if num %2 == 0
  puts "偶数です"
else
  puts "奇数です"
end