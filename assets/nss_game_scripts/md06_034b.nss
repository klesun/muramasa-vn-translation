//<continuation number="530">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_034b.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_035.nss";

}

scene md06_034b.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md06_034.nss"

//●選んだ道を進む
	PrintBG("上背景", 30000);

	OnBG(100, "bg003_荒れ野_02.jpg");
	FadeBG(0, true);

	CreateSE("SE風", "se自然_風_荒野_L");
	MusicStart("SE風", 2000, 800, 0, 800, null,true);

	Delete("上背景");

//BGMなしはわざとです inc櫻井

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　体はどこまでも重い。
　手足には鉛が詰まり、頭上には石があるかのようだ。

　だが今、<RUBY text="つ">衝</RUBY>き動かす力はその重さに勝る。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0010a00">
「思い出した事がある」

{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034b0020a12">
「……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0030a00">
「お前は言ったな。
　<RUBY text="むらまさ">妖甲</RUBY>を抱えて引っ込んでいれば良かったと」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0040a00">
「そうだ。俺はそうしようと思えばできた。
　だがしなかった」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0050a00">
「人を殺してでも人を救いたかったからだ」

{	FwC("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034b0060a12">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　人を殺し、その骸の上に平和を築く。
　それが俺の選び取った道。

　俺はその道の、まだ半ばにいる。

　二年前の事件に起因する災いは今なお世界に残り。
　無数の対立、無数の争乱の中、無数の人々が死んで
いる。

　<RUBY text="・・">まだ</RUBY>、<RUBY text="・・・・・・・">終わっていない</RUBY>。

　俺の使命――<k>違う。<k>
　俺の<RUBY text="・・">目的</RUBY>はまだ、果たされていない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034b0070a12">
「それで……？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0080a00">
「続ける」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0090a00">
「この世の争いを全て治める」

{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034b0100a12">
「……正気で言ってんのか」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0110a00">
「違うかもしれんな」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034b0120a12">
「てめぇがどうやって、そんな事を<RUBY text="しと">仕遂</RUBY>げる？
　花でも配って、戦争はやめなさいと言って
回るのか」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0130a00">
「真逆」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　この俺がそんな行為をしても無益だ。
　血臭剥がれぬ人殺しに人々を説く力は無い。

　それはきっと――
　何処かで別の誰かがやる。

　誰かが、無垢な祈りを捧げてくれる。

　俺には俺のやり方。
　もっと劣った方法がある。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034b0140a12">
「なら？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0150a00">
「知れた事」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0160a00">
「<RUBY text="・・・・・・・・・・・・・・・">最小限度の殺戮で戦争を撲滅する</RUBY>」

{	FwC("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034b0170a12">
「…………」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0180a00">
「おかしいか」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034b0190a12">
「……いや。
　おかしくは、ねえな」

{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034b0200a12">
「おかしくはねえが」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0210a00">
「……」

{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034b0220a12">
「てめぇはそれを、また……
　<RUBY text="・・">嫌々</RUBY>、<RUBY text="・・・・・">泣きながら</RUBY>、やるのか？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　肩越しに視線を投げる。
　雪車町は冷たく、俺を眺めていた。

　……嫌々？
　
　やりたくもないのに、やるという事か。

　何を言うかと思えば。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0230a00">
「雪車町。
　勘違いは、迷惑だ」

{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034b0240a12">
「……あァ？」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0250a00">
「俺は<RUBY text="・・・・">最初から</RUBY>、嫌がってなどいない」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0260a00">
「嫌なら、やらん。
　やりたいから、やったのだ」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0270a00">
「……当たり前の事だろうが？
　本当にやりたくない事をやる人間が何処に
いる？」

{	FwC("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034b0280a12">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　そう。
　当然の事。

　だが――
　その当然を自覚し、認めるのに、長く掛かったよう
にも思う。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0290a00">
「これからもだ。
　俺はやりたいからやる」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0300a00">
「殺したいから殺す」

{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034b0310a12">
「……だったら。
　てめぇはあの時、どうして泣いた？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0320a00">
「泣いてなどいない。
　だが、もし、泣いたように見えたなら……」

{	FwC("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034b0330a12">
「……」

{
//あきゅん「演出：あえて悲哀を使用」
	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0340a00">
「きっと、笑っていたのだろうよ。
　涙が零れるほど、愉しくて」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　雪車町は暫時、沈黙したようだった。

　やがて――少しずつ。
　陰々と。

　クヒ、ヒヒヒヒ、と……
　<RUBY text="ひきがえる">蟇蛙</RUBY>が歌うかの笑声。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034b0350a12">
「……ヘッ……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0360a00">
「…………」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034b0370a12">
「てめぇがやるのは、悪鬼の所業だぜ」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0380a00">
「知っている」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034b0390a12">
「やり遂げられんのかァ？
　坊ちゃん育ちのてめぇによぅ」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0400a00">
「ああ」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0410a00">
「俺は……俺の邪悪を信じる」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　我が目的の為、既に幾多の命を奪った。
　その事実に懸けて信仰する。

　邪悪。
　魂の底に<RUBY text="たま">溜</RUBY>る、闇黒を。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034b0420a12">
「けっ……そうかよ」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034b0430a12">
「じゃあ、勝手にしやがれ」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0440a00">
「……」

{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034b0450a12">
「そいつと一緒にな」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0460a00">
「そいつ？」

{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034b0470a12">
「返してやらァ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　雪車町は億劫げに起き上がると、最初に座っていた
岩へ近寄った。
　その陰から、何かを取り出す。

　箱だった。
　
　これは……<RUBY text="アイソレーションボックス">通信遮断装置</RUBY>か？

{	CreateSE("SE01","se人体_動作_箱を開ける01");
	MusicStart("SE01",0,1000,0,800,null,false);}
　留め金が外され、蓋が開かれる。
　中身は――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0480a00">
「……村正……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/034b0490a01">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　赤い相棒がそこにいた。
　健在である事は一目でわかった。

　……そうか。
　通信遮断装置の中に封じられていたから、呼び掛け
にも応答が無かったのか。

　そして、あの筋者がこんな仕掛けを使って殺したと
偽った意図は、おそらく――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st雪車町_通常_私服.png");

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0500a00">
「雪車町」

{	FadeStR(300,false);
	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034b0510a12">
「何でぇ？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/034b0520a00">
「行くのか」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　ふらつく足取りで離れてゆく、その背に声を掛ける。
　一度だけ振り返り。雪車町一蔵は唾を吐いた。

　憎々しげに笑って、言う。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_満足.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034b0530a12">
「今日のところは、これで勘弁してやらァ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景", 5100, Center, InBottom, "cg/bg/resize/bg002_空a_02.jpg");
	Move("絵背景", 10000, @0, 0, DxlAuto, false);
	Fade("絵背景", 1000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　夕暮れ。
　影が長く尾を引いていた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆シーン切り

	ClearWaitAll(1500, 2000);

}

..//ジャンプ指定
//次ファイル　"md06_035.nss"