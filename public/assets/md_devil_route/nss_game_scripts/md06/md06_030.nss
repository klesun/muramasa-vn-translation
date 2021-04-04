//<continuation number="240">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_030.nss_MAIN
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
	#bg001_空a_01=true;
	#bg047_景明故郷町a_01=true;
	#bg023_弥源太の家_03a=true;
	#bg020_山脈坑道_01=true;
	#bg023_弥源太の家_03b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_031.nss";

}

scene md06_030.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md06_029.nss"

//◆bg001
	SoundPlay("@msong05_short", 0, 1000, true);

	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 1500, "#000000");

	CreateTextureSP("絵演背景", 100, Center, InBottom, "cg/bg/resize/bg002_空a_01.jpg");
	Move("絵演背景", 650, @0, @288, Dxl2, false);

	Delete("上背景");
	DrawDelete("絵色黒", 150, 100, "slide_02_01_1", true);

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0300010a00">
「村正！」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0300020a00">
「村正――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　………………。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitKey(1000);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0300030a00">
「……くッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　馬鹿が。
　何を血迷っている――だから今はその劒冑、村正が
奪われているのだ！

　村正を助けるのに村正の力を頼れる筈がない。
　馬鹿。何を錯乱して。愚劣な。

　しかし……応答が無いというのは、如何なる事だ。
　仕手と劒冑の縁は不断のもの。どれほど距離が遠か
ろうと、繋がりを失う事などない。

　考えられるとすれば……
　応答もしかねる程、深刻な損傷を受けているか。

　あるいは、<k>
　その域を通り越して、<k>
　村正は……既に…………

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	EfRecoIn1(18000,600);
	CreateTextureSPmul("絵回想効果", 16010, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateTextureSP("絵回想", 16000, Center, Middle, "cg/ev/ev263_村正を刺し貫く雪車町.jpg");
	SetTone("絵回想", Monochrome);
	EfRecoIn2(300);

	EfRecoOut1(300);
	Delete("絵回想*");
	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0300040a00">
「……!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　胸中に湧いた、不吉の影を払い捨てる。
　有り得ない。あってはならない事だ。

　とにかく追おう。
　自前の足では駄目だ。劒冑も使えない。何か別の。

　別の――何か……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0300050a00">
「良し……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　思い付いて、俺は線路から飛び出した。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆街路。bg047
	CreateColorSP("黒幕", 25000, "#000000");
	DrawTransition("黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	OnBG(100, "bg047_景明故郷町a_01.jpg");
	FadeBG(0, true);

	CreatePlainEX("絵板写", 110);

	DrawTransition("黒幕", 150, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", true);
	Delete("黒幕");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　大通りに直面する。
　そこで、俺は周囲を見回した。

　この辺りならある筈だ。
　何処に……何処に……？

　あった。

　<RUBY text="バス">大型乗合自動車</RUBY>の停留所。
　見つけたそこへ、全力で走る。

　バスは……今、向こうから来るところだ！
　折が良かった。

　路線も間違いない。
　これに乗れば、鉄道に次ぐ速度で隣駅まで行ける。

　俺が停留所に着くと同時、バスが止まった。
　乗車口が開く。

　しかし――乗れない。
　人が多い。

　遅々と乗り込んでゆく客の列が壁になって、バスに
近付けない。
　
　この――こちらは急ぎだ！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_動作_腕を掴む01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeFR2("絵板写",0,500,300,@0,@0,40,Dxl2, false);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0300060a00">
「失礼！」

{	NwC("cg/fw/nw乗客Ｂ.png");}
//【ｅｔｃ／乗客女】
<voice name="ｅｔｃ／乗客女" class="その他女声" src="voice/md06/0300070e130">
「きゃっ……何!?」

{	NwC("cg/fw/nw乗客Ａ.png");}
//【ｅｔｃ／乗客男】
<voice name="ｅｔｃ／乗客男" class="その他男声" src="voice/md06/0300080e131">
「おい、押すな！」

{	CreateSE("SE01","se人体_衝撃_転倒05");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeFR2("絵板写",0,500,300,@0,@0,40,Dxl2, false);
	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0300090a00">
「急用で――」

{	NwC("cg/fw/nw乗客Ｂ.png");}
//【ｅｔｃ／乗客女】
<voice name="ｅｔｃ／乗客女" class="その他女声" src="voice/md06/0300100e130">
「ちゃんと並びなさいよ！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　いちいち相手してはいられない。
　人を掻き分け、押し退けて、前へ。

　もう少し。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw乗客Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【ｅｔｃ／乗客男】
<voice name="ｅｔｃ／乗客男" class="その他男声" src="voice/md06/0300110e131">
「この野郎!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆どん。突き飛ばされた。
	CreateSE("SE01","se人体_衝撃_転倒03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeFR2("絵板写",0,500,300,@0,@0,60,Dxl2, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　やにわに視界が回り、路上に両手を突く。
　
　……突き飛ばされた!?

　無様な格好で見上げると、人々が俺を嘲笑していた。
　何だありゃ――みっともなぁい――ざまぁ見ろ馬鹿、
と。

　何を……この連中は！
　俺が必死だとわからないのか。

　大事な人の安否が懸かっている。
　一秒を争っている――わからないのか！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0300120a00">
「くっ……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_動作_後ずさり01");
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　膝に力を入れて立つ。
　乗車口に駆け寄る。

　あと一歩。<k>
{	OnSE("se日常_建物_扉閉める01", 1000);}
　――俺の目前で、扉は閉ざされた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0300130a00">
「車掌！」

{	NwC("cg/fw/nwバスの車掌.png");}
//【ｅｔｃ／車掌】
<voice name="ｅｔｃ／車掌" class="その他男声" src="voice/md06/0300140e105">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　俺の声に、ハンドルを握る初老の男性は、鼻で嗤い
返しただけだった。
　そっぽを向いて、アクセルを踏み込む。

{	OnSE("se乗物_バス_発車", 1000);}
　バスが走り出した。
　窓の向こうでまだ数人、俺を指差して笑っている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0300150a00">
「あ……あぁ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　行ってしまった。
　次のバスを待たねばならない。

　あと何分か……何十分か。
　このような時なのに！

　どうしてこんな事になる……？
　不条理ではないか。

　余りに無情ではないか。

　こんな事が許されるのか。
　こんな事が……！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 600, 0, null);
	SetVolume("OnSE*", 600, 0, null);

//◆回想
	EfRecoIn1(18000,600);

	CreateTextureSP("絵背景4000", 4000, Center, Middle, "cg/bg/bg023_弥源太の家_03a.jpg");
	StL(4100, @0, @0, "cg/st/stふき_通常_私服.png");
	StR(4100, @0, @0, "cg/st/stふな_通常_私服.png");
	FadeStA(0, false);

	EfRecoIn2(300);

	SetFwC("cg/fw/fwふき_通常.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【ふき】
<voice name="ふき" class="ふき" src="voice/md06/0300160b05">
「そうしてください。
　あては難しいことはわかりませんけど……
こんな大怪我をしている人が出ていくなんて、
そんなの駄目です」

{	FwC("cg/fw/fwふな_通常.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/md06/0300170b06">
「んーっ？
　ねーや、にーやはどうしたの？」

{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/md06/0300180b05">
「にーや、おうちに帰りたいんだって」

{	FwC("cg/fw/fwふな_通常.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/md06/0300190b06">
「えーっ、そんなのやだ！
　もっといてほしい……」

{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/md06/0300200b05">
「そうよねっ。
　ほら、お武家様。ふなもこう言ってます」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想
	EfRecoIn1(18000,600);
	Delete("絵背景*");
	DeleteStA(0,true);
	CreateTextureSP("絵背景4000", 4000, Center, Middle, "cg/bg/bg020_山脈坑道_01.jpg");
	StR(4100, @-60, @0,"cg/st/stふき_通常_私服.png");
	StCR(4110, @60, @0,"cg/st/stふな_通常_私服.png");

	FadeStR(0,true);
	FadeStCR(0,true);

	EfRecoIn2(300);

	SetFwC("cg/fw/fwふき_困惑.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【ふき】
<voice name="ふき" class="ふき" src="voice/md06/0300210b05">
「う……ごめんなさい。
　でも二人とも、昨日からここに詰めっきり
でしょ？　朝御飯、食べてないんじゃないか
と思って」

{	FwC("cg/fw/fwふな_笑い.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/md06/0300220b06">
「つくった！
　もってきた！」

{	FwC("cg/fw/fwふき_照れ.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/md06/0300230b05">
「お武家様……その、ご迷惑でしたか？」

{	FwC("cg/fw/fwふな_笑い.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/md06/0300240b06">
「くえ！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆回想。第二話ラス。
//◆姉妹惨殺
	EfRecoIn1(18000,600);
	Delete("絵背景*");
	CreateTextureSP("絵背景4000", 4000, Center, Middle, "cg/bg/bg023_弥源太の家_03b.jpg");
	DeleteStA(0,true);

	EfRecoIn2(300);

	CreateSE("SE01a","se戦闘_攻撃_刀刺さる05");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	Wait(1000);


//血しぶきに白がかかるので回想をここで切る inc櫻井

	EfRecoOut1(300);

	CreateSE("SE01","se人体_血_血しぶき01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateTextureSP("絵ＥＦ100", 4200, Center, Middle, "cg/ef/ef006_汎用血しぶき.jpg");
	Zoom("絵ＥＦ100", 0, 2000, 2000, null, true);

	Wait(1000);

	EfRecoOut2(600,true);

	Wait(3000);

	SetVolume("OnSE*", 650, 0, null);
	SetVolume("SE*", 650, 0, null);

	CreateColorSP("黒幕", 20000, "#000000");
	DrawTransition("黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	WaitPlay("OnSE*", null);
	WaitPlay("SE*", null);

}

..//ジャンプ指定
//次ファイル　"md06_031.nss"