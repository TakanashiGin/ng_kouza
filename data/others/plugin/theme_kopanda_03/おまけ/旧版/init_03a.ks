;-------------------------------------------------------------
; ティラノスクリプト テーマプラグイン theme_kopanda_03a
; 作者:こ・ぱんだ
; http://kopacurve.blog33.fc2.com/
;-------------------------------------------------------------

[iscript]
/* 初期化 */
mp.font_color = mp.font_color || "0x383C5F"; // テキストのフォントカラー
mp.name_color = mp.name_color || "0xF5F5F5"; // 名前欄のフォントカラー
mp.frame_opacity = mp.frame_opacity || "255"; // メッセージフレームの不透明度（0～255）
[endscript]

;レイヤメッセージの削除
[free name="chara_name_area" layer="message0"]

;メッセージフレーム設定（名前欄）
[ptext name="chara_name_area" layer="message0" color="&mp.name_color" size=28 x=30 y=410]
[chara_config ptext="chara_name_area"]

;メッセージフレーム設定（全体）
[position layer="message0" width="960" height="240" top="400" left="0"]
[position layer="message0" page="fore" frame="../others/plugin/theme_kopanda_03b/image/frame_message.png" margint="70" marginl="40" marginr="50" marginb="30" opacity="&mp.frame_opacity"]

[font color="&mp.font_color"]
[deffont color="&mp.font_color"]

;-----------------------------------
;▼ロールボタンを表示するマクロ
;-----------------------------------
[macro name="add_theme_button"]

;メニューボタン非表示
[hidemenubutton]

;q.save
[button name="role_button" role="qsave" width="38" height="48" graphic="../others/plugin/theme_kopanda_03a/image/button/qsave.png" enterimg="../others/plugin/theme_kopanda_03a/image/button/qsave2.png" x=470 y=400]

;q.load
[button name="role_button" role="qload" width="38" height="48" graphic="../others/plugin/theme_kopanda_03a/image/button/qload.png" enterimg="../others/plugin/theme_kopanda_03a/image/button/qload2.png" x=510 y=400]

;save
[button name="role_button" role="save" width="38" height="48" graphic="../others/plugin/theme_kopanda_03a/image/button/save.png" enterimg="../others/plugin/theme_kopanda_03a/image/button/save2.png" x=550 y=400]

;load
[button name="role_button" role="load" width="38" height="48" graphic="../others/plugin/theme_kopanda_03a/image/button/load.png" enterimg="../others/plugin/theme_kopanda_03a/image/button/load2.png" x=590 y=400]

;auto
[button name="role_button" role="auto" width="38" height="48" graphic="../others/plugin/theme_kopanda_03a/image/button/auto.png" enterimg="../others/plugin/theme_kopanda_03a/image/button/auto2.png" x=630 y=400]

;skip
[button name="role_button" role="skip" width="38" height="48" graphic="../others/plugin/theme_kopanda_03a/image/button/skip.png" enterimg="../others/plugin/theme_kopanda_03a/image/button/skip2.png" x=670 y=400]

;log
[button name="role_button" role="backlog" width="38" height="48" graphic="../others/plugin/theme_kopanda_03a/image/button/log.png" enterimg="../others/plugin/theme_kopanda_03a/image/button/log2.png" x=710 y=400]

;screen
[button name="role_button" role="fullscreen" width="38" height="48" graphic="../others/plugin/theme_kopanda_03a/image/button/screen.png" enterimg="../others/plugin/theme_kopanda_03a/image/button/screen2.png" x=750 y=400]

;menu
[button name="role_button" role="menu" width="38" height="48" graphic="../others/plugin/theme_kopanda_03a/image/button/menu.png" enterimg="../others/plugin/theme_kopanda_03a/image/button/menu2.png" x=790 y=400]

;config（※sleepgame を使用して config.ks を呼び出しています）
[button name="role_button" role="sleepgame" width="38" height="48" graphic="../others/plugin/theme_kopanda_03a/image/button/sleep.png" enterimg="../others/plugin/theme_kopanda_03a/image/button/sleep2.png" x=830 y=400 storage="../others/plugin/theme_kopanda_03a/config.ks"]

;close
[button name="role_button" role="window" width="38" height="48" graphic="../others/plugin/theme_kopanda_03a/image/button/close.png" enterimg="../others/plugin/theme_kopanda_03a/image/button/close2.png" x=870 y=400]

;title
[button name="role_button" role="title" width="38" height="48" graphic="../others/plugin/theme_kopanda_03a/image/button/title.png" enterimg="../others/plugin/theme_kopanda_03a/image/button/title2.png" x=910 y=400]

[endmacro]

;-------------------------------------
; ▼システムで利用するHTML,CSS
;-------------------------------------
;セーブ画面のHTMLファイル
[sysview type="save" storage="./data/others/plugin/theme_kopanda_03a/html/save.html" ]
;ロード画面のHTMLファイル
[sysview type="load" storage="./data/others/plugin/theme_kopanda_03a/html/load.html" ]
;バックログ画面のHTMLファイル
[sysview type="backlog" storage="./data/others/plugin/theme_kopanda_03a/html/backlog.html" ]
;メニュー画面のHTMLファイル
[sysview type="menu" storage="./data/others/plugin/theme_kopanda_03a/html/menu.html" ]
;スタイルシート呼び出し
[loadcss file="./data/others/plugin/theme_kopanda_03a/ts03a.css"]

;コール先に戻ります
[return]