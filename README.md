# HomeRuby

HomeRubyは褒め言葉を出力してくれるコマンドラインツールです。  
承認欲求が満たされないときに自己責任でお使いください。  

# 推奨環境
RubyがインストールされたMacであれば大体動くと思います。  
WindowsでもRubyがインストールされていれば動くかもしれませんが、インストーラーではなく自分で環境変数に`HomeRuby.rb`へのパスを通す必要があると思います(未検証)。

# 使い方
## 準備
```
rem リポジトリのクローン
$ git clone https://github.com/Madogiwa0124/HomeRuby.git
rem インストーラーの実行
$ HomeRubyInstall.sh
```
※注意：`~/.bash_profile`に環境変数の書き込みを行います。

## 褒めて貰う
`homehome`コマンドの引数に数字を与えると、数字の回数分だけ褒めてくれます。  

```
rem homehomeコマンドの使い方
$ homehome 4
この前のブログ、きれいにまとめられてたね！
とても綺麗なコード書くね！
ごめん、ジョブズと間違えちゃった。
よく頑張っているね、いつも見てるよ。
```

デモ
![デモ](https://raw.githubusercontent.com/Madogiwa0124/HomeRuby/master/demo.gif "デモ")

## 褒め言葉を追加する
`Homessages.yml`に追記すれば出力される褒め言葉を追加することが出来ます。  
言われて嬉しかったことや自分に言ってあげたい言葉をyml形式で追記してください。

```
- あんたはえらい！
- いつも遅くまで頑張ってるね！
- とても綺麗なコード書くね！
```