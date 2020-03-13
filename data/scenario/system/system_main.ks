

; csvファイル読み込み（難しいので飛ばしてOK）
@call storage="system/csv.ks"

; tyrano.ks読み込み
@call storage="system/tyrano.ks"


; key_eventプラグイン読み込み
@plugin name="key_event"

; プラグインより esc key 強制終了
[key_event method="esc"]

; プラグインより f key 全画面表示
[key_event method="screen_full"]


; テーマ一括プラグイン読み込み
[plugin name="theme_kopanda_03b"]


; メッセージウィンドウにキャラクターを表示するプラグインの読み込み
[plugin name="charaFaceShow"]


; 漫符プラグイン読み込み
[plugin name="manpu"]


; マクロ読み込み
@call storage="system/macro.ks"


; キャラクター読み込み
@call storage="system/character.ks"





; [return]でcall元に戻る
[return]
