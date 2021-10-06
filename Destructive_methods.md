# 破壊的メソッドまとめ
-----
||Array |Hash |String|
|--|--|--|--|
追加|<< <br>concat<br>push<br>insert<br>unshift |store |<< <br>concat<br>insert<br>prepend |
変更|[]=<br>replace<br>fill|[]=<br>replace<br>update|[]=<br>replace<br>setbyte|
削除|clear<br>delete<br>delete_if<br>delete_at<br>shift<br>keep_if<br>pop|clear<br>delete<br>delete_if<br>shift<br>keep_if|clear|

<br>
<br>
<br>

# メソッドの説明
# Arrayクラス
## 追加
-  `<<` : 末尾に引数で指定した要素を追加します。
-  `concat` : 末尾に引数で指定した別の配列を結合します。
-  `insert` : 第一引数で指定した位置に第二引数で指定した要素を加えます。
-  `push` : 末尾に引数で指定した要素を追加します。
-  `unshift` : 先頭に引数で指定した要素を追加します。
## 変更
-  `[]=` : []内で指定した位置の要素を変更します。
-  `fill` : 引数で指定した要素で配列を埋め尽くします。
-  `replace` : 引数で指定した配列で置き換えます。

## 削除
-  `clear` : 全ての要素を削除します。
-  `delete` : 引数で指定した要素を削除します。
-  `delete_at` : 引数で指定した位置の要素を削除します。
-  `delete_if` : ブロックを実行し、ブロックの戻り値が真になる要素を削除します。
-  `shift` : 先頭の要素を削除します。
-  `keep_if` :  ブロックを実行し、ブロックの戻り値が真になった要素を残し、偽になった要素を削除します。
-  `pop` : 末尾の要素を削除します。

<br>

# Hashクラス
## 追加
-  `store` : 引数にkey,valueを渡し、keyがあればvalueを置き換える。なければ追加します。

## 変更
-  `[]=` : 引数にkeyを渡し、keyがあればvalueを置き換える。なければ追加します。
-  `replace` : 引数で指定したhashへ置き換えます。
-  `update` : 引数で指定したhashを末尾に追加します。

## 削除
-  `clear` : keyとvalueを全て削除し、空hashとする
-  `delete` : 引数で指定したkeyとvalueを削除します。
-  `delete_if` : ブロックが真となるkeyとvalueを削除します。
-  `shift` : 先頭のkey,valueを１つ削除
-  `keep_if` : ブロックの戻り値が真のkeyとvalueを残し、偽になったものを削除します。

# Stringクラス
## 追加
-  `<<`  :  末尾に引数で指定した文字列を加えます。
-  `concat`  :  末尾に引数で指定した文字列を加えます。
-  `insert`  :  第一引数で指定した位置に第二引数で指定した文字を加えます。
-  `prepend`  :  先頭に引数で指定した文字列を加えます。

## 変更
-  `[]=`  :  引数で指定した位置の文字列を置き換えます。
-  `replace`  :  引数で指定した文字列へ置き換えます。
-  `setbyte`  :  第一引数で指定した位置にある文字列のバイト数を第二引数で置き換えます。

## 削除
-  `clear`  :  文字列を削除して空文字列にします。
