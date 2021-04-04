//<continuation number="170">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_062.nss_MAIN
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
	#bg063_普陀楽城内廊下_02=true;
	#bg073_海b_02=true;
	#bg002_空a_02=true;
	#ev237_空に昇った金神_a=true;
	#ev238_地球と太陽と月と金神_a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md05_001.nss";

}

scene md04_062.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md04_061.nss"


//◆城内、村正


	PrintBG("上背景", 30000);
	CreateColorSP("白", 5000, "WHITE");


	OnBG(100, "bg063_普陀楽城内廊下_02.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm01", 0, 1000, true);


	Delete("上背景");
	FadeDelete("白",4500,true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0620010a01">
《……何が起きてるの……》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0620020a00">
「……<RUBY text="はしら">光柱</RUBY>が……幾つも……」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0620030a07">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ホワイトマスク？
	OnSE("se特殊_雰囲気_発光04", 1000);

	CreateColorEXadd("白", 16000, "WHITE");
	Fade("白", 1000, 200, null, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0620040a01">
《――御堂！　<RUBY text="あっち">南方</RUBY>！》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0620050a00">
「相模湾か!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆太平洋上
//◆でっかい光の柱
/*
	CreateTextureEX("柱", 5000, @0, @0, "cg/bg/bg073_海b_02.jpg");
	Fade("柱", 1000, 1000, null, true);

	WaitKey(1000);
*/

	CreateTextureEX("光吹き上げ前", 15000, 0, 0, "cg/bg/bg073_海a_02.jpg");
	CreateTextureEX("光吹き上げ前揺れ", 15000, 0, 0, "cg/bg/bg073_海a_02.jpg");

	CreateTextureEX("光吹き上げ後", 15000, 0, 0, "cg/bg/bg073_海b_02.jpg");
	CreateTextureEX("光吹き上げ後揺れ", 15000, 0, 0, "cg/bg/bg073_海b_02.jpg");
	SetBlur("光吹き上げ後揺れ", true, 2, 300, 100, false);


	Fade("光吹き上げ前", 300, 1000, null, false);
	Fade("光吹き上げ前揺れ", 1500, 1000, null, false);
	Shake("光吹き上げ前揺れ", 1500, 0, 10, 0, 0, 1000, Axl3, false);

	Wait(1000);
	Fade("光吹き上げ後*", 0, 1000, null, true);

	OnSE("se特殊_その他_噴き上がる光の柱", 1000);
	EffectZoomadd(17000, 1000, 100, "cg/bg/bg073_海b_02.jpg", false);
	Delete("光吹き上げ前");
	Delete("光吹き上げ前揺れ");
	FadeF4("光吹き上げ後揺れ", 200, 500, 600, 0, 0, Dxl2, true);
	FadeDelete("光吹き上げ02b", 600, false);

	WaitKey(2000);
	Delete("光吹き上げ後揺れ");

//◆城内、村正
	Fade("白", 1000, 400, null, false);
	FadeDelete("光吹き上げ後",1000,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　相模湾――
　いやもっと先、太平洋上か。

　一際長大な光柱が吹き上がっている。

　高い。雲の上、更にその先へ。
　まるで何かを天の<RUBY text="はて">涯</RUBY>まで押し上げるかのよう。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("白", 1000, 0, null, true);

	SetFwC("cg/fw/fw茶々丸_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0620060a07">
「……届いた……」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0620070a00">
「何……？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0620080a07">
「届いたんだ。
　御姫は……神の座に」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0620090a00">
「…………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0620100a01">
《…………》

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0620110a01">
《あ……あぁ》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0620120a00">
「村正？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0620130a01">
《そ、空に……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆夕空と夕日

	CreateTextureEX("空", 1050, @0, @0, "cg/bg/bg002_空a_02.jpg");
	CreateTextureEX("金神", 1100, -512, -300, "cg/ev/resize/ev237_空に昇った金神_bl.jpg");
	CreateTextureEXadd("金神add", 1100, -512, -300, "cg/ev/resize/ev237_空に昇った金神_bl.jpg");
	CreateTextureEX("夕日", 1100, @0, @0, "cg/ev/ev237_空に昇った金神_a.jpg");


//◆スライド
//◆謎の天体。輪郭が黒炎のような白球？　要考慮。

//CG詳細来るまで保留　inc櫻井

	Fade("空", 1000, 1000, null, true);
	Wait(1000);

	Move("金神*", 8000, @0, 0, null, false);
	Fade("金神add", 2000, 500, null, false);
	Fade("金神", 2000, 1000, null, true);

	Fade("金神add", 2000, 200, null, true);
	Fade("金神add", 1000, 600, null, true);

	Fade("夕日", 2000, 1000, null, true);

	Wait(1000);



	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0620140a00">
「……………………………………」

//【景明】
<voice name="景明" class="景明" src="voice/md04/0620150a00">
「た……太陽……？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　太陽が――――<RUBY text="・・・・">もう一つ</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0620160a07">
「……夜明けだ……」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0620170a07">
「……黄金の夜明けだよ……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



//◆ＣＧ：地球
//◆カメラ引き
//◆地球、月、太陽、そして謎天体


	SetVolume("@mbgm*", 1000, 0, null);
	CreateColorEXadd("絵色100", 15000, "WHITE");
	Fade("絵色100", 1000, 1000, null, true);

	Delete("金神*");
	Delete("夕日");

	CreateTextureSPadd("絵背景100", 1500, Center, Middle, "cg/data/circle_04_00_1.png");
	CreateTextureSP("宇宙", 1300, -512, 0, "cg/ev/resize/ev238_地球と太陽と月と金神_al.jpg");
	Request("宇宙", Smoothing);

	Move("@宇宙", 60000, @0, -798, null, false);
	Zoom("@宇宙", 60000, 500, 500, null, false);
	Zoom("絵背景100", 10000, 1200, 1200, null, false);

	FadeDelete("絵背景100", 10000, false);
	FadeDelete("絵色100", 5000, false);

	SoundPlay("@mbgm37", 0, 1000, true);

//◆生と死の
	CreateTextureEX("Gin_song01", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄01.png");
//◆されば嘲笑
	CreateTextureEX("Gin_song02", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄02.png");

	Wait(5000);

	Move("Gin_song01", 0, @0, @-40, null, true);
	Move("Gin_song02", 0, @0, @+10, null, true);

	Move("Gin_song01", 1000, @0, @-10, null, false);
	Fade("Gin_song01", 1000, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song02", 1000, @0, @-10, null, false);
	Fade("Gin_song02", 1000, 1000, null, true);

	WaitKey(5000);

	Delete("Gin_song*");


//◆嵐の夜に
	CreateTextureEX("Gin_song03", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄03.png");
//◆温かい巣で
	CreateTextureEX("Gin_song04", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄04.png");
//◆木漏れ日の下
	CreateTextureEX("Gin_song05", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄05.png");
//◆せせらぎを聞く
	CreateTextureEX("Gin_song06", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄06.png");
//◆生の意味
	CreateTextureEX("Gin_song07", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄07.png");
//◆死の恐怖
	CreateTextureEX("Gin_song08", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄08.png");
//◆生命の問いに
	CreateTextureEX("Gin_song09", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄09.png");
//◆生命を信じ
	CreateTextureEX("Gin_song10", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄10.png");
//◆獣よ踊れ野を馳せよ
	CreateTextureEX("Gin_song11", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄11.png");
//◆いまや如何なる
	CreateTextureEX("Gin_song12", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄12.png");


	Move("Gin_song07", 0, @0, @-40, null, true);
	Move("Gin_song06", 0, @0, @-80, null, true);
	Move("Gin_song05", 0, @0, @-120, null, true);
	Move("Gin_song04", 0, @0, @-160, null, true);
	Move("Gin_song03", 0, @0, @-200, null, true);
	Move("Gin_song08", 0, @0, @0, null, true);
	Move("Gin_song09", 0, @0, @+40, null, true);
	Move("Gin_song10", 0, @0, @+80, null, true);
	Move("Gin_song11", 0, @0, @+120, null, true);
	Move("Gin_song12", 0, @0, @+160, null, true);

	Move("Gin_song03", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song03", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song04", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song04", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song05", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song05", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song06", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song06", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song07", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song07", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song08", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song08", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song09", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song09", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song10", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song10", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song11", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song11", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song12", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song12", 600, 1000, null, false);

//	WaitKey();

	Fade("Gin_song0*", 500, 0, null, false);
	Fade("Gin_song10", 500, 0, null, false);
	Fade("Gin_song11", 500, 0, null, false);
	Fade("Gin_song12", 500, 0, null, true);

	WaitKey(2000);

	Fade("Gin_song*", 1000, 0, null, true);
	Delete("Gin_song*");



//《生と死の狭間に己を笑い恍惚として自ら忘るる》
//《されば夜明けの嘆きを鐘に神曲の幕よいざ上がれ》

	CreateTextureEX("Gin_song15", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄13.png");
	CreateTextureEX("Gin_song16", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄14.png");

	Move("Gin_song15", 0, @0, @-40, null, true);
	Move("Gin_song16", 0, @0, @+10, null, true);

	Move("Gin_song15", 1000, @0, @-10, null, false);
	Fade("Gin_song15", 1000, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song16", 1000, @0, @-10, null, false);
	Fade("Gin_song16", 1000, 1000, null, true);

	WaitKey(5000);

	Fade("Gin_song*", 1000, 0, null, true);
	Delete("Gin_song*");

//《奇跡を行う聖人は衆生を救い神を呪って嘔吐する》
//《黄金の兜の覇王は万里を征し愛馬と共に川底へ沈む》
//《湖の美姫は国を捨て愛を選び糞尿に溺れて刑死する》
//《孤赤児は蚯蚓の血を母の乳とし三夜して腹より腐る》
//《生命よこの賛歌を聞け笑い疲れた怨嗟を重ねて》
//《生命よこの祈りを聞け怒りおののく喜びを枕に》
//《百年の生は炎と剣の連環が幾重にも飾り立てよう》
//《七日の生は闇と静寂に守られ無垢に光り輝くだろう》
//《獣よ踊れ野を馳せよ唄い騒いで猛り駆けめぐれ》
//《いまや如何なる鎖も檻も汝の前には朽ちた土塊》

	CreateTextureEX("Gin_song15", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄15.png");
	CreateTextureEX("Gin_song16", 1600, Center, Middle, "cg2/sys/telop/tp_銀星号の唄16.png");
	CreateTextureEX("Gin_song17", 1600, Center, Middle, "cg2/sys/telop/tp_銀星号の唄17.png");
	CreateTextureEX("Gin_song18", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄18.png");
	CreateTextureEX("Gin_song19", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄19.png");
	CreateTextureEX("Gin_song20", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄20.png");
	CreateTextureEX("Gin_song21", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄21.png");
	CreateTextureEX("Gin_song22", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄22.png");
	CreateTextureEX("Gin_song23", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄23.png");
	CreateTextureEX("Gin_song24", 1600, Center, Middle, "cg/sys/telop/tp_銀星号の唄24.png");

	Move("Gin_song19", 0, @0, @-40, null, true);
	Move("Gin_song18", 0, @0, @-80, null, true);
	Move("Gin_song17", 0, @0, @-120, null, true);
	Move("Gin_song16", 0, @0, @-160, null, true);
	Move("Gin_song15", 0, @0, @-200, null, true);
	Move("Gin_song20", 0, @0, @0, null, true);
	Move("Gin_song21", 0, @0, @+40, null, true);
	Move("Gin_song22", 0, @0, @+80, null, true);
	Move("Gin_song23", 0, @0, @+120, null, true);
	Move("Gin_song24", 0, @0, @+160, null, true);

	Move("Gin_song15", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song15", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song16", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song16", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song17", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song17", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song18", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song18", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song19", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song19", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song20", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song20", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song21", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song21", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song22", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song22", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song23", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song23", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song24", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song24", 600, 1000, null, false);

	WaitKey(5000);

	Fade("Gin_song*", 1000, 0, null, true);
	Delete("Gin_song*");

	Wait(1000);

/*

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
《生と死の選択を己に課す命題として自ら問う》
《されば嘲笑の歓喜する渦に喜劇の幕よいざ上がれ》

《嵐の夜に吼え立てる犬は愚かな盗賊と果敢に戦う》
《温かい巣で親鳥を待つ雛は蛇の腹を寝床に安らぐ》
《木漏れ日の下で生まれた獅子は幾千の鹿を飽食し》
《せせらぎを聞く蛙の卵は子供が拾って踏みつぶす》
《生の意味を信じる者よ道化の真摯な詭弁を聞け》
《死の恐怖に震える者よ悪魔の仮面は黒塗りの鏡》
《生命に問いを向けるなら道化と悪魔は匙を持ち》
《生命を信じ耽溺するなら道化と悪魔は冠を脱ぐ》
《獣よ踊れ野を馳せよ唄い騒いで猛り駆けめぐれ》
《いまや如何なる鎖も檻も汝の前には朽ちた土塊》

《生と死の狭間に己を笑い恍惚として自ら忘るる》
《されば夜明けの嘆きを鐘に神曲の幕よいざ上がれ》

《奇跡を行う聖人は衆生を救い神を呪って嘔吐する》
《黄金の兜の覇王は万里を征し愛馬と共に川底へ沈む》
《湖の美姫は国を捨て愛を選び糞尿に溺れて刑死する》
《孤赤児は蚯蚓の血を母の乳とし三夜して腹より腐る》
《生命よこの賛歌を聞け笑い疲れた怨嗟を重ねて》
《生命よこの祈りを聞け怒りおののく喜びを枕に》
《百年の生は炎と剣の連環が幾重にも飾り立てよう》
《七日の生は闇と静寂に守られ無垢に光り輝くだろう》
《獣よ踊れ野を馳せよ唄い騒いで猛り駆けめぐれ》
《いまや如何なる鎖も檻も汝の前には朽ちた土塊》

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

*/

//◆Ｄパート完
//◆カットインぽくロゴ
	ClearWaitAll(3000, 1000);

	PrintBG("上背景", 10000);
	cut_in_logo(10010,3);

	ClearWaitAll(3000, 2000);

/*
	ClearWaitAll(3000, 3000);

	SetVolume("@mbgm*", 1000, 0, null);
	PrintBG("上背景");

	CreateColorSP("絵色黒", 1, "#000000");

	FadeDelete("上背景",1500,true);

	WaitKey(1000);

	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);
	CreateTextureSP("背景80", 30, Center, Middle, "cg/sys/title/タイトル背景.png");
	Move("背景80", 0, 20, 0, null, false);
	Move("背景80", 200, -20, 0, null, false);

	OnSE("se戦闘_攻撃_剣戟弾く01", 1000);
	CreateTextureEX("背景81", 32, Center, Middle, "cg/sys/title/画像タイトルlogo.png");
	Fade("背景81", 300, 1000, null, false);
	
	CreateTextureSPadd("絵背景500", 31, Center, Middle, "cg/ef/ef005_汎用血雫.jpg");
	Rotate("絵背景500", 0, 180, 0, 180, null, true);
	Move("背景81", 0, 600, 40, null, false);
	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");

	WaitKey(2000);
	ClearWaitAll(3000, 3000);
*/

//◆２３４５６７８９０１２３４５６７８９０１２３４

}

..//ジャンプ指定
//次ファイル　"md05_001.nss"