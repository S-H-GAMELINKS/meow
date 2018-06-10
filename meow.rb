require 'bundler/setup'
Bundler.require(:default)

require 'mastodon'
require_relative 'input'

url = UrlInputForm("https://mstdn.jp")
token = TokenInputForm("")

#MastodonへのToot準備
client = Mastodon::REST::Client.new(base_url: "#{url}", bearer_token: "#{token}")
message = ("にゃーん")

#にゃーんボタンの描画
button = Sprite.new(0, 0, Image.load("meow.png"))

#マウスの作成
mouse = Sprite.new(0, 0, Image.new(10, 10, C_WHITE))

#ウインドウのリサイズ
Window.resize(100, 56)

Window.loop do

    #マウスの位置を取得
	mouse.x, mouse.y = Input.mouse_x, Input.mouse_y

    #にゃーんボタンの描画
    button.draw

    # 左クリックで「にゃーん」とToot
    if mouse === button  && Input.mouse_push?(M_LBUTTON) then
        response = client.create_status(message)
    end

    #エスケープキーでループを抜ける
	if Input.key_push?(K_ESCAPE) then
		break
	end
end