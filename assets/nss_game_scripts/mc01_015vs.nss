//<continuation number="130">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_015vs.nss_MAIN
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
	#bg076_建朝寺境内_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc01_016vs.nss";

}

scene mc01_015vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_014vs.nss"

//◆建朝寺、門内
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg076_建朝寺境内_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	CreateSE("SE01","se人体_動作_後ずさり01");
	StL(1000, @-60, @0,"cg/st/st六波羅兵士_通常_制服.png");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StL*", 300, @60, @0, Dxl2, false);
	FadeStL(300,true);

	SetNwC("cg/fw/nw駐屯隊兵士Ｃ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／駐屯隊Ｃ】
<voice name="ｅｔｃ／駐屯隊Ｃ" class="その他男声" src="voice/mc01/015vs0010e204">
「――銃声に警笛？
　敵襲か!!」


{	NwC("cg/fw/nw駐屯隊兵士Ｄ.png");}
//【ｅｔｃ／駐屯隊Ｄ】
<voice name="ｅｔｃ／駐屯隊Ｄ" class="その他男声" src="voice/mc01/015vs0020e205">
「出会え、出会えーーーっ!!
　何者かが門を破ったぞ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆警鐘かんかんかん。ばたばたと人が走り回るＳＥ。
	CreateSE("SE02","se背景_ガヤ_緊急事態01");
	MusicStart("SE02",0,1000,0,1000,null,false);

	Move("@StL*", 300, @60, @0, Axl2, false);
	DeleteStL(300,true);

	WaitKey(1000);

	StR(1000, @-60, @0,"cg/st/st香奈枝_通常_私服b.png");
	Move("@StR*", 2000, @60, @0, DxlAuto, false);
	FadeStR(300,false);

	Wait(300);

	SoundPlay("@mbgm36",0,1000,true);

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/015vs0030a03">
「あら、あら、あら。
　何だか大変な大騒ぎに」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/015vs0040a03">
「どうしましょうどうしましょう」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆どたどた。六波羅兵
	CreateSE("SE01","se人体_足音_複数兵士散開");
	CreateTextureEX("絵演立絵一", 1100, Center, InBottom, "cg/st/st六波羅将校_通常_制服.png");
	CreateTextureEX("絵演立絵二", 1110, Center, InBottom, "cg/st/st六波羅兵士_通常_制服.png");
	CreateTextureEX("絵演立絵三", 1120, Center, InBottom, "cg/st/st六波羅兵士_通常_制服.png");
	Rotate("絵演立絵三", 0, @0, @180, @0, null,true);
	Request("絵演立絵三", Smoothing);

	Move("絵演立絵*", 0, @-256, @0, null, true);
	Move("絵演立絵一", 0, @-90, @0, null, true);
	Move("絵演立絵二", 0, @-185, @0, null, true);
	Move("絵演立絵三", 0, @185, @0, null, true);

	MusicStart("SE01",1000,1000,0,1000,null,false);

	Move("絵演立絵二", 300, @60, @0, null, false);
	Fade("絵演立絵二", 300, 1000, null, true);

	Move("絵演立絵三", 300, @-60, @0, null, false);
	Fade("絵演立絵三", 300, 1000, null, true);

	Move("絵演立絵一", 300, @90, @0, null, false);
	Fade("絵演立絵一", 300, 1000, null, true);

	SetNwC("cg/fw/nw駐屯隊曹長.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／駐屯隊曹長】
<voice name="ｅｔｃ／駐屯隊曹長" class="その他男声" src="voice/mc01/015vs0050e211">
「――あの女か!?」


{	NwC("cg/fw/nw駐屯隊兵士Ｃ.png");}
//【ｅｔｃ／駐屯隊Ｃ】
<voice name="ｅｔｃ／駐屯隊Ｃ" class="その他男声" src="voice/mc01/015vs0060e204">
「銃を所持しております！」


{	NwC("cg/fw/nw駐屯隊曹長.png");}
//【ｅｔｃ／駐屯隊曹長】
<voice name="ｅｔｃ／駐屯隊曹長" class="その他男声" src="voice/mc01/015vs0070e211">
「よし、分隊横列！
　<RUBY text="て">撃</RUBY>ぇーーーーーっ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE01", 1000, 0, null);

//◆兵、横列
	CreateSE("SE00","se戦闘_銃器_複数構える02");
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	Delete("絵演*");
	FadeStA(0,true);

	CreateTextureSP("絵演銃兵士一", 1060, InLeft, InBottom, "cg/st/st六波羅兵士_通常_制服.png");
	CreateTextureSP("絵演銃兵士二", 1050, Center, InBottom, "cg/st/st六波羅兵士_通常_制服.png");
	CreateTextureSP("絵演銃兵士三", 1040, Center, InBottom, "cg/st/st六波羅兵士_通常_制服.png");
	CreateTextureSP("絵演銃兵士四", 1030, Center, InBottom, "cg/st/st六波羅兵士_通常_制服.png");
	CreateTextureSP("絵演銃兵士五", 1020, Center, InBottom, "cg/st/st六波羅兵士_通常_制服.png");
	CreateTextureSP("絵演銃兵士六", 1010, Center, InBottom, "cg/st/st六波羅兵士_通常_制服.png");
	CreateTextureSP("絵演銃兵士七", 1000, InRight, InBottom, "cg/st/st六波羅兵士_通常_制服.png");

	SetVertex("絵演銃兵士*", center, bottom);
	Zoom("絵演銃兵士一", 0, 1110, 1110, null, true);
	Zoom("絵演銃兵士二", 0, 1080, 1080, null, true);
	Zoom("絵演銃兵士三", 0, 1030, 1030, null, true);
	Zoom("絵演銃兵士五", 0, 970, 970, null, true);
	Zoom("絵演銃兵士六", 0, 940, 940, null, true);
	Zoom("絵演銃兵士七", 0, 920, 920, null, true);
	Request("絵演銃兵士*", Smoothing);

	Move("絵演銃兵士一", 0, @-180, @0, null, true);
	Move("絵演銃兵士二", 0, @-220, @0, null, true);
	Move("絵演銃兵士三", 0, @-110, @0, null, true);
	Move("絵演銃兵士五", 0, @110, @0, null, true);
	Move("絵演銃兵士六", 0, @240, @0, null, true);
	Move("絵演銃兵士七", 0, @180, @0, null, true);

//あきゅん「演出：香奈枝反撃の素材を定義しておく」
	CreateWindow("絵窓", 10000, 588, 0, 340, 576, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 0, 1000, null, true);
	CreateColorSP("絵窓/絵演色", 10010, "#CC0000");
	CreateTextureSPmul("絵窓/絵演背景", 10020, Center, Middle, "cg/ef/ef002_汎用移動.jpg");

	CreateTextureSP("絵窓/絵演立絵装甲", 11000, Center, InBottom, "cg/st/st香奈枝_射撃_私服a.png");
	Move("絵窓/絵演立絵装甲", 0, @280, @0, null, true);//ダミー注意：仮位置


	MusicStart("SE00",0,1000,0,1000,null,false);
	DrawDelete("絵色黒", 150, 100, "slide_01_02_1", true);

//◆一斉射撃。ぱんぱんぱん。
	CreateSE("SE01a","se戦闘_攻撃_ライフル撃つ4回");
	CreateSE("SE01b","se戦闘_攻撃_ライフル撃つ4回");
	CreateSE("SE01c","se戦闘_攻撃_ライフル撃つ4回");
	MFlash(50, 100);
	MusicStart("SE01a",0,1000,0,850,null,false);
	Wait(10);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Wait(10);
	MusicStart("SE01c",0,1000,0,1150,null,false);

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/015vs0080a03">
「どうしましょう？
{	FwC("cg/fw/fw香奈枝_冷笑.png");}
　こうしましょう♪」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆香奈枝の世界
//◆色反転。フリーズ。
//◆フェードアウト、フェードイン
	SetVolume("SE*", 100, 0, null);
	SetVolume("@mbgm*", 100, 0, null);

	Delete("@MF*");

	CreateSE("SE01","se特殊_その他_辰気流蒸発");
	CreateEffect("絵効果", 10000, 0, 0, 1024, 576, "NegaPosi");
	SetAlias("絵効果","絵効果");
	Fade("絵効果", 0, 0, null, true);

	MusicStart("SE01",0,1000,0,2000,null,false);
	Fade("絵効果", 200, 1000, Dxl2, false);
	DrawTransition("絵効果", 200, 0, 1000, 100, Dxl2, "cg/data/circle_03_00_0.png", true);

	Wait(500);

	FadeDelete("絵効果", 600, true);

	CreateSE("SE02","se戦闘_銃器_跳弾複数01");//ダミー注意
	MusicStart("SE02",0,1000,0,1000,null,false);

	SetNwC("cg/fw/nw駐屯隊曹長.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ｅｔｃ／駐屯隊曹長】
<voice name="ｅｔｃ／駐屯隊曹長" class="その他男声" src="voice/mc01/015vs0090e211">
「……何ぃ!?」


{	NwC("cg/fw/nw駐屯隊兵士Ｃ.png");}
//【ｅｔｃ／駐屯隊Ｃ】
<voice name="ｅｔｃ／駐屯隊Ｃ" class="その他男声" src="voice/mc01/015vs0100e204">
「えっ？
　……この距離で全弾外れ……!?」


{	NwC("cg/fw/nw駐屯隊曹長.png");}
//【ｅｔｃ／駐屯隊曹長】
<voice name="ｅｔｃ／駐屯隊曹長" class="その他男声" src="voice/mc01/015vs0110e211">
「ば、馬鹿者ども！　ちゃんと狙わんか！
　弾倉交換急げぇっ!!」


{	Zoom("絵窓", 300, 1000, 1000, Dxl2, false);
	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/015vs0120a03">
「残念ながらスリーアウトでチェンジです。
　ここからはわたくしの手番」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆ばんばんばんばんばん。
//◆一掃
	CreateSE("SE01","se戦闘_攻撃_ライフル撃つ01");
	CreateSE("SE01a","se人体_衝撃_転倒05");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵色白", 5000, "#FFFFFF");
	Wait(20);
	Shake("絵演銃兵士七", 300, 2, 1, 0, 0, 1000, null, false);
	Move("絵演銃兵士七", 300, @10, @60, Dxl2, false);
	FadeDelete("絵演銃兵士七", 300, false);
	Fade("絵色白", 80, 0, null, true);
	MusicStart("SE01a",0,1000,0,1000,null,false);

	CreateSE("SE02","se戦闘_攻撃_ライフル撃つ01");
	CreateSE("SE02a","se人体_衝撃_転倒05");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Fade("絵色白", 0, 1000, null, true);
	Wait(20);
	Shake("絵演銃兵士六", 300, 2, 1, 0, 0, 1000, null, false);
	Move("絵演銃兵士六", 300, @10, @60, Dxl2, false);
	FadeDelete("絵演銃兵士六", 300, false);
	Fade("絵色白", 80, 0, null, true);
	MusicStart("SE02a",0,1000,0,1000,null,false);

	CreateSE("SE03","se戦闘_攻撃_ライフル撃つ01");
	CreateSE("SE03a","se人体_衝撃_転倒05");
	MusicStart("SE03",0,1000,0,1000,null,false);
	Fade("絵色白", 0, 1000, null, true);
	Wait(20);
	Shake("絵演銃兵士五", 300, 2, 1, 0, 0, 1000, null, false);
	Move("絵演銃兵士五", 300, @10, @60, Dxl2, false);
	FadeDelete("絵演銃兵士五", 300, false);
	Fade("絵色白", 80, 0, null, true);
	MusicStart("SE03a",0,1000,0,1000,null,false);

	CreateSE("SE04","se戦闘_攻撃_ライフル撃つ01");
	CreateSE("SE04a","se人体_衝撃_転倒05");
	MusicStart("SE04",0,1000,0,1000,null,false);
	Fade("絵色白", 0, 1000, null, true);
	Wait(20);
	Shake("絵演銃兵士四", 300, 2, 1, 0, 0, 1000, null, false);
	Move("絵演銃兵士四", 300, @10, @60, Dxl2, false);
	FadeDelete("絵演銃兵士四", 300, false);
	Fade("絵色白", 80, 0, null, true);
	MusicStart("SE04a",0,1000,0,1000,null,false);

	CreateSE("SE05","se戦闘_攻撃_ライフル撃つ01");
	CreateSE("SE05a","se人体_衝撃_転倒05");
	MusicStart("SE05",0,1000,0,1000,null,false);
	Fade("絵色白", 0, 1000, null, true);
	Wait(20);
	Shake("絵演銃兵士三", 300, 2, 1, 0, 0, 1000, null, false);
	Move("絵演銃兵士三", 300, @10, @60, Dxl2, false);
	FadeDelete("絵演銃兵士三", 300, false);
	Fade("絵色白", 80, 0, null, true);
	MusicStart("SE05a",0,1000,0,1000,null,false);

	CreateSE("SE06","se戦闘_攻撃_ライフル撃つ01");
	CreateSE("SE06a","se人体_衝撃_転倒05");
	MusicStart("SE06",0,1000,0,1000,null,false);
	Fade("絵色白", 0, 1000, null, true);
	Wait(20);
	Shake("絵演銃兵士二", 300, 2, 1, 0, 0, 1000, null, false);
	Move("絵演銃兵士二", 300, @10, @60, Dxl2, false);
	FadeDelete("絵演銃兵士二", 300, false);
	Fade("絵色白", 80, 0, null, true);
	MusicStart("SE06a",0,1000,0,1000,null,false);

	CreateSE("SE07","se戦闘_攻撃_ライフル撃つ01");
	CreateSE("SE07a","se人体_衝撃_転倒05");
	MusicStart("SE07",0,1000,0,1000,null,false);
	CreateColorSP("絵色白", 11000, "#FFFFFF");
	Wait(20);
	Shake("絵演銃兵士一", 300, 2, 1, 0, 0, 1000, null, false);
	Move("絵演銃兵士一", 300, @10, @60, Dxl2, false);
	FadeDelete("絵演銃兵士一", 300, false);

	Wait(80);

	MusicStart("SE07a",0,1000,0,1000,null,false);
	Delete("絵窓*");

	StR(1000, @0, @0,"cg/st/st香奈枝_通常_私服a.png");
	FadeStR(0,true);

	FadeDelete("絵色白", 1000, true);

	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/015vs0130a03">
「――はい、コールド勝ち」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_足音_歩く08");
	MusicStart("SE01",0,1000,0,750,null,false);

	Move("@StR*", 300, @-300, @0, null, false);

	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	ClearWaitAll(1000, 0);

..//ジャンプ指定
//次ファイル　"mc01_016vs.nss"

}