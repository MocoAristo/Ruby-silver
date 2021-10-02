p "HelloRuby" #=>"HelloRuby"
p ARGV[0] #コマンドラインの引数を出力
p ENV["PATH"]#=>実行したPCの環境変数PATHの値を出力
p [{:foo => 1},["bar", 2]].map{|i| i.to_s }.sort
p [{:foo => 1}].map{|i| i.to_s }