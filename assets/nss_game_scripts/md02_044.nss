//<continuation number="710">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_044.nss_MAIN
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
	#bg022_山林a_03=true;
	#ev221_月明かりを浴びて立つ光_a=true;
	#ev221_月明かりを浴びて立つ光_b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_045.nss";

}

scene md02_044.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md02_043b.nss"


//◆山中。bg022

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	OnBG(100, "bg022_山林a_03.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm33", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……俺は木々の中、座り込んでいた。
　腕の中には光がいて、寝息を立てている。

　座っていた――というのは、違うかもしれない。
　単に動けなくなっただけとも思えた。

　足の筋肉は完全に張り、立ち上がる事さえままなり
そうにない。
　どれほどの距離を駆け巡ったのか。あちらこちら傷
だらけで、出血も酷かった。

　意識は飛んでいる。
　光を抱えて堀越御所を飛び出してから――いま呆然
と周囲を見回しているこの瞬間まで。記憶は全き空白
で、何も残っていなかった。

　まさか丸一日以上走り続けていたとは考えられない
から、まだ同じ夜の内であろう。
　おそらく、あれから数時間程……いや、実はもっと
短いのかもしれない。

　ほとんど勘でしかないが、辺りの風土も伊豆のもの、
堀越のそれとそう違いはないと思える。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440010a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　――これから、どうすれば良いのか。

　それは、あらゆる意味において愚劣な問いであるに
違いなかった。
　今更問うまでもなく、今更問うことではなく、今更
問うても仕方がない。

　問いの答は自明である。
　俺がやらねばならない事は、わかり切っている。

　だから、俺は思考を打ち切った。
　その答はいらない――欲しくない。

　知りたくない。
　本当は既に知っているとしても……知らないふりが
できる間はさせて欲しい。

　俺は光の身体を抱え直し、顔を伏せた。
　静かな寝息が、頬に触れる。

　少し眠ろう。
　考えるべき事は、目覚めてからでいい。

　今は眠って、最後の幻想に浸りたい。
　こうして……いつまでも。いつまでも、光を守ると
いう……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440020a00">
「……………………」

{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440030a00">
「……ッ!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　頬に触れる――――<k>
　<RUBY text="・・">寝息</RUBY>!?

　光の相貌を確認する。
　……眠っていた。

　いつから？
　いや、そんな事はどうでもいい。

　……足利茶々丸は何と言っていたか。

　銀星号は、光の夢。
　深い眠りに陥ると現れる――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト

	WaitKey(1000);

//◆さっ。立ち上がる音

	OnSE("se人体_動作_一歩", 1000);

//◆ＥＶ：月光を愉しむ光
	CreateTextureEX("光", 15000, @0, @0, "cg2/ev/ev221_月明かりを浴びて立つ光_a.jpg");

//おがみ：EV完成後作業＞リサイズ素材作成

	CreateTextureEX("光2", 15000, -960, -480, "cg2/ev/resize/ev221_月明かりを浴びて立つ光_al.jpg");
	Fade("光2", 1600, 1000, null, false);
	Move("光2", 6000, -530, -80, DxlAuto, false);

	Wait(1600);

	SoundPlay("@mbgm14",0,1000,true);

	Wait(3400);

	Fade("光", 0, 1000, null, true);
	FadeDelete("光2", 3000, false);

	Wait(1000);

	SetFwL("cg/fw/fw光_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【光】
<voice name="光" class="光" src="voice/md02/0440040a14">
「いい風だ」

{	FwL("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440050a14">
「草の香り。
　土の香り。
　闇の香り……」

{	FwL("cg/fw/fw光_笑い.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440060a14">
「振り仰げば、木々の狭間に隠れ月。
　<RUBY text="よふけ">深更</RUBY>の山とは風雅なものだな！」

{	FwL("cg/fw/fw光_慈愛.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440070a14">
「景明、おまえにしては気が利いている」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　微笑んで、光はそう言った。
　山の夜風を味わうように、両腕を広げながら。

　光。
　
　……<RUBY text="ひかる">銀星号</RUBY>。

　湊斗光の見る夢だという銀星号。
　月明かりを浴びて佇むその姿は、確かに夢幻めいて
いる。

　しかし、そこに虚ろなものや薄弱なものはない。
　有るのは力だ。溢れんばかりの力！

　これが夢の存在だと？
　かくも力に満ちたものが？

　俺の方こそおかしな夢を見ていたのではないか。
　いつの間にか入り込んでいたこの山で、狐狸の類に
<RUBY text="たぶら">誑</RUBY>かされて……。

　その方が――今は余程、納得できる。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440080a00">
「……光……」

{	FwL("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440090a14">
「何だ？」

{	FwL("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440100a00">
「お前は――」

{	FwL("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440110a00">
「…………」

{	FwL("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440120a14">
「どうした。
　何を遠慮する間柄でもあるまい」

{	FwL("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440130a14">
「家族ではないか」

{	FwL("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440140a00">
「…………」

{	FwL("cg/fw/fw光_慈愛.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440150a14">
「どんなことでも構わぬから、言ってくれ。
　おまえの声を聞きたい」

{	FwL("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440160a00">
「……」

{	FwL("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440170a00">
「おまえは……光の夢なのか？」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　口にしてみたことで、決着がついた。

　極めつけの戯言だ。
　どう見ても夢とは思えないものにお前は夢かと問う
のも。夢と思うものにお前は夢かと問うのも。

　どちらにしろ、脳神経系が断裂している者の所業で
あろう。
　やはり、おかしいのは俺なのだ……。

　光にしてみれば、意味がわかるまい。
　眉根を寄せた怪訝そうな顔で、問い返してくる――

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("光2", 16000, @0, @0, "cg2/ev/ev221_月明かりを浴びて立つ光_b.jpg");
	Fade("光2", 500, 1000, null, true);
	Wait(500);

	SetFwL("cg/fw/fw光_慈愛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//◆微笑
//【光】
<voice name="光" class="光" src="voice/md02/0440180a14">
「そうだ」

{	FwL("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440190a00">
「――――」

{	FwL("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440200a14">
「おれは、湊斗光の夢に過ぎぬ」

{	FwL("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440210a00">
「……お前は……」

{	FwL("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440220a00">
「自分で、」

{	FwL("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440230a14">
「知っている」

{	FwL("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440240a14">
「己が<RUBY text="うたかた">泡沫</RUBY>のものであることを知っている」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　悲嘆は込めず。諦観もなく。
　ただ自然に、<RUBY text="ひかる">銀星号</RUBY>はそう認めた。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440250a00">
「…………」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　理解できない。
　自身が夢――虚構である、などという自覚を持って
存在できるものなのか？

　虚構は崩壊を宿命とする。
　虚構たるを自覚して、なお存在するなど、矛盾では
ないのか。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw光_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【光】
<voice name="光" class="光" src="voice/md02/0440260a14">
「不思議か？」

{	FwL("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440270a00">
「……」

{	FwL("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440280a14">
「おれにとって、悩むべきことは何もない」

//【光】
<voice name="光" class="光" src="voice/md02/0440290a14">
「夢とは、望みだ。
　いや……そうとも言い切れないのだろうが。
湊斗光に限って言えば、夢とはまさしく希望
の結晶にほかならぬ」

{	FwL("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440300a00">
「……希望……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演月光", 17000, -396, -130, "cg2/ev/resize/ev221_月明かりを浴びて立つ光_bl.jpg");
	Move("絵演月光", 6000, -172, -32, DxlAuto, false);
	Fade("絵演月光", 1000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　光は左手を伸ばした。
　月華の下、それは白銀に輝く。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw光_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【光】
<voice name="光" class="光" src="voice/md02/0440310a14">
「おれは湊斗光の夢であることを喜ぶ。
　それはおれが最も純粋な湊斗光であること
を意味するからだ」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	Delete("光*");
	FadeDelete("絵演月光", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　開かれた手が、胸元に触れる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【光】
<voice name="光" class="光" src="voice/md02/0440320a14">
「おれは湊斗光の夢であることを誇る。
　それはおれが最も強固な湊斗光であること
を意味するからだ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　手が握り締められ、拳をつくる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【光】
<voice name="光" class="光" src="voice/md02/0440330a14">
「おれは湊斗光の夢であることを誓う。
　それはおれが、湊斗光の、いつか叶う理想
であることを意味するからだ！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　拳から、人差し指だけが剣のように立つ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440340a00">
「…………」

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440350a14">
「おれは迷わず、おれとして在る……。
　この道を踏みしめ、<RUBY text="ひたむき">直向</RUBY>に進むことが――
おれにはできる！」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440360a00">
「光……」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440370a14">
「行かねばならぬ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演光", 5110, -480, -290, "cg2/ev/resize/ev221_月明かりを浴びて立つ光_al.jpg");
	Move("絵演光", 6000, -480, -120, DxlAuto, false);
	Fade("絵演光", 1000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　言うと。
　光は、俺に背を向けた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440380a00">
「……行く……？」

{	FwC("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440390a14">
「うむ。
　光の夢として、光の希望を叶えるために」

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440400a14">
「天下布武を果たさねばならぬ」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440410a00">
「――――!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　それは。
　その意味するところは……つまり、

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440420a00">
「止せ！」

{	FwC("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440430a14">
「…………」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440440a00">
「もう……殺すな！
　お前自身の命取りにもなる!!」

//【景明】
<voice name="景明" class="景明" src="voice/md02/0440450a00">
「お前の身体は――」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440460a14">
「限界が近い、か？」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440470a00">
「……！」

{	FwC("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440480a14">
「あるいは、かもしれぬ」

{	FwC("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440490a14">
「だが止めぬ」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440500a00">
「光！」

{	FwC("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440510a14">
「おれは望みのために歩き続ける。
　ほかの<RUBY text="ありよう">在様</RUBY>を知らぬ！」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440520a14">
「おれは、光の夢なのだ」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440530a00">
「…………」

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440540a14">
「限界があるなら、限界に挑もう。
　そうして必ずや、望みを遂げる！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　望み。

　光の――――希望。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440550a00">
「父、を……」

{	FwC("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440560a14">
「うむ」

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440570a14">
「奪われた父を、取り戻す」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440580a00">
「……」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440590a00">
「お前の父は……
　……奪われてなどいない……」

{	FwC("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440600a14">
「……」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440610a00">
「明堯様は、お前を拒みはしない！
　会いに行けば、いつでも迎えて下さる……」

{	FwC("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440620a14">
「会うことが望みではない」

{	FwC("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440630a14">
「父親と、名乗ってくれることだ。
　光を娘と、認めてくれることだ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440640a00">
「それも――」

{	FwC("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440650a14">
「叶う、か？」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440660a00">
「…………」

{	FwC("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440670a14">
「おまえの言う通りだ。おれは父にいつでも
会える。会って、父と呼ぶこともできよう。
　だが一度もしたことはない」

{	FwC("cg/fw/fw光_哀愁.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440680a14">
「拒絶されるのが恐ろしい」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0440690a00">
「……」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0440700a14">
「どう思う。景明」

//【光】
<voice name="光" class="光" src="voice/md02/0440710a14">
「光の望みは叶うか。
　父は心から、真実の言葉で――おれを娘と
認めてくれるだろうか……？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

//■過去フラッシュらしいので白アウト

	CreateColorEX("ホワイトアウト１", 5000, "WHITE");
	Fade("ホワイトアウト１",300, 1000, null, true);


}

..//ジャンプ指定
//次ファイル　"md02_045.nss"