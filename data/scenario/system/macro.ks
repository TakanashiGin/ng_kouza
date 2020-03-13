

; サウンドノベル形式メッセージウィンドウ専用マクロ
; クリック待ち×改行
[macro name="lr"]
[l][r]
[endmacro]


; フォント設定の簡略化
[macro name="<b"]
[font color="blue"]
[endmacro]


; フォント設定をリセット
[macro name=">"]
[resetfont]
[endmacro]


; オリジナルボイス再生マクロ
[macro name="voice"]
[iscript]
if (mp.start) f.vo_num = 0;
f.vo_num++;
var num = Number(mp.num) || f.vo_num;
if (num < 10) tf.voice = 'voice/voice00' + num + '.ogg';
else if (num >= 10) tf.voice = 'voice/voice0' + num + '.ogg';
[endscript]
[playse storage="&tf.voice" buf="2" loop="false"]
[endmacro]


; レイヤー０とメッセージウィンドウ上のキャラの表情を同時に変えるマクロ
[macro name="mod"]
[iscript]
mp.name = mp.name || 'canon';
mp.face = mp.face || 'normal';
mp.reflect = mp.reflect || "false";
mp.time = mp.time || 800;
mp.wait = mp.wait || "true";
mp.storage = mp.storage || mp.face;
tf.storage = 'chara/' + mp.storage + '.png';
[endscript]
[chara_mod name="&mp.name" face="&mp.face" reflect="&mp.reflect" time="&mp.time" wait="false"]
[tb_chara_face_mod name="&mp.name" storage="&tf.storage" reflect="&mp.reflect" time="&mp.time" wait="&mp.wait"]
[endmacro]


; ----------------------------------------------------------------------------

; charaFaceShowプラグインはもともとティラノビルダーのプラグインで使いにくいため、マクロで使いやすくする

[macro name="message_face_show"]
[iscript]
mp.face = mp.face || 'normal';
tf.storage = 'chara/' + mp.face + '.png';
[endscript]
[tb_chara_face_show name="&mp.name" storage="&tf.storage" x="&mp.x" y="&mp.y" width="300" height="400" wait="&mp.wait"]
[endmacro]

[macro name="message_face_mod"]
[tb_chara_face_mod name="&mp.name" storage="&mp.storage" reflect="&mp.reflect" time="&mp.time" wait="&mp.wait"]
[endmacro]

[macro name="message_face_hide"]
[tb_chara_face_hide name="&mp.name" time="&mp.time" wait="&mp.wait"]
[endmacro]

; ----------------------------------------------------------------------------


; サウンドノベル形式のメッセージウィンドウ
[macro name="message_window_sound_novel"]
  [clearfix]
  [current layer="message1"]
  [font color="white"]
  [layopt layer="message0" visible="false"]
  [layopt layer="message1" visible="true"]
  [layopt layer="fix" visible="true"]
  [position layer="message1" width="900" height="550" top="30" left="30" marginl="5" marginr="5" opacity="&f.f_opacity"]
;	歯車ボタン（メニューボタン）非表示
  [hidemenubutton]
;q.save
  [button name="role_button" role="qsave" width="54" height="72" graphic="../others/plugin/theme_kopanda_03b/image/button/qsave.png" enterimg="../others/plugin/theme_kopanda_03b/image/button/qsave2.png" x=456 y=565 enterse="cursor01.ogg"]
;q.load
  [button name="role_button" role="qload" width="54" height="72" graphic="../others/plugin/theme_kopanda_03b/image/button/qload.png" enterimg="../others/plugin/theme_kopanda_03b/image/button/qload2.png" x=516 y=565 enterse="cursor01.ogg"]
;auto
  [button name="role_button" role="auto" width="54" height="72" graphic="../others/plugin/theme_kopanda_03b/image/button/auto.png" enterimg="../others/plugin/theme_kopanda_03b/image/button/auto2.png" x=576 y=565 enterse="cursor01.ogg"]
;skip
  [button name="role_button" role="skip" width="54" height="72" graphic="../others/plugin/theme_kopanda_03b/image/button/skip.png" enterimg="../others/plugin/theme_kopanda_03b/image/button/skip2.png" x=636 y=565 enterse="cursor01.ogg"]
;log
  [button name="role_button" role="backlog" width="54" height="72" graphic="../others/plugin/theme_kopanda_03b/image/button/log.png" enterimg="../others/plugin/theme_kopanda_03b/image/button/log2.png" x=696 y=565 enterse="cursor01.ogg"]
;	コンフィグボタン（※sleepgame を使用して config.ks を呼び出しています）
  [button name="role_button" role="sleepgame" width="54" height="72" graphic="../others/plugin/theme_kopanda_03b/image/button/sleep.png" enterimg="../others/plugin/theme_kopanda_03b/image/button/sleep2.png" storage="../others/plugin/theme_kopanda_03b/config.ks" x="756" y="565" enterse="cursor01.ogg"]
;screen
  [button name="role_button" role="fullscreen" width="54" height="72" graphic="../others/plugin/theme_kopanda_03b/image/button/screen.png" enterimg="../others/plugin/theme_kopanda_03b/image/button/screen2.png" x=816 y=565 enterse="cursor01.ogg"]
;close
  [button name="role_button" role="window" width="54" height="72" graphic="../others/plugin/theme_kopanda_03b/image/button/close.png" enterimg="../others/plugin/theme_kopanda_03b/image/button/close2.png" x=876 y=565 enterse="cursor01.ogg"]
[endmacro]


; バックログのテキストを[r]時改行
[macro name="hr"]
[iscript]
tf.system.backlog.push("");
[endscript]
[endmacro]




[return]
