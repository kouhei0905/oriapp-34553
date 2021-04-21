# アプリ名
Book Share

# アプリケーション概要
読んだ本をアウトプットできるアプリケーションを作成しました。ユーザーを登録すると読んだ本を投稿できるようになります。自身が投稿した本は、編集と削除をすることができます。他のユーザーが投稿した本についてコメントすることができます。読みたい本については楽天市場で購入することが可能です。

# 本番環境　
https://bookshare34553.herokuapp.com/

ログイン情報(テスト用)<br>

投稿ユーザー<br>
Eメール:tech@sa<br>
Pass:s111111<br>
<br>
一般ユーザー<br>
Eメール:tech@sasa<br>
Pass:s111111

# 制作背景(意図)
・自分が読んだ本の内容をアウトプットしたい<br>
・気になる本の読んだ人の感想を知りたい<br>
・購入したい本をその場で検索したい

# DEMO
**トップページ**<br>
<img width="995" alt="スクリーンショット 2021-04-21 15 42 38" src="https://user-images.githubusercontent.com/78341768/115508397-37df5f00-a2b8-11eb-97a0-0897c650ede7.png">

<img width="996" alt="スクリーンショット 2021-04-21 15 43 08" src="https://user-images.githubusercontent.com/78341768/115508458-47f73e80-a2b8-11eb-90ce-ab0e164323a0.png">

・ユーザーログインしてない場合はログインボタンと新規登録ボタンがあります。<br>
・投稿ボタン、検索ボタン、楽天市場で検索ボタンがあります。<br>
・投稿された本の一覧が表示されます。<br>
・投稿された本の詳細画面に遷移するボタンがあります。<br>
<br>
**新規登録画面**<br>
<img width="999" alt="スクリーンショット 2021-04-21 15 51 16" src="https://user-images.githubusercontent.com/78341768/115509593-9527e000-a2b9-11eb-9c1f-1e5b20b12f5e.png">

・ニックネーム、メールアドレス、パスワード、自己紹介を入力するとユーザー登録できます。<br>
<br>

**投稿画面**<br>
<img width="1000" alt="スクリーンショット 2021-04-21 15 59 50" src="https://user-images.githubusercontent.com/78341768/115510408-a7eee480-a2ba-11eb-97bf-6dc8c38ba2c9.png">
・本の名称、キャッチコピー、感想、カテゴリー、本の画像を入力するとトップページに投稿した本が表示されます。<br>
<br>


**楽天検索画面**<br>
<img width="1003" alt="スクリーンショット 2021-04-21 16 02 33" src="https://user-images.githubusercontent.com/78341768/115510685-01571380-a2bb-11eb-8dcd-fc2eda14a08c.png">
・キーワードを入力すると楽天市場の情報を取得し商品を表示させることができます。<br>
・リンクをクリックすると楽天市場に遷移し、商品を購入することができます。<br>
<br>

**詳細画面**<br>
<img width="1002" alt="スクリーンショット 2021-04-21 15 53 54" src="https://user-images.githubusercontent.com/78341768/115509789-d4563100-a2b9-11eb-936c-cda66dd6ac4f.png">

<img width="1002" alt="スクリーンショット 2021-04-21 15 54 09" src="https://user-images.githubusercontent.com/78341768/115509819-db7d3f00-a2b9-11eb-842b-8d00c213308c.png">

・投稿されている本のタイトル、キャッチコピー、ジャンル、感想、コメント一覧が確認できます。<br>
<br>

**編集画面**<br>
<img width="996" alt="スクリーンショット 2021-04-21 16 01 05" src="https://user-images.githubusercontent.com/78341768/115510520-cead1b00-a2ba-11eb-96d0-6ef49886d07b.png">
・自分が投稿した内容を編集することができます。
・何も変更しなかった場合は変更前の情報がトップページに反映されます。

# 工夫したポイント
・利用者目線でトップページのレイアウトを作成し、どのボタンを押せば何ができるか分かりやすくした。<br>
・レスポンシブ対応にしてスマホユーザーにも対応できるようにした。<br>
・楽天APIを使用して使い勝手をよくした。<br>

# 使用技術（開発環境）
## バックエンド
Ruby,Ruby on Rails

## フロントエンド
HTML,CSS,Bootstrap

## データベース
MySQL,Sequel Pro

## インフラ
AWS(S3),heroku

## ソース管理
GitHub,GitHubDesktop

## エディタ
VSコード

# DB設計
## Usersテーブル

