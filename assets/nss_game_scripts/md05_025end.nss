//<continuation number="70">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_025end.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/md05_025end.nss","RotetoLoop1",true);
	Conquest("nss/md05_025end.nss","RotetoLoop2",true);
	Conquest("nss/md05_025end.nss","AnkokuZoomLoop1",true);
	Conquest("nss/md05_025end.nss","AnkokuZoomLoop2",true);
	Conquest("nss/md05_025end.nss","AnkokuZoomLoop1",true);
	Conquest("nss/md05_025end.nss","AnkokuZoomLoopEX",true);
	Conquest("nss/md05_025end.nss","TurboBlur3",true);
	

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

	//▼ルートフラグ、選択肢、次のGameName
	#立方陣終了 = true;

	$PreGameName = $GameName;

	$GameName = "md05_026vs.nss";

}

scene md05_025end.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md05_025.nss"

//●正答
//◆辰気流に囚われた村正
//◆→辰気流が蒸発

	PrintBG("上背景", 30000);
//	CreateColorSP("下敷き", 16000, "BLACK");
	CreateSE("SE", "se特殊_その他_辰気収斂_L");
	MusicStart("SE", 1000, 1000, 0, 1000, null,true);

//BGM変更しました：とほ
	SoundPlay("@mbgm10", 0, 1000, true);

//	CreateTextureSP("魔王星", 1000, @0, @0, "cg/ef/ef037_飢餓虚空魔王星b.jpg");
//	CreateTextureSP("村正", 1100, @-200, @-200, "cg/st/3d村正最終_騎航_通常.png");
//	Zoom("村正", 0, 100, 100, null, true);


	CreateTextureEX("絵背景村正", 3500, Center, Middle, "cg/st/3d村正最終_騎航_通常5.png");
	Rotate("絵背景村正", 0, @0, @0, @50, null,true);
	Move("絵背景村正", 0, @0, @0, null, true);
	CreateTextureEXadd("絵背景村正効果", 5500, Center, Middle, "cg/st/3d村正最終_騎航_通常5.png");
	Rotate("絵背景村正効果", 0, @0, @0, @90, null,true);
	Zoom("絵背景村正効果", 0, 400, 400, null, false);

	Request("絵背景村正", Smoothing);
	Zoom("絵背景村正", 0, 1000, 1000, null, true);
//	Shake("絵背景村正", 1000000, 1, 1, 0, 0, 500, null, false);
//	SetBlur("絵背景村正", true, 1, 400, 70, false);


$ループムーブナット名 = "@絵背景村正";
$ループムーブタイム = 25000;

	CreateProcess("プロセス５", 150, 0, 0, "FlyMoving");
	SetAlias("プロセス５","プロセス５");


	CreateTextureEXsub("絵背景効果線", 3000, Center, Middle, "cg/ef/ef039_時間移動.jpg");
//	SetVertex("絵背景効果線", 512, 270);
	$効果ナット名 = @絵背景効果線;

	CreateProcess("プロセス６", 150, 0, 0, "TurboBlur");
	SetAlias("プロセス６","プロセス６");



	CreateTextureSPover("絵背景100", 200, Center, Middle, "cg/ef/ef037_飢餓虚空魔王星b.jpg");
	CreateTextureSPover("絵背景200", 200, Center, Middle, "cg/ef/ef037_飢餓虚空魔王星b.jpg");
	Request("絵背景200", Smoothing);
	Zoom("絵背景200", 0, 4000, 4000, null, true);
	Fade("絵背景200", 0, 700, null, true);
	Request("絵背景100", Smoothing);
	Zoom("絵背景100", 0, 4000, 4000, null, true);
	Fade("絵背景100", 0, 700, null, true);


	CreateTextureEX("ノイズ", 100, Center, Middle, "cg/ef/ef037_飢餓虚空魔王星b.jpg");
	Request("ノイズ", Smoothing);
	Zoom("ノイズ", 0, 1500, 1500, null, true);
	DrawEffect("ノイズ", 50, "SuperWave", 20, 30, null);
	Fade("ノイズ", 0, 1000, null, true);


	$ローテートナット名１ = @絵背景100;
	$ローテート速度１ = 100000;
	$ローテート角度１ = @3600;

	$ローテートナット名２ = @絵背景200;
	$ローテート速度２ = 100000;
	$ローテート角度２ = @3600;

	$ズームナット名１ = @絵背景100;
	$ズームナット名２ = @絵背景200;


	CreateProcess("プロセス１", 150, 0, 0, "AnkokuZoomLoopEX");
	SetAlias("プロセス１","プロセス１");
	CreateProcess("プロセス２", 150, 0, 0, "RotetoLoop1");
	SetAlias("プロセス２","プロセス２");
	CreateProcess("プロセス３", 150, 0, 0, "TurboBlur3");
	SetAlias("プロセス３","プロセス３");
	CreateProcess("プロセス４", 150, 0, 0, "RotetoLoop2");
	SetAlias("プロセス４","プロセス４");

	Request("プロセス１", Start);
	Request("プロセス２", Start);
	Request("プロセス３", Start);
	Request("プロセス４", Start);
	Request("プロセス５", Start);
	Request("プロセス６", Start);


	Rotate("絵背景村正", 3000, @0, @0, @40, Dxl1,false);
	Zoom("絵背景村正", 3000, 400, 400, Dxl1, false);
	Fade("絵背景村正", 1000, 1000, null, false);

	FadeDelete("上背景", 2000, true);

	WaitKey(1500);

	OnSE("se特殊_陰義_発動02", 1000);
	Zoom("絵背景村正効果", 2000, 500, 500, Axl2, false);
	Fade("絵背景村正効果", 1000, 1000, null, false);

//力集まってる感出すために inc櫻井
//	CreateProcess("プロセス１", 12000, 0, 0, "power");
//	Request("プロセス１",Start);

	Wait(2000);
	CreateColorSPadd("白", 25000, "WHITE");
	DrawTransition("白", 200, 0, 1000, 500, null, "cg/data/circle_01_00_0.png", true);

	Delete("絵背景村*");

	Wait(16);
	CreatePlainSP("絵板写", 5500);
	Wait(16);


	Request("プロセス*", Stop);
	Delete("プロセス*");
	Delete("ノイズ");
	Delete("絵背景*");
	SetVolume("SE", 2000, 0, null);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg205_旋回演出背景宇宙_01.jpg");

	Wait(1000);

	OnSE("se特殊_その他_辰気流蒸発", 1000);
	DrawDelete("絵板写", 2000, 500, "effect_01_00_0", false);

	FadeDelete("白", 2000, true);




	SetFwR("cg/fw/fw光_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【光】
<voice name="光" class="光" src="voice/md05/025en0010a14">
《……何ぃ!?》

{	FwR("cg/fw/fw光_愕然.png");}
//【光】
<voice name="光" class="光" src="voice/md05/025en0020a14">
《我が<RUBY text="フェアリーズ">魔王星</RUBY>を――蒸発させた!?》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆村正、脱出

	OnSE("se戦闘_動作_空突進08", 1000);

	StC(1000, @0, @100, "cg/st/3d村正最終_立ち_戦闘b.png");
	Zoom("@StC*", 0, 900, 900, null, true);

	FadeStC(300, false);
	Zoom("@StC*", 1000, 1000, 1000, Dxl2, true);

	Wait(500);

	SetFwL("cg/fw/fw二世女王蟻_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/025en0030a15">
《あの謎を解いたのか……!?》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/025en0040a15">
《なれにそれ程の才が――いや》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/025en0050a15">
《仕手の思考力をも利用したればこそか》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/025en0060a15">
《そこまでの事ができる程、仕手との一致を
成したのか……！》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆村正

//すげぇ勢いで村正がやってくる。 inc櫻井

	CreateColorSP("絵黒", 8500, "#000000");
	DrawTransition("絵黒", 200, 0, 1000, 500, null, "cg/data/slide_01_02_0.png", true);

	CreateTextureSP("mura", 1200, 400, 200, "cg/ev/resize/ev504_村正突進l.jpg");
	SetBlur("mura", true, 2, 500, 70, false);
	Zoom("mura", 0, 2000, 2000, null, true);

	DrawDelete("絵黒", 200, 500, "slide_01_02_1", false);
	Wait(100);
	CreateSE("SE03","se戦闘_動作_空上昇01");
	MusicStart("SE03",0,1000,0,1000,null,false);

	Zoom("mura", 500, 1000, 1000, Dxl2, false);
	Move("mura", 500, @-1000, @-400, Dxl1, true);


	Wait(600);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　第一段階、拘束状態の解除――完了。
　第二段階、辰気圏よりの一時脱出――完了。

　第三段階――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【光】
<voice name="光" class="光" src="voice/md05/025en0070a14">
《おのれ！　逃がさぬ!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearFadeAll(300,true);

}

..//ジャンプ指定
//次ファイル　"md05_026vs.nss"


function RotetoLoop1()
{
	while(1){
	Rotate($ローテートナット名１, $ローテート速度１, @0, @0, $ローテート角度１, null,true);
	}
}

function RotetoLoop2()
{
	while(1){
	Rotate($ローテートナット名２, $ローテート速度２, @0, @0, $ローテート角度２, null,true);
	}
}


function AnkokuZoomLoop1()
{
	while(1){

	Zoom($ズームナット名１, 2000, 2000, 2000, null, false);
	Fade($ズームナット名１, 500, 1000, null, true);
	Wait(1000);
	Fade($ズームナット名１, 500, 0, null, true);
	Zoom($ズームナット名１, 0, 3000, 3000, null, true);

	}
}

function AnkokuZoomLoop2()
{
	while(1){

	Zoom($ズームナット名２, 2000, 2000, 2000, null, false);
	Fade($ズームナット名２, 500, 1000, null, true);
	Wait(1000);
	Fade($ズームナット名２, 500, 0, null, true);
	Zoom($ズームナット名２, 0, 3000, 3000, null, true);

	}
}

function AnkokuZoomLoop1()
{
	while(1){

	Zoom($ズームナット名１, 2000, 2000, 2000, null, false);
	Fade($ズームナット名１, 500, 1000, null, true);
	Wait(1000);
	Fade($ズームナット名１, 500, 0, null, true);
	Zoom($ズームナット名１, 0, 3000, 3000, null, true);

	}
}

function AnkokuZoomLoopEX()
{

	Zoom($ズームナット名１, 3100, 2000, 2000, Dxl2, false);
	Fade($ズームナット名１, 500, 1000, null, true);

	while(1){

	Wait(1000);
	Zoom($ズームナット名２, 3100, 2000, 2000, Dxl2, false);
	Fade($ズームナット名２, 1000, 1000, null, false);
	Fade($ズームナット名１, 1000, 0, null, true);
	Zoom($ズームナット名１, 0, 6000, 6000, null, true);

	Wait(1000);
	Zoom($ズームナット名１, 3100, 2000, 2000, Dxl2, false);
	Fade($ズームナット名１, 1000, 1000, null, false);
	Fade($ズームナット名２, 1000, 0, null, true);
	Zoom($ズームナット名２, 0, 6000, 6000, null, true);

	}
}


function TurboBlur3()
{

	while(1){

	DrawTransition($Warpトランジ, $Warpトランジ速度, 0, 1000, $Warpトランジなめらかさ, Axl2, "cg/data/circle_01_00_1.png", true);
	DrawTransition($Warpトランジ, $Warpトランジ速度, 1000, 0, $Warpトランジなめらかさ, Dxl2, "cg/data/circle_01_00_0.png", true);

	}

}
