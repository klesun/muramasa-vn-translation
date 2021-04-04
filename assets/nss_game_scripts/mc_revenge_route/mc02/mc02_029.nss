//<continuation number="60">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_029.nss_MAIN
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
	#bg026_普陀楽山塞a_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc02_030.nss";

}

scene mc02_029.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc02_028vs.nss"

//◆暗闇
	PrintBG("上背景", 30000);
	SoundPlay("@mbgm01",0,1000,true);

	CreateColorSP("黒幕１", 15000, "BLACK");
	Delete("上背景");
	Fade("黒幕１",0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　求める。

　
　　　　　　　　　「…………」

　我は求める。

　
　　　　　　　　　「…………」

　我は制覇を求める。

　
　　　　　　　　　「…………」

　我は布武を求める。

　
　　　　　　　　　「…………」

　我は登極を求める。

　
　　　　　　　　　「…………」

　我は――――
　天下に布武を為し、天座へ至らんと欲す。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　
//◆顔グラなし
//【光】
<voice name="光" class="光" src="voice/mc02/0290010a14">
　　　　　　　　　「然り……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　我は覇道。
　我は王道。
　我は武道。
　我は天道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　
//◆顔グラなし
//【光】
<voice name="光" class="光" src="voice/mc02/0290020a14">
　　　　　　　　　「然らば？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　我は。
　我は、
　我は……
　我は――――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　
//◆顔グラなし
//【光】
<voice name="光" class="光" src="voice/mc02/0290030a14">
　　　　　　　　「ただ一個の武」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　
//◆顔グラなし
//【光】
<voice name="光" class="光" src="voice/mc02/0290040a14">
　　　　　「悠遠なる天へ挑む一匹の蟻」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　
//◆顔グラなし
//【光】
<voice name="光" class="光" src="voice/mc02/0290050a14">
　　　　　　　　　　「名を」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　
//◆顔グラなし
//【光】
<voice name="光" class="光" src="voice/mc02/0290060a14">
　　　　　　　　　　「覇王!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ずどーん
//◆普陀楽城
//◆銀星号出現
	CreateTextureEX("Gin", 1000, Center, @-300, "cg/st/3d銀星号_騎突_通常.png");

	OnSE("se戦闘_破壊_爆発09", 1000);

	SetVolume("@mbgm*", 300, 0, null);
	CreateColorSP("白幕１", 1900, "WHITE");
	SoundPlay("@mbgm12",0,1000,true);

	CreateTextureSP("絵背景20", 1000, Center, Middle, "cg/bg/bg026_普陀楽山塞a_01.jpg");
	CreatePlainEX("絵板写", 1000);
	Fade("絵板写", 0, 800, null, true);
	Shake("絵板写", 500, 1,1, 0, 0, 1000, DxlAuto, false);
	DrawDelete("黒幕１", 200, 1000, "zoom_01_00_1", false);
	FadeDelete("白幕１",300,true);



	WaitKey(1000);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);
	Delete("絵板写");
	Delete("絵背景*");

	OnBG(100, "bg001_空b_01.jpg");
	FadeBG(0, true);


	DrawTransition("黒幕１", 200, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("黒幕１");

	Zoom("Gin", 0, 0, 0, Dxl2, false);

	SetBlur("Gin", true, 3, 300, 30, false);

	Fade("Gin", 0, 1000, null, false);
	WaitKey(1000);
	OnSE("se戦闘_動作_空突進01", 1000);

	Request("Gin", Smoothing);
	Zoom("Gin", 500, 2000, 2000, Dxl2, false);
	Move("Gin", 250, @0, @300, Dxl2, true);
	FadeDelete("Gin", 500, true);
	WaitKey(1000);
	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

}

..//ジャンプ指定
//次ファイル　"mc02_030.nss"