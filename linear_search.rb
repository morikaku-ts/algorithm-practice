# linear_searchのメソッドを定義（引数；見つけたい値、見つけたい値が入っている配列）
def linear_search(find_number, array_numbers)
# indexの値の初期化
  index = 0
# for文で見つけたい値find_numberと配列array_numbersの数値が一致するか1つずつ照合
# if文でnumと配列array_numbersの数値が一致した場合の処理を設定する（一致した場合=「見つかりました。~番目にあります。」）
  for num in array_numbers do
    if num == find_number
      puts "#{find_number}は見つかりました。#{index}番目にあります。"
      break
    end

    index += 1
  end
end
# 求める数値xを設定する
# 数字の配列を置く
# linear_searchメソッドを呼び出して表示させる（終了）
linear_search(5, [1, 9, 7, 10, 4, 5, 6])