# linear_searchのメソッドを定義（引数；見つけたい値、見つけたい値が入っている配列）
def linear_search(num, a)
  index = 0
  # for文で見つけたい値numと配列numbersの数値が一致するか1つずつ照合
  for x in a do
    if x == num
      puts "#{num}は見つかりました。#{index}番目にあります。"
      break
    end
    
    index += 1
  end
  # if文でxと配列の数値が一致した場合の処理を設定する（一致した場合=「見つかりました。~番目にあります。」一致しない場合=「false」
end
# 数字の配列を置く（1〜10）
# 求める数値xを設定する（10とする）
# linear_searchメソッドを呼び出して表示させる（終了）
linear_search(5, [1, 9, 7, 10, 4, 5, 6])