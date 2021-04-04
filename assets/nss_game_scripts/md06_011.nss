//<continuation number="1390">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_011.nss_MAIN
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
	#bg006_小光の家_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_孤児の光=true;

	$PreGameName = $GameName;

	$GameName = "md06_012.nss";

}

scene md06_011.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md06_010.nss"

//◆小さな家の中。bg006a
//◆ボロ屋ではないが貧乏そう
	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");
	OnBG(100, "bg006_小光の家_01.jpg");
	FadeBG(0, true);
	CreatePlainSP("絵板写", 1000);
	SetShade("絵板写", HEAVY);
	Delete("上背景");
	FadeDelete("黒",2000,true);
	FadeDelete("絵板写", 2000, true);

	SoundPlay("@mbgm23", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……目覚めの瞬間、脳裏を占めた事柄は二つ。
　見覚えのない場所だという事と、頭が重いという事
だった。

　どちらにも理由の心当たりがない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110010a00">
（何が……あった？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　見知らぬ家。掛け布団一枚で寝ている。脳神経系は
前衛音楽の研究に余念がない。喉が渇いた。<RUBY text="だる">怠</RUBY>い。
　……何がどうして、こうなったのか。

　現在に繋がる過去を思い出せない。
　何処か深くに埋まってしまったようだ。掘り起こす
べきなのだろうが……今はそれも億劫。

　俺は頭痛に屈服する心地で、脱力した。
　手足を伸ばす。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆小光

	OnSE("se日常_建物_スライド開く04", 1000);


	StR(1000, @0, @0, "cg/st/st小光_通常_私服.png");
	FadeStR(300, true);

	WaitKey(500);

	SetFwC("cg/fw/fw小光_悩む.png");

	#voice_on_孤児の光=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110020b34">
「おきた？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110030a00">
「……はい」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110040b34">
「へいき？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110050a00">
「……そうですね。
　水を一杯、頂けると助かります」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110060b34">
「おみず？」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110070b34">
「わかった」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆去る
	OnSE("se人体_足音_走る05", 1000);

	DeleteStR(300,true);

	WaitKey(500);

	SetVolume("@OnSE*", 1000, 0, null);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110080a00">
（……………………誰だ？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　天井は、問いに答えてくれなかった。
　脳細胞は現状、<RUBY text="すす">煤</RUBY>け気味の天井板より役に立たない
こと確実なので問う意味もない。

　会った事のない子供だ――と思うが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆小光

	OnSE("se人体_足音_走る05", 1000);


	StR(1000, @0, @0, "cg/st/st小光_通常_私服.png");
	FadeStR(300, true);

	SetVolume("@OnSE*", 1000, 0, null);


	SetFwC("cg/fw/fw小光_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110090b34">
「はい」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110100a00">
「有難うございます」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　起き上がり、ブリキのコップに入れて差し出された
水を受け取る。
　季節のせいだろう、酷く冷たい。

　一口に飲み干すと、金属臭混じりの水道水は世辞に
も美味とは言えなかったが、それでも心地良く胃の腑
の底へ染み渡った。
　大きく息をつく。

　その途端、腹が鳴った。
　……脳より先に胃袋が活性化したらしい。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小光_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110110b34">
「ごはん？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110120a00">
「あー……いえ。
　そこまで厚かましくは……」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110130b34">
「……？」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110140b34">
「おなか、すいてない？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110150a00">
「…………。
　は、その、少々」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　子供相手に虚勢を張る愚を悟り、情けなく認める。
　腹具合から察するに、昨晩ないしそれより前から、
何も食べていないようだ。

　呼吸の度に無様な音が響く。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小光_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110160b34">
「まってて」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆去る
	OnSE("se人体_足音_走る05", 1000);

	DeleteStR(300,true);

	WaitKey(500);

	SetVolume("@OnSE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　子供は奥の流しの方へ消え、そしてすぐ戻ってきた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻る

	OnSE("se人体_足音_走る05", 1000);

	StR(1000, @0, @0, "cg/st/st小光_通常_私服.png");
	FadeStR(300, true);

	SetVolume("@OnSE*", 1000, 0, null);


	SetFwC("cg/fw/fw小光_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110170b34">
「これ」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110180a00">
「……は。どうも」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　渡されたのは、薩摩芋だった。
　小振りのそれが一つ。

　感触は冷たいが、一応火は通してある。
　……食事と呼ぶには簡素だが、無論のこと文句など
言う筋合いではないし、それにこれなら遠慮する必要
も無さそうだ。

　有難く、厚意に甘えておく事にする。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110190a00">
「頂きます」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110200b34">
「うん」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　頬張る。
　冷えた芋はしかし充分に甘く、旨かった。

　一分と掛けず腹に収める。
　子供は始終、そんな俺を見守っていた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110210a00">
「……御馳走様でした」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110220b34">
「おそまつさま」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110230a00">
「…………」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110240a00">
「あの、ところで」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　不意に、不吉な予感が背筋を這い上がった。
　そうさせたのは窓の向こうの太陽か。今、時間は朝
――朝食には頃合か多少早いかという辺り。

　しかし、食事をしたのは俺だけであった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110250a00">
「貴方は、食べないのですか？」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110260b34">
「うん」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110270b34">
「あげちゃった」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110280a00">
「……」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110290b34">
「……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110300a00">
「…………」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110310b34">
「…………？」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110320a00">
「…………………………………………」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110330b34">
「どうしたの？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110340a00">
「大変、申し訳ありません」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　脳内世界で一万五千回ほど自分自身を殴打した後で、
俺は手をついて頭を下げた。
　ん？　と子供が首を傾げる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110350a00">
「この償いはすぐに致します」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110360b34">
「つぐない？」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110370a00">
「貴方の食事を横取りしてしまったので……」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110380b34">
「？　……？」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110390b34">
「おじさん、こまってた」

//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110400b34">
「わたしより」

//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110410b34">
「だから、あげたの」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110420a00">
「……そ、そうですか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　尚のこと顔を上げられなくなり、往生する。
　釈迦仏を食べた虎も後でこんな心地になったのでは
ないかと思った。

　ショック効果か、頭の中もようやく覚醒してくる。
　状況の理解が少しずつ進む。

　……小さな家だ。
　何人も住めそうにはないが、この子一人だけという
事は無いだろう。家具の揃いからして両親はいる筈で
ある。

　しかし、人の気配は無かった。
　姿が見えないのは勿論だが、小なりとはいえ一家族
が暮らしていれば必ず感じられるであろう<RUBY text="・・">温度</RUBY>も無い。

　良く目を凝らせば、所々埃っぽくもある。
　
　……はて？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小光_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110430b34">
「？　どうかした？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110440a00">
「いえ。失礼しました」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　考えを切る。
　下世話がましく家庭事情の詮索などするより、自分
を振り返るのが先だろう。

　昨夜は……そう。
　深酒し、村正相手に取り乱した振舞いをし、挙句に
飛び出して町を徘徊したのだ。

　運動したせいで酒が回り、泥酔した――今になって
自覚する。
　駅前で妙な説教を聞かされ、そこでも狼藉に及んだ。
そして、それから……

　そう、何やら言い争う人々に遭遇したのだ。
　俺はその間に入り、

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110450a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　入って――<k>
　どうしたのだったか。

　そこから先の記憶は無かった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110460a00">
「……あの。
　自分がどうしてこの家にいるのか、教えて
頂けないでしょうか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　馬鹿丸出しの質問をする。
　しかし、他に方法が無い。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小光_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110470b34">
「えっと」

//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110480b34">
「きのう、おじさんが」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110490a00">
「はい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　自分はまだ二十代です、などと余計な口は挟まずに
相槌だけ打つ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小光_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110500b34">
「けんかをとめてて」

//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110510b34">
「そのあとで、ねちゃったから」

//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110520b34">
「つれてきたの」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110530a00">
「…………」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110540a00">
「成程」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　きっかり五秒間を費やして、俺は理解した。
　つまり、この子供は昨晩の一幕を何処か近くで見て
いたのだ。それで酔い潰れた俺を親切にも家まで運び
込んでくれた。

　……いや。それだと少しおかしいか。
　この子の力で俺の体重を持ち上げられた筈がない。
運んだのは家族、おそらく両親だろう。

　となれば、そちらにも礼を述べねばなるまい。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110550a00">
「御両親はどちらに？」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110560b34">
「おとうさんとおかあさん？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110570a00">
「ええ」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110580b34">
「いない……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110590a00">
「御仕事でしょうか」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110600b34">
「ううん」

//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110610b34">
「いないの」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110620a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　今度も五秒、必要だった。
　一家族分の調度が揃った家。しかし温度は低く。埃。

　……そうか。
　この子の両親はいないのか。今は、もう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小光_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110630b34">
「おとうさんは、<RUBY text="・・・・">へいたい</RUBY>にいったの」

//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110640b34">
「すぐにかえってくるっていってた」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110650b34">
「でも、てがみがきて」

//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110660b34">
「おかあさんがないて。
　おとうさんは、もうかえってこないって」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110670a00">
「…………」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110680b34">
「それから……
　おかあさんもいなくなっちゃった」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110690a00">
「……どちらへ行かれたのですか？」

{	FwC("cg/fw/fw小光_照れ.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110700b34">
「しらない……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110710a00">
「………………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　濃い目の茶を飲みたくなった。
　望むべくもないそれの代わりに、舌の裏から湧いた
唾を飲み下しておく。

　……苦い。
　だがその儀式のお陰でどうにか、沈降しかけた心を
前へ引き戻せた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110720a00">
「お暮らしはどのように――
　いえ。食べ物はどうされています？」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110730b34">
「やおやさん」

//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110740b34">
「おてつだいすると、ごはんくれる」

//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110750b34">
「それと、はいきゅう」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　……配給か。
　そういえば、食糧配給制度が部分的に復活していた。
情勢が改善しなければ、いずれまた全面的にそうなる
と見込まれている。

　大多数の人にとって不幸であろうその変化は、この
孤児にはわずかな恵みとなったわけだ――変化の原因
たる戦争で父親を失ったらしい事を考え合わせれば、
全く皮肉でしかないが。

　おそらくは先刻の芋がその配給品だったのだろう。
　返す返すも、俺が食べて良い物ではなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110760a00">
「申し遅れましたが、自分は湊斗景明という
者です。
　貴方には大変、お世話になりました」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110770b34">
「なまえ？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110780a00">
「はい」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110790b34">
「かげあき？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110800a00">
「そうです。
　宜しければ、貴方の名前もお聞かせ下さい」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110810b34">
「うん」

{	SetVolume("@mbgm*", 300, 0, null);
	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110820b34">
「ひかり」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110830a00">
「――――」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110840a00">
「え？」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110850b34">
「ひかり……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400a]
　その子供は繰り返して。
　俺の手の甲にたどたどしく、一字を書いた。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	EfRecoIn1(18000,600);
	CreateTextureSP("絵回想", 16000, Center, Middle, "cg/ev/ev256_銀星号の最期_b.jpg");
	EfRecoIn2(300);

	WaitKey(100);

	EfRecoOut1(300);
	Delete("絵回想*");
	EfRecoOut2(600,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400b]
　<RUBY text="ひかり">光</RUBY>。<k>
　
　……その一文字を。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm14", 0, 1000, true);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110860a00">
「…………」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110870b34">
「……へん？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110880a00">
「い……いえ！」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110890a00">
「良いお名前だと思います。
　自分に子供がいれば、同じ名前を付けたで
しょう」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110900a00">
「きっと……」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110910b34">
「そう」

{	FwC("cg/fw/fw小光_微笑.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110920b34">
「よかった」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　<RUBY text="わら">微笑</RUBY>ったのだろうか。
　ずっと横一文字だった口元が、初めて少し違う形に
なった。

　息が苦しい。
　今の、完全な奇襲に俺の心臓は跳ね上がり、鎮める
のに必死の力を掛けねばならなかった。

　……これが奇縁というものか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小光_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110930b34">
「かぜ？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110940a00">
「いえ……大丈夫です……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110950a00">
「その、」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　話の種を探す。
　落ち着くまで時間が必要だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110960a00">
「ああ……そう。
　喧嘩はどうなりましたか」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110970b34">
「きのうの？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0110980a00">
「はい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　言ってから気付いたが、確かにこれは気に掛かる事
だった。
　記憶はどうも判然としないが……相当に剣呑な空気
ではなかったろうか？

　こんな時世だ。誰もが殺気立っている。
　あのまま殴り合いにまで進んだとすると――<k>怪我人
の一人二人程度では済まない展開になった、とも――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小光_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0110990b34">
「へいきだった」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0111000a00">
「……平気？」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0111010b34">
「うん」

//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0111020b34">
「だいじょうぶだった」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0111030a00">
「…………」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0111040a00">
「その、つまり。
　誰も怪我はしなかった？」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0111050b34">
「うん」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0111060a00">
「そうですか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　それは良かった。
　何よりの事だ。

　仔細はさっぱりだが……何にせよ、暴力の<RUBY text="せめ">鬩</RUBY>ぎ合い
にならなくて済んだのならそれに越した事はない。
　増してや、こんな子供の傍で。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0111070a00">
「しかし……どうして」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0111080b34">
「おじさん」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0111090a00">
「はい？」

{	FwC("cg/fw/fw小光_微笑.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0111100b34">
「おじさんが、とめたの」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0111110a00">
「…………自分が？」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0111120b34">
「そう」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0111130a00">
「……………………」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0111140a00">
「それは……どのように？」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0111150b34">
「えっと」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0111160b34">
「…………」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0111170b34">
「ふぉーく……？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0111180a00">
「フォーク？」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0111190b34">
「うん。
　おはしと、ふぉーく」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0111200a00">
「？　……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　意味不明である。

　しかし……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0111210a00">
（そう、か）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　兎も角も、俺は争う人々を収めたらしい。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0111220a00">
（……そうか……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
　俺は――
　<RUBY text="・・・・・・・・">争いを止められた</RUBY>のだ。

　この俺にも、そんな事ができたのだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0111230a00">
「…………」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0111240b34">
「かげあき」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0111250a00">
「はっ？」

{	FwC("cg/fw/fw小光_微笑.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0111260b34">
「うれしそう」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0111270a00">
「……そ、そうですか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
　頬に手をやる。
　何か、血の気を取り戻したような熱さがあった。

　自分で気付く前に見透かされた事が気恥ずかしい。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0111280a00">
「失礼。何でもありません。
　ついでに、その後の事ですが」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0111290a00">
「どうやって自分をここまで運んで下さった
のでしょう？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
　誤魔化しがてら、投げ置きにしていた疑問を問う。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0111300a00">
「貴方だけでは難しいと思うのですが」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0111310b34">
「うん」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0111320b34">
「がんばったけど、うごかなくて」

//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0111330b34">
「こまってたら……
　おねえちゃんがきてくれたの」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0111340a00">
「お姉ちゃん？
　両親の他に、ご家族が？」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0111350b34">
「ううん。
　しらないひと」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
　……この子が俺を運ぼうと難儀しているところに、
女性が通り掛かって手伝った？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0111360a00">
「その方は今どちらに？」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0111370b34">
「えっと」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0111380b34">
「そこ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0111390a00">
「そこ？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
　指差す方向へ、振り返る。
　小さな家の小さな玄関口――

　いつからそこにいたのだろうか。
　村正が腕を組み、俺を眺めていた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md06_012.nss"