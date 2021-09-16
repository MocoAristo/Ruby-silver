# Hashについて

#1 文字列をkeyにする
a = {"foo1" => 1, "foo2" => 2}
p a["foo1"] # => 1

#2 シンボルをkeyにする
a = {:foo1 => 1, :foo2 => 2}
p a[:foo1] # => 1

#3 =>を:に置き換える
b = {foo1: 1, foo2: 2}
p b[:foo2] # => 2

#4 Hashの特殊な引数: 実引数の最後がhashの場合は、{}を省略できる
def func(a,b,c)
  p c
end
func(1, 2, foo: "hoge", bar: "hoge")

# => {:foo=>"hoge", :bar=>"hoge"}
# 引数が4つに見えるが、foo:移行のhashが1つの引数になっている。下記と同じ
func(1, 2, { foo: "hoge", bar: "hoge" })
