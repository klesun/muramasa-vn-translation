

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;

//あきゅん「ＣＰ：デバッグ用」
		$GameDebugSelect = 1;

		Reset();
	}

}

scene mc01_010vsz.nss_MAIN
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

	CP_AllDelete();

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "mz00_000.nss";

}

scene mc01_010vsz.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_010vsb.nss"
//前ファイル　"mc01_010vsca.nss"
//前ファイル　"mc01_011vsaba.nss"
//前ファイル　"mc01_019vsaa.nss"
//前ファイル　"mc01_019vsab.nss"
//前ファイル　"mc01_021vsaba.nss"
//前ファイル　"mc01_021vsba.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}


//●ダメージが２に達したらすぐここへ

//◆モニターレッド
//◆グレイアウト
	PrintBG("上背景", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	CreateSE("SE01","se人体_体_心臓の音02");
	CreateColorSP("絵色赤", 20000, "#CC0000");

	Wait(10);

	CreateEffect("絵演効果灰色", 19000, center, middle, 1024, 576, "Monochrome");
	SetAlias("絵演効果灰色","絵演効果灰色");
	Fade("絵演効果灰色", 0, 0, null, true);
	CreateTextureSP("絵航空背景", 1000, Center, InTop, "cg/bg/bg201_旋回演出背景市街地_01.jpg");

	Fade("@box*", 0, 0, null, true);
	Fade("@Fw*", 0, 0, null, true);

//あきゅん「ＣＰ：初期値定義」
	Cockpit_AllFade2();

	$合体戦ライフ基本値 = 612;
	if($First_Battle_Damage >= 1){
		$合体戦ライフ調整値 = $合体戦ライフ基本値 - ($First_Battle_Damage*218);
	}else{
		$合体戦ライフ調整値 = $合体戦ライフ基本値 ;
	}

	$合体戦生命基本値 = 9;
	if($First_Battle_Damage >= 1){
		$合体戦生命調整値 = $合体戦生命基本値 - ($First_Battle_Damage*3);
	}else{
		$合体戦生命調整値 = $合体戦生命基本値 ;
	}

	MyLife_Count(0,$合体戦ライフ調整値);
	CP_IHPChange(0,$合体戦生命調整値,null,false);

	MyTr_Count(0,140);
	CP_PowerChange(150,430,null,true);
	CP_SpeedChange2(0,172,Dxl2,false);

	CP_HighChange2(0,1444,Dxl2,false);
	CP_AltChange(0,10,Dxl2,false);

	CP_AziChange(0,30,null,false);
	CP_RollBarMove2(0,0,null,true);

	SetVolume("@mbgm*", 100, 0, null);
	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(12);

	Delete("上背景");
	FadeDelete("絵色赤", 300, true);

	Fade("絵演効果灰色", 5000, 500, null, false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/010vs0210a01">
《……御堂!?》


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/010vs0220a00">
「くぁ……っ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SEL01","se戦闘_動作_空走行01_L");
	MusicStart("SEL01",3000,1000,0,800,null,true);

	Fade("絵演効果灰色", 5000, 750, null, false);

	MyTr_Count(300,60);
	$合体戦生命減少値 = $合体戦生命調整値 - 2;
	CP_IHPChange(300,$合体戦生命減少値,null,false);

	CP_PowerChange(3000,200,null,false);
	CP_SpeedChange(30000,274,Dxl2,false);

	CP_HighChange2(30000,600,Dxl2,false);
	CP_AltChange(3000,-60,Dxl2,false);
	Zoom("絵航空背景", 3000, 1100, 1100, AxlDxl, false);
	Move("絵航空背景", 3000, @0, @-1024, AxlDxl, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　しまった。
　無理な騎航で体調を乱していたところに……攻撃を
貰い過ぎた……!!

　落ち――――る………………

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆視界回って
	CreateColorEX("絵色黒", 20000, "#000000");
	Fade("絵色黒", 2600, 1000, null, false);

	SetVolume("SE*", 3000, 0, null);
	Fade("絵演効果灰色", 5000, 1000, null, false);

	MyTr_Count(300,0);
	CP_PowerChange(3000,0,null,false);
	CP_SpeedChange(3000,712,Dxl2,false);

	CP_HighChange(3000,150,Dxl2,false);
	CP_AltChange(3000,-90,Dxl2,false);
	Zoom("絵航空背景", 3000, 5000, 5000, Axl2, false);
	Move("絵航空背景", 3000, @0, @-1024, AxlDxl, false);

	WaitAction("絵色黒", null);
	SetVolume("SE*", 100, 0, null);

	WaitKey(1000);

	Cockpit_AllFade0();

//◆墜落。ずどーん。
	CreateSE("SE03","se戦闘_衝撃_鎧散華");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPover("絵演上", 20100, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	CreateTextureSP("絵演", 20000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	SetVertex("絵演上", 474, 293);
	SetBlur("絵演上", true, 3, 300, 30, false);

	Zoom("絵演上", 500, 1100, 1100, Dxl1, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	WaitKey(250);
	FadeDelete("絵演上", 1000, true);

	WaitKey(500);

//◆ガッタイダー
	PrintGO("上背景", 20000);
	CreateSE("SE01a","se戦闘_破壊_鎧01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	OnBG(100,"bg002_空a_01.jpg");
	FadeBG(0,true);
	CreateTextureSP("絵演合体", 1000, Center, Middle, "cg/st/3dガッタイダー_立ち_通常c.png");
	SetVolume("SE*", 1000, 600, null);
	FadeDelete("上背景", 1000, true);

	WaitKey(1000);

	SetFwR("cg/fw/fwガッタイダー_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030a]
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc01/010vs0230b33">
《……ふふふ……
　あーはっはっはっはっはっはっはっ！》

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


/*
//あきゅん「演出：気まぐれに正体ちょい見せしてみる」
//あきゅん「演出：がしかし失敗したので保留」
	CreatePlainSP("絵板写", 22000);
	SetFwR("cg/fw/fw小夏_怯え.png");
	CreateStencil("@FwC04/絵演型",20000,0,0,128,"cg/fw/fw小夏_怯え.png",true);
	CreateColorSP("@FwC04/絵演型/色", 20050, "#000000");
	DrawTransition("@FwC04/絵演型/色", 0, 0, 145, 500, null, "cg/data/slide_02_00_0.png", true);

*/


	SetFwR("cg/fw/fwガッタイダー_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030b]
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc01/010vs0240b33">
《見ていてくれた？
　ねえ、――――》

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,150);//―――――――――――――――――――――――――――――

	ClearWaitAll(3000, 2000);

//◆ゲームオーバー

}

..//ジャンプ指定
//次ファイル