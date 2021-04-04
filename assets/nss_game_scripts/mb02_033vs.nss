//<continuation number="450">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_033vs.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/mb02_033vs.nss","TanukiLastfire",true);
	Conquest("nss/mb02_033vs.nss","RotetoLoop1",true);
	Conquest("nss/mb02_033vs.nss","RotetoLoop2",true);
	Conquest("nss/mb02_033vs.nss","AnkokuZoomLoop1",true);
	Conquest("nss/mb02_033vs.nss","AnkokuZoomLoop2",true);
	Conquest("nss/mb02_033vs.nss","AnkokuZoomLoop1",true);
	Conquest("nss/mb02_033vs.nss","AnkokuZoomLoopEX",true);
	Conquest("nss/mb02_033vs.nss","TurboBlur3",true);
	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼イベントＣＧ
	#bg002_空a_03=true;
	#bg002_空b_03=true;
	#ef028_汎用火炎放射b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb02_034.nss";

}

scene mb02_033vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	Delete("上背景");

..//ジャンプ指定
//前ファイル　"mb02_032.nss"


//◆正宗ＶＳ正国
//◆出城の屋上
//◆描き下ろすのも無駄っぽいので、普陀楽関係背景か
//◆らそれっぽい建物探して上層部分を切り取って使う
//◆か。あと空。

	PrintBG("上背景", 30000);
	CreateSE("SE01","se戦闘_動作_空落下02");
	MusicStart("SE01",0,1000,0,1000,null,true);

	Wait(3000);
	SetVolume("SE*", 2000, 0, null);
	Wait(2000);
	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg002_空a_03.jpg");

	FadeDelete("上背景", 1500, true);

	CreateSE("SE10","se自然_風_荒野_L");
	MusicStart("SE10",3000,1000,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……落ちた！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/033vs0010a02">
「こっ……」

//【一条】
<voice name="一条" class="一条" src="voice/mb02/033vs0020a02">
「ここは……
　どこだ」

{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/033vs0030b40">
《――普陀楽城とやらの外縁。
　出城のようだな……》

//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/033vs0040b40">
《その上に落ちた》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　出城……
　そういや――そんなのも見たような。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/033vs0050a02">
「篭城戦用の施設だから、普段は使われない
……って、湊斗さんが言ってたけど……。
　どうだ？　正宗」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/033vs0060b40">
《……確かに誰もおらん。
　今のところは》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//おがみ：シナリオ修正
//　すぐにすぐ取り囲まれる心配は無いってことだ。

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　すぐに取り囲まれる心配は無いってことだ。
　いや――違う。そんなことはいい。そんなことより
も先に。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/033vs0070a02">
「糞坊主は!?」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/033vs0080b40">
《――直上!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆同田貫正国
	SetVolume("SE*", 1000, 0, null);


	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	CreateWindow("絵演窓上", 16200, Center, 0, 1024, 288, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateTextureEX("絵演窓上/絵演背景", 16200, 0, -144, "cg/bg/resize/bg002_空a_03l.jpg");
	CreateTextureEX("絵演窓上/絵立絵", 16300, -335, -850, "cg/st/3d同田貫_騎突_戦闘.png");
	SetBlur("絵演窓上/絵立絵", true, 3, 300, 70, false);

	Move("絵演窓上", 0, @0, @-288, null, true);

	CreateColorSP("明度", 150, "BLACK");
	Fade("明度", 0, 500, null, true);

	CreateColorEXadd("絵色エフェクト", 2000, "#FFAA00");
	CreateTextureEX("絵背景回転100", 100, Center, Middle, "cg/ef/ef037_飢餓虚空魔王星a.jpg");
	CreateTextureEXover("絵背景回転200", 100, Center, Middle, "cg/ef/ef037_飢餓虚空魔王星a.jpg");
	Request("絵背景回転200", Smoothing);
	Zoom("絵背景回転200", 0, 2000, 2000, null, true);

/*
	CreateTextureEXsub("ノイズ", 100, Center, Middle, "cg/ef/ef037_飢餓虚空魔王星a.jpg");
	Zoom("ノイズ", 0, 2000, 2000, null, true);
	DrawEffect("ノイズ", 50, "SuperWave", 50, 60, null);
	Fade("ノイズ", 0, 100, null, true);
*/
	$Warpトランジ = @絵色エフェクト;
	$Warpトランジ速度 = 3000;
	$Warpトランジなめらかさ = 500;

	$ローテートナット名１ = @絵背景回転200;
	$ローテート速度１ = 10000;
	$ローテート角度１ = @360;


	CreateProcess("プロセス２", 150, 0, 0, "RotetoLoop1");
	SetAlias("プロセス２","プロセス２");
	CreateProcess("プロセス３", 150, 0, 0, "TurboBlur3");
	SetAlias("プロセス３","プロセス３");

	DrawTransition("黒幕１", 200, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("黒幕１");

	Move("絵演窓上", 500, @0, @432, Dxl2, false);
	Fade("絵演窓上/絵演背景", 300, 1000, null, true);

	OnSE("se戦闘_動作_空突進02",1000);
	Move("絵演窓上/絵立絵", 1000, @0, @600, Dxl2, false);
	Fade("絵演窓上/絵立絵", 300, 1000, null, true);

	SoundPlay("@mbgm13",0,1000,true);

	Wait(700);

	SetFwR("cg/fw/fw童心_怒気.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//◆読み
//◆「ラウラヴァ。マハーラウラヴァ。
//◆　タパナ。プラータパナ」
//【童心】
<voice name="童心" class="童心" src="voice/mb02/033vs0090a09">
《<RUBY text="叫喚">ＲＡＵＲＡＶＡ</RUBY>．<RUBY text="大叫喚">ＭＡＨＡＲＡＵＲＡＶＡ</RUBY>．
　<RUBY text="焦熱">ＴＡＰＡＮＡ</RUBY>．<RUBY text="大焦熱">ＰＲＡＴＡＰＡＮＡ</RUBY>……》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆火炎放射準備。紅蓮のオーラとか。
	CreateTextureEX("絵狸", 1590, center, middle, "cg/st/3d同田貫_騎突_戦闘.png");
	Request("絵狸", Smoothing);
	Zoom("絵狸", 0, 100, 100, null, true);
	Move("絵狸", 0, @0, @20, null, true);
	SetBlur("絵狸", true, 3, 800, 200, false);
	CreateTextureEX("絵狸２", 1600, center, middle, "cg/st/3d同田貫_騎突_戦闘.png");
	Request("絵狸２", Smoothing);
	Zoom("絵狸２", 0, 100, 100, null, true);
	Move("絵狸２", 0, @0, @20, null, true);
	SetBlur("絵狸２", true, 3, 800, 200, false);
	CreateTextureEXadd("絵背景100", 1500, Center, Middle, "cg/ef/ef039_時間移動.jpg");
	Zoom("絵背景100", 0, 1200, 1200, null, true);
	Move("絵背景100", 0, @0, @50, null, true);

	CreateColorEXadd("紅蓮", 1600, "#FFAA00");

	FadeF4("絵狸", 500, 300, 100000, 0, 0, null, false);
	FadeF4("絵狸２", 500, 100, 50000, 0, 0, null, false);

	Fade("絵演窓上*", 500, 0, null, false);
	Fade("明度", 500, 0, null, true);
	Delete("絵演窓上*");
	Delete("明度");

	Wait(1000);

	CreateSE("SE01","se特殊_陰義_発動04");
	CreateSE("SE10","se背景_ガヤ_建物炎上_L");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE10",2000,1000,0,1000,null,true);

	Move("絵背景100", 100000, @0, @50, Dxl2, false);
	Zoom("絵背景100", 100000, 5000, 5000, Dxl2, false);
	Fade("紅蓮", 500, 1000, null, false);
	Fade("絵背景100", 1000, 500, null, true);

	Fade("絵背景回転*", 1000, 1000, null, false);
	Request("プロセス２", Start);
	Request("プロセス３", Start);

	CreateColorEXmul("紅蓮オーラ", 2500, "#330000");
	DrawTransition("紅蓮オーラ", 0, 200, 200, 500, null, "cg/data/circle_01_00_1.png", true);


	CreateProcess("プロセス１", 12000, 0, 0, "TanukiLastfire");
	SetAlias("プロセス１","プロセス１");
	Request("プロセス１",Start);


	Fade("紅蓮オーラ", 1000, 700, null, true);



	Wait(1000);
	SetFwR("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/033vs0100b40">
《ぬゥ……！
　先の一撃とは比較にならぬ、強大な<RUBY text="シノギ">陰義</RUBY>を
準備しておる！》

//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/033vs0110b40">
《奴め、城ごと吾らを焼き払うつもりか。
　とうとう全ての余裕をかなぐり捨てたな》


{	FwR("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/033vs0120a02">
「陰義――」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　真打劒冑の中で、更に一握りの名物だけが備え持つ
超越的なちから。
　もはや武具の形にも囚われず、その発現はまさしく
魔法。あるいは神の奇跡と云う。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/033vs0130a02">
「野郎、そんなもん隠してたのか……」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/033vs0140b40">
《あの劒冑……同田貫と称したか？
　若造と侮ったのが不覚であった》


{	FwR("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/033vs0150a02">
「避けられるか？」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/033vs0160b40">
《敵の陰義は広範囲に及ぶと予想される。
　……<RUBY text="つばさ">母衣</RUBY>が利かぬ現状では、無理だな》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　聞くまでもなかった。
　そもそも足が一本欠けていて、立てもしないのだ。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景150", 3000, Center, Middle, "cg/bg/bg002_空a_03.jpg");
	CreateTextureEX("絵背景250", 3000, Center, Middle, "cg/bg/bg002_空b_03.jpg");
	DrawTransition("絵背景250", 0, 300, 300, 300, null, "cg/data/circle_10_00_0.png", true);

	SetVolume("SE10", 2000, 300, null);

	Fade("絵背景150", 500, 1000, null, false);
	Fade("絵背景250", 500, 1000, null, true);

	SetFwC("cg/fw/fw一条_憎悪a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/033vs0170a02">
「……対抗手段は？」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/033vs0180b40">
《一つのみ》


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/033vs0190a02">
「何だ」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/033vs0200b40">
《吾らも陰義を以て迎え撃つ》


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/033vs0210a02">
「……機巧か？」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/033vs0220b40">
《否。
　あれらは陰義ではない。正宗が甲鉄の工夫
で成し遂げた機能に過ぎん》

//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/033vs0230b40">
《我が<RUBY text="しんがね">心鉄</RUBY>が刻む陰義は別に有る》


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/033vs0240a02">
「それを使えば勝てるんだな」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/033vs0250b40">
《然り！
　正宗に敗北は無い》


{	FwC("cg/fw/fw一条_戦闘.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/033vs0260a02">
「良し。
　あたしは、どうすればいい」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/033vs0270b40">
《うむ。
　間もなく、空から地獄の業火が降り注ぎ、
吾らを骨の髄まで焼き尽くすであろうが――》


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/033vs0280a02">
「あぁ」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/033vs0290b40">
《何もするな》


{	FwC("cg/fw/fw一条_驚くb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/033vs0300a02">
「……なに？」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/033vs0310b40">
《<RUBY text="・・・・・">何もするな</RUBY>》


{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/033vs0320a02">
「……」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/033vs0330a02">
「それだけか？」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/033vs0340b40">
《もう一つ》


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/033vs0350a02">
「何だ」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/033vs0360b40">
《死なないように、気をつけろ》


{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/033vs0370a02">
「……………………」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/033vs0380b40">
《御堂が最後まで死なねば――
　吾ら正宗の勝ちだ！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　おい。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE10", 2000, 1000, null);
	FadeDelete("絵背景150", 500, false);
	FadeDelete("絵背景250", 500, true);


	SetFwR("cg/fw/fw一条_憎悪a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/033vs0390a02">
「……相棒。
　この状況で冗談かましてるわけじゃ、ねえ
だろうな？」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/033vs0400b40">
《当たり前だ》


{	FwR("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/033vs0410a02">
「じゃあ――」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/033vs0420b40">
《時間だ。
　歯ァ食い縛れ、御堂!!》


{	FwR("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/033vs0430a02">
「だーーーーー!!
　やりゃあいいんだろうが!!」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　死ななきゃ勝つ。
　そりゃそうだ。

　ああ――じゃあ、死なねえよ！
　それで勝てなかったらてめぇのせいだぞ正宗！

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆正国
	CreateColorEXadd("絵色500", 15000, "WHITE");
	CreateSE("SE02","se戦闘_特殊_鎧溶け出す");

	MusicStart("SE02",0,1000,0,1000,null,false);

	Fade("絵色500", 100, 200, null, true);
	Fade("絵色500", 300, 50, Axl2, true);

	SetFwR("cg/fw/fw童心_怒気.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//◆読み
//◆「サンジーヴァ！　サンガータ！
//◆　カーラスートラ……」
//【童心】
<voice name="童心" class="童心" src="voice/mb02/033vs0440a09">
《<RUBY text="等活">ＳＡＭＪＩＶＡ</RUBY>!!　<RUBY text="衆合">ＳＡＭＧＨＡＴＡ</RUBY>!!
　<RUBY text="黒縄">ＫＡＬＡＳＵＴＲＡ</RUBY>――》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆準備完了。すげーエネルギー。
//◆溜め
	CreateSE("SE01","se特殊_鎧_エネルギー充電01");

	MusicStart("SE01",0,1000,0,1000,null,false);
	EffectZoomadd(10000, 2000, 100, "cg/ef/ef034_精神汚染.jpg", false);


	Fade("絵色500", 300, 500, null, true);
	Fade("絵色500", 1000, 200, Axl2, true);

	SetFwR("cg/fw/fw童心_怒気.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　
//◆読み「アビィィィィィィィィィィィィィチ!!」
//【童心】
<voice name="童心" class="童心" src="voice/mb02/033vs0450a09">
<RUBY text="阿">《ＡＶＩＩＩＩＩＩＩＩＩＩＩＩＩＩＩＩＩ</RUBY>
<RUBY text="鼻">ＩＩＩＩＩＩＩＩＩＩＩＩＩＩＩＩＩＣＩ!!</RUBY>》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);

//◆正国陰義／界現・八大地獄
//◆すげー炎の渦で。
	CreateSE("SE02","se戦闘_攻撃_火炎放射");
	CreateSE("SE03","se戦闘_攻撃_焼き鏝_強");
	CreateSE("SE04","se戦闘_破壊_鎧02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE03",0,1000,0,1000,null,false);

	Fade("絵色500", 3000, 1000, Axl2, true);

	MusicStart("SE04",0,1000,0,1000,null,false);
//	Wait(3000);

	CreateTextureEX("絵EV100", 16000, Center, Middle, "cg/ef/ef028_汎用火炎放射b.jpg");
	CreateTextureEX("絵EV200", 16000, Center, Middle, "cg/ef/ef028_汎用火炎放射b.jpg");
	Zoom("絵EV200", 0, 2000, 2000, null, true);
	Zoom("絵EV100", 0, 2000, 2000, null, true);
	SetBlur("絵EV100", true, 1, 500, 50, false);
	SetBlur("絵EV200", true, 1, 500, 50, false);

	Move("絵EV100", 0, @-512, @-288, null, true);
	Shake("絵EV100", 50000, 2, 1, 0, 0, 500, null, false);
	BezierMove("絵EV100", 2500, (@0,@0){@+200,@0}{@-200,@+88}{@+300,@50}{@-100,@+50}(@+512,@+288), AxlDxl, false);
	Fade("絵EV100", 500, 1000, null, true);

	Wait(1000);
	Zoom("絵EV200", 2000, 1000, 1000, Dxl1, false);
	Fade("絵EV200", 1000, 1000, null, true);

	SetVolume("SE*", 3000, 0, null);
	Wait(500);

	FadeDelete("絵EV*", 2000, true);

	Wait(2000);

	ClearFadeAll(3000, true);

	Wait(2000);

}

..//ジャンプ指定
//次ファイル　"mb02_034.nss"




function TanukiLastfire()
{

	CreateColor("焚き火光", 3500, 0, 0, 1024, 576, "#c46c3e");
	SetAlias("焚き火光","焚き火光");
	Request("焚き火光", AddRender);
	Fade("焚き火光", 0, 0, null, false);
//	DrawTransition("焚き火光", 0, 200, 200, 990, null, "cg/data/circle_01_00_0.png", true);


	begin:

	while(1)
	{
	Fade("焚き火光",150,200,null,true);
	Fade("焚き火光",200,150,null,true);
	Fade("焚き火光",180,230,null,true);
	Fade("焚き火光",300,100,null,true);
	Fade("焚き火光",140,190,null,true);
	Fade("焚き火光",200,150,null,true);

	Fade("焚き火光",150,230,null,true);
	Fade("焚き火光",400,100,null,true);
	Fade("焚き火光",180,150,null,true);
	Fade("焚き火光",300,100,null,true);
	Fade("焚き火光",140,170,null,true);
	Fade("焚き火光",200,90,null,true);

	Fade("焚き火光",150,200,null,true);
	Fade("焚き火光",400,100,null,true);
	Fade("焚き火光",180,150,null,true);
	Fade("焚き火光",300,100,null,true);
	Fade("焚き火光",140,170,null,true);
	Fade("焚き火光",200,90,null,true);

	Fade("焚き火光",100,280,null,true);
	Fade("焚き火光",350,150,null,true);
	Fade("焚き火光",100,240,null,true);
	Fade("焚き火光",150,120,null,true);
	Fade("焚き火光",200,220,null,true);
	Fade("焚き火光",170,100,null,true);

	Fade("焚き火光",150,120,null,true);
	Fade("焚き火光",400,100,null,true);
	Fade("焚き火光",180,150,null,true);
	Fade("焚き火光",100,240,null,true);
	Fade("焚き火光",140,140,null,true);
	Fade("焚き火光",200,90,null,true);

	Fade("焚き火光",150,130,null,true);
	Fade("焚き火光",400,100,null,true);
	Fade("焚き火光",180,130,null,true);
	Fade("焚き火光",300,100,null,true);
	Fade("焚き火光",140,120,null,true);
	Fade("焚き火光",200,90,null,true);

	Fade("焚き火光",150,120,null,true);
	Fade("焚き火光",400,90,null,true);
	Fade("焚き火光",180,110,null,true);
	Fade("焚き火光",300,100,null,true);
	Fade("焚き火光",140,130,null,true);
	Fade("焚き火光",200,90,null,true);

	}


}

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