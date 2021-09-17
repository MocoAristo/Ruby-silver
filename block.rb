# blockについて

# block付きメソッド
# メソッド内でyieldを用いることで、yieldにブロックを渡せる

def func(x)
  x + yield
end

p func(1){3} # => 4


# ブロックで更新されるブロック外の変数
# bはブロック内参照時に値が更新され、b=2+3で5に更新される
# この処理は、束縛と呼ばれ、処理の生成時の環境を束縛するものをクロージャと呼ぶ
def func1(a)
  a + yield
end

b = 2

p func1(1){b += 3} # => 6
p b               # => 5


# ブロックの引数
# ブロックは||で引数を受けることができ、実引数はyieldで指定できる
# { |引数| 処理 } ..... yield(実引数)

def func2(a,b)
  a + yield(b,3)
end

p func2(1,2){|x,y| x+y} # => 6



# block_given?の使い方
# メソッドにブロックが渡されているかチェックできる

def func3
  return "block!!" if block_given?
  "No block"
end

p func3(){} # => "blcok!!"
p func3() # => "No block"


# Procの話
# Procとはブロックをオブジェクトにしたもの
# procをブロックに変換して、メソッドに渡す&procにする

def func4 x
  x + yield
end

proc = Proc.new{2}
p func4(1,&proc) # => 3
p func4(1){2} # => 3
#p func4(1,proc) # => (ArgumentError) wrong number of arguments (given 2, expected 1)
#p func4(1,{2}) # => syntax error, unexpected '}'


# メソッド内でブロックをprocへ変換・・・メソッドの仮引数を&procにする
def func5(x,&proc1)
  x + proc1.call
end

p func5(1){3} # => 4


# lambdaメソッド
# Procインスタンスを生成するが、returnの動きが変わる

# procの場合
def func6
  proc = Proc.new{ return 1 }
  proc.call
  2 # call時にreturnするため、実行されない
end

p func6() # => 1

# lambdaの場合
def func7
  proc = lambda{ return 1 }
  proc.call
  2 # 実行される
end

p func7() # => 2

# 引数の数によるエラーの違い
# procの場合
p1 = Proc.new{ |x,y| y }
p p1.call(1) # => nil・・・実引数が足りない場合は、nilとなる

# lambdaの場合
p2 = lambda{ |x,y| y }
#p p2.call(1) # => wrong number of arguments (given 1, expected 2) (ArgumentError)

# lambdaの記法
# -> (仮引数){処理}
p3 = ->(x,y){p x+y}
p3.call(1,2) # => 3
