# 現在のパスを取得
SCRIPT_DIR=$(cd $(dirname $0) && pwd)
# homeでrubyプログラムが実行出来るようにエイリアスを設定
echo alias homehome="'ruby ${SCRIPT_DIR}/HomeRuby.rb'" >> ~/.bash_profile
# 環境変数の反映 
source ~/.bash_profile