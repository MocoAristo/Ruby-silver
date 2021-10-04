puts "Hashクラスで「!」のつかない破壊的メソッドを答えよ（Ruby 2.1）\n 【hashを変更するメソッド5つ】"
ans ={
  "[]=" => "引数にkeyを渡し、keyがあればvalueを置き換える。なければ追加します。",
  "store" => "引数にkey,valueを渡し、keyがあればvalueを置き換える。なければ追加します。",
  "replace" => "引数で指定したhashへ置き換えます。",
  "update" => "引数で指定したhashを末尾に追加します。",
  "keep_if" => "ブロックの戻り値が真のkeyとvalueを残し、偽になったものを削除します。"
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

puts "Hashクラスで「!」のつかない破壊的メソッドを答えよ（Ruby 2.1）\n 【hashを削除するメソッド4つ】"
ans ={
  "delete" => "引数で指定したkeyとvalueを削除します。",
  "delete_if" => "ブロックが真となるkeyとvalueを削除します。",
  "shift" => "先頭のkey,valueを１つ削除",
  "clear" => "keyとvalueを全て削除し、空hashとする"
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
