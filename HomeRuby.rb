require 'yaml'

class Home
  attr_reader :messages

  # 初期処理
  def initialize(cnt)
    # 褒め言葉をymlファイルからロード
    @homessages = yaml_load
    # コマンドラインから指定された個数分、褒め言葉を生成
    @messages = create_homessages(cnt)
  end

  # 褒め言葉の生成メソッド
  def create_homessages(cnt)
    # 指定された回数分、褒め言葉をランダムに設定
    messages = []
    cnt.times{ |i| messages << @homessages.sample }
    messages
  end

  # ymlファイルのロード処理
  def yaml_load
    # スクリプトと同じフォルダに置かれた`Homessages.yml`を読み込む。
    data = open("#{File.dirname(__FILE__)}/Homessages.yml", 'r') { |f| YAML.load(f) }
  end
end

# 標準入力を取得
home_count = ARGV[0]
voice_flg  = ARGV[1] == 'say'

# メッセージを生成
messages   = Home.new(home_count.to_i).messages;

# メッセージの出力
messages.each do |message|
  # 標準出力
  puts message
  # 音声出力
  system("say #{message}") if voice_flg
end
