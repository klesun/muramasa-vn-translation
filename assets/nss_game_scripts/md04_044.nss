//<continuation number="260">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_044.nss_MAIN
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
	#bg105_城門付近内側_02=true;
	#ev002_銀星号事件イメージ２=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_045.nss";

}

scene md04_044.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md04_043.nss"


//◆夕空。ここから夕時刻
//◆城内＋破滅の戦場ＣＧ。ＳＥも

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg002_空a_02.jpg");
	FadeBG(0, true);

	CreateSE("SE01","se背景_ガヤ_戦場の風景02_L");
	MusicStart("SE01",3000,1000,0,1000,null,true);


	SoundPlay("@mbgm19", 0, 1000, true);

//	CreateColorSP("絵暗転", 10000, "#000000");


	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	Wait(1000);

	CreateTextureEX("絵背景1000", 1000, @-100, @0, "cg/bg/resize/bg103_普陀楽城外郭藤沢方面_02l.jpg");
	CreateTextureEX("絵背景100", 100, @0, @0, "cg/bg/bg105_城門付近内側_02.jpg");
	Zoom("絵背景100", 0, @1, @1, null, true);
	Rotate("絵背景100", 0, @0, @180, @0, null,true);
	CreateTextureEX("絵背景200", 110, @0, @0, "cg/ev/ev002_銀星号事件イメージ２.jpg");


	Move("絵背景1000", 7000, @-250, @0, null, false);
	Fade("絵背景1000", 1500, 1000, null, true);
	CreateMovie("煙動画", 300, 256, 278, true, true, "dx/mvk100.ngs");
	SetAlias("煙動画","煙動画");
	Zoom("煙動画", 0, 3000, 6000, null, true);
	Request("煙動画", SubRender);
	Move("煙動画", 0, @0, @-400, null, true);

	Wait(3000);
	Fade("絵背景100", 0, 1000, null, true);
	FadeDelete("絵背景1000", 1500, true);


	SetVolume("SE01", 3000, 300, null);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　地獄か。
　煉獄か。
　あるいは単に人間世界の縮図か。

　見る者によって呼び名も変わるだろう。
　だがこの情景の本質は純粋単一で、貼り付けられた
<RUBY text="な">記号</RUBY>がどうであれ不変である。

{	Fade("絵背景200", 1000, 500, null, false);}
　人が争い合う。
　人が殺し合う。

　人が殺す。
　人が死ぬ。

　終焉。
　破局。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw茶々丸_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0440010a07">
「<RUBY text="ＯＬＤ　ＷＯＲＬＤ">旧き時代よ</RUBY>！
　<RUBY text="ＧＯＬＤ　ＥＮＤ">黄金の結末よ</RUBY>！」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0440020a07">
「<RUBY text="ＳＡＤ">悲嘆せよ</RUBY>！
<RUBY text="ＲＥＤ ＢＬＯＯＤ ＡＮＤ ＤＥＡＤ ＧＲＯＵＮＤ">　赤き血と死の沃土！」　　</RUBY>

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0440030a07">
「<RUBY text="ＧＬＡＤ">歓喜せよ</RUBY>！
　<RUBY text="ＤＡＤ，ＣＨＩＬＤ，ＧＯＤ">父よ、子よ、神よ</RUBY>！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	FadeDelete("絵背景200",300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　滅びの中で、滅びを<RUBY text="ことほ">言祝</RUBY>ぎ。
　更なる滅びの到来を予期し、願って、茶々丸が<RUBY text="うた">詩</RUBY>う。

　未開の地の敬虔な蛮族の<RUBY text="かんなぎ">巫</RUBY>が破壊の神を祀るように。
　大都市の教会で年老いた司教が絶望と憎悪を込めて
唯一神への聖句を捧げるように。

　足利茶々丸は、この破局を肯定する。
　己の一個の魂がこの無数の死を欲し受け入れるのだ
と豪語する。

　その<RUBY text="かたち">形容</RUBY>はまさに紅蓮。
　赤く昏く燃え盛る<RUBY text="ダスクフレア">夕闇の陽炎</RUBY>。

　――悪魔が実在するとすれば。
　それは今、俺の前に立っているのだろう。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StC(1000, @0,@0,"cg/st/st茶々丸_通常_制服b.png");
	FadeStC(500,true);


	SetFwR("cg/fw/fw景明汚染_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0440040a00">
「終わるのか」

{	FwR("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0440050a07">
「終わるよ」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　悪魔は微笑む。
　小さく。柔らかく。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0440060a07">
「何もかも」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0440070a07">
「古いもの、不完全なものは全て終わる」

{	FwR("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0440080a07">
「次は神の時代だ」

{	FwR("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0440090a07">
「完成された世界だ」

{	FwR("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0440100a07">
「……静寂の世界だよ」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　俺と茶々丸は終わりを見守る。

　白銀の流星群は天界を席巻し、もはや他の星を――
幕府や進駐軍の武者を――殲滅しつつある。
　凄惨極まる闘争劇は、地上から眺める限り、世にも
美しい黄昏の星々の舞踏会だった。

　そこに際立って麗しく輝くのは、最も速く猛き一星。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw茶々丸_寂寥.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0440110a07">
「<RUBY text="リミット・オブ・パワー">世界最強力</RUBY>……」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0440120a07">
「あと一つの<RUBY text="パワー">最強力</RUBY>も、もうすぐ訪れる」

{	FwR("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0440130a00">
「それで――」

{	FwR("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0440140a07">
「神を地上から隔てる壁……
　一一五キロの地殻を突破する」

{	FwR("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0440150a07">
「神が、来る」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0440160a00">
「…………」

{	FwR("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0440170a07">
「……どうかしたの？　お兄さん」

{	FwR("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0440180a00">
「いや」

{	FwR("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0440190a00">
「俺達は俺達の都合で神とやらを呼ぶ。
　だが、その神は何を思って地上へ来るのか
……」

//【景明】
<voice name="景明" class="景明" src="voice/md04/0440200a00">
「そんな事を考えた」

{	FwR("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0440210a07">
「……さぁね。
　どうだろうね」

{	FwR("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0440220a07">
「いわゆる一つのお約束かな」

{	FwR("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0440230a07">
「全人類の罪を贖うためかもしれないね」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ボックス消してウェイト

	WaitKey(1500);

	SetVolume("@mbgm*", 0, 0, null);
	SetVolume("@SE*", 0, 0, null);


	SetFwR("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0440240a01">
「だったら、
　そんなやつに、私は出てきて欲しくない!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆糸
//◆茶々丸、吹き飛ぶ

	CreateColorSPadd("絵フラ", 5000, "#FFFFFF");

	DeleteStA(0,true);
	OnSE("se特殊_生物_蜘蛛の糸吐く01",1000);

	CreateTextureSP("絵背景20", 4900, Center, Middle, "cg/ef/ef018_蜘蛛の糸.jpg");
	DrawDelete("絵フラ", 100, 100, "beam_03_00_1", true);

	FadeDelete("絵背景20",200,true);

	CreatePlainEX("絵板写", 100);
	Fade("絵板写", 0, 800, null, true);
	Shake("絵板写", 500, 0, 30, 0, 0, 1000, DxlAuto, true);
	CreateSE("SE01","se人体_動作_物音立てる02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Delete("絵板写");

	SetFwR("cg/fw/fw茶々丸_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0440250a07">
「のぁっ!?」

{	FwR("cg/fw/fw景明汚染_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0440260a00">
「……!!」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　これは――――<RUBY text="いと">鋼糸</RUBY>。

　こんなものを使えるのは……
　俺の知る限り、一個体しかいない。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//振り返る？ inc櫻井
	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_04_0.png", true);

}

..//ジャンプ指定
//次ファイル　"md04_045.nss"