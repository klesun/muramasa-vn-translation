//<continuation number="500">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_035.nss_MAIN
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
	#bg003_荒れ野_02=true;
	#bg004_鄙びた村a_02=true;
	#bg002_空a_02=true;
	#ev266_景明、悪鬼の笑い=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_036.nss";

}

scene md06_035.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md06_034b.nss"

//◆空き地・夕
//◆村正

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 15000, "BLACK");
	OnBG(100, "bg003_荒れ野_02.jpg");
	FadeBG(0, true);
	Delete("上背景");
	FadeDelete("黒", 1500, true);

	Wait(1000);

	CreateSE("SE01b","se特殊_その他_村正人間変化01");
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");

	MusicStart("SE01b",0,1000,0,700,null,false);
	Fade("絵フラ", 600, 1000, null, true);

	StL(1000, @0, @0,"cg/st/st村正_通常_私服.png");
	FadeStL(0,true);

	WaitKey(500);

	FadeDelete("絵フラ", 1000, true);
	SetVolume("SE*", 1000, 0, null);

	SoundPlay("@mbgm05", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　村正が蝦夷の<RUBY text="すがた">形態</RUBY>をとり、立つ。
　惑いを秘めた眼で、俺を見上げた。

　全て聞いていたのだろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0350010a01">
「……御堂。
　あの男は貴方に自分を殺させて、それから
私も殺させようとした」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0350020a01">
「善悪相殺の誓約を利用して」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0350030a00">
「らしいな」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0350040a01">
「……私はそれでも構わなかった……」

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0350050a01">
「私さえいなくなれば、貴方は戦いを忘れて
生きられるって思ったから」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0350060a00">
「…………」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0350070a01">
「本当に……戦うの？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0350080a01">
「戦い続けるの？」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0350090a01">
「貴方は本当に、それでいいの？」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0350100a00">
「ああ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　頷く。
　最早、躊躇はなく。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0350110a00">
「俺は……
　この世の武を支配する」

//【景明】
<voice name="景明" class="景明" src="voice/md06/0350120a00">
「頂点に立つ。
　そして求められるまま、誰にでも力を貸す」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0350130a00">
「勝利したい者は俺の力を欲するだろう。
　だが、代償は支払わせる」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0350140a00">
「その者自身。
　その者の大切な誰か」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0350150a00">
「守るべきもの。
　善。正義」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0350160a00">
「それを、敵を殺す代償に奪う」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0350170a01">
「…………」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0350180a00">
「善悪相殺。
　この武を世に布く」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0350190a00">
「誰もが、それこそ闘争の真実なのだと知り、
認め……
　忌み嫌うようになるまで」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0350200a00">
「地上から戦いが絶えるまで」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0350210a01">
「……御堂……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0350220a00">
「村正。
　お前はどうする」

//【景明】
<voice name="景明" class="景明" src="voice/md06/0350230a00">
「一緒に行ってくれるか」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0350240a01">
「――――――――――――――――」

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0350250a01">
「私は……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想。黒画面で台詞のみ
	CreateSE("SE01","se擬音_回想_フラッシュバック01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵色白", 20000, "#FFFFFF");
	Fade("絵色白", 600, 1000, null, true);

	CreateColorSP("黒", 15000, "BLACK");

	Fade("絵色白", 300, 0, null, true);

	SetFwC("cg/fw/fw忠保盲目_虚脱.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md06/0350260b43">
「雄飛が死んだことの意味です」

//【忠保】
<voice name="忠保" class="忠保" src="voice/md06/0350270b43">
「その意味がどんなものかは聞きません。
　今は……聞きたくないです」

{	FwC("cg/fw/fw忠保盲目_冷徹.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md06/0350280b43">
「雄飛の命と引き換えにされたなにかのこと
なんて、僕は知りたくない」

//【忠保】
<voice name="忠保" class="忠保" src="voice/md06/0350290b43">
「でもお姉さんは……その意味を大事にして、
守ってください。
　<RUBY text="・・・">せめて</RUBY>」

//【忠保】
<voice name="忠保" class="忠保" src="voice/md06/0350300b43">
「あなたはそのために、雄飛を犠牲にしたん
ですから」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	Fade("絵色白", 300, 1000, null, true);

	Delete("黒");

	FadeDelete("絵色白", 300, true);

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0350310a01">
「私は、善悪相殺の誓いを心鉄に刻む村正。
　何よりも、貴方を<RUBY text="あるじ">仕手</RUBY>とする劒冑だから」

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0350320a01">
「貴方が力を求めるなら、応えるまで」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0350330a00">
「……村正……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　手を差し伸べる。
　掴む。

　はっきりとした力が返ってくる。

　握り合う、その手に誓う。

　――最後に。
　
　いつか、目的が果たされた時……

　俺達の代償を捧げよう。

　最も大切なもの――
　互いを。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

//◆適当背景。bg004_夕？
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕", 25000, "#000000");
	OnBG(100, "bg004_鄙びた村a_02.jpg");
	FadeBG(0, true);
	Delete("上背景");
	DrawDelete("黒幕", 1000, 1000, "blind_01_00_1", true);

	SoundPlay("@mbgm14",0,1000,true);

	StCR(1000, @-60, @0,"cg/st/st香奈枝_通常_私服a.png");
	StR(1010, @90, @4,"cg/st/stさよ_通常_私服.png");
	Request("@StR*", Smoothing);
	Rotate("@StR*", 0, @0, @180, @0, null,true);

	StL(1000, @0, @0,"cg/st/st一条_通常_制服b.png");

	CreateWindow("絵窓中", 19000, 0, 192, 1024, 192, false);
	SetAlias("絵窓中","絵窓中");
	CreateTextureEX("絵窓中/絵背景", 5000, Center, Middle, "cg/bg/bg005_山中_02.jpg");
	Move("絵窓中/絵背景", 0, @0, @10, null, true);
	Zoom("絵窓中/絵背景", 0, 2000, 2000, null, true);
	SetShade("絵窓中/絵背景", HEAVY);
	CreateTextureEX("絵窓中/絵立", 5100, Center, -340, "cg/st/resize/st雪車町_通常_私服_l.png");

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0350340a12">
「おや……おいででしたか」

{	FadeStCR(300,false);
	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md06/0350350a03">
「ええ」

{	FadeStL(300,false);
	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md06/0350360a02">
「…………」

{	FadeStR(300,false);
	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md06/0350370a04">
「ほっほっほっ」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0350380a12">
「……まぁ、ご覧の通りの始末でさァ。
　あんた方はこれからどうなさるんで？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md06/0350390a03">
「そうですね……。
　ひとまず、見守ってみましょうか」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md06/0350400a03">
「どこまでやれるか。
　復讐なら、いつでもできますしね」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md06/0350410a04">
「左様でございますなァ」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0350420a12">
「綾弥の嬢さんは？」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md06/0350430a02">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateWindow("絵窓下", 19000, 0, 384, 1024, 192, false);
	SetAlias("絵窓下","絵窓下");
	CreateTextureEX("絵窓下/絵背景", 5000, Center, Middle, "cg/bg/bg004_鄙びた村a_02.jpg");
	Move("絵窓下/絵背景", 0, @10, @0, null, true);
	Zoom("絵窓下/絵背景", 0, 2000, 2000, null, true);
	SetShade("絵窓下/絵背景", HEAVY);

//◆ざっ。
	OnSE("se人体_動作_後ずさり01", 1000);
	DeleteStL(300,true);

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0350440a12">
「……へ、へ。
　やっぱり、お行きなさるか……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md06/0350450a03">
「人のことより、あなたはどうされますの？」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0350460a12">
「あたしゃ、帰りますよ。
　あいつはもう……どこにでもいる悪党だァ」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0350470a12">
「相手しちゃあいられません……。
　組に戻って、仕事をします。幕府が崩れて
からこっち、食う分稼ぐのも大変でしてねェ」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md06/0350480a03">
「そう。
　せいぜい、お励みなさいまし」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0350490a12">
「へ、へ、へェ……！
　では……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵窓下/絵立", 5100, 260, -230, "cg/st/resize/st香奈枝_通常_私服bl.png");
	CreateWindow("絵窓上", 19000, 0, 0, 1024, 192, false);
	SetAlias("絵窓上","絵窓上");
	CreateTextureEX("絵窓上/絵立", 5100, -240, -420, "cg/ev/resize/ev268_ヤクザと対峙する一条l.jpg");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100a]
　三者は別れた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,true);

	Move("絵窓中/絵背景", 1000, @0, @-20, DxlAuto, false);
	Move("絵窓中/絵立", 6000, @0, -420, DxlAuto, false);
	Fade("絵窓中/*", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100b]
　雪車町一蔵は去り、<k>
{	Move("絵窓下/絵背景", 1000, @-20, @0, DxlAuto, false);
	Move("絵窓下/絵立", 6000, 340, @0, DxlAuto, false);
	Fade("絵窓下/*", 1000, 1000, null, true);}
　大鳥香奈枝は待ち、<k>
{	Move("絵窓上/絵立", 6000, -320, @0, DxlAuto, false);
	Fade("絵窓上/*", 1000, 1000, null, true);}
　綾弥一条は、行く。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵回想100", 20000, Center, InBottom, "cg/bg/resize/bg002_空a_02.jpg");
	Move("絵回想100", 10000, @0, 0, null, false);
	Fade("絵回想100", 1500, 1000, null, true);

	Wait(1500);

	ClearFadeAll(3000, true);
	Wait(2000);

//◆空き地・夕
//◆※一条と正宗の絵は出さない

	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 20000, "#000000");

	OnBG(100, "bg003_荒れ野_02.jpg");
	FadeBG(0, true);

	Delete("上背景");
	FadeDelete("絵色黒", 2000, true);

	OnSE("se人体_動作_一歩", 1000);

	Waitkey(1000);

	CreateSE("SE01","se擬音_コミカル_風ぴゅー");
	MusicStart("SE01",0,1000,0,800,null,false);
	$残時間=RemainTime("SE01");
	WaitKey($残時間);

	//CreateSE("SE01","se自然_風_野原01");
	//MusicStart("SE01",3000,800,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　風が一陣、流れた。

　そこに紛れる猛気が、肌を炙る。
　俺は振り返った。

　良く知る少女が立っている。
　濃藍の劒冑を従えて、夕闇の下。

　今、俺へ向ける顔にあるものは――

　怒り。<k>
　嘆き。<k>
　そして決意。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0350500a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　一語も交わさず、避けられぬ戦いの到来を感じ取り。
　俺の口が苦く歪んで――<k>ふと、気付く。

　違う。
　こうでは、ないな。

　戦いに臨む悪鬼の<RUBY text="かお">貌</RUBY>は、こうではない。

　俺は今から、俺自身が求めた闘争へ身を投じるのだ。
　<RUBY text="にが">苦</RUBY>る理由が何処にあろうか。

　表情は、こうだ。
　こう――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＥＶ：景明悪鬼笑。横顔下半分
//◆さっと仰ぎ見る感じの演出かしら。
//◆一番簡単なのは斜め下からめくるような素早いワイ
//◆プで表示→２秒ウェイト→夕空へ

//◆夕空

//もともとのもの inc櫻井
//	CreateTextureSP("悪鬼笑い", 5000, @0, @0, "cg/ev/ev266_景明、悪鬼の笑い.jpg");
//	DrawTransition("悪鬼笑い", 100, 0, 1000, 100, AxlAuto, "cg/data/beam_03_00_0.png", true);
//	Wait(2000);
//	FadeDelete("悪鬼笑い",1500,true);
	CreateColorEX("白", 15000, "WHITE");
	Fade("白", 500, 1000, null, true);

	FadeDelete("白", 500, false);
	OnSE("se自然_風_野原02", 1000);

//あきゅん「演出：本当はここらへんで妖甲村正流したかったが、村正始〜ＥＤ〜タイトル(妖甲)の流れを作りたかったのでやめた」

	CreateTextureSP("悪鬼笑い", 5000, @0, @0, "cg/ev/ev266_景明、悪鬼の笑い.jpg");
	CreateTextureSP("悪鬼笑い下", 4500, @0, @0, "cg/ev/ev266_景明、悪鬼の笑い.jpg");

	Request("悪鬼笑い", Smoothing);
	Move("悪鬼笑い", 0, @100, @0, null, false);

	Zoom("悪鬼笑い", 0, 2000, 2000, null, false);
	Move("悪鬼笑い", 1500, @0, @100, null, false);
	FadeDelete("悪鬼笑い",1500,true);

	Wait(2000);

	OnBG(100, "bg002_空a_02.jpg");
	FadeBG(0, true);

	FadeDelete("悪鬼笑い下",1500,true);

	CreateColorEXadd("白", 15000, "WHITE");
	Fade("白", 0, 1000, null, true);

	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE02",0,1000,0,1250,null,false);

	FadeDelete("白", 500, true);
	WaitKey(1000);
	CreateSE("SE03","se戦闘_動作_鎧_踏み込み01");
	MusicStart("SE03",0,1000,0,1250,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　現れた敵対者が装甲を遂げる。
　俺も追う。

　誓いの言葉を唱え。
　その<RUBY text="な">銘</RUBY>を呼び。

　我が肉体を鉄とする――――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ホワイトアウト
//◆装甲音。ガキーン。
	CreateColorEX("白", 15000, "WHITE");
	Fade("白", 1000, 1000, null, true);

	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	WaitKey(4000);

	SetVolume("@mbgm*", 3000, 0, null);

	WaitPlay("@m*", null);
	WaitKey(3000);

}

..//ジャンプ指定
//次ファイル　"md06_036.nss"