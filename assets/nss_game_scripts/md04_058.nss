//<continuation number="180">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_058.nss_MAIN
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
	#bg002_空a_02=true;
	#ev235_迫る鍛造雷弾_a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_059.nss";

}

scene md04_058.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md04_057.nss"


//◆空
//◆銀星号

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");


	OnBG(101, "bg002_空a_02.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm01", 0, 1000, true);


	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	Wait(500);

	StC(1000, @0, @0, "cg/st/3d銀星号_立ち_通常.png");
	FadeStC(500, true);

	Wait(500);

	SetFwR("cg/fw/fw光_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【光】
<voice name="光" class="光" src="voice/md04/0580010a14">
「――――」

{	FwR("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md04/0580020a15">
《良き敵であったな。
　同田貫正国か……歴史に名を残しただけの
ことはある》

{	FwR("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0580030a14">
「――――」

{	FwR("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md04/0580040a15">
《御堂？
　どうした、先程から上ばかり気に掛けて》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ピー。サーチ音

	OnSE("se特殊_コックピット_アラーム", 1000);



//	DeleteStC(150,true);
	StC(1000, @0, @0, "cg/st/3d銀星号_立ち_通常b.png");
	FadeStC(300, true);

	SetFwR("cg/fw/fw二世女王蟻_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md04/0580050a15">
《……ふむ。何かちょろちょろしておるな。
　あれが気に障るのか？》

{	FwR("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0580060a14">
「――――」

{	FwR("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0580070a14">
「辰気収斂!!」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,150);//―――――――――――――――――――――――――――――

//◆やにわにフルパワー


	OnSE("se戦闘_動作_空突進01", 1000);
	DrawDelete("@StC*", 150, 100, "slide_02_01_0", false);

	WaitKey(300);

	CreateColorSP("絵黒", 1, "#CC0000");
	CreateColorSP("絵黒", 8500, "#000000");
	DrawTransition("絵黒", 200, 0, 1000, 500, null, "cg/data/beam_04_00_1.png", true);
	CreateTextureSP("銀星GO", 1000, -328, 0, "cg/ef/resize/ef019_銀星号突貫02tll.jpg");
	Request("銀星GO", Smoothing);
	SetBlur("銀星GO", true, 3, 500, 50, false);
	Zoom("銀星GO", 0, 2000, 2000, null, true);
	DrawDelete("絵黒", 200, 500, "slide_01_03_1", false);
	Wait(100);
	CreateSE("SE03","se戦闘_動作_空上昇01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	Move("銀星GO", 600, @0, -1980, DxlAuto, false);
	Zoom("銀星GO", 600, 1000, 1000, null, false);
	Wait(600);
	CreateSE("SE04","se戦闘_動作_空上昇01");
	MusicStart("SE04",0,1000,0,750,null,false);
	Move("銀星GO", 8000, @0, -780, DxlAuto, false);

	SetFwC("cg/fw/fw二世女王蟻_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md04/0580080a15">
《……御堂!?　何をする！》

{	FwC("cg/fw/fw光_警戒.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0580090a14">
「備えろ、村正！
　何だか知らんが」

//【光】
<voice name="光" class="光" src="voice/md04/0580100a14">
「何だか知らんが！」

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0580110a14">
「恐ろしく忌まわしいものがやって来る!!」

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md04/0580120a15">
《何ぃ!?》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,150);//―――――――――――――――――――――――――――――

//◆鍛造雷弾、投下


	CreateColorSP("絵黒", 8500, "#000000");
	DrawTransition("絵黒", 200, 0, 1000, 500, null, "cg/data/circle_02_00_0.png", true);

	CreateTextureSP("tanzo", 1200, 0, 0, "cg/ev/ev235_迫る鍛造雷弾_a.jpg");
	SetBlur("tanzo", true, 3, 500, 50, false);
	Zoom("tanzo", 0, 2000, 2000, null, true);

	DrawDelete("絵黒", 200, 500, "circle_02_00_1", false);
	Wait(100);
	CreateSE("SE03","se戦闘_動作_空上昇01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	Zoom("tanzo", 1000, 1000, 1000, null, false);
	Wait(1000);
	CreateSE("SE04","se戦闘_動作_空上昇01");
	MusicStart("SE04",0,1000,0,750,null,false);

	Wait(500);

	SetFwR("cg/fw/fw二世女王蟻_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md04/0580130a15">
《…………》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md04/0580140a15">
《な、何だ――<RUBY text="・・">あれ</RUBY>は!?》

{	FwR("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0580150a14">
「考えるな！
　考えてもわからん！」

{	FwR("cg/fw/fw光_警戒.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0580160a14">
「最大の<RUBY text="ちから">武力</RUBY>で抑え込む!!」

{	FwR("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md04/0580170a15">
《……承知!!》

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,150);//―――――――――――――――――――――――――――――

//◆飢餓虚空・発生

	CreateColorSP("黒幕", 25000, "BLACK");
	DrawTransition("黒幕", 300, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Delete("銀星GO");
	Delete("tanzo");

	CreateSE("SE01","se戦闘_銀星号_飢餓虚空魔王星_発動");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateTextureSP("魔王星", 1200, 0, 0, "cg/ef/ef037_飢餓虚空魔王星a.jpg");

	CreatePlainEX("絵板写", 1200);
	Fade("絵板写", 0, 800, null, true);
	SetBlur("絵板写", true, 3, 500, 50, false);
	Zoom("絵板写", 0, 2000, 2000, null, true);

	DrawTransition("黒幕", 300, 1000, 0, 100, null, "cg/data/circle_01_00_1.png", true);
	Delete("黒幕");



	Zoom("絵板写", 600, 1000, 1000, Dxl2, true);

	Shake("絵板写", 150000, 1, 1, 0, 0, 1000, DxlAuto, false);



	SetFwC("cg/fw/fw光_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【光】
<voice name="光" class="光" src="voice/md04/0580180a14">
「<RUBY text="ブラックホール">飢餓虚空</RUBY>――<RUBY text="フェアリーズ">魔王星</RUBY>!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,150);//―――――――――――――――――――――――――――――



//◆膨張
	Rotate("絵板写", 3000, @0, @0, @360, Axl1, false);
	Zoom("絵板写", 3000, 4000, 4000, Axl1, false);

	SetVolume("OnSE*", 1500, 0, null);
	SetVolume("SE*", 1500, 0, null);

	ClearFadeAll(1500,true);


}

..//ジャンプ指定
//次ファイル　"md04_059.nss"