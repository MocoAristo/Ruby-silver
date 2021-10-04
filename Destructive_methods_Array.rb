puts "Arrayクラスで「!」のつかない破壊的メソッドを答えよ（Ruby 2.1）\n 【要素を追加するメソッド5つ】"
ans ={
  "<<" => "末尾に引数で指定した要素を追加します。",
  "concat"=> "末尾に引数で指定した別の配列を結合します。",
  "insert"=> "第一引数で指定した位置に第二引数で指定した要素を加えます。",
  "push"=> "末尾に引数で指定した要素を追加します。",
  "unshift"=> "先頭に引数で指定した要素を追加します。"
}
while ans.size > 0
  puts "残り#{ans.size}コ"
  s = gets.chomp.to_s
  if ans.has_key?(s)
    p "true"
    p "#{s} : #{ans[s]}"
    ans.delete(s)
  else
    p false
  end
end

p "おめでとう！全問正解です！！"

puts "Arrayクラスで「!」のつかない破壊的メソッドを答えよ（Ruby 2.1）\n 【要素を変更するメソッド4つ】"
ans ={
  "[]=" => "[]内で指定した位置の要素を変更します。",
  "fill"=> "引数で指定した要素で配列を埋め尽くします。",
  "replace"=> "引数で指定した配列で置き換えます。",
  "keep_if"=> "ブロックを実行し、ブロックの戻り値が真になった要素を残し、偽になった要素を削除します。"
}
while ans.size > 0
  puts "残り#{ans.size}コ"
  s = gets.chomp.to_s
  if ans.has_key?(s)
    p "true"
    p "#{s} : #{ans[s]}"
    ans.delete(s)
  else
    p false
  end
end

p "おめでとう！全問正解です！！"



puts "Arrayクラスで「!」のつかない破壊的メソッドを答えよ（Ruby 2.1）\n 【要素を削除するメソッド6つ】"
ans ={
  "delete" => "引数で指定した要素を削除します。",
  "delete_at"=> "引数で指定した位置の要素を削除します。",
  "delete_if"=> "ブロックを実行し、ブロックの戻り値が真になる要素を削除します。",
  "clear"=> "全ての要素を削除します。",
  "shift"=> "先頭の要素を削除します。",
  "pop"=> "末尾の要素を削除します。"
}
while ans.size > 0
  puts "残り#{ans.size}コ"
  s = gets.chomp.to_s
  if ans.has_key?(s)
    p "true"
    p "#{s} : #{ans[s]}"
    ans.delete(s)
  else
    p false
  end
end

p "おめでとう！全問正解です！！"