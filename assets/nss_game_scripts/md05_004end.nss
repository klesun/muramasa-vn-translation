//<continuation number="190">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004end.nss_MAIN
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
	#bg086_病室_01a=true;
	#ev128_病床の光_g01=true;
	#ev947_村正斬撃汎用=true;

	$md05_到着演出=false;

	//▼ルートフラグ、選択肢、次のGameName
	#光探索終了 = true;

	$PreGameName = $GameName;
	$GameName = "md05_005.nss";

}

scene md05_004end.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md05_004byoushitsu03cba.nss"

	PrintBG("上背景", 30000);
//後で世界が割れるため inc櫻井
	CreateColorSP("黒", 90, "BLACK");

	OnBG(100,"bg097_堀越御所内光の部屋_03a.jpg");
	FadeBG(0,true);

	Delete("上背景");

	SoundPlay("@mbgm11", 0, 1000, true);


	SetFwC("cg/fw/fw景明汚染_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/md05/004en0010a00">
「やれ……村正！
　もう光を守る者はいない」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/004en0020a01">
《で、でも……
　私はっ――貴方がいないと！》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/004en0030a00">
「何が足りない？
　手足か。心臓か。熱量か」

{	FwC("cg/fw/fw景明汚染_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/004en0040a00">
「それならここにある。
　邪魔な心を殺した後に残る俺の骸は、全て
お前のものだ……」

{	FwC("cg/fw/fw景明汚染_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/004en0050a00">
「使え！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆がきーん。装甲
//◆武者・村正

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);

	OnSE("se特殊_鎧_装着03",1000);
	Fade("フラッシュ白",0,1000,null,true);

	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);

	CreateWindow("絵窓", 1500, 0, 144, 1024, 288, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateColorSP("絵窓/絵演色", 1510, "#990000");
	CreateTextureSPmul("絵窓/絵演背景", 1520, Center, Middle, "cg/ef/ef003_汎用移動.jpg");

	CreateTextureSP("絵窓/絵演立絵装甲", 1610, Center, -120, "cg/st/3d村正脇差_立ち_通常.png");

	Fade("フラッシュ白",1000,0,null,true);

	Zoom("絵窓", 300, 1000, 1000, Dxl2, true);

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/004en0060a01">
《……でも！
　貴方の、心は――》

{	FwR("cg/fw/fw景明汚染_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/004en0070a00">
「<RUBY text="・・">そこ</RUBY>にある」

//【景明】
<voice name="景明" class="景明" src="voice/md05/004en0080a00">
「俺の心のうち、価値あるものは、銀星号と
戦う意思だけだ。
　その意思はお前が持っている！」

{	FwR("cg/fw/fw景明汚染_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/004en0090a00">
「なら――それでいい！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　完全無欠。

　<RUBY text="ちから">能力</RUBY>があり、
　<RUBY text="わざ">技術</RUBY>があり、
　<RUBY text="いし">闘志</RUBY>があり、
　無用の情は削除された。

　無敵の武者は今ここに在る。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/004en0100a01">
《……これが……》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/004en0110a01">
《これが、貴方と共に戦うということなの!?
　御堂！》

{	FwR("cg/fw/fw景明汚染_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/004en0120a00">
「そうだ」

{	FwR("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/004en0130a00">
「いつかお前が言った通り……
　お前は俺の保護者ではない」

{	FwR("cg/fw/fw景明汚染_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/004en0140a00">
「共闘する者だ。そうだろうが！
　俺を守ろうとするな。俺を救おうとするな。
俺を<RUBY text="・・・・・">使い潰して</RUBY>、勝利しろ!!」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/004en0150a01">
《……私の役目は、貴方の庇護じゃない》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/004en0160a01">
《私の、役目は》

{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/004en0170a00">
「行け、村正！
　目的を果たせ！」

{	FwR("cg/fw/fw景明汚染_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/004en0180a00">
「<RUBY text="・・">それ</RUBY>が〝卵〟だ!!」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/004en0190a01">
《――――諒解ッ!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆病床の光
//◆攻撃。ずばしゃ。
//◆世界崩壊。ホワイトアウト

	CreateTextureEX("絵背景10", 2000, @0, @0, "cg/ev/ev128_病床の光_g01.jpg");
	Fade("絵背景10", 1000, 1000, null, true);
	WaitKey(300);
	OnSE("se戦闘_攻撃_刀振る02",1000);
	CreateTextureEX("絵背景20", 2100, -300, -50, "cg/ev/resize/ev947_村正斬撃汎用_l.jpg");
	Fade("絵背景20", 300, 1000, null, true);
	Fade("フラッシュ白",1000,1000,null,true);
	Delete("絵背景10");
	Delete("絵窓");
	OnSE("se戦闘_攻撃_刀刺さる05",1000);
	CreateTextureEX("絵ＥＦ15", 2500, Center, Middle, "cg/ef/ef007_汎用血しぶき.jpg");
	Fade("絵ＥＦ15", 50, 1000, null, true);
	Delete("絵背景20");
	Fade("フラッシュ白",1000,0,null,true);

	FadeDelete("絵ＥＦ*",1500,true);


	OnSE("se人体_体_骨複数砕ける01", 1000);


	WaitKey(1500);

	OnSE("se特殊_鎧_ひび割れ02", 1000);


	Fade("フラッシュ白",1000,1000,null,true);
	SetVolume("@mbgm*", 1000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　……そう。
　これが湊斗光――銀星号打倒の方程式。

　<RUBY text="ガ">我</RUBY>を殺し、<RUBY text="ム">無</RUBY>となって敵を討つ。

　無我の理念。

　英雄は無我なれば魔王を殺し世界を救う。

　忘れないで。
　<RUBY text="・・">意味</RUBY>を良く考えてね。
　
　御堂。

　……一度くらい、いいでしょ？
　本当は、こう呼ばせて欲しかったんだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆→●クリア
..//ジャンプ指定
//次ファイル　"md05_005.nss"

}


