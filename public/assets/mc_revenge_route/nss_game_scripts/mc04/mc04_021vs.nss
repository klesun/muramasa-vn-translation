//<continuation number="370">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_021vs.nss_MAIN
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
	#ev190_弓を向けるバロウズ=true;
	#bg064_普陀楽城内道_02=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc04_022vs.nss";

}

scene mc04_021vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc04_020.nss"

//◆館裏。bg064で代用？

//冒頭ＢＧＭなしは演出です inc櫻井
	PrintBG("上背景", 30000);
	CreateColorSP("黒", 15000, "BLACK");

	OnBG(100, "bg064_普陀楽城内道_02.jpg");
	FadeBG(0, true);
	OnSE("se人体_足音_走る01_L", 1000);

	Delete("上背景");
	FadeDelete("黒", 1500, true);

	SetVolume("@OnSE*", 1000, 0, null);

	StL(1000, @0, @0, "cg/st/st獅子吼_通常_制服.png");
	StR(1000, @0, @0, "cg/st/st花枝_通常_私服.png");

	FadeStL(300, false);
	Wait(150);
	FadeStR(300, true);

	SetNwC("cg/fw/nw竜騎兵Ｄ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／大鳥竜騎Ｄ】
<voice name="ｅｔｃ／大鳥竜騎Ｄ" class="その他男声" src="voice/mc04/021vs0010e198">
「……おお！
　中将閣下！」


{	NwC("cg/fw/nw竜騎兵Ｅ.png");}
//【ｅｔｃ／大鳥竜騎Ｅ】
<voice name="ｅｔｃ／大鳥竜騎Ｅ" class="その他男声" src="voice/mc04/021vs0020e199">
「御館様も……良くぞご無事で！
　よもや参られないのではと、案じておりま
したぞ！」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/021vs0030b18">
「……」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/021vs0040a06">
「これより指揮所を移す。
　二騎は車に搭乗、花枝様をお守り致せ」

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/021vs0050a06">
「他の者は騎航し、敵襲に備えよ。
　地上空中を問わず、不審な影あらば即座に
攻撃――俺の指示を待つ必要はない」


{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/021vs0060a06">
「承知か？」


{	NwC("cg/fw/nw竜騎兵Ｄ.png");}
//【ｅｔｃ／大鳥竜騎Ｄ】
<voice name="ｅｔｃ／大鳥竜騎Ｄ" class="その他男声" src="voice/mc04/021vs0070e198">
「はッッ！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 19000);

	StL(900, @-125, @0,"cg/st/3d九四式指揮官_立ち_通常.png");
	StCL(1200, @125, @0,"cg/st/3d八八式竜騎兵_立ち_通常.png");
	StCR(1000, @-125, @0,"cg/st/3d九〇式竜騎兵_立ち_通常.png");
	StR(1100, @125, @0,"cg/st/3d九四式竜騎兵_立ち_通常.png");
	FadeStA(0,true);

//◆竜騎兵四騎。ずらー
	OnSE("se特殊_雰囲気_鎧登場演01", 1000);

	CreateTextureSP("絵演背景", 5000, @0, @0, "cg/bg/bg064_普陀楽城内道_02.jpg");
	SetShade("絵演背景", HEAVY);

	CreateTextureSP("絵演竜壱", 5200, @500, @300, "cg/st/3d九四式指揮官_立ち_通常.png");
	CreateTextureSP("絵演竜弐", 5100, @0, @100, "cg/st/3d九〇式竜騎兵_立ち_通常.png");
	Request("絵演*", Smoothing);

	Zoom("絵演背景", 0, 2000, 2000, null, false);
	Zoom("絵演竜壱", 0, 2000, 2000, null, false);
	Zoom("絵演竜弐", 0, 2000, 2000, null, false);

	Move("絵演背景", 5000, @70, @0, null, false);

	Move("絵演竜壱", 6000, @70, @0, null, false);
	Move("絵演竜弐", 6000, @70, @0, null, false);
	FadeDelete("絵板写", 1000, true);

	FadeDelete("絵演*", 1000,false); 

	OnSE("se特殊_雰囲気_鎧登場演01", 1000);

	CreateTextureEX("絵演背景弐", 4000, @0, @0, "cg/bg/bg064_普陀楽城内道_02.jpg");
	SetShade("絵演背景弐", HEAVY);

	CreateTextureEX("絵演竜参", 4200, @500, @150, "cg/st/3d九四式竜騎兵_立ち_通常.png");
	CreateTextureEX("絵演竜四", 4100, @0, @150, "cg/st/3d八八式竜騎兵_立ち_通常.png");
	Request("絵演*", Smoothing);

	Zoom("絵演背景弐", 0, 2000, 2000, null, false);
	Zoom("絵演竜参", 0, 2000, 2000, null, false);
	Zoom("絵演竜四", 0, 2000, 2000, null, false);

	Move("絵演背景弐", 5000, @-70, @0, null, false);
	Move("絵演竜参", 6000, @-70, @0, null, false);
	Move("絵演竜四", 6000, @-70, @0, null, false);

	Fade("絵演背景弐", 300, 1000, null, false);
	Fade("絵演竜参", 300, 1000, null, false);
	Fade("絵演竜四", 300, 1000, null, true);

	Wait(1500);

	FadeDelete("絵演*", 1000,true); 


	SetNwC("cg/fw/nw竜騎兵Ｅ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／大鳥竜騎Ｅ】
<voice name="ｅｔｃ／大鳥竜騎Ｅ" class="その他男声" src="voice/mc04/021vs0080e199">
「任務諒解。
　直ちに布陣致します」


{	NwC("cg/fw/nw竜騎兵Ｄ.png");}
//【ｅｔｃ／大鳥竜騎Ｄ】
<voice name="ｅｔｃ／大鳥竜騎Ｄ" class="その他男声" src="voice/mc04/021vs0090e198">
「御館様、お車へ――」


//◆バロウズ装甲テーマ
{	SoundPlay("@mbgm07", 0, 1000, true);
	NwC("cg/fw/nw竜騎兵Ｄ.png");}
//【ｅｔｃ／大鳥竜騎Ｄ】
<voice name="ｅｔｃ／大鳥竜騎Ｄ" class="その他男声" src="voice/mc04/021vs0100e198">
「……？」


{	NwC("cg/fw/nw竜騎兵Ｅ.png");}
//【ｅｔｃ／大鳥竜騎Ｅ】
<voice name="ｅｔｃ／大鳥竜騎Ｅ" class="その他男声" src="voice/mc04/021vs0110e199">
「……楽の音？
　なぜ、かような時に……」


{	NwC("cg/fw/nw竜騎兵Ｄ.png");}
//【ｅｔｃ／大鳥竜騎Ｄ】
<voice name="ｅｔｃ／大鳥竜騎Ｄ" class="その他男声" src="voice/mc04/021vs0120e198">
「何処から――」


{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/021vs0130a06">
「ッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ずばー。バロウズ分散射撃。連射ではない。
	OnSE("se戦闘_バロウズ_分散射撃", 1000);

	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 300, 1000, null, true);

	DeleteStA(0,true);

	CreateTextureSP("絵背景20", 4900, Center, Middle, "cg/ef/ef033_分散射撃.jpg");
	SetVertex("絵背景20", 125, 100);
	SetBlur("絵背景20", true, 3, 500, 60, false);

	Fade("絵フラ", 200, 0, null, false);
	Zoom("絵背景20", 300, 12000, 11000, Axl2, false);
	DrawDelete("絵フラ", 100, 100, "zoom_01_00_0", true);


	Wait(400);

	Zoom("絵背景20", 10000, 20000, 20000, null, false);
	FadeDelete("絵背景20", 1000, true);

	SetNwC("cg/fw/nw竜騎兵Ｄ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／大鳥竜騎Ｄ】
<voice name="ｅｔｃ／大鳥竜騎Ｄ" class="その他男声" src="voice/mc04/021vs0140e198">
「――――」


{	NwC("cg/fw/nw竜騎兵Ｅ.png");}
//【ｅｔｃ／大鳥竜騎Ｅ】
<voice name="ｅｔｃ／大鳥竜騎Ｅ" class="その他男声" src="voice/mc04/021vs0150e199">
「か――は――っ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばたんばたん。竜騎兵全滅
	OnSE("se戦闘_衝撃_鎧転倒02", 1000);
	CreatePlainEX("絵板写", 100);
	Fade("絵板写", 0, 1000, null, true);
	Shake("絵板写", 500, 0, 30, 0, 0, 1000, DxlAuto, true);

	SetVolume("@mbgm*", 1000, 0, null);


	OnSE("se戦闘_衝撃_鎧転倒01", 1000);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 500, 0, 30, 0, 0, 1000, DxlAuto, true);


	OnSE("se戦闘_衝撃_鎧転倒01", 1000);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 1000, 0, 30, 0, 0, 1000, DxlAuto, true);
	Delete("絵板写");

	SetFwC("cg/fw/fw獅子吼_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/021vs0160a06">
「……………………」


{	FwC("cg/fw/fw花枝_失意.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/021vs0170b18">
「……姉さん？」


{	FwC("cg/fw/fw獅子吼_影人.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/021vs0180a06">
「……貴様かァ……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 300, 0, null);

//◆ばっと見上げる
//◆ＥＶ：燃え上がるテラスの上に立つバロウズ
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	CreateTextureEXadd("絵演効果", 4110, Center, InBottom, "cg/ev/resize/ev190_弓を向けるバロウズl.jpg");
	CreateTextureSP("絵演", 4100, Center, InBottom, "cg/ev/resize/ev190_弓を向けるバロウズl.jpg");
	Request("絵演*", Smoothing);

	Move("絵演*", 3000, @0, -130, DxlAuto, false);

	DrawDelete("絵色黒", 150, 100, "slide_02_01_1", true);

	WaitAction("絵演*", null);

	Wait(600);

	CreateSE("SE01","se特殊_雰囲気_鎧登場演02");
	MusicStart("SE01",0,1000,0,1200,null,false);
	SetBlur("絵演*", true, 3, 500, 80, false);
	Fade("絵演効果", 1, 1000, null, true);

	FadeDelete("絵演効果", 1300, false);
	Move("絵演*", 300, -512, -288, Dxl2, false);
	Zoom("絵演*", 300, 500, 500, Dxl2, true);

	SoundPlay("@mbgm10", 0, 1000, true);


	SetFwR("cg/fw/fw獅子吼_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/021vs0190a06">
「香奈枝ぇぇぇェェェェェッ!!」


{	FwR("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/021vs0200a03">
「――――――――」


{	FwR("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/021vs0210a06">
「俺を殺すのか。
　あくまでも！　復讐のために！」


{	FwR("cg/fw/fw獅子吼_怒り.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/021vs0220a06">
「貴様は俺を殺すのか！」


{	FwR("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/021vs0230a03">
「…………」


{	FwR("cg/fw/fw獅子吼_影人.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/021vs0240a06">
「俺は国家の命運を背負っている……。
　貴様はどうだ」


{	FwR("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/021vs0250a06">
「復讐以外に何がある!?
　何もあるまいが！」


//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/021vs0260a06">
「小義をもって大義を滅ぼそうと云うのか！
　許されん――」


{	FwR("cg/fw/fw獅子吼_怒り.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/021vs0270a06">
「貴様一人の、くだらぬ復讐心に……
　くだらぬ復讐劇に、俺の身命は捧げんぞ!!」


{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/021vs0280a03">
「それでも」


{	FwR("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/021vs0290a03">
「頂戴します」


{	FwR("cg/fw/fw獅子吼_怒り.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/021vs0300a06">
「如何なる義をもってだ!!」


{	FwR("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/021vs0310a03">
「義なんて、別に。
　ただ」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/021vs0320a03">
「あなたは、復讐をくだらないと云う」


{	FwR("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/021vs0330a03">
「……本当に？」


{	FwR("cg/fw/fw獅子吼_怒り.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/021vs0340a06">
「くだらぬわ！
　大義と引き換えにする価値など、あろう筈
がない！」


{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/021vs0350a03">
「そう。
　なら」


{	FwR("cg/fw/fw香奈枝_獰猛.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/021vs0360a03">
「その<RUBY text="・・・・・">くだらなさ</RUBY>を、わたくしに教えなさい。
　あなたの命で」


{	FwR("cg/fw/fw獅子吼_怒り.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/021vs0370a06">
「――貴様はァ!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	CreateColorSP("黒幕１", 15000, "#000000");
	DrawTransition("黒幕１", 150, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

}

..//ジャンプ指定
//次ファイル　"mc04_022vs.nss"