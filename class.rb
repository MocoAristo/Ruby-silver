# classについて

class Foo

  def initialize(name)
    @name = name
  end

  def method1
    p "#{@name}のインスタンスメソッドだよ"
  end
end

foo = Foo.new("もこみち")

# classの確認方法
p foo.class       # => Foo
p Foo.superclass  # => Object
p Foo.ancestors   # => [Foo, Object, Kernel, BasicObject]
# 継承関係を定義しない場合は、Objectクラスを継承する

# クラスの大小比較。親クラスが大きい
p Foo < Object    # => true
p Foo > Object    # => false

# インスタンスメソッドの実行
# インスタンスメソッド/変数を確認できる
foo.method1   # => "もこみちのインスタンスメソッドだよ"
p Foo.instance_methods(false)   # => [:method1]
p foo.instance_variables        #[:@name]


# alias, undefによるメソッドの変更
# alias 新メソッド名 旧メソッド名
# undef メソッド名, メソッド名

class Hoge
  def method1 ;end
  def method2 ;end
  alias :method3 :method1
  undef :method2
end

p Hoge.instance_methods(false)    # => [:method1, :method3]
