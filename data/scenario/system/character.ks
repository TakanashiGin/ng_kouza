

; キャラクターの定義
[chara_new name="canon" jname="カノン" storage="chara/normal.png" width="450" height="600"]


; 表情差分設定（CSVを使っているので難しいことやってる）
[iscript]
for (var i = 0; i < sf.face_list_array.length; i++) {
  tyrano.plugin.kag.ftag.startTag('chara_face', {
    name : 'canon',
    face : sf.face_list_array[i][0],
    storage : 'chara/' + sf.face_list_array[i][1] + '.png'
  });
}
[endscript]


[return]
