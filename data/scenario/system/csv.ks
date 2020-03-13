

[iscript]
$.get("./data/others/canon.csv", function(data) {
    f.face_list = [];
    f.face_list = data.split("\n");
    TG.kag.stat.is_stop = false;
    TG.kag.ftag.startTag("jump",{target:"*complete_load_face_csv"});
});
[endscript]
[s]

*complete_load_face_csv
[iscript]
sf.face_list_array = [];
for(var i=0, l=f.face_list.length; i<l; i++){
    sf.face_list_array[i] = f.face_list[i].split(",");
    for(var j=0, m=sf.face_list_array[i].length; j<m; j++){
        sf.face_list_array[i][j] = sf.face_list_array[i][j].replace( /(^\s+)|(\s+$)/g , ""  );
    }
}
// dubug
console.log('== csv loading ==');
for (var debug_1=1; debug_1<sf.face_list_array.length; debug_1++) {
  console.log('-- face_' + debug_1 + ' --');
  for (var debug_2=0; debug_2<sf.face_list_array[debug_1].length; debug_2++) {
    console.log(sf.face_list_array[0][debug_2] + '：' + sf.face_list_array[debug_1][debug_2]);
  }
}
console.log('== clear ==');
[endscript]




[return]
