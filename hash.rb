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

#4 Hash[]で作成[key,value]で列挙する
d = Hash[:foo1,1,:foo2,2]
p d     #=> {:foo1=>1, :foo2=>2}

#5 Hash.newで作成 ()内はデフォルト値を設定、ブロックは無視される
e = Hash.new("初期値")
p e[:apple]   #=> "初期値"


#4 Hashの特殊な引数: 実引数の最後がhashの場合は、{}を省略できる
def func(a,b,c)
  p c
end
func(1, 2, foo: "hoge", bar: "hoge")

# => {:foo=>"hoge", :bar=>"hoge"}
# 引数が4つに見えるが、foo:移行のhashが1つの引数になっている。下記と同じ
func(1, 2, { foo: "hoge", bar: "hoge" })


# Hashの生成
# デフォルトのkeyを生成時に指定できる
a = Hash.new("Default")
p a["aaa"]    #=> "Default"
p a.default   #=> "Default"



# Hashのキーや値の参照
# []          : 文字列やシンボルで指定
# keys        : keyを配列で返す
# values      : valueを配列で返す
# values_at   : keyを複数してして、結果を配列で返す
# fetch       : 指定されたkeyを返す。第二引数やブロックが指定されていれば、それを返す
# select      : keyとvalueのブロックを評価して真となる組み合わせのhashを返す
# find_all    : selectと同じで、配列で返す

hash = {a: 1, b: 2, c: 3}
p hash.keys                                   #=> [:a, :b, :c]
p hash.values                                 #=> [1, 2, 3]
p hash.values_at(:a,:c)                       #=> [1, 3]
p hash.fetch(:a,"nothing")                    #=> 1
p hash.fetch(:d,"nothing")                    #=> "nothing"
p hash.fetch(5){|key| key%5==0}               #=> true
p hash.select{|key,value| value%2 == 1}       #=> {:a=>1, :c=>3}
p hash.find_all{|key,value| value%2 == 1}     #=> [[:a, 1], [:c, 3]]



# ハッシュを変更する
# []=         : 指定されてkeyに対応するvalueを変更
# delete      : 指定されたkeyに対するvalueを削除。valueを返す。破壊的メソッド。
# reject      : ブロックが真になる値を除いたハッシュを返す
# reject!     : rejectの破壊的メソッド
# delete_if   : rejectの破壊的メソッド
# replace     : 引数に渡したハッシュで自身を置き換える。破壊的メソッド
# shift       : 先頭を1つ削除。破壊的メソッド
# merge       : 自身に引数のハッシュを加えたハッシュを返す。
# merge!      : mergeの破壊的メソッド
# update      : mergeと同じ
# update!     : updateの破壊的メソッド
# invert      : keyとvalueを逆にしたハッシュを返す
# clear       : ハッシュを空にする

hash = {a: 1, b: 2, c: 3}

p hash.delete(:a)                            #=> 1
p hash.reject{|key,value| value%2==0}        #=> {:c=>3}
p hash.delete_if{|key,value| value%2==0}     #=> {:c=>3}
p hash.replace({a: 1, b: 2, c: 3})           #=> {a: 1, b: 2, c: 3}
p hash.merge({d: 4})                         #=> {:a=>1, :b=>2, :c=>3, :d=>4}
p hash.invert                                #=> {1=>:a, 2=>:b, 3=>:c}
p hash.clear                                 #=> {}



# ハッシュを調べる
# length        : 組み合わせの数を返す
# size          : 組み合わせの数を返す
# empty?        : {}であればtrue
# has_key?      : 引数と同じkeyがあればtrue
# include?      : 引数と同じkeyがあればtrue
# key?          : 引数と同じkeyがあればtrue
# member?       : 引数と同じkeyがあればtrue
# has_value?    : 引数と同じvalueがあればture
# value?        : 引数と同じvalueがあればture

hash = {a: 1, b: 2, c: 3}

p hash.has_key?(:a)          #=> ture
p hash.member?(:d)           #=> false
p hash.has_value?(3)         #=> ture



# ハッシュの繰り返し
# each          : ブロックにkeyとvalueを渡す
# each_pair     : ブロックにkeyとvalueを渡す
# each_key      : ブロックにkeyを渡す
# each_value    : ブロックにvalueを渡す

hash = {a: 1, b: 2, c: 3}

hash.each{|key,value| print "#{key}: #{value}, "}  #=> a: 1, b: 2, c: 3,



# ハッシュのソート
# sort    : ハッシュを配列にして、ソートして返す

hash = { b: 2, a: 1, c: 3}
p hash.sort     #=> [[:a, 1], [:b, 2], [:c, 3]]


# ハッシュの変換
# to_a : ハッシュを配列に変換して返す
p hash.to_a     #=> [[:b, 2], [:a, 1], [:c, 3]]