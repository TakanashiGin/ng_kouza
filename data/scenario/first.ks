;一番最初に呼び出されるファイル

[title name="ノベルゲーム講座資料"]

[stop_keyconfig]



; データ読み込み（読み込みものはfirst.ksで読み込みのがいい）
[call storage="system/system_main.ks"]



;メッセージボックスは非表示
@layopt layer="message" visible=false

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]

;タイトル画面へ移動
@jump storage="title.ks"

[s]
