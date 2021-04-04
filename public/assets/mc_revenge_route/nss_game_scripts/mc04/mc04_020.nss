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

scene mc04_020.nss_MAIN
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
	#bg087_大鳥邸玄関前b_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc04_021vs.nss";

}

scene mc04_020.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc04_019.nss"

//◆景明サイド
//◆炎上する館
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");

	CreateTextureEXadd("絵背景21", 10010, Center, Middle, "cg/bg/bg087_大鳥邸玄関前b_02.jpg");
	Zoom("絵背景21", 0, 1030, 1030, null, true);
	Fade("絵背景21", 0, 1000, null, true);
	DrawTransition("絵背景21", 0, 0, 100, 1000, null, "cg/data/circle_13_00_1.png", true);
	DrawEffect("絵背景21", 0, "HighWave", 20, 20, null);

	CreateTextureSP("絵背景20", 10000, Center, Middle, "cg/bg/bg087_大鳥邸玄関前b_02.jpg");
	CreateSE("SEL01","se背景_ガヤ_建物炎上_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);

	Wait(1000);

	Delete("上背景");
	Fade("黒幕１",2000,0,null,true);

	Wait(2000);

//◆山林？
	CreateProcess("プロセス１", 150, 0, 0, "fire01");
	CreateProcess("プロセス２", 150, 0, 0, "fire02");
	CreateProcess("プロセス３", 150, 0, 0, "fire03");

	Request("プロセス１", Start);
	Request("プロセス２", Start);
	Request("プロセス３", Start);

	SetVolume("SEL*", 1000, 500, null);
	CreateTextureSP("絵演空背景", 1000, Center, Middle, "cg/bg/bg002_空b_03.jpg");
	FadeDelete("絵背景21", 800, false);
	FadeDelete("絵背景20", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　大鳥本邸は燃えていた。

　何をどうして、今ここにいるのかはわからない。
　だが気付くと、俺はこうして両膝をつき、紅蓮の炎
に呑まれてゆく館を遠く眺めていた。

　無数の火の粉が天へ舞い上がっている。
　空をも焼き焦がそうとするかのように。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);
	CreateColorEX("黒幕１", 25000, "BLACK");
	Fade("黒幕１", 1000, 1000, null, true);

	CreateTextureSP("絵背景10", 1000, Center, Middle, "cg/bg/bg022_山林a_02.jpg");

	Delete("プロセス*");
	Delete("絵背景20");
	FadeDelete("黒幕１", 1000, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0200010a01">
《……御堂……
　<RUBY text="けはい">香気</RUBY>が…………消えた》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0200020a01">
《いま…………》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0200030a00">
「……………………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　心は鉄になっていた。
　揺れもせず、震えもせず、硬く在る。

　それでも。
　その一つだけは、解悟した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_悲しみ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0200040a00">
（終わった）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　――――終わったのだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"mc04_021vs.nss"