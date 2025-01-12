# Pythonランタイムを親イメージとして使用
FROM rilldata/rill:latest

# 作業ディレクトリを/appに設定
WORKDIR /app

# 現在のディレクトリの内容をコンテナ内の/appにコピー
COPY . /app

CMD ["rill", "start", "my-rill-project"]
