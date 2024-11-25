# ベースイメージとして公式のPythonイメージを使用
FROM python:3.11-slim

# 作業ディレクトリを設定
WORKDIR /app

# 必要なライブラリをインストール
# まず、requirements.txtをコンテナにコピー
COPY requirements.txt .

# パッケージをインストール
RUN pip install --no-cache-dir -r requirements.txt

# アプリケーションのソースコードをコピー
COPY . .

# 環境変数を設定（必要に応じて）
# ENV BOT_TOKEN=your_bot_token_here

# コンテナ起動時に実行するコマンドを指定
CMD [ "python", "bot.py" ]
