//<continuation number="370">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_019.nss_MAIN
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
	#bg032_八幡宮奥舞殿内a_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_020.nss";

}

scene md01_019.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_018.nss"

//◆八幡宮
//◆親王前
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg032_八幡宮奥舞殿内a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm30",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　久方ぶりに<RUBY text="まか">罷</RUBY>り出た、親王の御前。
　俺は何をもさて置いて低頭し、深く謝した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0190010a00">
「舞殿宮殿下。
　……先日は多大な迷惑をお掛け致しました。
伏してお詫び申し上げます」

{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0190020a11">
「……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0190030a00">
「日頃の御厚恩に報いるどころか、仇で返す
仕儀となったこと……
　全く、面目次第もございません」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0190040a10">
「ま、ま、景明くん……。
　大の男がそんな縮こまったらあかんえ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　御簾の奥で発せられる声に叱責の調子はまるでなく、
むしろ宥める風であったが。
　己の所業を思えば、なら良かったと安堵もできない。
俺は容易に頭を上げられなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0190050a10">
「日頃世話になってるのはこっちなんやから。
　たまには迷惑のひとつも掛けてくれた方が
安心できるくらいやわ」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0190060a10">
「なあ、署長」

{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0190070a11">
「恐縮です」

{	FwC("cg/fw/fw親王_笑い.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0190080a10">
「ま、景明くんが<RUBY text="・・・・">脱獄した</RUBY>て聞いた時は茶ァ
吹いたけどなぁ……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0190090a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　あくまで気楽な様子の親王に、言葉も返せない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0190100a10">
「それが劒冑のためやったっちゅうんやから、
見上げたもんやねぇ。
　武者の鑑やないか……」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0190110a10">
「なあ署長」

{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0190120a11">
「恐縮です」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0190130a00">
「……」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0190140a10">
「……菊池ぃ……。
　おまさんまでそんな調子やと、景明くんも
頭上げられんやろう」

{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0190150a11">
「は。
　しかし、今回は私の管理不行届で――」

{	FwC("cg/fw/fw親王_凹む.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0190160a10">
「あぁ、もうええもうええ。
　……この二人は手に負えんわ」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0190170a10">
「何事も無う済んだわけやし、この話はもう
これまで。
　ええね、二人とも」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0190180a11">
「……はッ」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0190190a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　ぱんぱん、と手を打って言う八幡宮別当親王。
　俺と署長は期せずして同時に、一<RUBY text="ゆう">揖</RUBY>した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0190200a10">
「……あぁ、けど、景明くん」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0190210a00">
「はっ」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0190220a10">
「<RUBY text="あそこ">拘置所</RUBY>の看守さんには、一言挨拶しとくと
ええよ。
　あの人がむやみに騒がんでくれたお陰で、
ことを大きくしなくて済んだんやから」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0190230a00">
「……そうでしたか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　それは確かに、礼をせねばならなかった。
　まったく俺という男は、多くの人間の手を煩わせな
がら生きている。

　今更の自覚というものだろうが……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0190240a10">
「さて。
　んじゃ、本題に入ろか」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0190250a00">
「……？」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0190260a11">
「今日お前をここへ呼んだのは、叱責のため
ではないのだ。
　別に用件がある」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0190270a00">
「銀星号の件ですか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　あれが八幡宮来襲を予告した事は、既に伝えている。
　適当な口実を設けて親王には――当然署長にも――
遷居して頂くべきだと進言もしておいたが。

　その話か。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【署長】
<voice name="署長" class="署長" src="voice/md01/0190280a11">
「いや、違う。
　そちらも火急だが……今日話したいことは
別だ」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0190290a00">
「は……」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0190300a10">
「ええね、景明くん？
　今からの話はよそで言うたらあかんえ……」

{	FwC("cg/fw/fw親王_笑い.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0190310a10">
「なんて、きみには念を押さなくても平気や
ろうけどな」

{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0190320a11">
「しかし宮殿下、事が事ですので。
　……景明」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0190330a00">
「はっ。
　<RUBY text="いかよう">如何様</RUBY>なお話であれ、決して他言しないと
お約束致します」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0190340a10">
「うんうん。
　景明くんみたいな人がそう言うてくれると、
本当に安心できるわー」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　ほほほと笑う親王。
　だが、その笑いの中にも緊張の成分がある。

　余程の話のようだ。
　……政治向き、であろうか。やはり。

　しかし、そんな話をわざわざ俺にするとは……？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【署長】
<voice name="署長" class="署長" src="voice/md01/0190350a11">
「近々、八幡宮で奉刀参拝の儀式が行われる
のは知っているな」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0190360a00">
「はい。
　準備は滞りなく進んでいると聞いています」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0190370a11">
「……その祭礼の場で――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆フェードアウト
	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md01_020.nss"