
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_043vsb.nss_MAIN
{

	
//コックピット用Ｓｅｔ
	//CP_AllSet("村正");

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼イベントＣＧ
	#ev170_バロウズ署長を射殺_a=true;
	#ev170_バロウズ署長を射殺_c=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

//あきゅん「ＣＰ：次のファイルでＣＰ使用してなかったので退避」
	Cockpit_AllFade0();
	//CP_AllDelete();

	$GameName = "mc04_044vs.nss";

}

scene mc04_043vsb.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	CreateColorSP("絵色100", 18000, "BLACK");
	Delete("上背景");

..//ジャンプ指定
//前ファイル　"mc04_043vs.nss"

//●殺すため


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　殺すのだ。

　あの騎士を、殺すのだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フラッシュバック：署長の死
	EfRecoIn1(18500,600);

	CreateTextureEX("絵回想", 18000, @0, @0, "cg/ev/ev170_バロウズ署長を射殺_c.jpg");
	Fade("絵回想", 0, 1000, null, true);
	CreateTextureEX("絵回想2", 18000, @0, @0, "cg/ev/ev170_バロウズ署長を射殺_a.jpg");

	EfRecoIn2(300);

	Wait(500);

	Fade("絵回想2", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　憎め。
　憎め、憎め、憎め憎め憎め。

　あれは怨敵。
　養父の仇。

　許せない。
　許すまい。

　憎み、憎んで殺す。
　憎悪に<RUBY text="しゅう">執</RUBY>して殺害する。

　殺す。

　その一念。
　他には何も必要ではない。

　湊斗景明にはそれだけで良いのだ。

　殺害に徹する――――
　
　人殺しの術しか知らぬ湊斗景明が大鳥香奈枝を救う
のなら、そうする以外に道はない!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆戦闘復帰
	EfRecoOut1(300);

	Delete("絵回想*");
	EfRecoOut2(600,true);

	CreateSE("SE10","se戦闘_動作_空突進05");
	MusicStart("SE10",2000,1000,0,1000,null,true);

	CreateTextureSP("絵背景50", 100, Center, -1600, "cg/bg/bg202_旋回演出背景山_01.jpg");
	Request("絵背景50", Smoothing);

	Cockpit_AllFade2();
	CP_HighChangeA();
	CP_AltChangeA();
	FrameShake();


	SetVolume("SE10", 3000, 300, null);
	SetFrequency("SE10", 3000, 900, null);

	OnSE("se戦闘_動作_空突進02",1000);


	DrawDelete("絵色100", 200, 100, "slide_02_01_1", false);
	Move("絵背景50", 1000, @0, @800, Dxl2, true);

//◆敵騎接近
	OnSE("se戦闘_動作_空突進03",1000);
	Fade("@絵狸", 200, 1000, null, false);
	Zoom("@絵狸", 900, 500, 500, Axl3, true);
	Move("@絵狸", 500, @0, @-50, Dxl2, true);
	Move("@絵狸", 400, @0, @50, Dxl3, false);
	Fade("絵色100", 400, 1000, Dxl3, false);


//◆村正帯電。レールガン準備
	SetVolume("SE*", 2000, 0, null);
	SetVolume("@mbgm*", 2000, 0, null);

	CreateColorSP("黒幕１", 18000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);


	Cockpit_AllFade0();
//	CP_AllDelete();


	Delete("絵M");
	Delete("絵背景50");
	Delete("絵EV100");
	Delete("絵EV200");
	Delete("絵shin");
	Delete("絵色400");
	Delete("エフェクト１");

	CreateWindow("ウィンドウ上", 15000, 0, 0,1024, 288, false);
	CreateWindow("ウィンドウ下", 15000, 0, 288, 1024, 576, false);
	SetAlias("ウィンドウ上","ウィンドウ上");
	SetAlias("ウィンドウ下","ウィンドウ下");

	CreateWindow("ウィンドウ縦", 15000, 512, 0,400, 576, false);
	SetAlias("ウィンドウ縦","ウィンドウ縦");
	CreateTextureEX("ウィンドウ縦/絵EV100", 16000, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_b.jpg");
	Request("ウィンドウ縦/絵EV100", Smoothing);
	Zoom("ウィンドウ縦/絵EV100", 0, 2000, 2000, null, true);
	Move("ウィンドウ縦/絵EV100", 0, @-300, @0, null, false);
	CreateTextureEX("ウィンドウ縦/絵EV200", 16000, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_c.jpg");
	Request("ウィンドウ縦/絵EV200", Smoothing);
	Zoom("ウィンドウ縦/絵EV200", 0, 2000, 2000, null, true);
	Move("ウィンドウ縦/絵EV200", 0, @-300, @0, null, false);




	CreateTextureSP("絵EV100", 14000, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_a.jpg");
	CreateTextureEX("絵EV200", 14000, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_b.jpg");
	Request("絵EV100", Smoothing);
	Zoom("絵EV100", 0, 2000, 2000, null, true);
	Move("絵EV100", 0, @+400, @+288, null, false);
	Request("絵EV200", Smoothing);
	Zoom("絵EV200", 0, 2000, 2000, null, true);
	Move("絵EV200", 0, @0, @+288, null, false);

	Move("絵EV100", 500, @-400, @0, Dxl1, false);
	Move("ウィンドウ上", 300, @0, @-200, null, false);
	Move("ウィンドウ下", 300, @0, @+200, null, false);
	DrawDelete("黒幕１", 300, 100, "slide_03_01_1", true);
	Delete("黒幕１");

	WaitAction("絵EV100", null);
	CreateColorEXadd("絵色100", 14001, "White");

	OnSE("se特殊_鎧_装着01",1000);

//	SoundPlay("@mbgm11",0,1000,true);

	CreateProcess("プロセス１", 12000, 0, 0, "Lastfire");
	SetAlias("プロセス１","プロセス１");
	Request("プロセス１",Start);

	OnSE("se戦闘_攻撃_鎧_剣戟01",1000);
	OnSE("se戦闘_動作_空突進06",1000);

	Fade("絵EV200", 0, 1000, null, false);
	Fade("絵色100", 0, 1000, null, false);
	DrawTransition("絵色100", 200, 0, 1000, 100, Dxl1, "cg/data/slide_05_00_1.png", true);
	Delete("絵EV100");
	FadeDelete("絵色100",1000,false);
	Move("絵EV200", 1000, 0, 0, Axl3, false);
	Zoom("絵EV200", 1000, 1000, 1000, Axl3, true);

	EffectZoomadd(15000, 700, 100, "cg/ev/ev902_村正電磁抜刀レールガン_d.jpg", false);

	Wait(200);

//おがみ：帯電

	CreateColorSP("ウィンドウ上/絵色100", 15000, "Black");
	CreateColorSP("ウィンドウ下/絵色100", 15000, "Black");

	CreateColorEX("絵色100", 14005, "Black");
	CreateColorEXadd("フラッシュアウト", 18005, "WHITE");
	Fade("絵色100", 0, 700, null, false);
	DrawTransition("絵色100", 300, 0, 1000, 100, Dxl1, "cg/data/slide_06_00_1.png", true);

	Fade("ウィンドウ縦/絵EV100", 0, 1000, null, false);
	DrawTransition("ウィンドウ縦/絵EV100", 500, 0, 1000, 100, Dxl1, "cg/data/slide_02_00_1.png", true);

	Wait(300);

	Fade("ウィンドウ縦/絵EV200", 0, 1000, null, false);
	Shake("ウィンドウ縦/絵EV200", 500000, 2, 1, 0, 0, 1000, null, false);

	OnSE("se特殊_電撃_帯電01",700);

	CreateSE("SE01","se特殊_電撃_帯電01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("ウィンドウ縦/絵200", 20000, #99CCFF);
	Fade("ウィンドウ縦/絵200", 10, 600, null, true);
	Fade("ウィンドウ縦/絵200", 100, 0, null, true);
	Fade("ウィンドウ縦/絵200", 10, 500, null, true);
	Fade("ウィンドウ縦/絵200", 100, 0, null, true);
	Fade("ウィンドウ縦/絵200", 10, 700, null, true);
	Fade("ウィンドウ縦/絵200", 100, 0, null, true);
	Fade("ウィンドウ縦/絵200", 10, 500, null, true);
	Fade("ウィンドウ縦/絵200", 100, 0, null, true);
	Fade("ウィンドウ縦/絵200", 10, 800, null, true);
	Fade("ウィンドウ縦/絵200", 100, 0, null, true);

	SetVolume("SE01", 100, 0, null);



	CreateColorSP("黒幕１", 21000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("ウィンドウ上/*");
	Delete("ウィンドウ下/*");
	Delete("ウィンドウ縦/*");

	Delete("ウィンドウ上");
	Delete("ウィンドウ下");
	Delete("ウィンドウ縦");

	Delete("絵色100");
	Delete("絵EV100");
	Delete("絵EV200");

	CreateTextureSP("絵EV100", 1999, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_c.jpg");
	CreateTextureSP("絵EV200", 2000, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_d.jpg");

	Shake_Loop("@絵EV200","shake01");

	RailgunFlash();

	CreateSE("SE01","se特殊_電撃_帯電01");
	CreateSE("SE02","se特殊_電撃_放電02");
	MusicStart("SE01",300,500,0,1000,null,true);
	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	Fade("絵背景200", 500, 1000, null, true);


	MusicStart("SE02",0,1000,0,1000,null,false);
	Wait(1000);

	SetVolume("*", 3000, 0, null);

	Fade("フラッシュアウト", 1000, 1000, null, true);

	ClearFadeAll(2000, true);

	//CP_AllDelete();


	Wait(1000);

}

..//ジャンプ指定
//次ファイル　"mc04_044vs.nss"