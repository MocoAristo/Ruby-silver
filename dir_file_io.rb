# Dirクラスについて
# ディレクトリに関するクラス。開く/閉じる/ディレクトリを返す/ディレクトリの作成/削除などがある
dir = Dir.open(Dir.pwd)
dir.each do |file|
  p file
end


#=> "backslach.rb"
#=> "String.rb"
#=> "block.rb"
#=> ...略

# メソッド
# open    : ディレクトリを開く
# close   : ディレクトリを閉じる
# pwd     : カレントディレクトリを返す(puts work dir)
# getwd   : カレントディレクトリを返す(get work dir)
# chdir   : カレントディレクトリを指定したディレクトリに変更(change dir)
# mkdir   : 指定したパスのディレクトリを作成(make dir)
# rmdir   : 指定したディレクトリを削除(remove dir)
# unlink  : 指定したファイルを削除
# delete  : 指定したファイルを削除

p Dir.pwd       #=>"/Users/Username/workspace/Ruby-silver"


# Fileクラスについて
# ファイルに関するクラス。ファイルの作成や削除、属性の変更などある
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


# ファイルの属性を取得するメソッド
# basename  : パスからファイル名を取得
# dirname   : パスからディレクトリ名を取得
# extname   : パスから拡張子を取得
# split     : パスからディレクトリ名とファイル名を取得
# stat      : 属性を示すStatオブジェクトを返す
# lstat     : 属性を示すStatオブジェクトを返す
# atime     : 最終アクセス時刻
# ctime     : 変更時刻
# mtime     : 最終更新時刻

# ファイルの属性を変更するメソッド
# chomod    : ファイルの属性を変更
# chown     : ファイルのオーナーを変更
# utime     : ファイルの時刻を設定

# ファイルの作成など
# delete    : 削除
# unlink    : 削除
# truncate  : 指定したバイト数に切り詰める
# rename    : 名前の変更



# IOクラスについて
# Fileクラスのスーパークラス。入出力機能をもつ

# ファイルポインタについて
# rewind : ポインタを先頭にする
# pos    : ポイントの位置を取得
# seek   : ファイルポインタを第一引数の数だけ、第二引数の位置からオフセットさせる