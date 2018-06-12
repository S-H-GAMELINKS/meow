# 概要

Mastodonで「にゃーん」と呟けるジョークアプリ「meow」です。
Ruby/DXRubyにて制作しました。

DXRubyを使用しているため、Windowsでの利用を想定しています。

# インストール方法

「meow」自体はこちらよりダウンロードできます。

ダウンロード後、「meow.exe」が配置されたディレクトリと同じところに「.env」を作成。
その後、「.env」に以下のように追記します。

```
MASTODON_URL=<にゃーんと呟きたいインスタンスのURL>
MASTODON_TOKEN=<そのインスタンスで発行したアクセストークン>
```

あとは、「meow.exe」をクリックして実行。
ひたすら狂ったように「にゃーん」をクリックすれば「にゃーん」とTootされます。

# ライセンス
[MIT ライセンスです](./LICENSE)

# 開発環境

Ruby 2.3.3

DXRuby 1.4.5

# 参考文献

[Mastodon API gemを使って投稿する](https://qiita.com/takahashim/items/a8c0eb3a75d366cfe87b)

[mastodon-api](https://www.rubydoc.info/gems/mastodon-api)

[Rubyで完全自動Mastodon botを作成する](https://qiita.com/daiki-futami/items/afe21c00dc50c23cd109)