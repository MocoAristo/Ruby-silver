# Timeクラスについて

# Timeオブジェクトの生成
# new     : 現在時刻のオブジェクトを返す
# now     : 現在時刻のオブジェクトを返す
# at      : 引数で指定した時間から算定
# mktime  : 引数に対応するオブジェクト
# local   : 引数に対応するオブジェクト
# gm      :　タイムゾーンがUTC、UTCとは世界標準時

p Time.new     #=> 021-09-30 18:34:16 +0900
p Time.mktime(2021, 9, 30, 12, 10)



# Timeフォブジェクトの属性
# year                  : 年を取得
# mon/month             : 月を取得
# day/mday              : 日を取得
# hour                  : 時を取得
# min                   : 日を取得
# sec                   : 秒を取得
# usec/tv_usec          : マイクロ秒を取得
# wday                  : 曜日の数値を取得（日〜土：0〜6）
# yday                  : 1月1日からの日数
# zone                  : タイムゾーンを取得
# isdst/dst?            : サマータイムか判定
# gmt?/utc?             : タイムゾーンがUTCか判定
# gem_offset/gmtoff     : UTC時間との差（秒で返す）

t = Time.mktime(1992,11,20,0,0)

p t                       #=> 1992-11-20 00:00:00 +0900
p t.wday                  #=> 5　(金曜日)
p t.zone                  #=> "JST"
p t.gmt?                  #=> false
p t.gmtoff                #=> 32400 (=9時間）


# タイムゾーンの変更
# localtime       : タイムゾーンをローカルタイムに変更
# gmtime/utc      : UTCへ変更
# getlocal        : ローカルタイムに変更したオブジェクトを生成
# getgm/getutc    : UTCに変更したオブジェクトを生成


# Timeオブジェクトの演算
# +   : 指定秒数を加える、Timeオブジェクト同士は不可
# -   : 指定秒数を引く、Timeオブジェクト同士の差も可能

t1 = Time.mktime(1992,11,20,0,0)
t2 = Time.mktime(1992,11,20,5,0)
p t1 + 3600 * 3             #=> 1992-11-20 03:00:00 +0900
#p t1 + t2                  #=> `+': time + time? (TypeError)
p t2 - t1                   #=> 18000.0


# Timeオブジェクトの変換
# to_i/tv_sec   : 起算時からの秒数へ変更
# to_f          : 同上
# to_a          : [秒, 分, 時, 日, 年, 曜日, 年日, サマータイム判定, タイムゾーン]
# to_s          : 文字列にする
# strftime      : 指定フォーマットに成形して文字列を返す

t = Time.mktime(1992,11,20,0,0)

p t.to_i                                  #=> 722185200
p t.to_a                                  #=> [0, 0, 0, 20, 11, 1992, 5, 325, false, "JST"]
p t.to_s                                  #=> "1992-11-20 00:00:00 +0900"
p t.strftime("%Y年%m月%d日%H時%M分%S秒")    #=> "1992年11月20日00時00分00秒"
