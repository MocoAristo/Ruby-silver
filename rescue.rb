# 例外処理について
# rescueで例外を補足する（例外が発生した場合に、処理を実行）
# rescueを使用する場合は、例外が発生する可能性のある範囲をbegin-endで囲む
begin
  a = 1/0
  p a
  rescue
    p "0徐算の例外が発生しました"
end
# => "0徐算の例外が発生しました"

#else, ensureの使い方
begin
  p "最初なので実行"
  rescue
    p "rescue: 例外が発生しないので実行されない"
  else
    p "else: 例外が発生しないので実行される"
  ensure
    p "ensure: 必ず実行される"
end
# => "最初なので実行"
# => "else: 例外が発生しないので実行される"
# => "ensure: 必ず実行される"


# 主な例外クラス
# SyntaxError       : 文法エラー
# SignalException   : 補足していないシグナルを受けた場合
# ArgumentError     : 引数の数が合わない場合や値が正しくない場合
# RuntimeError      : 特定の例外クラスに該当しないエラーが発生した場合、例外クラスを省略したraiseの呼び出し
# NameError         : 未定義のローカル変数や定数を参照した場合
# ZeroDivisionError : 整数0で割った場合


# retryの使い方
# 例外が発生した場合に、もう一度begin節を実行する
a = 0
begin
  b = 1/a
  rescue
    a += 1
    p "aに+1しました"
    retry
  ensure
    p b
end
# => "aに+1しました"
# => 1


# 発生した例外クラスの参照
# 組み込み変数「$!」を用いる
begin
  a = 1/0
  p a
  rescue
    p "0徐算の例外が発生しました"
    p $!.class
end

# rescue節の実行順
# rescue節は最初にマッチしたものしか実行されない
begin
  c = 1/0
  p c # ZeroDivisionError
  p d # NameError
  rescue
    p "例外を指定しない"
  rescue NameError
    p "NameErrorを指定"
end
# => "例外を指定しない"
# ZeroDivisionとNameErrorのどちらも最初のrescueで補足されるため、2番目のrescueは実行されない
