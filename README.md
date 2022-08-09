# アプリケーション名
Fit Skin

# アプリケーション概要
これまで自身が使用してきた商品のレビューから、似たレビューの人同士をマッチングさせることで、自身に合う新たな商品を見つけることができる。

# URL
https://fitskin38160.herokuapp.com/
- ID/Pass<br>
ID: admin126<br>
Pass: 38160

# テスト用アカウント
アカウント:test@test.com<br>
パスワード:vU7hr|ez

# 利用方法
[1]トップページから新規登録を行い、アカウントを作成する
（アカウント情報を編集したい場合は右上のアイコンからマイページへ遷移し、アカウント情報の下にある編集ボタンからアカウント編集ページへ移動することができる）<br>
[2]右上のアイコンから新規投稿を行う

# アプリケーションを作成した背景
自分自身アトピー肌で、商品が肌に合わず損した経験が何度もあります。そこで、同じ肌質の人から商品の感想をきければ、肌に合う商品に出会える可能性が上がると考え、このアプリケーションを作成することにしました。

# 洗い出した要件
[要件を定義したシート](https://docs.google.com/spreadsheets/d/1LLWfr6ZU8rBb5ePfhpQeXhkq4owPEU3uZ4ZpiHwV7m4/edit#gid=982722306)

# 実装した機能についての画像やGIFおよびその説明
- トップページ
[![Image from Gyazo](https://i.gyazo.com/1ecec7e468ace389eb05842e3d94bbb4.png)](https://gyazo.com/1ecec7e468ace389eb05842e3d94bbb4)
- ユーザー管理機能
[![Image from Gyazo](https://i.gyazo.com/9a9873546cda8a2c34067b825f3507d7.png)](https://gyazo.com/9a9873546cda8a2c34067b825f3507d7)
- 商品投稿機能
[![Image from Gyazo](https://i.gyazo.com/4384afe3822b420d7e61d5bcf0634f53.png)](https://gyazo.com/4384afe3822b420d7e61d5bcf0634f53)
- マイページ機能
[![Image from Gyazo](https://i.gyazo.com/d891d99c660d53a0f933d81c14c48d62.png)](https://gyazo.com/d891d99c660d53a0f933d81c14c48d62)
- 一覧・検索機能
[![Image from Gyazo](https://i.gyazo.com/a73f3b10859967082c78021d6213e127.png)](https://gyazo.com/a73f3b10859967082c78021d6213e127)

# 実装予定の機能
- マッチング機能
- お気に入り登録機能

# データベース設計
![ER図](app/assets/images/ER.png "ER図")

# 画面遷移図
![画面遷移図](app/assets/images/view.png "画面遷移図")
# 開発環境
Ruby/Ruby on Rails/MySQL/Github/Visual Studio Code

<!-- # ローカルでの動作方法 -->


# 工夫したポイント
フロント実装において、javascriptを利用した動きのあるビューを作成しました。
デザインも統一しており、「使いたくなる」「使いやすい」を意識して作成しました。