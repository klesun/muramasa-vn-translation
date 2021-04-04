//<continuation number="790">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_015.nss_MAIN
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
	#bg097_堀越御所内景明の部屋_01=true;
	#ev914_九〇式竜騎兵魔剣インメルマンターン=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_016.nss";

}

scene md02_015.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md02_014.nss"


//◆フェードイン

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	OnBG(100, "bg097_堀越御所内景明の部屋_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm26", 0, 1000, true);
	Delete("上背景");
	FadeDelete("黒幕１",1500,true);


	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150010a07">
「英雄になれってことだね」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　聞き終えて、足利茶々丸はあっけらかんと言った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150020a00">
「……英雄」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150030a07">
「うん」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150040a07">
「はげぼーず、珍しくいいこと言ったもんだ。
　そりゃ確かに、お兄さんに必要な助言だよ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　納得の様子で、繰り返し頷いている。
　……こちらは反比例して、不信の念が強まっていた。

　無我。
　自我を消して一切の雑念を去らしめ、感覚を超えた
<RUBY text="カン">観</RUBY>を獲得――その上で世の意志、大義に従って戦えば
良いのだとあの僧侶は言った。

　何が正しく何が誤りかを直観的に判断する〝<RUBY text="りょうち">良知</RUBY>〟
が人間の根底には備わっている、だから迷わずそれに
従えば良く、個人的な利害損得などの雑念に囚われて
悩んではならない――とする陽明学の教えにも通ずる。

　成程、英雄だ。
　我を捨て世のため戦う者、それは英雄に違いない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150050a07">
「納得いかなそうな顔やね」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150060a00">
「いえ、反対です。
　御賢察の通り、無我とは英雄の道……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150070a00">
「無想と同様、自分には縁遠いものと理解し
ました」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　この大量殺人犯が世の英雄たらんとする――冗談に
しても出来と趣味が悪過ぎる。
　銀星号と戦う方法は、他に考えなくてはなるまい。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150080a07">
「そんなはずはないっしょ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150090a00">
「……と言われると？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150100a07">
「お兄さんはこれまでだって散々やってきた。
　<RUBY text="・・">英雄</RUBY>」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150110a07">
「世間で噂になってるの、知らないの？
〝赤い武者〟――けっこう有名だよ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150120a00">
「……それは、聞いた事がありますが」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　俺の二年間の行状について堀越公方は詳しいらしい
――その事は別に今更意外とも何とも思わなかった。
　銀星号を手元で養っていたのだから、熟知していて
当然だ。

　半瞬、意識を占めたのは、一人のジャーナリストの
事だった。時田光男。
　志を持って俺に近付いた男。彼も赤い武者という名
を口にした。そして俺の手で斬られた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150130a00">
「自分の引き起こした事件の表層的な部分が
一人歩きして生まれた風聞に過ぎません。
　まるで実質のない呼称です」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150140a07">
「火のない所に煙は立たんからねェ。
　英雄呼ばわりされるからには、される理由
があるんだと思うよ」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150150a00">
「心外です」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150160a07">
「不愉快？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150170a00">
「はい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　正直に答えた。
　俺に対する英雄呼ばわりは、俺に殺された人々への
嘲弄である。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150180a07">
「でもお兄さんは、不愉快だからってだけで
人の言葉をはねつけたりしないっしょ？
　そこに甘えて話を続けるあてなのであった」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150190a00">
「……」

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0150200a01">
「律義者が横着者に勝てない理由を、目の前
で見せられてる気分ね……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150210a00">
「閣下。無論、お言葉は真摯に聞かせて頂き
ます。
　しかし受け入れるかどうかは、また別の事」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150220a07">
「理に適ってない話なら聞かんよ、ってこと
でしょ？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150230a00">
「要は」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150240a07">
「理なんて単純明快。
　三段論法で話そうか？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150250a07">
「己のためではなく世のために戦うのが英雄。
　戦いたくないお兄さんが戦ってきたのは世
の中のため。
　従ってお兄さんは英雄である」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150260a07">
「以上」

//◆ＳＥ：ビキ。なんかショック
{	OnSE("se人体_体_骨軋む01", 1000);
	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150270a00">
「――――」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150280a07">
「どっか間違ってる？」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150290a00">
「……違います。
　自分の戦いは、あくまで自分の都合で」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150300a07">
「お兄さんは戦いたかった？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　ようやく気付いた。
　食卓の空気を乾かさないための雑談、そんな様子は
とうに消し飛んでいる。

　堀越公方足利茶々丸の両眼が、異様な情熱を込めて
俺を束縛していた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150310a07">
「<RUBY text="・・・・・・・・・・">やりたくてやってたの</RUBY>？
　罪もない連中を殺したり、妹と戦ったり」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150320a00">
「それは……そういう問題では、」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　言葉遊びだと、理解している。
　彼女は故意に言葉を入れ替えているのだ。

　俺の戦いは、殺人は、俺個人の都合で行われたもの
だった。そこに疑いの余地はなく、世間だの何だのに
責任転嫁する余地もない――彼女は都合という言葉を
好き嫌いに置き換えて、俺を揺さぶっているだけだ。

　だから……聞く耳を持つ必要はない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_寂寥.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150330a07">
「お兄さんは……
　本当はそんなこと、したくなかった」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150340a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想：第四話の雪車町
	EfRecoIn1(18000,600);

	CreateTextureSP("イベ絵10", 1001, Center, Middle, "cg/ev/ev914_九〇式竜騎兵魔剣インメルマンターン.jpg");

	EfRecoIn2(300);

	WaitKey(1000);

	SetFwC("cg/fw/fw雪車町_嘲笑.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md02/0150350a12">
《あの餓鬼共を……
　あの姉妹を、嫌々ながら殺しやがった!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り

	EfRecoOut1(300);

	Delete("イベ絵*");

	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw茶々丸_寂寥.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150360a07">
「したくないけど、やったんだ。
　それが世の中のためだから」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150370a07">
「そうしないと、たくさんの人間が死ぬから」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150380a00">
「……違う」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　それは事実だ。
　それは事実だが、違うのだ。

　<RUBY text="・・・・・・・">だからといって</RUBY>、<RUBY text="・・・・・・・・・・・・">俺が英雄などと呼ばれては</RUBY>、<RUBY text="・・">なら</RUBY>
<RUBY text="・・・・">ないのだ</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0150390a01">
「御堂……」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150400a07">
「ね、お兄さん。
　こいつは徹頭徹尾、単純明快な話なのさ」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150410a07">
「お兄さんはややこしく考え過ぎてる。
　それじゃいつまで経っても、<RUBY text="おひめ">銀星号</RUBY>に勝て
ないよ」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150420a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　茶々丸の声は優しい。
　頭ごなしに押さえつける圧力も、臓腑を抉る鋭さも
ない。

　いたわるような優しさだけがある。

　
　　――――悪魔の囁きなのだと、直感した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150430a07">
「お兄さんはこれまで、いやなのを我慢して
戦ってきた。多くの人を救ってきた。
　英雄の資格は充分だね」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150440a07">
「でも御姫には勝てずにいる。
　何でだろう……？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150450a07">
「<RUBY text="・・・・・・・・">英雄は魔王に勝つ</RUBY>と決まってる。
　世界がそう望むから、必ずそうなる」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150460a07">
「なのにお兄さんは勝てない」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150470a07">
「……それは、お兄さんが英雄になりきれて
いないからだよ」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150480a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　英雄に、なりきる？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_寂寥.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150490a07">
「お兄さんは戦いたくない」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150500a07">
「本当は、御姫と戦いたくない。
　殺したくない」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150510a07">
「心の底でそう思ってる」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150520a00">
「――――――――――――――――――」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150530a07">
「だから勝てない。
　これは、あたりまえ」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150540a07">
「殺したくないなんて思ってたら勝てるわけ
ないよ。技量がどーの性能がどーの、なんて
以前の問題だって。
　お兄さんは、まずその迷いを捨てないと」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150550a00">
「……無我……」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150560a07">
「そう」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150570a07">
「自我を捨てて……
　個人の情を捨てて」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150580a07">
「御姫を、世界の敵とだけ思う。
　殺さなくてはならない、魔王だと認める」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150590a07">
「英雄になるんだ。
　ならなきゃいけない」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150600a07">
「それはお兄さんの役目だ。
　そうでしょ……？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150610a00">
「…………」

{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150620a00">
「何故」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150630a07">
「……？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150640a00">
「貴方は銀星号の味方ではないのか？
　何故……そんな話をする？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150650a07">
「御姫のことは大好きだけど。
　味方、っていうのは違うな」

{	SoundPlay("@mbgm19", 0, 1000, true);}

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150660a07">
「御姫に味方なんているわけない。
　味方がいたら敵もいるってことになる。で、
村正の戒律は敵味方を必ずどちらも殺させる」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150670a07">
「あてが御姫の味方なら、とっくに死んでな
きゃおかしいよ。
　御姫は本当に、敵意なんて無しに人を殺し
てるんだ……」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150680a07">
「それはもうわかってるでしょ？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150690a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150700a07">
「あてが味方するとすれば、むしろお兄さん」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150710a00">
「自分に？」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150720a07">
「うん」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0150730a01">
「……善悪相殺の戒律があるのは、こっちも
同じなんだけど」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150740a07">
「構わない」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150750a07">
「お兄さんが望んでくれるなら」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150760a07">
「英雄になって、魔王と戦うなら」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150770a07">
「いいよ。
　一緒にいこう……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　足利茶々丸が、俺の耳元へ唇を寄せる。
　そうして囁く。

　冷めゆく一方の食卓とは対照的に。
　熱っぽく――――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_寂寥.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0150780a07">
「あてとお兄さんとで……
　御姫を殺そう」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0150790a00">
「……………………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆↑ここに選択肢設けて、茶々丸の呪いフラグを設定するか？　一考。

//■↓変更あるかもしれませんが一応やっておきます　inc櫻井
	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md02_016.nss"