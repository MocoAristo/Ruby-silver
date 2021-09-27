# Stringクラスについて

# 比較演算子
# ==      :大文字、小文字区別して比較
# >       : >はアスキーコードの大小で比較
# >=
# <
# <=
# <=>     :結果を-1,0,1で返す。大文字小文字を区別する。左辺が辞書順で早いなら-1, 同じなら0, 遅いなら1
# casecmp :結果を-1,0,1で返す。大文字小文字を区別しない

p "a" <=> "b" # => -1
p "a" <=> "a" # => 0
p "b" <=> "a" # => 1


# 文字の切り出しのメソッド
# []      : []で範囲、文字列を指定する
# slice   : slice()で範囲、文字列を指定
# slice!  : 上の破壊的メソッド
# split   : 指定の文字列で分割。位置の指定はできない
a = "abcdefg"
p a.split("c") #=> ["ab", "defg"]
#p a.split(1)   #=>`split': wrong argument type Integer (expected Regexp) (TypeError)
p a.split("z")   #=> ["abcdefg"]

# 文字列の変更のメソッド
# []=     : その範囲の文字列を置き換える
# insert  : 位置を指定して、その直前に挿入する
a["abc"] = "ABC"
p a
p a.insert(7,"H")


# 文字列の置換
# sub       :指定したパターンに最初にマッチした文字列を特定の文字列に置換
# sub!      :上の破壊的メソッド
# gsub      :指定したパターンにマッチした全ての文字列を特定の文字列に置換
# gsub!     :上の破壊的メソッド
# tr        :指定したパターンに含まれる文字列を特定の文字列に置換
# tr!       :上の破壊的メソッド
# tr_s      :trに加えて重複した文字を1文字に圧縮
# tr_s!     :上の破壊的メソッド
# delete    :指定した文字を削除
# delete!   :上の破壊的メソッド
# squeeze   :指定した文字が複数並んでいた場合に1文字に圧縮
# squeeze!  :上の破壊的メソッド
# replace   :自分自身を置き換え

a = "abcdefg-abcdefg"
p a.sub(/abc/,"xyz")  #=> "xyzdefg-abcdefg"
p a.gsub(/abc/,"xyz") #=> "xyzdefg-xyzdefg"
p a.tr('a-c','A-C')   #=> "ABCdefg-ABCdefg"


a = "aabbccdd"
p a.tr_s('a-c','A-C')   #=> "ABCdd"
p a.squeeze('a-c')      #=> "abcdd"
p a.replace('XYZ')      #=> "XYZ"


# 文字の大小変換
# capitalize      : 先頭のみ大文字。あとは小文字へ変換
# capitalize!     : 上の破壊的メソッド
# downcase        : 小文字へ変換
# downcase!       : 上の破壊的メソッド
# upcase          : 大文字へ変換
# upcase!         : 上の破壊的メソッド
# swapcase        : 大文字、小文字を逆にへ変換
# swapcase!       : 上の破壊的メソッド


# 文字列の改行や空白の削除
# chomp     : 末尾の空白や改行を削除
# chomp!    : 上の破壊的メソッド
# strip     : 先頭と末尾の空白文字を削除
# strip!    : 上の破壊的メソッド
# lstrip    : 先頭の空白文字を削除
# lstrip!   : 上の破壊的メソッド
# rstrip    : 末尾の空白文字を削除
# rstrip!   : 上の破壊的メソッド
# chop      : 末尾の1文字を削除
# chop!     : 上の破壊的メソッド


# 文字列内の検索
# include?  : 指定された文字列が含まれていればtrue
# index     : 指定された文字列が最初にマッチした位置を返す
# rindex    : 指定された文字列を後ろから検索し、最初にマッチした位置を返す
# match     : 指定された正規表現にマッチしたMatchオブジェクトを返す
# scan      : 指定された正規表現にマッチした部分文字列の配列を返す

a = "abcdefg"
p a.include?("abc") #=> true
p a.index("bcd")    #=> 1
p a.rindex("bcd")   #=> 1
p a.match(/[b-d]/)  #=> #<MatchData "b">
p a.scan(/[b-d]/)   #=> ["b", "c", "d"]