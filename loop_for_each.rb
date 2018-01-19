# for文で1-100を表示
puts "for文で1~100までの繰り返し処理開始"
for num in 1..100 do
  puts num
end
puts "for文で1~100までの繰り返し処理終了"

# 改行
puts

# each文で1-100を表示
puts "each文で1~100までの繰り返し処理開始"
range = 1..100
range.each do |num|
  puts num
end
puts "each文で1~100までの繰り返し処理終了"