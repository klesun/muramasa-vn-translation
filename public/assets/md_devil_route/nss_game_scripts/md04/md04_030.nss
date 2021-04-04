//<continuation number="120">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_030.nss_MAIN
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
	#bg057_普陀楽城廊下_01=true;
	#bg033_普陀楽城宿舎_01=true;
	#ev128_病床の光_g01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_031.nss";

}

scene md04_030.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md04_029.nss"


//◆普陀楽

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg057_普陀楽城廊下_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm32", 0, 1000, true);

	SetFont("@ＭＳ 明朝", 30, #FFFFFF, #000000, HEAVY, RIGHTDOWN);

	CreateText("字幕01",30411,Center,inherit,auto,auto,"一二月四日");
	Fade("字幕01", 0, 0, null, true);
	Request("字幕01",NoLog);
	Request("字幕01",PushText);
	Rotate("字幕01", 0, @0, @0, 90, null, false);
	Move("字幕01", 0, @300, @10, null, false);
	SetBacklog("一二月四日", null, null);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/resize/bg103_普陀楽城外郭藤沢方面_01l.jpg");
	Request("絵背景100", Smoothing);
	Zoom("絵背景100", 0, 800, 800, null, true);

	Move("絵背景100", 8000, @100, @50, null, false);

	Delete("上背景");
	FadeDelete("黒幕１",2000,true);

	Wait(500);

	Fade("字幕*", 300, 1000, null, true);
	WaitKey(3000);
	Fade("字幕*", 300, 0, null, true);


//おがみ：↓前スクリプトから移動
/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　
　　　　　　　　　一二月四日

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

*/
	FadeDelete("絵背景100", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　最後の朝が訪れた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆光の部屋。bg033b_昼
	CreateColorSP("黒幕１", 5000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100, "bg097_堀越御所内光の部屋_03a.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　何度も足を運び、見慣れてしまった部屋だ。
　しかし、これで見納めになる。

　金輪際、ここへ来ることはあるまい。
　今日という日がどのような形で終わるとしても。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆病床の光。覚醒中
	CreateTextureEX("光", 15000, @0, @0, "cg/ev/ev128_病床の光_g01.jpg");
	Fade("光", 1000, 1000, null, true);
	Wait(500);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　光は眠っている――
　否。起きている。

　今は本来の、正真の光だ。
　朽ちかけた肉体と、肉体よりも一歩早く崩壊してし
まった精神とを持つ――俺の最後の家族。

　彼女はやがて眠る。
　心を深く沈め、夢の底に落ち、もうひとりの自分を
顕現させる。

　銀星号。

　最も強き湊斗光。
　最も純粋な湊斗光。

　湊斗光の、<RUBY text="ねがい">願望</RUBY>の結晶。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0300010a00">
（願望）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　――――俺の願望は、光の命を繋ぐ事。

　どのような形でもどのような手段によってでもいい。
　死なせたくない。

　何がどうであれ、死なせたくなかった。
　この世界に生かしてやりたかった。

　何を犠牲にするとしても。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0300020a00">
（神、か……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　地の底から〝神〟を引き出し、光と結び付ける。

　未だに半信半疑だ。
　いや、一信九疑くらいだろう。

　しかしそんな一縷の可能性しか光の死の運命を覆し
得ないなら、俺は躊躇いなく全てを賭ける。
　俺自身の全てを。世界の全てを。

　誰がそれを拒み、誰がそれを否定しようとも。
　力ずくで奪い取り、賭け皿に載せてやる。

　必要な<RUBY text="チップ">賭札</RUBY>を揃え、神の召喚という<RUBY text="ルーレット">回転盤</RUBY>を回す。

　許される事ではないであろう。
　我欲のために他者の命運を略奪する……人間の仕業
ではないであろう。

　人間であれば、できなかったであろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0300030a00">
（人間ではない）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　今の俺は一剣に過ぎぬもの。

　唯一つの使命を持ち、
　それを妨げる不純物を一切持たない。

　人ではなく、剣であるのだ。
　幸いにも。

　今日為す事が、如何に非道であろうと……
　俺は迷わなくていい。

　嘆かなくていい。
　悲しまなくていい。

　迷いも嘆きも悲しみも、既に削ぎ落とされている。
　あの〝卵〟、二世村正の汚染波がそうしてくれた。

　俺は剣。

　魔剣だ。

　湊斗光を愛し守るという<RUBY text="な">銘</RUBY>の――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想フラッシュ

	EfRecoIn1(18000,600);
	Delete("光");
	CreateColorSP("絵回想0", 2001, "BLACK");
	CreateTextureSPadd("絵回想1", 2002, Center, Middle, "cg/ef/ef010_汎用斜め軌道.jpg");
	CreateTextureSPadd("絵回想2", 2003, Center, Middle, "cg/ef/ef011_汎用斜め軌道.jpg");
	EfRecoIn2(300);

	SetFwC("cg/fw/fw署長_哀愁.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【署長】
<voice name="署長" class="署長" src="voice/md04/0300040a11">
「それは……愛情ではない……」

{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md04/0300050a11">
「――――呪いだ――――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り

	EfRecoOut1(300);
	
	Delete("絵回想*");

	EfRecoOut2(600,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　一瞬の眩暈を振り払う。

　雑念？
　いや、気のせいだ。

　今の俺に不純物は無いのだから。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明汚染_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0300060a00">
（行こう……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　始めよう。

　この一本道を進むとしよう。
　迷いなく。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆廊下

	CreateColorSP("黒幕１", 5000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


	OnBG(100, "bg057_普陀楽城廊下_01.jpg");
	FadeBG(0, true);


	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

	SetNwC("cg/fw/nw補佐官.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md04/0300070e247">
「中佐殿！
　こちらにおいででしたか……」

//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md04/0300080e247">
「間もなく軍議が始まります」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0300090a00">
「そうか。
　……先に行っていてくれ」

{	NwC("cg/fw/nw補佐官.png");}
//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md04/0300100e247">
「どちらへ？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0300110a00">
「厨房に寄る」

{	NwC("cg/fw/nw補佐官.png");}
//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md04/0300120e247">
「……厨房？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――
	
	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md04_031.nss"