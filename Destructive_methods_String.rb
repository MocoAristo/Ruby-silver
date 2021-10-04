puts "Stringクラスで「!」のつかない破壊的メソッドを答えよ（Ruby 2.1）\n 【文字列を変更するメソッド4つ】"
ans ={
  "[]=" => "引数で指定した位置の文字列を置き換えます。",
  "insert" => "第一引数で指定した位置に第二引数で指定した文字を加えます。",
  "replace" => "引数で指定した文字列へ置き換えます。",
  "setbyte" => "第一引数で指定した位置にある文字列のバイト数を第二引数で置き換えます。",
  "<<" => "末尾に引数で指定した文字列を加えます。",
  "concat" => "末尾に引数で指定した文字列を加えます。",
  "prepend" => "先頭に引数で指定した文字列を加えます。"
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

puts "Stringクラスで「!」のつかない破壊的メソッドを答えよ（Ruby 2.1）\n 【要素を削除するメソッド1つ】"
ans ={
  "clear" => "文字列を削除して空文字列にします。"
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
