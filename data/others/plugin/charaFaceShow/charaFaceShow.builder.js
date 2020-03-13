'use strict';
module.exports = class plugin_setting {

    constructor(TB) {

        this.TB = TB;
        this.name= TB.$.s("顔グラ");
        this.plugin_text= TB.$.s("メッセージウィンドウの手前にキャラクターを表示するプラグイン");
        this.plugin_img = "charaFaceShow.png";

    }

    triggerInstall(){
    }

    defineComponents(){

        var cmp = {};
        var TB = this.TB;

        cmp["tb_chara_face_show"] = {

            "info":{

                "default":true,
                "name":TB.$.s("顔グラ表示"),
                "help":TB.$.s("メッセージウィンドウの手前にキャラクターを表示します。"),
                "icon":TB.$.s("s-icon-star-full")

            },

            "component":{

                name : TB.$.s("顔グラ表示"),
                component_type : "Simple",

                default_view : {
                    base_img_url : "data/fgimage/",
                    icon : "s-icon-star-full",
                    icon_color : "#FFFF99",
                    category : "plugin"
                },

                param_view : {
                },

                param:{

					"storage" : {
						type : "ImageSelect",
						file_path : "fgimage/",
						base_img_url : "data/fgimage/",
						name : TB.$.s("画像"),
						help : TB.$.s("キャラクターの画像を選択します。"),
						vital : true,
						default_val : "",
						line_preview: "on",
						validate : {
							required : true
						}
					},

					/*画像をプレビューしながら位置を設定することができます*/
					"_clickable_img" : {
						type : "BoundSelect",
						bound_type : "image",
						file_path : "fgimage/",
						name : TB.$.s("立ち位置調整"),
						help : TB.$.s("座標を見やすいツールを使って指定することができます。"),
						vital : false,
						default_val : "",
					},

					"x" : {
						type : "Num",
						name : "横位置",
						unit : "px",
						help : TB.$.s("キャラクターの立ち位置を指定できます。指定しない場合は、自動的に立ち位置が決定されます。"),

						default_val : 0,

						spinner : {
							min : -10000,
							max : 10000,
							step : 10
						},

						validate : {
							number : true
						}
					},

					"y" : {
						type : "Num",
						name : "縦位置",
						unit : "px",
						help : TB.$.s("キャラクターの立ち位置を指定できます。指定しない場合は、自動的に立ち位置が決定されます。"),

						default_val : 0,

						spinner : {
							min : -10000,
							max : 10000,
							step : 10
						},

						validate : {
							number : true
						}
					},

					"width" : {
						type : "Num",
						name : "横幅",
						unit : "px",
						help : TB.$.s("キャラクターの横幅を指定します。"),

						default_val : 0,

						spinner : {
							min : 0,
							max : 10000,
							step : 10
						},

						validate : {
							number : true
						}
					},

					"height" : {
						type : "Num",
						name : "縦幅",
						unit : "px",
						help : TB.$.s("キャラクターの縦幅を指定します。"),

						default_val : 0,

						spinner : {
							min : 0,
							max : 10000,
							step : 10
						},

						validate : {
							number : true
						}
					},

					"reflect" : {
						type : "Check",
						text : TB.$.s("左右反転して表示する"),
						default_val : false
					},

					"time" : {
						type : "Num",
						name : TB.$.s("時間"),
						unit : TB.$.s("ﾐﾘ秒"),
						validate : {
							number : true
						},
						spinner : {
							min : 0,
							max : 99999,
							step : 10
						},
						default_val : 1000
					},

					"wait" : {
						type : "Check",
						text : TB.$.s("完了を待つ"),
						default_val : false
					},
                },

                preview_tag : function(preview,cmp){

                    var storage = cmp.data.pm["storage"];

                    //返却用のタグを設定
                    preview.code_current_bg ="[chara_show time=10 storage="+storage+" name=kaogura ] \n";

                },
            }
        };

        cmp["tb_chara_face_mod"] = {

            "info":{

                "default":true,
                "name":TB.$.s("顔グラ変更"),
                "help":TB.$.s("メッセージウィンドウの手前に表示しているキャラクターの表情を変更します。"),
                "icon":TB.$.s("s-icon-star-full")

            },

            "component":{

                name : TB.$.s("顔グラ変更"),
                component_type : "Image",

                default_view : {
                    base_img_url : "data/fgimage/",
                    icon : "s-icon-star-full",
                    icon_color : "#FFFF99",
                    category : "plugin"
                },

                param_view : {
                },

                param:{

					"storage" : {
						type : "ImageSelect",
						file_path : "fgimage/",
						base_img_url : "data/fgimage/",
						name : TB.$.s("画像"),
						help : TB.$.s("キャラクターの画像を選択します。"),
						vital : true,
						default_val : "",
						line_preview: "on",
						validate : {
							required : true
						}
					},

					"time" : {
						type : "Num",
						name : TB.$.s("時間"),
						unit : TB.$.s("ﾐﾘ秒"),
						validate : {
							number : true
						},
						spinner : {
							min : 0,
							max : 99999,
							step : 10
						},
						default_val : 1000
					},

					"cross" : {
						type : "Check",
						text : TB.$.s("元の表情もフェードアウトする"),
						default_val : false
					},
                },

                preview_tag : function(preview,cmp){

                    var storage = cmp.data.pm["storage"];

                    console.log(storage);

                    //返却用のタグを設定
                    preview.code_current_bg ="[chara_show time=10 storage="+storage+" name=kaogura ][chara_face_mod time=10 storage="+storage+" name=kaogura ] \n";

                },

            }

        };

        cmp["tb_chara_face_hide"] = {

            "info":{

                "default":true,
                "name":TB.$.s("顔グラ消去"),
                "help":TB.$.s("メッセージウィンドウの手前に表示しているキャラクターを消去します。"),
                "icon":TB.$.s("s-icon-star-full")

            },

            "component":{

                name : TB.$.s("顔グラ消去"),
                component_type : "Simple",

                default_view : {
                    base_img_url : "data/fgimage/",
                    icon : "s-icon-star-full",
                    icon_color : "#FFFF99",
                    category : "plugin"
                },

                param_view : {
                	left : "x",
                	top : "y",
                },

                param:{

					"time" : {
						type : "Num",
						name : TB.$.s("時間"),
						unit : TB.$.s("ﾐﾘ秒"),
						validate : {
							number : true
						},
						spinner : {
							min : 0,
							max : 99999,
							step : 10
						},
						default_val : 1000
					},

					"wait" : {
						type : "Check",
						text : TB.$.s("完了を待つ"),
						default_val : false
					},
                },

                preview_tag : function(preview,cmp){

                    var storage = cmp.data.pm["storage"];

                    //返却用のタグを設定
                    preview.code_current_bg ="[chara_face_hide time=10 name=kaogura ] \n";

                },

            }

        };

        return cmp;


    }

    test(){


    }

}
