//<continuation number="80">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_037.nss_MAIN
{

	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼イベントＣＧ
	#イベントファイル名=true;
	#bg002_空a_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_038.nss";

}

scene md04_037.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md04_036.nss"


//◆上空
//◆進駐軍ＶＳ六波羅、激しい空戦

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg001_空a_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm08", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒幕１",1500,true);




	OnSE("se戦闘_攻撃_野太刀振る01", 1000);

	CreateColorSPadd("白", 5000, "WHITE");
	DrawDelete("白", 150, 100, "slide_07_00_1", true);

	CreateTextureEX("絵背景200", 2000, Center, 0, "cg/ef/ef010_汎用斜め軌道.jpg");
	CreateTextureEX("絵背景300", 2100, Center, 0, "cg/ef/ef015_汎用横軌道.jpg");

	OnSE("se戦闘_攻撃_刀連撃01", 1000);
	EffectZoomadd(10000, 100, 100, "cg/ef/ef003_汎用移動.jpg", false);
	Zoom("絵背景200", 500, 2500, 1200, Dxl2, false);
	Fade("絵背景200", 100, 1000, null, true);

	OnSE("se戦闘_攻撃_刀振る02", 1000);
	EffectZoomadd(10000, 100, 100, "cg/ef/ef003_汎用移動.jpg", false);
	Zoom("絵背景300", 500, 1200, 2500, Dxl2, false);
	Fade("絵背景300", 100, 1000, null, true);

	Fade("絵背景200", 0, 0, null, false);
	Fade("絵背景300", 100, 0, null, true);

	CreateColorSPadd("白", 5000, "WHITE");
	DrawDelete("白", 150, 100, "slide_07_00_1", true);


	CreateEffect("絵効果雨", 4000, Center, Middle, 512, 288, "Rain");
	SetAlias("絵効果雨","絵効果雨");
	Request("絵効果雨", AddRender);
	Move("絵効果雨", 0, 200, 144, null, true);
	Zoom("絵効果雨", 0, 5000, 5000, null, true);
	Rotate("絵効果雨", 0, @0, @0, @90, null,true);
	Fade("絵効果雨", 0, 100, null, true);

	CloudZoomSet(2500);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@1024,@-100,Dxl2,true);

	CreateTextureEX("やられ役", 1200, @-900, @-300, "cg/st/3d零零式竜騎兵_騎航_通常.png");
	CreateTextureEX("やられ役02", 1100, @-900, @-300, "cg/st/3d零零式竜騎兵_騎航_通常.png");
	Zoom("やられ役02", 0, 500, 500, null, true);
	SetBlur("やられ*", true, 1, 500, 70, false);


	OnSE("se戦闘_破壊_鎧01", 1000);

	CreateTextureSP("爆発", 15000, @0, @0, "cg/ef/ef022_汎用武者散華.jpg");
	CreatePlainEX("絵板写", 15000);
	Fade("絵板写", 0, 1000, null, true);
	Shake("絵板写", 3000000, 5, 3, 0, 0, 1000, DxlAuto, false);
	Zoom("絵板写", 2000, 2000, 2000, Dxl1, 1500);


	FadeDelete("絵板写", 1000, false);

	FadeDelete("爆発",1500,true);
	OnSE("se戦闘_動作_空突進03", 1000);




	Fade("やられ役", 200, 1000, null, false);
	Shake("やられ役", 10000000, 0, 1, 0, 0, 1000, AxlDxl, false);
	Move("やられ役", 300, @600, @0, Dxl1, true);
	Move("やられ役", 300, @-50, @0, AxlDxl, false);

	Fade("やられ役02", 200, 1000, null, false);
	Shake("やられ役02", 10000000, 1, 1, 0, 0, 1000, AxlDxl, false);
	Move("やられ役02", 300, @1100, @0, Dxl1, true);
	Move("やられ役02", 300, @-50, @0, AxlDxl, false);


	SetNwC("cg/fw/nw零零式竜騎兵Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／零零式Ａ】
<voice name="ｅｔｃ／零零式Ａ" class="その他男声" src="voice/md04/0370010e301">
「ハァッ……フッ……ッッ」

{	NwC("cg/fw/nw零零式竜騎兵Ｂ.png");}
//【ｅｔｃ／零零式Ｂ】
<voice name="ｅｔｃ／零零式Ｂ" class="その他男声" src="voice/md04/0370020e302">
「ウゥ……ク、ォォオオオ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戦闘

	OnSE("se戦闘_動作_空突進01", 1000);

	Move("やられ役", 300, @1700, @0, Axl3, true);
	OnSE("se戦闘_動作_空突進01", 1000);

	Move("やられ役02", 300, @1200, @0, Axl3, true);
	Delete("やられ役*");


	CreateColorSP("黒幕１", 21000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	StC(1000, @0, @150, "cg/st/3dユーウォーキー_騎航_戦闘.png");
	FadeStC(0, false);
	SetBlur("@StC*", true, 1, 500, 70, false);

	CloudZoomSet(2500);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@-1024,@-100,Dxl2,true);

	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);


	OnSE("se戦闘_バロウズ_ボーガン射撃01", 1000);

	CreateColorSPadd("白", 1100, "WHITE");
	Shake("@StC*", 300, 10, 0, 0, 0, 1000, null, false);

	Move("@StC*", 550, @0, @100, DxlAuto, false);

	DrawDelete("白", 100, 100, "slide_08_00_1", true);
	CreateTextureEX("煙", 15000, @200, @0, "cg/ef/efRec_雲a01.png");
	Fade("煙", 550, 800, null, false);
	Move("@StC*", 550, @0, @-100, DxlAuto, false);
	DrawDelete("煙", 550, 100, "effect_01_00_0", true);

	Move("@StC*", 550, @800, @700, AxlAuto, true);


	CreateSE("SE03","se戦闘_衝撃_鎧散華");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateSE("SE03","se戦闘_衝撃_鎧散華");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateColorSPadd("ばく１", 17000, "#990000");
	CreateColorSPadd("ばく２", 16000, "#ffffcc");
	CreateColorSPadd("ばく０", 15000, "#FFFFFF");
	DrawTransition("ばく１", 0, 1000, 200, 800, null, "cg/data/circle_12_01_1.png", false);
	DrawTransition("ばく２", 0, 1000, 400, 500, null, "cg/data/circle_12_01_1.png", false);
	DrawTransition("ばく０", 0, 1000, 300, 100, null, "cg/data/circle_12_01_1.png", true);
	FadeDelete("ばく*", 1500, true);

//◆九〇式竜騎兵

	CreateColorSP("黒幕１", 21000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	CreateTextureSP("やられ役", 1200, @-1700, @-900, "cg/st/3d零零式竜騎兵_騎航_通常.png");
	CreateTextureSP("やられ役02", 1000, @-900, @-400, "cg/st/3d零零式竜騎兵_騎航_通常.png");
	CreateTextureSP("幕府機", 1100, @-1000, @-300, "cg/st/3d九四式指揮官_騎航_通常.png");
	Zoom("やられ役02", 0, 400, 400, null, true);
	Zoom("幕府機", 0, 500, 500, null, true);

	SetBlur("やられ*", true, 1, 500, 70, false);
	SetBlur("幕府機", true, 1, 500, 70, false);


	CloudZoomSet(2500);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@1024,@-100,Dxl2,true);

	Shake("やられ*", 10000000, 0, 1, 0, 0, 1000, AxlDxl, false);
	Shake("幕府機", 10000000, 0, 1, 0, 0, 1000, AxlDxl, false);

	DrawDelete("黒幕１", 300, 100, "slide_01_03_1", true);
	OnSE("se戦闘_動作_空突進02", 1000);

	Move("やられ役", 1000, @1200, @600, Dxl2, true);
	Move("やられ役", 600, @-50, @-50, AxlDxl, true);

	OnSE("se戦闘_動作_空突進01", 1000);

	Move("幕府機", 300, @1100, @0, Dxl1, true);
	Move("幕府機", 300, @-50, @0, AxlDxl, true);


	SetNwC("cg/fw/nw普陀楽竜騎兵.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／幕府騎】
<voice name="ｅｔｃ／幕府騎" class="その他男声" src="voice/md04/0370030e261">
《おい、篠川の！
　どうした、様子が変だぞ!?》

{	NwC("cg/fw/nw普陀楽竜騎兵.png");}
//【ｅｔｃ／幕府騎】
<voice name="ｅｔｃ／幕府騎" class="その他男声" src="voice/md04/0370040e261">
《調子が悪いならひとまず下がってろ。
　お前らは俺達の頼みの綱なんだ》

{	NwC("cg/fw/nw零零式竜騎兵Ａ.png");}
//【ｅｔｃ／零零式Ａ】
<voice name="ｅｔｃ／零零式Ａ" class="その他男声" src="voice/md04/0370050e301">
《いや……平気だ。
　調子……調子は、すごくいい》

//【ｅｔｃ／零零式Ａ】
<voice name="ｅｔｃ／零零式Ａ" class="その他男声" src="voice/md04/0370060e301">
《最高だ……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_動作_空突進03", 1000);

	Move("やられ役02", 300, @1100, @0, Dxl2, true);
	Move("やられ役02", 300, @-50, @0, AxlDxl, true);

	SetNwC("cg/fw/nw零零式竜騎兵Ｂ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【ｅｔｃ／零零式Ｂ】
<voice name="ｅｔｃ／零零式Ｂ" class="その他男声" src="voice/md04/0370070e302">
《クッ、クク……ああそうだ。
　いくらでもいくらでもいくらでも戦えるゥゥ》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	Move("やられ役", 300, @-50, @50, Dxl1, true);
	OnSE("se戦闘_動作_空突進01", 1000);

	Move("やられ役", 300, @500, @-1000, Axl2, true);

	Move("やられ役02", 300, @-50, @-50, Dxl1, true);
	OnSE("se戦闘_動作_空突進01", 1000);

	Move("やられ役02", 300, @500, @1000, Axl2, true);

	SetNwC("cg/fw/nw普陀楽竜騎兵.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【ｅｔｃ／幕府騎】
<voice name="ｅｔｃ／幕府騎" class="その他男声" src="voice/md04/0370080e261">
《お、おい……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――




//◆戦闘
	OnSE("se戦闘_動作_空突進04",1000);

	CreateColorSP("黒幕１", 5000, "#000000");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Rotate("絵効果雨", 0, @0, @0, @40, null,true);

	Delete("やられ役*");
	Delete("幕府機");

	CreateTextureEX("やられ役a", 1200, @-1050, @-700, "cg/st/3d零零式竜騎兵_騎航_通常.png");
	CreateTextureEX("やられ役b", 1200, @-1050, @-700, "cg/st/3d零零式汚染_騎航_発振.png");
	CreateTextureEXadd("発射", 1600, @0, @0, "cg/ef/ef038_汎用射撃.jpg");
	Rotate("発射", 0, @0, @180, @0, null, true);
	Zoom("発射", 0, 2000, 2000, null, true);

	OnSE("se戦闘_動作_空突進01",1000);

	DrawTransition("黒幕１", 200, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("黒幕１");

	Fade("やられ役a", 200, 1000, null, false);
	Shake("やられ役*", 1000000, 1, 1, 0, 0, 1000, null, false);
	Move("やられ役*", 300, @1750, @1000, null, true);

	Zoom("やられ役*", 800, 500, 500, DxlAuto, false);
	Zoom("@OnBG*", 800, 1300, 1300, DxlAuto, false);

	Move("やられ役*", 800, -343, -475, AxlDxl, true);

	OnSE("se特殊_鎧_エネルギー充電01", 1000);

	EffectZoomadd(17000, 1500, 1000, "cg/ef/ef044_火花a.jpg", false);

	CreateTextureEXadd("チャージ", 1500, @0, @0, "cg/ef/ef044_火花a.jpg");
	Fade("やられ役b", 1000, 1000, null, false);
	Fade("チャージ", 1000, 800, null, true);

	SetVolume("@OnSE*", 1000, 0, null);

	Move("チャージ", 200, -1043, -1075, Axl1, false);
	Move("やられ役*", 200, -1043, -1075, Axl1, false);

	Wait(150);
	OnSE("se特殊_電撃_放電01", 1000);

	Fade("発射", 0, 1000, null, true);
	Zoom("発射", 300, 3000, 3000, Dxl1, false);
	DrawTransition("発射", 150, 0, 1000, 100, null, "cg/data/beam_01_00_0.png", true);


	CreateColorSP("白", 25000, "WHITE");
	DrawTransition("白", 150, 0, 1000, 100, null, "cg/data/circle_02_01_0.png", true);


	OnSE("se戦闘_破壊_鎧01", 1000);

	CreateTextureSP("爆発", 15000, @0, @0, "cg/ef/ef022_汎用武者散華.jpg");
	CreatePlainEX("絵板写", 15000);
	Fade("絵板写", 0, 1000, null, true);
	Shake("絵板写", 3000000, 5, 4, 0, 0, 1000, DxlAuto, false);

	Zoom("絵板写", 2000, 2000, 2000, Dxl1, false);
	EffectZoomadd(20000, 1000, 100, "cg/ef/ef022_汎用武者散華.jpg", false);

	DrawTransition("白", 150, 1000, 0, 100, null, "cg/data/circle_02_01_1.png", true);
	Delete("白");


	Wait(500);
	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md04_038.nss"