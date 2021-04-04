//<continuation number="40">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_024vs.nss_MAIN
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
	#ev956_バロウズ弓構え_a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc01_025.nss";

}

scene mc01_024vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_023vs.nss"

/*
//あきゅん「演出：ここのシーンで登場した竜騎兵は以下」
	CreateTextureEX("絵演鎧抜刀２", 700, Center, InBottom, "cg/st/3d八八式竜騎兵_立ち_抜刀.png");
	//CreateTextureEX("絵演鎧抜刀３", 600, Center, InBottom, "cg/st/3d九四式指揮官_立ち_抜刀.png");
	//CreateTextureEX("絵演鎧抜刀４", 800, Center, InBottom, "cg/st/3d九〇式指揮官_立ち_抜刀b.png");
	//CreateTextureEX("絵演鎧抜刀５", 600, Center, InBottom, "cg/st/3d九〇式竜騎兵_立ち_抜刀.png");
*/


//◆香奈枝サイド
//◆乱刃ひゅんひゅん
	PrintGO("上背景", 20000);
	CreateSE("SE01a","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE01a",0,1000,0,1250,null,false);
	CreateTextureEXadd("絵演上", 3100, Center, Middle, "cg/ef/ef015_汎用横軌道.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ef/ef015_汎用横軌道.jpg");
	Zoom("絵演上", 0, 10000, 10000, null, false);
	Fade("絵演上", 0, 450, null, true);
	Delete("上背景");

	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演上", 500, 0, 30, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, false);

	Wait(80);

	CreateSE("SE01b","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE01b",0,1000,0,1250,null,false);
	CreateTextureEXadd("絵演上２", 3100, Center, Middle, "cg/ef/ef011_汎用斜め軌道.jpg");
	CreateTextureEX("絵演２", 3000, Center, Middle, "cg/ef/ef011_汎用斜め軌道.jpg");
	Fade("絵演２", 0, 750, null, true);
	Zoom("絵演上２", 0, 10000, 10000, null, false);
	Fade("絵演上２", 0, 450, null, true);

	Zoom("絵演上２", 200, 1000, 1000, Dxl2, false);
	Shake("絵演上２", 500, 0, 30, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上２", 200, false);

	Wait(80);

	CreateSE("SE01c","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE01c",0,1000,0,1250,null,false);
	CreateTextureEXadd("絵演上３", 3100, Center, Middle, "cg/ef/ef008_汎用上下軌道.jpg");
	CreateTextureEX("絵演３", 3000, Center, Middle, "cg/ef/ef008_汎用上下軌道.jpg");
	Fade("絵演３", 0, 750, null, true);
	Zoom("絵演上３", 0, 10000, 10000, null, false);
	Fade("絵演上３", 0, 450, null, true);

	Zoom("絵演上３", 200, 1000, 1000, Dxl2, false);
	Shake("絵演上３", 500, 0, 30, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上３", 200, false);

	Wait(80);

	CreateSE("SE01d","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE01d",0,1000,0,1250,null,false);
	CreateTextureEXadd("絵演上３", 3100, Center, Middle, "cg/ef/ef013_汎用斜め軌道.jpg");
	CreateTextureEX("絵演３", 3000, Center, Middle, "cg/ef/ef013_汎用斜め軌道.jpg");
	Fade("絵演３", 0, 750, null, true);
	Zoom("絵演上３", 0, 10000, 10000, null, false);
	Fade("絵演上３", 0, 450, null, true);

	Zoom("絵演上３", 200, 1000, 1000, Dxl2, false);
	Shake("絵演上３", 500, 0, 30, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上３", 200, true);

//◆長剣一突
	CreatePlainSP("絵板写", 10000);
	CreateSE("SE02","se戦闘_動作_空急降下01");
	Delete("絵演*");
	CreateColorEX("絵色白", 5000, "#FFFFFF");
	CreateTextureSP("絵効果背景", 100, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	CreateTextureEX("絵演贋弓聖", 1010, Center, Middle, "cg/st/3dバロウズ_騎突_戦闘.png");

	SoundPlay("@mbgm10",0,1000,true);
	MusicStart("SE02",0,1000,0,500,null,false);
	Zoom("絵演贋弓聖", 0, 200, 200, null, true);
	Fade("絵演贋弓聖", 200, 1000, Axl2, false);
	Zoom("絵演贋弓聖", 30000, 1000, 1000, null, false);
	DrawDelete("絵板写", 150, 100, "circle_01_00_1", true);

	Wait(500);

	SetFrequency("SE02", 200, 2000, Axl3);
	Zoom("絵演贋弓聖", 150, 10000, 10000, Axl2, false);

	Wait(100);

	SetVolume("SE02", 1000, 0, null);
	CreateSE("SE03a","se戦闘_攻撃_鎧_打撃02");
	CreateSE("SE03b","se戦闘_攻撃_鎧攻撃命中03");
	MusicStart("SE03a",0,1000,0,1000,null,false);
	MusicStart("SE03b",0,1000,0,1000,null,false);
	Fade("絵色白", 0, 1000, null, true);

	Wait(12);

//◆ぐさー。
	PrintGO("上背景", 10000);
	CreateColorSP("絵色白", 5000, "#FFFFFF");

	OnBG(100,"bg076_建朝寺境内_01.jpg");
	FadeBG(0,true);

	CreateTextureSP("絵演贋弓聖", 1010, Center, InBottom, "cg/st/3dバロウズ_立ち_抜刀.png");
	CreateTextureSP("絵演竜兵Ｆ", 1110, Center, InBottom, "cg/st/3d九〇式竜騎兵_立ち_抜刀.png");
	Move("絵演竜兵Ｆ", 0, @140, @0, null, true);
	Move("絵演贋弓聖", 0, @350, @0, null, true);

	Shake("絵演竜兵Ｆ", 216000, 2, 0, 0, 0, 1000, null, false);
	Delete("上背景");
	FadeDelete("絵色白", 1000, true);

	SetNwC("cg/fw/nw竜騎兵Ｂ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／駐屯隊Ｆ】
<voice name="ｅｔｃ／駐屯隊Ｆ" class="その他男声" src="voice/mc01/024vs0010e207">
「ぐぁ――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_衝撃_鎧転倒01");
	FadeDelete("絵演竜兵Ｆ", 300, false);
	Move("絵演竜兵Ｆ", 600, @-30, @60, null, false);
	MusicStart("SE01",0,1000,0,1000,null,false);

//◆竜騎兵
	CreateStencil("絵演竜兵Ｇ型",911,Center,InBottom,128,"cg/st/3d九四式指揮官_立ち_戦闘c.png",false);
	SetAlias("絵演竜兵Ｇ型","絵演竜兵Ｇ型");
	CreateColorEX("絵演竜兵Ｇ型/色", 911, "#000000");

	CreateTextureEX("絵演竜兵Ｇ", 910, Center, InBottom, "cg/st/3d九四式指揮官_立ち_戦闘c.png");
	SetVertex("絵演竜兵Ｇ*", center, bottom);
	Request("絵演竜兵Ｇ*", Smoothing);
	Zoom("絵演竜兵Ｇ*", 0, 950, 950, null, true);

	Move("絵演竜兵Ｇ*", 0, @-150, @0, null, true);

	Move("絵演竜兵Ｇ*", 600, @-120, @0, Dxl1, false);
	Fade("絵演竜兵Ｇ型/色", 200, 750, null, false);
	Fade("絵演竜兵Ｇ", 200, 1000, null, true);

	FadeDelete("絵演竜兵Ｇ型/色", 400, true);

//◆太刀一閃
	OnSE("se戦闘_攻撃_刀振る01",1000);
	CreateColorSP("絵斬", 5500, "#FFFFFF");

	Delete("絵演贋弓聖*");

	CreateTextureSP("絵演竜兵Ｇ", 1110, Center, InBottom, "cg/st/3d九四式指揮官_立ち_戦闘c.png");
	SetVertex("絵演竜兵Ｇ", center, bottom);
	Request("絵演竜兵Ｇ", Smoothing);
	Zoom("絵演竜兵Ｇ", 0, 1050, 1050, null, true);
	Move("絵演竜兵Ｇ", 0, @250, @0, null, true);

	CreatePlainSP("絵板写", 5000);
	Shake("絵板写", 200, 4, 0, 0, 0, 500, null, false);

	Fade("絵斬", 600, 0, null, false);
	DrawDelete("絵斬", 200, 1000, "slide_05_00_1", true);
	Delete("絵板写");

//◆バロウズ避けて
	CreateTextureEX("絵演贋弓聖", 1010, Center, InBottom, "cg/st/3dバロウズ_立ち_抜刀.png");

	Move("絵演贋弓聖", 300, @-300, @0, Dxl1, false);
	Fade("絵演贋弓聖", 300, 1000, null, true);

//◆長剣一閃
	CreateSE("SE06a","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE06a",0,1000,0,1250,null,false);
	CreatePlainSP("絵板写", 2900);
	CreateTextureEXadd("絵演上", 3100, Center, Middle, "cg/ef/ef014_汎用横軌道.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ef/ef014_汎用横軌道.jpg");
	Zoom("絵演上", 0, 10000, 10000, null, false);
	Fade("絵演上", 0, 450, null, true);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演上", 500, 0, 30, 0, 0, 1000, Dxl3, false);

	Shake("絵板写", 400, 0, 6, 0, 0, 500, null, false);

	Shake("絵演竜兵Ｇ", 216000, 2, 2, 0, 0, 1000, null, false);
	Fade("絵演", 400, 0, null, false);
	FadeDelete("絵演上", 200, false);
	DrawDelete("絵演", 400, 100, "slide_05_00_1", true);
	Delete("絵板写");

//◆ずばー。
	CreateSE("SE03a","se戦闘_攻撃_鎧_打撃02");
	CreateSE("SE03b","se戦闘_攻撃_鎧攻撃命中03");
	MusicStart("SE03a",0,1000,0,800,null,false);
	MusicStart("SE03b",0,1000,0,800,null,false);

	FadeDelete("絵演竜兵Ｇ", 300, false);
	Move("絵演竜兵Ｇ", 600, @10, @60, null, true);
	CreateSE("SE01","se戦闘_衝撃_鎧転倒01");
	MusicStart("SE01",0,1000,0,700,null,false);

	SetNwC("cg/fw/nw竜騎兵Ｃ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／駐屯隊Ｇ】
<voice name="ｅｔｃ／駐屯隊Ｇ" class="その他男声" src="voice/mc01/024vs0020e208">
「はっ……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆竜騎兵
	CreateSE("SE02","se人体_足音_鎧歩く04");
	CreateTextureEX("絵演竜兵Ｅ", 1210, Center, Middle, "cg/st/3d九〇式指揮官_立ち_戦闘b.png");
	Move("絵演竜兵Ｅ", 0, @350, @0, null, true);

	MusicStart("SE02",0,1000,0,1000,null,false);
	Move("絵演竜兵Ｅ", 300, @-60, @0, DxlAuto, false);
	Fade("絵演竜兵Ｅ", 300, 1000, null, true);

	SetNwC("cg/fw/nw竜騎兵Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／駐屯隊Ｅ】
<voice name="ｅｔｃ／駐屯隊Ｅ" class="その他男声" src="voice/mc01/024vs0030e206">
「ちィ！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆バロウズ、ボーガン構え
	CreateSE("SE09","se戦闘_バロウズ_ボーガン構え01");
	CreateColorSP("絵色黒", 20000, "#000000");
	Move("絵演竜兵Ｅ", 300, @-512, @0, Dxl2, false);
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	Delete("絵演竜兵Ｅ");

	CreateTextureSP("絵演", 3000, -630, -70, "cg/ev/resize/ev956_バロウズ弓構え_al.jpg");
	Move("絵演", 1150, -480, @0, DxlAuto, false);

	MusicStart("SE09",0,1000,0,1000,null,false);
	DrawDelete("絵色黒", 150, 100, "slide_01_02_1", true);

	WaitAction("絵演", null);

	CreateTextureSP("絵演２", 2900, Center, Middle, "cg/ev/ev956_バロウズ弓構え_a.jpg");
	FadeDelete("絵演", 1000, true);

	Wait(1000);

//◆発射
//◆竜騎兵吹っ飛ぶ
	CreateSE("SE10","se戦闘_バロウズ_ボーガン射撃01");
	MusicStart("SE10",0,1000,0,1000,null,false);
	CreateColorSP("絵色白", 10000, "#FFFFFF");
	DrawTransition("絵色白", 200, 0, 1000, 100, Axl2, "cg/data/circle_01_00_0.png", true);

	SetFrequency("SE10", 300, 500, Dxl3);

	PrintGO("上背景", 30000);
	CreateColorSP("絵白転", 15000, "#FFFFFF");
	OnBG(100,"bg076_建朝寺境内_01.jpg");
	FadeBG(0,true);

	StL(1000, @0, @0,"cg/st/3dバロウズ_立ち_戦闘.png");
	FadeStA(0,true);

	CreateSE("SE11a","se戦闘_攻撃_鎧_吹っ飛ぶ01");
	CreateSE("SE11b","se戦闘_攻撃_鎧_打撃02");
	CreateSE("SE11c","se戦闘_攻撃_鎧攻撃命中03");
	MusicStart("SE11a",0,1000,0,1000,null,false);
	MusicStart("SE11b",0,1000,0,800,null,false);
	MusicStart("SE11c",0,1000,0,800,null,false);

	Delete("上背景");
	FadeDelete("絵白転", 1000, true);

	SetVolume("@mbgm*", 2000, 0, null);

	SetFwC("cg/fw/fwバロウズ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/024vs0040a03">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se特殊_鎧_駆動音02");
	CreatePlainSP("絵板写", 5000);
	StL(1000, @0, @0,"cg/st/3dバロウズ_立ち_通常.png");
	FadeStA(0,true);
	MusicStart("SE01",0,1000,0,850,null,false);
	FadeDelete("絵板写", 300, true);

	Wait(1000);

//◆バロウズ、飛ぶ
	CreateSE("SE02","se戦闘_動作_空上昇01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateColorSP("絵色白", 5000, "#FFFFFF");
	Wait(1000);


//◆転換
	ClearWaitAll(2000, 2000);


..//ジャンプ指定
//次ファイル　"mc01_025.nss"

}