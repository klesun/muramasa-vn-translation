//<continuation number="240">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_013vs.nss_MAIN
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
	#ev185_香奈枝ＶＳ楽翁陣_a=true;
	#ev185_香奈枝ＶＳ楽翁陣_b=true;
	#ev185_香奈枝ＶＳ楽翁陣_c=true;
	#ev185_香奈枝ＶＳ楽翁陣_d=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc04_014vs.nss";

}

scene mc04_013vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc04_012.nss"

//◆香奈枝サイド
//◆香奈枝。疾走

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");

	OnBG(100, "bg090_大鳥邸通路a_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm12", 0, 1000, true);

	CreateSE("走る", "se人体_足音_走る07");
	MusicStart("走る", 0, 1000, 0, 1000, null,true);

	Delete("上背景");
	DrawDelete("黒幕１", 150, 100, "circle_01_00_1", true);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/013vs0010a03">
「ふ」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/013vs0020a03">
「ふふ」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/013vs0030a03">
「ふふふ――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ホール？
//◆足を止める

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);
	SetVolume("走る", 1000, 0, null);

	OnBG(100, "bg088_大鳥邸ホール_01a.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/circle_01_00_1.png", true);
	Delete("黒幕１");

	OnSE("se人体_動作_一歩", 1000);

	StR(1000, @-60, @0, "cg/st/st香奈枝_通常_私服d.png");
	Move("@StR*", 300, @60, @0, null, false);
	FadeStR(300, true);


	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/013vs0040a03">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆観察するような間
	CreatePlainSP("絵板写", 10000);
	CreateSE("SE01a","se戦闘_動作_空突進02");
	CreateTextureSP("絵演壱", 4100, -79, -473, "cg/ev/resize/ev185_香奈枝ＶＳ楽翁陣_al.jpg");
	SetBlur("絵演壱", true, 3, 500, 30, false);

	CreateSE("SE01b","se戦闘_動作_空突進02");
	CreateTextureSP("絵演弐", 4090, -744, -570, "cg/ev/resize/ev185_香奈枝ＶＳ楽翁陣_al.jpg");
	SetBlur("絵演弐", true, 3, 500, 30, false);

	CreateSE("SE01c","se戦闘_動作_空突進02");
	CreateTextureSP("絵演参", 4080, -335, -270, "cg/ev/resize/ev185_香奈枝ＶＳ楽翁陣_al.jpg");
	SetBlur("絵演参", true, 3, 500, 30, false);

	CreateSE("SE01d","se戦闘_動作_空突進02");
	CreateTextureSP("絵演四", 4070, -970, -260, "cg/ev/resize/ev185_香奈枝ＶＳ楽翁陣_al.jpg");
	SetBlur("絵演四", true, 3, 500, 30, false);

	CreateTextureSP("絵演五", 4060, -540, -510, "cg/ev/resize/ev185_香奈枝ＶＳ楽翁陣_al.jpg");
	Request("絵演五", Smoothing);
	SetBlur("絵演五", true, 3, 500, 30, false);

	WaitKey(1500);

	SetFwC("cg/fw/fw香奈枝_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/013vs0050a03">
「そうして隠れて、やり過ごすつもりだった
のかしら……？
　楽翁陣の壱から<RUBY text="ろく">陸</RUBY>」


{	NwC("cg/fw/nw楽翁陣.png");}
//【ｅｔｃ／楽翁陣】
<voice name="ｅｔｃ／楽翁陣" class="その他男声" src="voice/mc04/013vs0060e036">
「隠れるつもりも、やり過ごすつもりもござ
らん。これは我らの<RUBY text="かまえ">戦形</RUBY>――」


//【ｅｔｃ／楽翁陣】
<voice name="ｅｔｃ／楽翁陣" class="その他男声" src="voice/mc04/013vs0070e036">
「香奈枝様を討ち取るための陣にござる。
　恐れながら、あなた様は既に我らの<RUBY text="かこい">両翼</RUBY>の
中。勝負は決し申した」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/013vs0080a03">
「……そういう言葉は戦う前に言ったらいけ
ませんのに。
　不幸を招いてしまいましてよ？」


{	NwC("cg/fw/nw楽翁陣.png");}
//【ｅｔｃ／楽翁陣】
<voice name="ｅｔｃ／楽翁陣" class="その他男声" src="voice/mc04/013vs0090e036">
「二人ないし三人は果てるでござろう。
　しかし残りの者があなた様の首を頂戴致し
まする」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/013vs0100a03">
「大した自信。いえ、大した忠誠というべき
なのかしら。
　そうまでして獅子吼に盲従するなんて」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/013vs0110a03">
「黄昏の少将も草葉の陰でお喜びでしょうね。
　世のため人のため、寛政の御改革を闇から
支えんとした創立の志は、どこに捨ててしま
われましたの？」


{	NwC("cg/fw/nw楽翁陣.png");}
//【ｅｔｃ／楽翁陣】
<voice name="ｅｔｃ／楽翁陣" class="その他男声" src="voice/mc04/013vs0120e036">
「それは大いなる誤解と申すもの……。
　元より、我らに志などござらぬ」


//【ｅｔｃ／楽翁陣】
<voice name="ｅｔｃ／楽翁陣" class="その他男声" src="voice/mc04/013vs0130e036">
「我らは人にして人にあらず。道具たるべく
定められた者ども。
　主の意のままに放られる、捨石にござる」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/013vs0140a03">
「…………」


{	NwC("cg/fw/nw楽翁陣.png");}
//【ｅｔｃ／楽翁陣】
<voice name="ｅｔｃ／楽翁陣" class="その他男声" src="voice/mc04/013vs0150e036">
「志など無用。主の選り好みも致さぬ。
　我ら楽翁陣は我らを欲する主の手に取られ、
使われるのみ――」


//【ｅｔｃ／楽翁陣】
<voice name="ｅｔｃ／楽翁陣" class="その他男声" src="voice/mc04/013vs0160e036">
「なれば御免!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆ＥＶ：四方八方から同時に襲われる香奈枝
	Delete("絵板写");
	MusicStart("SE01a",0,1000,0,1250,null,false);
	Move("絵演壱", 200, @0, -550, Dxl2, false);

	Wait(200);

	Delete("絵演壱");
	MusicStart("SE01b",0,1000,0,850,null,false);
	Move("絵演弐", 200, -1024, @0, Dxl2, false);

	Wait(200);

	Delete("絵演弐");
	MusicStart("SE01c",0,1000,0,1100,null,false);
	Move("絵演参", 200, 0, -130, Dxl2, false);

	Wait(200);

	Delete("絵演参");
	MusicStart("SE01d",0,1000,0,900,null,false);
	Move("絵演四", 200, @0, 0, Dxl2, false);

	Wait(200);

	Delete("絵演四");
	MusicStart("SE01e",0,1000,0,750,null,false);
	CreateSE("SE01e","se戦闘_動作_空突進02");
	Move("絵演五", 300, -512, -288, Dxl2, false);
	Zoom("絵演五", 300, 500, 500, Dxl2, true);

	SetFwR("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/013vs0170a03">
「――そう」


{	FwR("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/013vs0180a03">
「なら――」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆凶眼
//◆ＢＧＭ一時停止
	SetVolume("@mbgm*", 100, 1, null);
	CreateWindow("絵窓", 19000, 0, 144, 1024, 288, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);

	CreateColorSPadd("絵窓/絵色白", 12000, "#FFFFFF");
	CreateTextureSP("絵窓/絵演凶眼", 11000, Center, Middle, "cg/ev/ev004_香奈枝の凶眼_b.jpg");
	SetBlur("絵窓/絵演凶眼", true, 3, 500, 80, false);
	Zoom("絵窓/絵演凶眼", 0, 2000, 2000, null, true);
	Request("絵窓/絵演凶眼", Smoothing);

	OnSE("se特殊_陰義_発動04", 1000);
	Zoom("絵窓", 150, 1000, 1000, Dxl2, true);

	Wait(100);

	Zoom("絵窓/絵演凶眼", 300, 1000, 1000, Dxl2, false);
	FadeFR2("絵窓/絵演凶眼",0,1000,1000,@0,@0,20,null, false);
	FadeDelete("絵窓/絵色白", 300, true);

//◆差分：ワールドフリーズ。楽翁衆静止。空中の者も
//◆そのまま固定
	CreateColorSP("白", 25000, "WHITE");
	DrawTransition("白", 150, 0, 1000, 100, null, "cg/data/circle_03_00_0.png", true);

	SetVolume("走る", 1000, 0, null);

	Delete("絵窓");

	CreateSE("SE01","se特殊_その他_辰気流蒸発");
	CreateEffect("絵効果", 10000, 0, 0, 1024, 576, "NegaPosi");
	Fade("絵効果", 200, 1000, Dxl2, false);

	CreateTextureSP("時よ止まれ02", 5000, @0, @0, "cg/ev/ev185_香奈枝ＶＳ楽翁陣_b.jpg");
	Delete("時よ止まれEX");

	Delete("絵演五");
	FadeDelete("白", 2000, true);

	Wait(500);

	FadeDelete("絵効果", 1000, true);

//◆差分：バロウズの弦が銃を持って伸びる。敵全員を
//◆ロックオン
	CreateSE("SE01","se特殊_生物_蜘蛛の糸吐く01");//ダミー注意差し換え作業まだ
	MusicStart("SE01",0,1000,0,2000,null,false);

	CreateTextureEX("絵演効果", 8000, Center, -130, "cg/ev/ev184_館に踏み込む香奈枝_b.jpg");
	Move("絵演効果", 400, @0, -510, Dxl3, false);
	Fade("絵演効果", 200, 1000, null, true);

	Wait(100);

	CreateTextureSP("時よ止まれ03", 5500, -540, -510, "cg/ev/resize/ev185_香奈枝ＶＳ楽翁陣_cl.jpg");
	Delete("時よ止まれ02");

	WaitAction("絵演効果", null);

	CreateSE("SE02","se特殊_鎧_装着04");
	MusicStart("SE02",0,1000,0,1000,null,false);
	FadeDelete("絵演効果", 600, true);

	CreateSE("SE01a","se戦闘_銃器_構える01");
	CreateTextureSP("絵演目標", 8100, Center, Middle, "cg/ev/resize/ev185_香奈枝ＶＳ楽翁陣_cl.jpg");
	CreateTextureSP("絵演目標全", 8090, Center, Middle, "cg/ev/resize/ev185_香奈枝ＶＳ楽翁陣_cl.jpg");
	SetBlur("絵演目標", true, 3, 500, 50, false);
	Request("絵演目標*", Smoothing);

	MusicStart("SE01a",0,1000,0,1600,null,false);
	Move("絵演目標", 200, -30, -640, Dxl2, false);
	Zoom("絵演目標", 200, 2500, 2500, Dxl2, false);

	Wait(200);

	CreateSE("SE01b","se戦闘_銃器_構える01");
	MusicStart("SE01b",0,1000,0,1600,null,false);
	Move("絵演目標", 200, -1015, 455, Dxl2, false);

	Wait(200);

	CreateSE("SE01c","se戦闘_銃器_構える01");
	MusicStart("SE01c",0,1000,0,1600,null,false);
	Move("絵演目標", 200, -1417, -907, Dxl2, false);

	Wait(200);

	CreateSE("SE01d","se戦闘_銃器_構える01");
	MusicStart("SE01d",0,1000,0,1600,null,false);
	Move("絵演目標", 200, 1100, -1020, Dxl2, false);

	Wait(200);

	CreateSE("SE01e","se戦闘_銃器_構える01");
	MusicStart("SE01e",0,1000,0,1600,null,false);
	Move("絵演目標", 200, -1900, 560, Dxl2, false);

	Wait(200);

	CreateSE("SE01f","se戦闘_銃器_構える01");
	MusicStart("SE01f",0,1000,0,1600,null,false);
	Zoom("絵演目標", 200, 1500, 1500, Dxl2, false);
	Move("絵演目標", 200, 150, 10, Dxl2, false);

	Wait(200);

//◆ＢＧＭ、再開
	SoundPlay("@mbgm12", 0, 1000, true);
	Delete("絵演目標");
	Zoom("絵演目標全", 200, 500, 500, null, false);

	SetFwR("cg/fw/fw香奈枝_獰猛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/013vs0190a03">
「石のように死んでしまえ!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆発砲。ずががーん。
	OnSE("se戦闘_攻撃_ライフル撃つ4回", 1000);

	CreateSE("乱射", "se特殊_攻撃_香奈枝ガンパレード_L");
	MusicStart("乱射", 0, 1000, 0, 1000, null,true);

	OnSE("se戦闘_銃器_拳銃発砲01", 1000);

	CreateColorSP("フラッシュ白", 15000, "WHITE");

	Delete("時よ止まれ*");
	Delete("絵効果");
	Delete("絵演目標*");
	CreateTextureSP("時よ止まれ04", 6000, @0, @0, "cg/ev/ev185_香奈枝ＶＳ楽翁陣_d.jpg");

	Fade("フラッシュ白",300,0,null,true);

	OnSE("se戦闘_銃器_拳銃発砲01", 1000);
	CreateColorSP("フラッシュ白", 15000, "WHITE");
	Wait(10);
	Fade("フラッシュ白",300,0,null,true);

	OnSE("se戦闘_銃器_拳銃発砲01", 1000);
	CreateColorSP("フラッシュ白", 15000, "WHITE");
	Wait(10);
	Fade("フラッシュ白",300,0,null,true);

	CreateColorSPadd("白", 15000, "WHITE");
	Fade("白", 300, 1000, null, true);
	Fade("白", 10, 0, null, true);
	Fade("白", 100, 1000, null, true);
	Fade("白", 10, 0, null, true);
	Fade("白", 100, 1000, null, true);
	Fade("白", 300, 0, null, true);
	Fade("白", 300, 1000, null, true);
	Fade("白", 1000, 0, null, true);

	SetVolume("乱射", 1000, 0, null);

	SetNwR("cg/fw/nw楽翁陣.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ｅｔｃ／楽翁陣】
<voice name="ｅｔｃ／楽翁陣" class="その他男声" src="voice/mc04/013vs0200e036">
「……な……」


//【ｅｔｃ／楽翁陣】
<voice name="ｅｔｃ／楽翁陣" class="その他男声" src="voice/mc04/013vs0210e036">
「……なんと……」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ばたばたばた。全滅
	FadeDelete("時よ止まれ04", 1500, true);
	OnSE("se人体_衝撃_転倒_複数", 1000);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/013vs0220a03">
「…………」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/013vs0230a03">
「クフ、フフフ」


{	FwC("cg/fw/fw香奈枝_獰猛.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/013vs0240a03">
「フフッ――――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ホールから去る
	CreateSE("SE01", "se人体_足音_走る07");
	MusicStart("SE01", 0, 1000, 0, 1000, null,true);

	Move("@StR*", 300, @60, @0, null, false);
	DeleteStR(300, true);

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"mc04_014vs.nss"