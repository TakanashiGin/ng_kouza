
[cm][clearstack]

@clearstack
@bg storage ="title.jpg" time=100
@wait time = 200

*start

; -- credit表記をここでやる ---------------------------------------------------

; layer=0を表示
[layopt layer="0" visible="true"]

[ptext layer="0" text="Character：" size="35" color="black" x="0" y="50"  width="630" align="right" time="0"]
[ptext layer="0" text="BG："        size="35" color="black" x="0" y="100" width="630" align="right" time="0"]
[ptext layer="0" text="BGM1："      size="35" color="black" x="0" y="150" width="630" align="right" time="0"]
[ptext layer="0" text="BGM2："      size="35" color="black" x="0" y="200" width="630" align="right" time="0"]
[ptext layer="0" text="SE："        size="35" color="black" x="0" y="250" width="630" align="right" time="0"]
[ptext layer="0" text="UI："        size="35" color="black" x="0" y="300" width="630" align="right" time="0"]

[ptext layer="0" text="キャラクターなんとか機" size="30" color="black" x="630" y="52.5" width="330" align="left" time="0"]
[ptext layer="0" text="きまぐれアフター"      size="35" color="black" x="630" y="100" width="330" align="left" time="0"]
[ptext layer="0" text="PeriTune"             size="35" color="black" x="630" y="150" width="330" align="left" time="0"]
[ptext layer="0" text="効果音ラボ"            size="35" color="black" x="630" y="200" width="330" align="left" time="0"]
[ptext layer="0" text="効果音ラボ"            size="35" color="black" x="630" y="250" width="330" align="left" time="0"]
[ptext layer="0" text="空想曲線"              size="35" color="black" x="630" y="300" width="330" align="left" time="0"]

; -----------------------------------------------------------------------------

[button x=100 y=250 graphic="title/button_start.png" target="gamestart"]
[button x=100 y=320 graphic="title/button_load.png"  role="load" ]
[button x=100 y=390 graphic="title/button_cg.png" storage="cg.ks" ]
[button x=100 y=460 graphic="title/button_replay.png" storage="replay.ks" ]
[button x=100 y=530 graphic="title/button_config.png" role="sleepgame" storage="config.ks" ]

[s]


*gamestart

; layer=0を解放
[freeimage layer="0" time="0"]

;一番最初のシナリオファイルへジャンプする
@jump storage="scene1.ks"
