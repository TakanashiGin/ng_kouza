
*start

[cm]
[clearfix]
[start_keyconfig]
; [hr]はmacro.ksで定義済
[hr]

[bg storage="../fgimage/color/black.png" time="0"]


; アドベンチャー形式のメッセージウィンドウを表示
[message_window_adventure]
[add_theme_button]


; [p]：改ページ&クリック待ち
クリックでスタート。[p]


; 暗幕
[mask color="white"]

; 各レイヤーの設定
[layopt layer="message0" visible="false"]
[layopt layer="fix" visible="false"]
[layopt layer="0" visible="true"]
[layopt layer="1" visible="true"]

; カメラを上に動かしておく
[camera y="400" time="0" layer="0" wait="true"]
[camera y="600" time="0" layer="1" wait="true"]

; キャラを表示
[chara_show name="canon" wait="false" layer="1"]

[image time="700" storage="../bgimage/umi_big.jpg" x="-660" y="-600" width="1920" height="1280" layer="0"]
[wait time="300"]

; BGMをプレイ
[playbgm storage="wave.ogg" volume="40" loop="true"]

; マスクの解除
[mask_off]


; レイヤーを元に戻す
[layopt layer="message0" visible="true"]
[layopt layer="fix" visible="true"]


; #XXXで話者名を表示
#？？？
[voice start="true"]「やぁ。目が覚めたようだね」[p]
#


[layopt visible="false" layer="message0"]
[layopt visible="false" layer="fix"]

[camera x="300" y="400" time="2000" layer="0" from_y="400" layer="0"]
[camera x="-300" y="400" time="2000" layer="0" from_x="300" from_y="400" layer="0"]
[camera x="0" y="400" time="2000" layer="0" from_x="-300" from_y="400" layer="0"]

[layopt layer="message0" visible="true"]
[layopt layer="fix" visible="true"]


#？？？
[voice]「そこじゃない、そこじゃない。もっと下だよ」[p]
#


[layopt visible="false" layer="message0"]
[layopt visible="false" layer="fix"]

; BGMをフェードアウト
[fadeoutbgm time="2000"]

[reset_camera layer="1" wait="false" time="2000" ease_type="ease-out"]
[reset_camera layer="0" wait="true"  time="2000" ease_type="ease-out"]

[playbgm storage="music.ogg" loop="true" volume="40"]

; メッセージレイヤに顔を表示するのでメッセージウィンドウを変更
[message_window_adventure face="true"]
[add_theme_button]

; メッセージレイヤにキャラを表示
[message_face_show name="canon" storage="chara/normal.png" x="-60" y="360" wait="true"]

#Canon
[voice]「こんにちは、僕の名前は[<b]Canon[>]」[p]
#Canon
[voice]「僕がこのノベルゲーム講座参考資料を説明していくよ」[p]

; キャラクターの表情を変更（[mod]はmacro.ksで定義）
[mod name="canon" face="happy" wait="false"]
[manpu name="canon" type="onpu" layer="1"]

#Canon
[voice]「ゆっくりしていってね」[p]
#

[chara_mod name="canon" face="normal" wait="false"]
[message_face_hide name="canon" time="0" wait="true"]


; ★IE, Edge用。カメラの準備運動をしてやらないと一部挙動がおかしくなる、、、。
[camera layer="1" x="0" time="0"]
[camera layer="0" x="0" time="0"]

; [camera]×２
; カノンは海よりも手前にいるわけですから、海よりもカノンのほうがダイナミックに動くのが自然です。
; そこで、カノンを映している１カメラのほうを気持ち多めに動かします。(比は適当)
[camera time="2000" x="-300" y="0" layer="1" wait="false"]
[camera time="2000" x="-160" y="0" layer="0"]

; 以下、同上。
[camera time="2000" x="300" y="0" layer="1" wait="false"]
[camera time="2000" x="160" y="0" layer="0"]

[camera time="2000" x="-180" y="90" zoom="0.6" layer="1" wait="false"]
[camera time="2000" x="-120" y="60" zoom="0.9" layer="0"]

[reset_camera time="2000" layer="1" wait="false"]
[reset_camera time="2000" layer="0"]


[chara_mod name="canon" face="worry" wait="false"]
[message_face_show name="canon" face="worry" x="-60" y="360" wait="false"]
[manpu name="canon" type="fukidashi2" layer="1"]


#Canon
[voice]「君、どうしてそんなにキョロキョロしているのかな」[p]
#Canon
[voice]「まるで不審者みたいだよ」[p]
#


[layopt visible="false" layer="message0"]
[layopt visible="false" layer="fix"]
[message_face_hide name="canon" time="0" wait="true"]


; ★IE, Edge用。カメラの準備運動をしてやらないと一部挙動がおかしくなる、、、。
[camera time="0" x="0"]

; [camera]
; カノンの胸に大きくズーム・イン。
; この時点で、完全に顔は見えなくなる
[playse storage="voice/voice_ex1.ogg" buf="2" loop="false"]
[camera time="2000" zoom="3" x="10" y="-80"]
[wait   time="1000"]

; [chara_mod]
; 顔が映っていない間に、表情チェンジ。
[chara_mod name="canon" face="angry_comical" time="0"]

; [camera]
; カメラを下からぐいっとパンする
[playse storage="voice/voice_ex2.ogg" buf="2" loop="false"]
[camera time="2000" y="80"]
[wait   time="1000"]

; [reset_camera]
; 400ミリ秒と比較的急にカメラを戻すことで勢いをつける
[reset_camera time="400" wait="false"   ]

[layopt visible="true" layer="message0"]
[layopt visible="true" layer="fix"]
[message_face_show name="canon" face="angry_comical" x="-60" y="360" time="0" wait="false"]
[manpu name="canon" type="muka" layer="1"]


#Canon
[voice]「どっ、どこを見ているのかなっ！！？？」[wait time="500"][p]


; [camera]
; カメラタグには from_x, from_y, from_rotate 属性があり、
; カメラ演出開始時のx, y, rotateを指定できます。
; (指定しなければ、現在のカメラ位置が基準になります。)
; これを指定することで、不連続なカメラ演出ができますね。
[camera wait="false" y="80" zoom="1.5" from_y="-100" from_zoom="1.5" ease_type="cubic-bezier(0.075, 0.82, 0.165, 1)"]

#Canon
[voice]「このバカッ！[l]

[camera wait="false" y="80" zoom="2.2" from_y="-160" from_zoom="2.2" ease_type="cubic-bezier(0.075, 0.82, 0.165, 1)"]

[voice]
_　すけべっ！！[l]

[camera wait="false" x="10" y="100" zoom="3" rotate="0" from_y="80" from_zoom="5" from_rotate="270"]

[voice]
_　ヘンタイッ！！！！」[p]

[reset_camera wait="false"]


[mod name="canon" face="angry_normal" storage="angry_2"]

#Canon
[voice]「そういう君には……」[p]

[playse storage="feed.ogg"]
[quake time="500" count="5" hmax="0" vmax="20" wait="true"]
[wait time="500"]

[mod name="canon" face="happy" wait="false"]
[manpu name="canon" type="waiwai" layer="1"]

#Canon
[voice]「僕の拳骨の味はいかがだったかな？」[p]

[mod name="canon" face="normal" wait="true"]

#Canon
[voice]「まぁ？[l]

[mod name="canon" face="happy" wait="true"]

#Canon
[voice]
_ なんて言ったって僕はこんなに可愛いんだからね」[p]

[mod name="canon" face="smile" wait="false"]
[manpu name="canon" type="heart3" layer="1"]

#Canon
[voice]「僕にそんな感情を抱いてしまうのも仕方ないよ」[p]

[mod name="canon" face="angry_comical" wait="false"]
[manpu name="canon" type="nami" layer="1"]

#Canon
[voice]「なんだい？
_ その顔は……」[p]

[mod name="canon" face="close" wait="true"]

#Canon
[voice]「ふぅ……」[p]

[mod name="canon" face="normal" wait="true"]

#Canon
[voice]「茶番はここまでにしてそろそろ説明を始めようか」[p]
#Canon
[voice]「ちなみに言うとここまでのCamera演出は結構ハードだったのでこれ以降は控えるよ」[p]
#Canon
[voice]「そうそう、気づいた人もいるかもしれないけど、今この画面は"アドベンチャー形式のメッセージウィンドウ"になっているよ」[p]

#Canon
[voice]「メッセージウィンドウ左にキャラクターの顔が表示されているタイプだね」[p]

[mod name="canon" face="happy" wait="true"]

#Canon
[voice]「ＵＩについては"こ・ぱんだ"氏がフリーで提供しているテーマ一括プラグインを使わせていただいているよ」[p]
#Canon
[voice]「そのほかにも色々なプラグインを使っているから、興味のある人は見てみよう」[p]

[mod name="canon" face="normal" wait="true"]

[voice]「そして……」[p]

[mask time="500"]
#
[message_window_sound_novel]
[mask_off time="500"]

[voice]「これが"サウンドノベル形式のメッセージウィンドウ"の例だよ」[lr]
_ カノンが俺に全画面に広がったメッセージウィンドウを自慢げに見せつける。[lr]

[mod name="canon" face="happy" wait="true"]

[voice]「どうだい？
_ これなら地の文で多くのことが表現出来るだろう？[lr]
[voice]
_ ティラノスクリプトは縦書きにも対応しているよ」[lr]
_ サウンドノベル形式でもボタンを設置するタイプ、しないタイプがあるが、傾向からいって後者が多くを占めるだろう。[lr]

[mod name="canon" face="angry_comical" wait="true"]

[voice]「君、モノローグで解説をしないで欲しいな。それは僕の役目じゃないか」[lr]
_ カノンはそう言うと不満げに顔を傾げて三角形に変化した口を見せる。[lr]
_ 関係ないが、彼女のこの表情すこ。[lr]

[mod name="canon" face="shy_2" wait="true"]

[voice]「もしかして今物凄く恥ずかしいことようなことを考えてないかい？」[lr]
_ いや、気のせいだ。と言わんばかりに四時の方向に向かって口笛を吹く。[p]


[mask time="500"]
[mod name="canon" time="0" wait="true"]
[message_window_adventure face="true"]
[add_theme_button]
[mask_off time="500"]


#Canon
[voice]「元のメッセージウィンドウに戻ったよ」[p]
#Canon
[voice]「とまぁ、今回はこれくらいかな。作るのも疲れたし」[p]
#Canon
[voice]「結局何が言いたかったかというと」[p]
[voice]「ティラノスクリプトでも使い方次第で企業レベルのノベルゲームが制作できるってことを伝えたかったんだ」[p]
#Canon
[voice]「実際、任天堂Ｓｗｉｔｃｈのゲームに採用されたティラノスクリプト産のゲームもあるくらいだからね」[p]

[mod name="canon" face="happy" wait="true"]

#Canon
[voice]「興味がある人は公式のチュートリアルをやってみるといいよ」[p]
#Canon
[voice]「実戦的な技術については公式のテクニックサンプル集１と２を見てみれば色々と参考になるよ」[p]


[mod name="canon" face="close" wait="false"]

; [image][anim] 黒画像を画面いっぱいに引き伸ばして表示し、即座に不透明度をゼロにします。
[image layer="0" x="0" y="0" width="960" height="640" storage="color/black.png" name="black"]
[anim name="black" opacity="0" time="0"]

; [anim][wa] 1000ミリ秒かけて例の黒画像の不透明度を190にし、そのアニメーションの完了を待機します。
[anim name="black" opacity="190" time="1000" effect="easeOutExpo"]

[manpu name="canon" type="ase" layer="1"]

#Canon
[voice]（実は今までのCameraアニメーションがほとんどテクニックサンプル集から持ってきたものだなんて、口が裂けても言えない）[p]

[free name="black" layer="0" wait="false"]
[mod name="canon" face="happy" wait="false"]
[manpu name="canon" type="waiwai" layer="1"]

#Canon
[voice]「何はともあれ、興味がある人はぜひ色々調べてみよう」[p]
#Canon
[voice]「余裕がある人はこのゲームのファイルの中身を解読してみるのも面白いかもね」[p]

[mod name="canon" face="smile" wait="false"]
[manpu name="canon" type="heart3" layer="1"]

#Canon
[voice]「それじゃあ、またどこかで会おう」[p]

[mod name="canon" face="normal"]

[glink color="ts03b" storage="scene1.ks" size="20" x="260" width="400" y="100" text="はい" target="*yes"]
[glink color="ts03b" storage="scene1.ks" size="20" x="260" width="400" y="250" text="いいえ" target="*no"]

#Canon
[voice]「ゲームを終了するかい？」[s]



*yes

[mod name="canon" face="happy" wait="true"]

#Canon
[voice num="43"]「うん、今日はお疲れ様」[p]

[jump target="common"]



*no

[mod name="canon" face="smile" wait="true"]

#Canon
[voice num="44"]「――と言われてもこれ以上は何もないから強制終了するよ」[p]

[jump target="common"]



*common

#Canon
[voice num="45"]「じゃぁね」[p]
#
[voice num="46"][dialog type="alert" text="ゲームを終了するよ" target="game_end"][s]



*game_end
[close ask="false"]
