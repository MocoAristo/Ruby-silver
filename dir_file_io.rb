# Dirクラスについて
dir = Dir.open(Dir.pwd)
dir.each do |file|
  p file
end


#=> "backslach.rb"
#=> "String.rb"
#=> "block.rb"
#=> ...略

# メソッド
# pwd     : カレントディレクトリを返す
# getwd   : カレントディレクトリを返す
# mkdir   : 指定したパスのディレクトリを作成
# rmdir   : 指定したディレクトリを削除
# unlink  : 指定したファイルを削除
# delete  : 指定したファイルを削除

p Dir.pwd       #=>"/Users/Username/workspace/Ruby-silver"


# Fileクラスについて
# open  : ファイルを開く、引数を指定してモードを決定する
# read  : ファイルを読む
# close : ファイルを閉じる

# ファイルのモード
# r   : 読み込み
# w   : 書き込み。開くとファイルは空になる
# a   : 追記。
# r+  : 読み書き。どちらも先頭から
# w+  : 読み書き。ファイルは空になる
# a+  : 読み書き。読み込みは先頭。書き込みは末尾。


# IOクラスについて
# Fileクラスのスーパークラス。入出力機能をもつ
