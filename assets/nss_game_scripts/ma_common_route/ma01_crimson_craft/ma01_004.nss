//<continuation number="690">




chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}


scene ma01_004.nss_MAIN
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
	#bg009_鎌倉住宅街a_01=true;
	#bg002_空a_02=true;
	#bg002_空a_03=true;
	#bg006_雄飛の部屋_03b=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma01_005.nss";

}

scene ma01_004.nss
{
	$スクリプトバージョン = "  Version $Revision: 28 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();




..//ジャンプ指定
//前ファイル　"ma01_003.nss"

//◆住宅街
	PrintBG("上背景", 30000);
	CreateTextureSP("背景１", 100, 0, 0, "cg/bg/bg009_鎌倉住宅街a_01.jpg");

	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

	SoundPlay("@mbgm27",0,1000,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　リツの家は<RUBY text="ぜにあらいべんてん">銭洗弁天</RUBY>近くの住宅街にある。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　銭洗弁天とは洞窟の中にある変わったお社で、その
奥の湧き水でお金を洗うと倍になるというありがたい
ような色々ぶち壊しのようなご利益で知られている。

　そのわりに、近隣の家は慎ましい造りのものが多く、
より素直に言えば貧乏くさい。
　マッチ一本でとても楽しいことになりそうなくらい
枯れた木造建築ばかりだ。

　リツの家はその中で小さな雑貨屋を営んでいる。
　生活用品を中心に食品、文房具など、日常的に必要
となる物品全般を取り扱っているので、その重宝ぶり
たるや只事ではない。

　娘を遊ばせておけるのは店が充分に繁盛していれば
こそだった。……といっても、もしリツが<RUBY text="・・・">本当に</RUBY>遊び
始めたら、雑貨屋は三日でどこかの高利貸しの抵当に
入ってしまうだろうが。

　そんな真似が許されるのは臨海ラインにビルを持つ
社長さんちのご令息くらいに違いない。

　雑貨屋の繁盛にはおれたちも一役買っている。
　もともと安めの値段設定がさらに友達割引されるの
なら、わざわざ大路のスーパーなんぞに足を運ぶ理由
は全くないからだ。

　余り物を気前良くくれたりするとなればなおのこと。
　とはいえ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0, "cg/st/st雄飛_通常_制服.png");
	StL(1000, @0, @0, "cg/st/st忠保_通常_制服.png");

	FadeStL(300,false);
	FadeStR(300,true);


	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0040010b56">
「余り物には余る理由があるんだから」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040020b43">
「うん」

{	FwC("cg/fw/fw雄飛_沈むb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0040030b56">
「この芋サイダーなる代物がその、ちょっと、
アレだったからといって、文句を言う筋合い
ではないんだ」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040040b43">
「そうだね」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　新たな味覚の開拓に雄々しく挑戦し華々しく散った
と<RUBY text="おぼ">思</RUBY>しき液体をできるだけ味わわないようにして飲み
下しつつ、夕暮れの近い路地を並んで歩く。
　小夏は少し後ろをついてきていた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小夏_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0040050b33">
「帰ってなかったね……」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0040060b56">
「さすがにおじさんもそわそわしてたな」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040070b43">
「おばさんは笑ってたけどねぇ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　肌寒い風を感じながら、リツの両親との会話を思い
出す。
　二人とも、これといった心当たりはない様子だった。

　昨日の朝に登校して以来、リツは家に戻っていない。

　これで丸一日、リツは行方が知れないことになる。
こういう事態は初めてだった。
　遊びもするし、外泊もするやつだったが、それでも
毎日家族と仲間に顔を見せることは怠らなかったのだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0040080b56">
「……どう思う？　おじさんは、一昨日の晩
に少し注意したのが癇に障ったんじゃないか
なんて言ってたが」

{	FwC("cg/fw/fw小夏_怒りa.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0040090b33">
「それで家出？　まさか。
　そんなの日常会話でしょ」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040100b43">
「もし腹を立てたのなら、その場で飛び出す
のがリツだろうね。
　一晩経ってからっていうのはわけがわから
ないよ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　ぐっすり寝たら嫌なことはすべて忘れてしまうのが
リツの良いところでもあり悪いところでもあり。
　喧嘩もしやすいが仲直りもしやすい。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_通常b.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0040110b56">
「……だよな。
　じゃあやっぱり、おばさんの言ってた通り
遊ぶのに夢中で時間を忘れてるだけ……って
のもなぁ」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0040120b33">
「もう丸一日よ？」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040130b43">
「よほど楽しいことを見つけたんだろうねぇ」

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0040140b56">
「おいおい、本気か？」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040150b43">
「半分は。
　熱中するタイプなのは間違いないよ、リツ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0199]
　それにしたって限度があると思うが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw小夏_沈む.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0040160b33">
「結局、居場所はわからないのね……」

{	FwC("cg/fw/fw忠保_笑顔a.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040170b43">
「そうだね。でも、心配事が一つ減ったよ」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0040180b33">
「なに？」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040190b43">
「家にどこからも連絡がないなら、鎌倉大番
の取り締まりに引っ掛かったという可能性は
ないよ。リツが黙秘でもしない限り……いや、
そうしたって身元なんかすぐにわかるし」

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0040200b56">
「あ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0201]
　確かにそうだ。
　鎌倉大番、つまり六波羅の治安部隊は――すべての
六波羅がそうであるように――横暴さで知られるが、
別に暇人の集まりではない。

　牢獄でただ無駄飯を食わせるために市民を捕まえる
わけがなかった。
　どう片付けるつもりにしろ、家への連絡はするはず
だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040210b43">
「全く同じ理由で警察のご厄介になっている
可能性も除けるね」

{	FwC("cg/fw/fw雄飛_沈むa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0040220b56">
「……警察はもともとなにもしねえよ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　鎌倉にも警察署はある。
　あるが、ただそれだけだった。
　幕府を除くあらゆる政府機関と同じように。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小夏_沈む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0040230b33">
「少なくとも牢屋に放り込まれてはいない、
ってことね。
　安心していいんだか悪いんだか」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0040240b56">
「ん？　そりゃいいに決まってんだろ。
　最悪の可能性がそれだったんだから」

{	FwC("cg/fw/fw小夏_怒りa.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0040250b33">
「犯罪に巻き込まれたって線を考えてないの、
あんた!?」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0040260b56">
「…………」

{	FwC("cg/fw/fw忠保_冷徹.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040270b43">
「…………」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0040280b33">
「……ごめん。考えないわけないよね、普通」

{	FwC("cg/fw/fw雄飛_沈むa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0040290b56">
「いや……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　それを口にすることが怖かった。
　非論理的なのはわかっている。だが口にすればそれ
が現実になってしまうという危惧を、おれは捨てられ
なかった。

　しかし、そんな逃避をしている場合ではないのかも
しれない……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040300b43">
「……小夏」

{	FwC("cg/fw/fw小夏_怯え.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0040310b33">
「……」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040320b43">
「ひとまずその推測は排除していいと思うよ」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0040330b33">
「……どうして？」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040340b43">
「確かに現在、大和の治安はお世辞にもいい
とは言えない。
　この鎌倉は六波羅の本拠地だけにいくらか
ましだけど、所詮は比較の問題だ」

//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040350b43">
「戦争の傷跡は癒えず、政治は市民を軽視と
いうより無視して進められ、挙句の果てには
――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0341]
　忠保は細い人差し指を、天へ向けた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_冷徹.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040360b43">
「<RUBY text="・・・・・・・・・・・">空から魔王が降ってくる</RUBY>。
　銀色の星が落ちてきて、誰も彼もを殺して
しまう」

{	FwC("cg/fw/fw雄飛_沈むa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0040370b56">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　それを聞いた瞬間、背筋が露骨に震えた。
　恥ずかしいとは思わなかったが。

　忠保が口にしたのは、現在のこの国において、ある
意味で六波羅を凌駕するほどにまで恐れられ忌まれて
いる存在。
　――銀色の星。

　誰もが常に、心のどこかで怯えている。
　<RUBY text="・・">それ</RUBY>が到来する瞬間の訪れを。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw忠保_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040380b43">
「こんな情勢で犯罪が日常的じゃなかったら、
その方が不思議だね。
　でもさ、ちょっと考えてみようよ」

//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040390b43">
「リツが犯罪に巻き込まれたとして、どんな
ものが有り得ると思う？
　……傷害、殺人、拉致誘拐、この辺りじゃ
ないかな」

{	FwC("cg/fw/fw小夏_怯え.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0040400b33">
「……」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040410b43">
「傷害事件なら、二四時間連絡がないという
のはおかしいね。
　自力で家まで帰れないような重傷だったと
しても、病院が家に連絡を取るはずだ」

//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040420b43">
「重傷で、病院にも運ばれなかった場合……
これは次のケースになる」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0040430b56">
「……」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040440b43">
「殺人。でも、これもどうかな？
　人を殺すのは簡単なことだよ。けれどその
後始末は難しい。普通はすぐ発覚してしまう
ものなんだ」

//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040450b43">
「人間の死体はとてつもなく目立つ。
　鎌倉のような都市に死体が発生して、一日
もの間誰にも気付かれないなんてのは、相当
に低い確率なんじゃないかな」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0421]
　ごく淡々と語る。表情はいつもと変わらない。

　そんな忠保が、おれは少しだけ恐ろしかった。

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0422]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040460b43">
「最後の誘拐。これはいいよね？
　誘拐自体が目的ならともかく……営利誘拐
なら、身代金の要求をしなきゃ意味がないん
だから」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0040470b33">
「……そうね」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　背後で頷く気配。
　だいぶ落ち着いたようだった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小夏_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0471]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0040480b33">
「じゃあ、リツは……
　酷いことにはなってないのね？」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040490b43">
「断定はできないけれど。
　とりあえず今は心配しなくてもいいと思う」

{	FwC("cg/fw/fw忠保_笑顔a.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040500b43">
「僕らがこうしてあれこれ言い合っている間
にひょっこり帰ってくるっていうのが、一番
ありそうな話だよ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0472]
　現時点では、と最後に呟いて忠保は口を閉じた。
　しばらく、風の音だけが渡る。

　忠保の説明は筋が通っている。
　この男は普段から素晴らしい閃きを見せるタイプと
いうわけでは決してないのだが、論理的に物事を整理
して思考を進めることにかけては誰よりも長けていた。

　だから説得力があるし、おれも納得できる。

　しかしそれでも、おれは、
　心のざわつきを――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0040510b56">
（いや）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0481]
　忘れよう。
　自分のいい加減な勘と忠保の考察、どちらの信頼性
が高いかなど悩むまでもない。

　試験の成績を比べてみれば一発だ。
　ヤマカン勝負のおれの点数は忠保のおおよそ半分に
匹敵する。

　……だから、忠保が正しい。
　こうしている間にきっと帰ってくる。

　そう信じて、おれは手の中の紙パックを口へ運んだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040520b43">
「それはそれとして雄飛」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0040530b56">
「ああ」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0040540b43">
「芋サイダーって一体誰が考えたんだろうね」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0040550b56">
「さあな」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStR(300,false);
	DeleteStL(300,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0491]
　顔を見合わせて一つため息。

　白い粘液状炭酸飲料はまだ半分以上残っていた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm27", 2000, 0, null);

	CreateColorEX("黒幕１", 15000, "#000000");
	Fade("黒幕１", 1000, 1000, null, true);
	Delete("背景１");

	CreateTextureSP("背景１", 1010, 0, 0, "cg/bg/bg002_空a_02.jpg");
	CreateTextureSP("背景２", 1000, 0, 0, "cg/bg/bg002_空a_03.jpg");

	Wait(1000);

	Fade("黒幕１", 1000, 0, null, true);

	Wait(300);
	FadeDelete("背景１", 2000, true);

	Wait(500);
	Fade("黒幕１", 500, 1000, null, true);
	Delete("背景*");

	CreateTextureSP("背景１", 100, 0, 0, "cg/bg/bg006_雄飛の部屋_03b.jpg");
	FadeDelete("黒幕１", 500, true);

	SoundPlay("@mbgm26",0,1000,true);

//◆夕暮れの鎌倉
//◆夜の鎌倉
//◆暗い自室


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　……なんにせよ、明日だ。

　明日になればリツは帰ってきている。
　きっと……おそらく。けろっとした様子で。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetComic(@0,@0,11);
	SetFwC("cg/fw/fwリツ_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【リツ】
<voice name="リツ" class="その他女声" src="voice/ma01/0040560b11">
『ほほほほほほほっ！　どうしたの雄飛さん、
そのカエルが小便ひっかけられたかのような
ご面相は！　わたしが悪党共に捕まって輪姦
されているとでも思ってたのかしら!?』

//【リツ】
<voice name="リツ" class="その他女声" src="voice/ma01/0040570b11">
『きっとわたしが全裸でゴミ箱に詰められて
〝肉便器在中〟なんて<RUBY text="のし">熨斗</RUBY>付で送られてくる
のをチャック下ろす準備万端で待ち構えてた
のね！　もぅ、なんていやらしいのっ！』

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0511]
　こんな感じだ。
　……うぁ。なんか本当にありそう。おれ超げんなり
しそう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_沈むa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0040580b56">
（けど、もし……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0521]
　明日、学校に行って。
　もし、リツがいなかったら。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_沈むa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0522]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0040590b56">
（いなかったら……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0523]
　その時は――探そう。

　おれたちが探すしかない。
　警察なんぞ、あてになりゃしないんだから。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常a.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0040600b56">
「なんにしても明日だ」

{	FwC("cg/fw/fw小夏_通常a.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0040610b33">
「明日ね」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0040620b56">
「うん。で？」

{	FwC("cg/fw/fw小夏_通常a.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0040630b33">
「で、って？」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0040640b56">
「なぜおれの部屋にいて布団に潜り込もうと
しているのかを問うている『で？』なのだと
いう理解を、今たちどころに求めたい」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0040650b33">
「なんだか怖いの……一緒に寝て、いい？」

{	FwC("cg/fw/fw雄飛_沈むb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0040660b56">
「声だけでそこまで可愛さを演出するおまえ
の才能には脱帽するし、正直憎いくらいだが、
複雑な形で絡み合っていくおれたちの両足が
より強烈に何かを語っているとは思わないか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0531]
（図解）

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆　　　　＼　　＜
//◆　　　　○□卍□○　YEAR!
//◆　　　　／　　　＼

SetBacklog("　　　　＼　　＜", null, null);
SetBacklog("　　　　○□卍□○　YEAH!", null, null);
SetBacklog("　　　　／　　　＼", null, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
　　　　／　　∧
　　　　○□卍□○　YEAH!
　　　　＼　　　／

</PRE>
	SetTextEXC();
	Request("@text0540", NoLog);
	Request("@text0540", PushText);
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小夏_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0040670b33">
「わたし、気付いたの……あなたとこうして
いる時が、いちばん落ち着くんだって」

{	FwC("cg/fw/fw小夏_照れ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0040680b33">
「どうして、かな……？」

{	SetComic(@0,@0,15);
	FwC("cg/fw/fw雄飛_怒りb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0040690b56">
「病気だよ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0551]
　勘弁して欲しかった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ブラックアウト

	ClearWaitAll(2000, 2000);


..//ジャンプ指定
//次ファイル　"ma01_005.nss"








}








