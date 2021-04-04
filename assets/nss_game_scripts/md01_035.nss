//<continuation number="230">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_035.nss_MAIN
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
	#bg051_皆斗家居間_03a=true;
	#bg002_空a_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_036.nss";

}

scene md01_035.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_034vs.nss"

//◆回想・皆斗本家
	PrintBG("上背景", 20000);

	EfRecoIn1(18000,0);

	OnBG(100,"bg051_皆斗家居間_01.jpg");
	FadeBG(0,true);

	StL(1000, @0, @0,"cg/st/st本家_通常_私服.png");
	StR(1000, @0, @0,"cg/st/st署長_通常_制服.png");
	FadeStA(0,true);

	Delete("上背景");
	SoundPlay("@mbgm14",2000,1000,true);

	EfRecoIn2(300);

	SetFwC("cg/fw/fw本家_不快.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【本家】
<voice name="本家" class="本家" src="voice/md01/0350010b52">
『明堯……
　貴様は実に、儂を失望させるために現れた
かのような男であった』

{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0350020a11">
『…………』

{	FwC("cg/fw/fw本家_怒り.png");}
//【本家】
<voice name="本家" class="本家" src="voice/md01/0350030b52">
『牧村とか言ったか。あのような何処の<RUBY text="じげ">地下</RUBY>
とも知れぬ下らん女に身を賭けおって……！
　貴様は己と立場と役目を心得ておらなんだ
か！』

{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0350040a11">
『…………』

{	FwC("cg/fw/fw本家_怒り.png");}
//【本家】
<voice name="本家" class="本家" src="voice/md01/0350050b52">
『儂が鬼畜の所業を為すは、貴様の不始末に
補いをつけるため。
　全ては身から出た錆と思え！』

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0350060a11">
『……何もかも仰せの通り』

{	FwC("cg/fw/fw署長_怒り.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0350070a11">
『されど、御本家！』

{	FwC("cg/fw/fw本家_驚き.png");}
//【本家】
<voice name="本家" class="本家" src="voice/md01/0350080b52">
『黙れ！　賢しらに口を利くな！
　貴様などの言葉に今さら<RUBY text="びた">鐚</RUBY>一文の価値でも
有ると思うか！』

{	FwC("cg/fw/fw本家_怒り.png");}
//【本家】
<voice name="本家" class="本家" src="voice/md01/0350090b52">
『屑めが!!』

{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0350100a11">
『――――』

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/md01/0350110b52">
『景明！　ここへ参れ！』

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0350120a00">
『…………』

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/md01/0350130b52">
『貴様には何の恨みもない。かような真似を
命じるのが心苦しくもある。
　だが今となっては、この愚か者に拾われた
運命を嘆いてもらうよりないわ』

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0350140a00">
『…………』

{	FwC("cg/fw/fw本家_通常.png","Sepia");}
//【本家】
<voice name="本家" class="本家" src="voice/md01/0350150b52">
『貴様が事の決着をつけよ』

{	FwC("cg/fw/fw本家_不快.png");}
//【本家】
<voice name="本家" class="本家" src="voice/md01/0350160b52">
『この能無し――明堯と湊斗家との縁を、
　貴様の手で断ち切るのだ』

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0350170a00">
『…………』

//【景明】
<voice name="景明" class="景明" src="voice/md01/0350180a00">
『……あ……明堯様……』

{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0350190a11">
『…………』

{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0350200a11">
『……許せ。景明』

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り

//あきゅん「演出：背景が分からないので後回し」
	SetVolume("@mbgm*", 1000, 0, null);
	EfRecoOut1(300);
	Delete("絵回想*");
//おがみ：前の戦闘シーンに合わせて調整
/*
	OnBG(100,"bg002_空a_01.jpg");
	FadeBG(0,true);
*/
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/ef/ef037_飢餓虚空魔王星b.jpg");

	DeleteStA(0,true);


	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0350210a00">
（……明堯様……）

//【景明】
<voice name="景明" class="景明" src="voice/md01/0350220a00">
（……統様……）

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0350230a00">
（……光……お前は…………）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ズゴー。闇に呑まれる
	CreateSE("SE01","se特殊_その他_神の絶叫");
	MusicStart("SE01",0,1000,0,800,null,false);
	SetFrequency("SE01", 10000, 250, Dxl2);

	CreateColorSP("絵色黒", 5000, "#000000");
	DrawTransition("絵色黒", 10000, 0, 1000, 1000, null, "cg/data/zoom_01_00_0.png", false);

	CreateColorSP("絵色黒下", 50, "#000000");
	CreatePlainSP("絵板写", 4999);
	Delete("@OnBG*");
	Zoom("絵板写", 3000, 1000, 10000, AxlDxl, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　――そうして。
　俺の意識は、暗黒に溶けた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitAction("絵板写", null);

	CreatePlainSP("絵板写２", 10000);
	Wait(1);
	CreateColorSP("絵色黒", 9999, "#000000");
	Zoom("絵板写２", 3000, 0, 1000, AxlDxl, true);
	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md01_036.nss"