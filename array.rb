# Arrayの計算

a1 = [1,2,3]
a2 = [4,2,3]

# 配列の演算
p a1 + a2     # 後ろに要素を加える
p a1 - a2     # a1からa2と同じ要素を削除する
p a1 & a2     # a1とa2の共通要素のみ抽出
p a1 | a2     # a1とa2の論理和。重複した要素は1つに圧縮
#p a1 * a2
#p a1 / a2
#p a1 % a2


# => [1, 2, 3, 4, 2, 3]
# => [1]
# => [2, 3]
# => [1, 2, 3, 4]
# => no implicit conversion of Array into Integer (TypeError)
# => undefined method `/' for [1, 2, 3]:Array (NoMethodError)
# => undefined method `%' for [1, 2, 3]:Array (NoMethodError)


# Arrayの作成
p Array.new(3,"abc") #=> ["abc", "abc", "abc"]
p Array.new(4){|i| i*3} #=> [0, 3, 6, 9]


# 配列に要素を追加するメソッド
# <<      : オブジェクトを末尾に追加、破壊的メソッド
# push    : オブジェクトを末尾に追加、破壊的メソッド
# concat  : 配列を末尾に追加、破壊的メソッド
# insert  : 指定した位置にオブジェクトを追加
# +       : 配列を末尾に追加した配列を返す。
# unshift : 先頭にオブジェクトを追加

array = ["a", "b", "c"]
p array << "d"             #=> ["a", "b", "c", "d"]
p array.push("e")          #=> ["a", "b", "c", "d", "e"]
#p array.concat("f")       #=> `concat': no implicit conversion of String into Array (TypeError)
p array.concat(["f"])      #=> ["a", "b", "c", "d", "e", "f"]
p array.insert(0,"insert") #=> ["insert", "a", "b", "c", "d", "e", "f"]
p array.unshift("unshift") #=> ["unshift", "insert", "a", "b", "c", "d", "e", "f"]
#p array + "+"             #=>  `<main>': no implicit conversion of String into Array (TypeError)
p array + ["+"]            #=> ["unshift", "insert", "a", "b", "c", "d", "e", "f", "+"]


# 配列の要素の変更
# []=       : 選択した範囲を更新する。範囲外が指定された時はその間をnilで埋める。マイナス側で超えることはできない
# fill      : 指定した範囲を特定のオブフェクトで置き換える。範囲していなければ全て置き換え。破壊的メソッド
# replace   : 自身の内容を指定した配列で書き換える。破壊的メソッド


array = ["a", "b", "c"]
array[8] = "d"
p array                                   #=> ["a", "b", "c", nil, nil, nil, nil, nil, "d"]
array = ["a", "b", "c"]
# array[-5] = "d"                         #=> `<main>': index -5 too small for array; minimum: -3 (IndexError)
p array.fill("fill")                      #=> ["fill", "fill", "fill"]
p array.replace(["replace", "replace"])   #=> ["replace", "replace"]


# 配列の要素の参照
# []          : 位置や範囲で指定し、要素を返す。範囲外はnil
# slice       : 同上
# values_at   : 同上だが、配列で返す。範囲外はnil
# at          : 同上（引数は整数のみで範囲は不可）、要素で返す。範囲外はnil
# fetch       : 基本atと同じ。第二引数を取れる。引数がインデックスのみで、範囲外だとIndexError
# first       : 配列の先頭の要素
# last        : 配列の最後の要素
# assoc       : 配列の配列を検索し、最初の要素が指定されたものと==であればその配列を返す
# rassoc      : 配列の配列を検索し、その配列のインデックスが1の要素と==であれば、その配列を返す


array = [1,2,3,4]

p array.slice(1..2)           #=> [2, 3]
p array.slice(5)              #=> nil
p array.values_at(1..2)       #=> [2, 3]
# p array.at(1..2)            #=> `at': no implicit conversion of Range into Integer (TypeError)
p array.at(1)                 #=> 2
p array.at(4)                 #=> nil
#p array.fetch(1..2)          #=> `fetch': no implicit conversion of Range into Integer (TypeError)
#p array.fetch(4)             #=> `fetch': index 4 outside of array bounds: -4...4 (IndexError)
p array.fetch(4,"Error")      #=> "Error"

array = [[1,2],[3,4],[5,6]]
p array.assoc(3)              #=> [3,4]
p array.rassoc(3)             #=> nil
p array.rassoc(4)             #=> [3,4]


# 配列の要素を調べる
# include?    : 指定された値が要素の中に存在する場合にtrueを返す
# index       : 先頭から検索し、matchした位置を返す
# rindex      : 末尾から検索し、matchした位置を返す

array = [1,2,3,4]

p array.include?(2)   #=> true
p array.index(4)      #=> 3
p array.rindex(4)     #=> 3


# 配列の要素を削除する
# delete_at     : 指定したインデックスの要素を削除。削除した要素を返す。破壊的メソッド
# delete_if     : ブロックを渡し、評価結果が真になった要素を削除した配列を返す。破壊的メソッド
# reject!       : 同上
# delete        : 指定したものと==になる要素を削除。ただし返すのは削除した要素。破壊的メソッド
# clear         : 要素を全て削除。破壊的メソッド
# slice!        : 指定したインデックスに対応する要素を削除。その要素を返す。破壊的メソッド
# shift         : 先頭から指定した数だけ取り除く。指定しなければ先頭1つを削除。破壊的メソッド。
# pop           : 末尾から要素を削除。数を指定できる。取り除いた要素を返す。破壊的メソッド。

array = [1,2,3,4,5,6,7,8,9,10]

p array.delete_at(9)                   #=> 10
p array.delete_if{|i| i % 5 == 0}      #=> [1, 2, 3, 4, 6, 7, 8, 9]
p array.reject!{|i| i % 6 == 0}        #=> [1, 2, 3, 4, 7, 8, 9]
p array.delete(3)                      #=> 3
p array.clear                          #=> []
array = [1,2,3,4,5,6,7,8,9,10]
p array.slice!(9)                      #=> 10
p array.shift(2)                       #=> [1,2]
p array.pop(3)                         #=> [7, 8, 9]
