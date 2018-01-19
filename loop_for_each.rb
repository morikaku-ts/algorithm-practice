# for文で1~100を表示
puts "for文で1~100までの繰り返し処理開始"
for num in 1..100 do
  puts num
end
puts "for文で1~100までの繰り返し処理終了"

# 改行
puts

# for文で1~100までの合計を算出
puts "for文で1~100までの合計を算出"
sum = 0
for num in 1..100 do
  sum = sum + num
end
puts sum

# 改行
puts

# each文で1~100を表示
puts "each文で1~100までの繰り返し処理開始"
range = 1..100
range.each { |num| puts num }
puts "each文で1~100までの繰り返し処理終了"

# 改行
puts

# each文で1~100までの合計を算出
puts "each文で1~100までの合計を算出"
range = 1..100
sum = 0
range.each { |num| sum = sum + num }
puts sum