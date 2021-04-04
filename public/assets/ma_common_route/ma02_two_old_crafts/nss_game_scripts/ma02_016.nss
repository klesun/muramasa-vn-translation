//<continuation number="2440">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_016.nss_MAIN
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
	#bg024_墓地_01=true;
	#bg004_鄙びた村a_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma02_017.nss";

}

scene ma02_016.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_015.nss"

//◆墓地
	PrintBG("上背景", 30000);
	OnBG(100,"bg024_墓地_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);

	SoundPlay("@mbgm33",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0001]
　――<RUBY text="しこん">四金</RUBY>の司を招き願い奉る。

　ここに御霊送り御返し候えば遊行の道にこれを拾い
百幸千福授け給え。五方化徳共々に在れ。

　大幸金神、大恵金神、願わくば北斗八廊に留まり、
<RUBY text="おんとくおめぐみ">御徳御恵</RUBY>、天上天下へ下し給え。

　奇一金心、全一金光、護方金輪、殺方金掌……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆弥源太
	StL(1000, @0, @0,"cg/st/st弥源太_通常_私服.png");
	FadeStL(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0005]
　聞く人間が聞けば首を傾げたかもしれない経文を、
蝦夷の老人は延々と唱える。
　短い文言を繰り返し、繰り返し。

{	CreateSE("SE01","se自然_草木_探る01");
	MusicStart("SE01",0,1000,0,750,null,false);}
　背後からついと影が差した時も、声が途絶えること
はなかった。
　人ならぬものに向けられた言葉の羅列は続く。背後
に立った者も、あえて止めようとはしない。

　数十度、いや、百度も繰り返したろうか。
　ようやく老人の詠唱が止んだ時、背後に立った男は
おもむろに口を開いた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st長坂_通常_制服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw長坂_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160010b45">
「……金神祭詞か？
　浄土宗の寺で唱うようなものでもあるまい
に。和尚は何も言わんのか」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160020b55">
「人を救う神仏に分け隔てはない……とよ。
　それに、うては他の祈りを知らん」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　昨夜、刃を突きつけ合った男と邂逅して、老人の顔
に驚きの色はない。
　今日、この場で会うことと、昨夜の出会いとは意味
が違う。驚きも<RUBY text="おのの">戦慄</RUBY>きもここでは不要。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw弥源太_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160030b55">
「一媛がここへ帰ってきてから、ずっとそう
しておる」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160040b45">
「……ふん。
　考えてみれば、あやつにはふさわしいか。
何しろ金神の花嫁だからな」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　苦いものを含んだ笑み。
　老人も苦笑をこぼした。

　男の一言は過去の扉を開く鍵。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景5", 5000, Center, Middle, "cg/bg/bg004_鄙びた村a_01.jpg");
	SetTone("絵背景5", Sepia);

	Fade("絵背景5", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
　――遠い昔。
　彼らは若い男と、若い蝦夷だった。

　傍目にはいかにもおかしな二人であったろう。
　彼らは出会いの最初から互いを親の仇のように強く
意識し、あらゆる契機をとらえては争い、命に関わる
怪我を負わせ合うことさえ一再ではなく、

　それでいて、互いに遠ざけ合うことがなかった。
　圭角が強過ぎる若い男と付き合う村人は若い蝦夷の
ほかにはもう一人だけであり、蝦夷と好んで関わろう
とする者も若い男のほかには一人だけだった。

　そのもうひとりが<RUBY text="いちひめ">一媛</RUBY>。
　二人と同じ年頃の、美しい娘だった。

　男と蝦夷は思春期を経て、娘の美しさの本当の意味
に気がつき、ほどなく、それは自分のためでなくては
ならないと考えるようになる。

　そして、そう考える者が己だけではなく、もう一人
いることもやがて知った。
　二十歳を数えたある日、二人は長年の争いに決着を
つけるべく、最後の勝負を約して杯を交わした。

　しかし、翌朝。
　決闘の場に現れたのは三人。
　目を<RUBY text="みは">瞠</RUBY>る若者二人に、彼女、一媛は告げたのだった。

『あはは！　そうか、あたしは強い方の嫁になるのか。
　でもおまえ達がどれほど強くても、お山のこんじん
さまには勝てないだろうな？　それじゃあ仕方がない。
　あたしは神様のもとへ嫁に行くことにするよ』

　若い蝦夷は己を恥じ、山へ帰った。
　若い男は諦めず、なおも蝦夷に勝負を、娘に結婚を
求めたが、どちらも応じることはなく。
　娘が村を去ると、やがて男も姿を消した。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵背景5", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0049]
　……それだけの話。
　三十年前のこの村で、そんな出来事があった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw長坂_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160050b45">
「あやつ、結婚はしておったのか」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160060b55">
「しなかったようだ。
　村を出た後は駿府の兄夫婦の家で暮らして
いたらしいが」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160070b45">
「ふん？」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160080b55">
「七年ほど前に、その家が勤めをしくじって
潰れたので、鎌倉にいた甥夫婦の遺児を引き
取りがてらそちらへ移り住んだそうな。
　全部、和尚の受け売りだがな」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160090b45">
「その後は？」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160100b55">
「村に帰ってきたのは三年前だ。
　白い骨になってな。ここへ埋めろと遺言を
残していたらしい」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160110b45">
「……あやつ。
　まさか、あの戯言の通りにしたというのか。
結婚もせずに死に、お山を眺めるここへ己を
埋め……」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160120b55">
「さあな。
　わからぬ」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160130b45">
「……」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160140b55">
「だが、右京。
　元よりなれは、あれを戯言とは考えていな
かったのではないか」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160150b45">
「どういう意味だ」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160160b55">
「なぜ山を掘る」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160170b45">
「……」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160180b55">
「金が欲しいのか」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160190b45">
「あって困るものではないからな」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160200b55">
「なら他にいくらでも殖産の方法はあろう。
　怪しげな伝承一つを頼りに山師の真似など
せずともな」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160210b45">
「……」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160220b55">
「一媛はもうおらぬぞ」


{	FwC("cg/fw/fw長坂_妄執.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160230b45">
「おるさ」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160240b55">
「右京……」


{	FwC("cg/fw/fw長坂_妄執.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160250b45">
「あやつはお山の祟り神の嫁になると言った。
　なら、神を殺せば一媛は俺の手に入る理屈」


{	FwC("cg/fw/fw弥源太_沈思.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160260b55">
「…………」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160270b45">
「神の鉱脈があるならそれを奪う。
　何も無いなら唾を吐いて嗤う。
　どちらでもいい。そうなれば、俺の勝ちだ」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160280b55">
「……やはり、そういう存念か。
　昔と何も変わらん。愚かな男だ、なれは」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160290b45">
「変わったさ。昔は己の愚劣ぶりを認められ
なかったからな。いらぬ格好をつけていた。
　今は違う」

//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160300b45">
「どのような形でもいい。
　俺はあやつを手に入れる。手に入ればそれ
でいい。骸であろうと、骸すらなかろうと」


{	FwC("cg/fw/fw長坂_妄執.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160310b45">
「何をしてでもな……。
　神にも、貴様にも、邪魔はさせん」


{	FwC("cg/fw/fw弥源太_沈思.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160320b55">
「……愚かな」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160330b45">
「愚かよ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se自然_風_野原02");
	MusicStart("SE01",0,1000,0,500,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　風がそよぐ。
　緩やかな風。二人の隙間をやわらかく抜けてゆく、
それはしかし、大河のように両岸を隔ててもいる。

　もはや対岸に言葉は届かず、ただ視線を交わすのみ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw長坂_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160340b45">
「さて……」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160350b55">
「行くのか」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160360b45">
「お陰をもって、今の俺はのんびりと散歩を
楽しめる身分ではないのでな。
　まあ、ここ一両日で片付くことだが」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160370b55">
「その前に、<RUBY text="あか">深紅</RUBY>い武者がなれを殺しにゆく
だろう」


{	FwC("cg/fw/fw長坂_嘲笑.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160380b45">
「返り討つまでよ」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160390b55">
「……右京」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160400b45">
「なんだ」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160410b55">
「<RUBY text="・・・・">祟り神は</RUBY>、<RUBY text="・・・・・・・・・・・・・">もう降りているのかもしれぬ</RUBY>」


{	FwC("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160420b45">
「…………何？」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160430b55">
「もし、そうであれば……
　なれの所業とて虚しいばかりよ」

//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160440b55">
「隠れ潜むのはよせ、右京。さっさとうての
元へ参れ。相手をしてやる……。
　災厄が避けられぬものならせめて、悔いの
種は減らしておきたいもの」


{	FwC("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160450b45">
「……世迷言を。
　何を言うかと思えば」


{	FwC("cg/fw/fw長坂_嘲笑.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160460b45">
「それは挑発のつもりか、弥源太。
　成程、貴様らとしてはあの忌々しい小娘の
いる間にけりをつけたかろうがな。こちらは
逆。奴を追い払った後で、料理してくれるわ」


{	FwC("cg/fw/fw弥源太_沈思.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160470b55">
「……」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160480b45">
「待っておれ。
　その首は、必ず――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ざっ。
//◆一条
	DeleteStA(300,true);

	SetVolume("SE*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);
	SetVolume("@mbgm*", 100, 0, null);

	CreateSE("SE01","se自然_草木_探る01");
	MusicStart("SE01",0,1000,0,1250,null,false);

	StR(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw一条_通常a.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0160490a02">
「…………ん？」


{	FwC("cg/fw/fw弥源太_驚き.png");}
//◆凝然
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160500b55">
「――――」


{	FwC("cg/fw/fw長坂_驚き.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160510b45">
「……な、…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　その、現れた人影を見て。
　二人の老人は愕然と、我を忘れた。

　少女だった。
　学生服という、いささか場違いな姿。
　それが奇妙に似合ってもいたが。

　少女は訝しげな眼差しで二人を見回している。
　彼らの顔に思い当たるものがないのは明らかだった。

　だが、二人の側は違う。
　その口が同時に、声なく、同じ一語を形作った。

　……一媛。

　それきり立ち尽くす老人らに、少女の方では焦れた
らしい。唇を曲げると、胡散臭げな声を発した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm17",0,1000,true);
	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0160520a02">
「……誰だよ、あんたら」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160530b55">
「あ、いや……」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160540b45">
「うむ……」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0160550a02">
「……？　なんだか知らねぇけど。
　そこ、うちの墓なんだよ。邪魔になるから
どいてくれ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　言うや、少女は邪険な仕草で二人を押しのけ、墓の
前に陣取った。
　その視線がふと、一ヶ所に止まる。

　真新しい白菊。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0160560a02">
「これ、あんたらか？」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160570b55">
「……ああ……」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0160580a02">
「なんだ……命日の墓参りに来てくれてたの
かよ。
　それならそうと言ってくれ」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0160590a02">
「ありがとう。
　毎年誰が花を生けてくれてるのか、気には
なってたんだ」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160600b45">
「……」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160610b55">
「……失礼、その。
　お嬢は、一媛の……？」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0160620a02">
「一媛？
　……ああ、婆さんの名前か」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0160630a02">
「そういやそんな立派な名前してたっけな。
　口より先に蹴りが出る因業婆のくせに」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160640b45">
「……」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0160650a02">
「あたしは一条。勘違いされる前に言っとく
けど苗字じゃなくて名前だ。
　名付け主はこの墓の下で眠ってる奴な」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160660b55">
「では……綾弥一条……殿か」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0160670a02">
「あたしはこの婆さんの……なんて言うんだ？
　孫じゃなくて、はとこじゃなくて……あー、
つまり、婆さんから見ると甥の子供になるん
だけど。あたしから見ると大叔母」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160680b45">
「<RUBY text="てっそん">姪孫</RUBY>……ではないか」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160690b55">
「又姪とも言うな……」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0160700a02">
「じゃあそれ。
　一媛ばばあの又姪の、一条だ」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160710b45">
「……」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160720b55">
「……そうか。
　そうか…………」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0160730a02">
「あんたらは？
　婆さん、生まれ故郷のことは一度も話して
くれなかったから。この村のことはさっぱり
わからねぇ」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0160740a02">
「ここの坊さんに聞こうかとも思ったけど、
どうも坊主ってのはな……。
　宿を借りてる身分で何だが、あのはげ頭を
見てると背筋が痒くなってくるんだよなぁ」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160750b55">
「……ははっ。
　そういえば昔……一媛も似たようなことを
言うておった」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0160760a02">
「そうなのか？」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160770b55">
「あの頭を見ると、引っぱたくか、撫でるか
したくてうずうずしてくるとか」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0160780a02">
「……変な血が遺伝してるな。うちの一族は」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160790b55">
「ふっふ……」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0160800a02">
「爺さんたち……で、いいんだよな？　蝦夷
のあんたも。婆さんの知り合いなら若いわけ
ねぇし。
　あんたら、婆さんの友達だったのか？」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160810b55">
「あ……うむ。
　そうだな。遊び仲間だった」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0160820a02">
「よくあんな奴と付き合えたな。
　聞いたことはねぇけど、あの婆さんきっと
昔から、とんでもない性格してたろ」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160830b55">
「……どうかな。
　うてらもあまり人のことは言えなんだしな。
のう、右京」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160840b45">
「あ、あぁ……そうだな」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0160850a02">
「はっ。じゃあ、変人三人組か」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160860b55">
「そんなものよ。
　三人で、色々なことをした……と」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160870b55">
「名乗りが遅れたな。すまぬ。
　うては弥源太。こやつは……右京と申す。
どちらも今はただの老いぼれよ」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0160880a02">
「……ふぅん？
　けど、そっちの……右京爺さん」


{	FwC("cg/fw/fw一条_警戒.png");}
//◆警戒
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0160890a02">
「その格好……
　六波羅の軍装だよな？」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160900b45">
「……」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160910b55">
「いや、それは……」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160920b55">
（右京、適当に誤魔化せ。
　口裏は合わせてやる）

{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160930b45">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆がっ。顎をつかむ
	OnSE("se人体_動作_抱く01",1000);
	DeleteStR(300,true);

	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0138]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0160940a02">
「ッ!?　なっ……」


{	FwC("cg/fw/fw弥源太_叫ぶ.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0160950b55">
「右京！」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160960b45">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　男の手が少女の顎をつかむ。
　そのまま、乱暴に引き寄せた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0160970a02">
「なに……しやがる！　てめェ!!」


{	FwC("cg/fw/fw長坂_妄執.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160980b45">
「……似ている。
　いや、そんなものではない……な。
　まさしく瓜二つ……」


{	FwC("cg/fw/fw長坂_嘲笑.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0160990b45">
「なんと、俺の前に戻ってきたかよ、一媛！」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161000a02">
「あぁ!?」


{	FwC("cg/fw/fw弥源太_叫ぶ.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161010b55">
「右京！　その手を放せ！」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0161020b45">
「娘……いや、一条。
　一条と申したな」


{	FwC("cg/fw/fw長坂_妄執.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0161030b45">
「一条。
　俺と一緒に来い」


{	FwC("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161040a02">
「……ボケてんのかてめぇ。
　脳に蛆湧いたんだったらとっとと養老院へ
行きやがれ!!」


{	FwC("cg/fw/fw長坂_嘲笑.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0161050b45">
「くふっ。
　中身も全く同じだな。易々とは意のままに
ならぬ」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161060a02">
「誰がてめぇのような山犬野郎に……」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0161070b45">
「しかし俺とて、裸一貫の昔とは違う。
　一条、俺のもとへ来れば、楽な生活くらい
はさせてやるぞ。この時勢ではほんの一握り
の者にしか許されぬ暮らしをな」


{	FwC("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161080a02">
「知るか！　放せよ！」


{	FwC("cg/fw/fw長坂_嘲笑.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0161090b45">
「口先ではない。
　俺は六波羅大尉長坂右京」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0161100b45">
「察しの通り、幕軍の将校だ。
　俺の身内となればそこらの屑虫どものよう
に御上の顔色を窺ってこそこそ生きる必要は
なくなる……」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161110a02">
「……」


{	FwC("cg/fw/fw長坂_怒り.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0161120b45">
「欲しいものがあればくれてやる。男遊びが
したければそれも好きにしろ。
　ただ、俺のものでありさえすれば――」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161130a02">
「死ねよ」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――


//◆掌打＋蹴り。重い音。
//◆避ける長坂

	CreateTextureSP("絵ＥＦ100", 5000, Center, Middle, "cg/ef/ef001_汎用移動.jpg");
	CreateTextureSP("絵ＥＦ90", 4990, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");

	Zoom("絵ＥＦ90", 0, 2000, 2000, null, true);
	SetBlur("絵ＥＦ90", true, 3, 700, 100, false);

	OnSE("se戦闘_攻撃_振る02",1000);
	SetBlur("絵ＥＦ100", true, 2, 700, 150, false);
	Zoom("絵ＥＦ100", 300, 3000, 3000, Dxl2, false);
	Wait(100);
	Move("絵ＥＦ100", 400, -1024, 576, Axl2, false);
	Wait(450);
	OnSE("se戦闘_攻撃_野太刀振る02",1000);
	FadeDelete("絵ＥＦ100", 200, false);
	Zoom("絵ＥＦ90", 200, 1000, 1000, Dxl3, true);

	OnSE("se人体_動作_跳躍01",1000);
	CreateColorSP("絵フラ", 5000, "#FFFFFF");
	Delete("絵ＥＦ*");

	DrawDelete("絵フラ", 200, 1000, "slide_05_00_1", true);

	StR(1000, @-30, @0,"cg/st/st長坂_通常_制服.png");
	Move("@StR*", 300, @30, @0, Dxl2, false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw長坂_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0161140b45">
「……ふ！
　顎狙いの掌底を囮に、股間へ膝か」


{	FwC("cg/fw/fw長坂_驚き.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0161150b45">
「容赦のかけらもありゃあせんな。
　睾丸が割れるどころか恥骨まで砕けて死ぬ
ぞ、今のは」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0162]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161160a02">
「殺そうとしたんだよ。
　聞いてなかったのか、ぼけ老人」


{	FwC("cg/fw/fw長坂_嘲笑.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0161170b45">
「ならば惜しかったな。
　今の技……一媛から習ったものであろう？
若い頃にも一度食らいかけた覚えがあるわ」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161180a02">
「……ち。
　仕損じるなよ、婆さん」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0161190b45">
「一条。
　俺のものになる気はないのか？」


{	FwC("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161200a02">
「たりめぇだ阿呆！
　あたしが今この世で一番嫌いなのは六波羅
なんだよ！　そのてめぇがなんだ？　<RUBY text="・・">モノ</RUBY>に
なれ？　聞くだけでも死にたくならぁ!!」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0161210b45">
「そうか。
　……ならば仕方あるまいて」


{	FwC("cg/fw/fw弥源太_驚き.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161220b55">
「……！」


{	FwC("cg/fw/fw長坂_嘲笑.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0161230b45">
「<RUBY text="・・・・・・・・・・・・・・・・">どんな形でも構わぬから手に入れる</RUBY>。
　先刻、そう誓ったばかりでな！」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161240a02">
「ぁん？」


{	FwC("cg/fw/fw長坂_嘲笑.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0161250b45">
「こういう事よ！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――


//◆長坂、瞬息抜刀
//◆斬撃

	Wait(1);
	PrintGO("上背景", 5000);
	CreateColorSP("絵暗", 100, "#000000");
	Wait(1);
	Delete("上背景");

	OnSE("se戦闘_攻撃_振る01",1000);
	SL_leftup(@200, @200,2000);
	SL_leftupfade2(10);

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161260a02">
「――ッ!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆どん。横から突き飛ばす弥源太
//◆ざしゅ。

	PrintGO("上背景", 5000);

	CreateTextureSP("絵ＥＦ100", 2000, Center, Middle, "cg/ef/ef004_汎用血雫.jpg");

	OnBG(100,"bg024_墓地_01.jpg");
	FadeBG(0,true);

	StR(1000, @0, @0,"cg/st/st長坂_通常_制服.png");
	StL(1000, @0, @0,"cg/st/st弥源太_通常_私服.png");
	FadeStA(0,true);

	OnSE("se人体_血_たれる01",1000);
	DrawDelete("上背景", 1000, 1000, "slide_02_00_1", true);

	WaitPlay("OnSE*", null);
	Wait(500);

	FadeDelete("絵ＥＦ*", 1000, true);
	Wait(300);

	OnSE("se人体_動作_後ずさり01",1000);
	DeleteStL(300,true);

	SetFwC("cg/fw/fw弥源太_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161270b55">
「ぐっ……！」


{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161280a02">
「爺さん！」


{	FwC("cg/fw/fw弥源太_叫ぶ.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161290b55">
「右京……血迷うたか！」


{	FwC("cg/fw/fw長坂_嘲笑.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0161300b45">
「……くっ。くっくっ。
　わかっておるよ、弥源太」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0161310b45">
「ここは一媛の墓前……。
　血で汚すつもりはない。今のは戯れだ」


{	FwC("cg/fw/fw弥源太_警戒.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161320b55">
「……」


{	FwC("cg/fw/fw長坂_妄執.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0161330b45">
「だが、言うたことは戯れではないぞ。
　一条、お前は俺が貰い受ける」


{	FwC("cg/fw/fw長坂_嘲笑.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0161340b45">
「殺してでもな」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161350a02">
「野郎……」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0161360b45">
「あの時はこの決断ができなかった。
　己の程度に<RUBY text="ゆめ">幻想</RUBY>を持っておった」


//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0161370b45">
「今は違う。
　馬鹿には愚行が間尺相応。賢く生きて無念
を残すより、愚劣を通して笑ってくれよう」


{	FwC("cg/fw/fw弥源太_叫ぶ.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161380b55">
「右京！」


{	FwC("cg/fw/fw長坂_嘲笑.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0161390b45">
「お山の神を殺した後で。
　もう一度会おうぞ、一条」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　誰何の声が響く。
　本堂の方角からだった。穏やかならぬ物音を、和尚
が聞き咎めたのだろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw長坂_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0161400b45">
「……ふふ。
　どうやら何が何でも、祟り神めはこの手で
暴いてやらねばならなくなったわ」


{	FwC("cg/fw/fw弥源太_警戒.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161410b55">
「……」


{	FwC("cg/fw/fw長坂_妄執.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0161420b45">
「神を殺し……花嫁を奪う。
　邪魔はさせぬ。誰にも、邪魔はさせぬぞ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆だっ。走り出す音。長坂去る
	SetVolume("SE*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);

	CreateSE("SE01","se人体_足音_走る01_L");
	MusicStart("SE01",0,1000,0,1250,null,true);
	DeleteStR(300,true);
	SetVolume("SE*", 1500, 0, null);

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161430a02">
「…………ち。
　何なんだ、あの野郎は……」


{	FwC("cg/fw/fw弥源太_警戒.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161440b55">
「…………右京…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 2500, 0, null);
	SetVolume("OnSE*", 2500, 0, null);
	SetVolume("@mbgm*", 2500, 0, null);

	PrintGO("上背景", 15000);
	CreateColorSP("絵暗転", 10000, "#000000");

	OnBG(100,"bg024_墓地_01.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 2000, true);

	WaitPlay("@mbgm*", null);
	Wait(1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0212]
　弥源太が左肘に負った傷は深手ではなかった。
　和尚が用意してくれた焼酎を傷口に注ぎかけ、包帯
を巻き締める――それで治療は済んだ。

　数日、経過に気をつけていれば癒えるだろう。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st弥源太_通常_私服.png");
	StR(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStA(0,true);

	FadeDelete("絵暗転", 1000, true);

	SoundPlay("@mbgm32",0,1000,true);

	SetFwC("cg/fw/fw一条_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161450a02">
「これで良し」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161460b55">
「すまんな」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161470a02">
「謝られる筋合いじゃねぇ。
　助けられたみたいだしな」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161480b55">
「あやつがどういう挙に出るか、予測しよう
と思えばできた。
　うてが間抜けておらねば、嬢を危険な目に
遭わせずとも済んだのだが……」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161490a02">
「売られた喧嘩を買ったのはあたしだ。
　あんたにゃ関係ない……てのに割り込んで
怪我までしたのはお節介だけどさ」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161500a02">
「格好は悪くねぇよ。あの<RUBY text="ヘタレ">腰抜け</RUBY>に比べりゃ」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161510b55">
「へたれ？」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161520a02">
「いいいい、気にしないでくれ。ああいう時
に何もできない玉無し野郎をひとり知ってる
ってだけの話だ。考えたくもねぇや」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161530b55">
「…………。
　あやつ……右京のことだが……」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161540a02">
「…………」


{	FwC("cg/fw/fw弥源太_沈思.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161550b55">
「こうなっては話さぬわけにはいかんが……
　どこから話したものかな」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161560a02">
「察しのついてることはあるよ。
　あの野郎、婆さんに惚れてたんだな」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161570b55">
「……やはり、わかるか」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161580a02">
「なんだか妙な御託を並べてたが、要はそう
いうことなんだろ。
　しかし、わっかんねぇな……あんな婆さん
のどこが良かったんだか」


{	FwC("cg/fw/fw弥源太_沈思.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161590b55">
「……」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161600a02">
「あんたもか？」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161610b55">
「……うむ。
　まあ……その、な」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161620a02">
「いい歳の爺さんが照れんなよ。
　……ち。そんなにいい女だったのか、一媛
婆さんは」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161630b55">
「……うてらにとってはな。
　あの頃はほかに何も見えなんだ。一媛さえ
おれば、ほかは何もいらぬと思うておったな
……」


{	FwC("cg/fw/fw一条_笑顔b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161640a02">
「……へっ。聞いてる方まで照れるぜ。
　それで、どうなったんだよ？　三角関係の
修羅場だったんだろ。婆さんと、あんたと、
あの野郎で」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161650b55">
「袖にされたよ。二人ともな。
　そうして一媛は村を出た……その先のこと
は嬢の方が詳しかろう」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161660a02">
「あんたらは？」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161670b55">
「右京も村を去った。
　うては山に引き篭もり……数年して、藤倉
の蝦夷村から嫁を貰ったよ。それからすぐに
子が生まれ、孫が生まれて」


{	FwC("cg/fw/fw弥源太_沈思.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161680b55">
「……気付けば三十年。
　倅夫婦は蝦夷らしく早々に死んでしもうた
がな、孫二人は元気な盛りよ」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161690a02">
「ふぅん……。
　あんたはもう、婆さんのことは吹っ切った
のか？」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161700b55">
「吹っ切った……さて、どうだろうな。
　一媛を忘れたことは片時もない」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161710a02">
「……」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161720b55">
「忘れたことはないが……。
　いつの頃からか、一媛のことは苦い思い出
ではなくなったな」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161730a02">
「酷いふられ方したんだろ？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw弥源太_微笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161740b55">
「ふっふ！　確かに。お前は最低の馬鹿たれ
だ、出直して来い、と面と向かって言われた
ようなものだからなぁ……。
　酷いといえばこれ程酷い失恋もなかろうさ」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161750a02">
「うへ。やっぱりばばあ、昔からそうか」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161760b55">
「だが、な……今はただ、感謝しておるよ。
　一媛のお陰で、うては紙一枚分だけ、馬鹿
ではなくなった。<RUBY text="・・・・・・">まわりを見る</RUBY>ということを
教えてもろうた」

//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161770b55">
「何か一つしか見ない者は誰も幸福にできん。
　うてが人並みに家族を持てたのは、一媛の
お陰よ……」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161780a02">
「そんな大したもんじゃねぇと思うけどな。
　あの婆さんのこった。単にむかついたから
罵っただけで、別になにも考えてなかったん
じゃねえの？」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161790b55">
「ははは……
　そうかもしれんなぁ……」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161800a02">
「……ち。
　せっかく婆さんの古い知り合いと出会えた
んだ。悪口話で盛り上がれるかと思ったのに、
調子狂うじゃねぇか」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161810b55">
「嬢は、一媛が嫌いか」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161820a02">
「嫌いに決まってんだろ！
　あのばばあはな、てめーは日がな一日ごろ
ごろしてやがるだけのくせに、あれやれこれ
やれとあたしにはやかましくて、しかも」


{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161830a02">
「やり方にいちいち文句つけるんだが、その
文句が日によって違うんだ！　廊下は水拭き
にしろっていうからそうしたら、次の日には
これじゃ滑るだろ、馬鹿、空拭きにしろとか」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161840b55">
「……」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161850a02">
「打ち込みの強さを鍛えるには木刀で庭木を
打てっていうからそうしてみれば、その日の
夕方にはこの阿呆なんでそんな近所迷惑な事
してやがるとか抜かして<RUBY text="エルボー">肘打ち</RUBY>入れてきたり」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161860b55">
「……くくっ」


{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161870a02">
「笑い話じゃねぇーーっ!!
　たまんなかったんだぞこっちは！」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161880b55">
「いや、すまぬすまぬ。
　何とも一媛らしい話だと思ってな」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161890a02">
「個性で済む話かよ。
　あれが虐めでやってたんならこっちもやり
ようがあるのに、ばばあ、単にその時その時
の思いつきで言ってやがったってだけだから」


{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161900a02">
「言い返しても、そんなの忘れたで済まされ
ちまう！　どうしろってんだよ！　殴り合う
しかねえじゃんか。一度も勝てなかったけど。
あの熊、一体何で出来てやがったんだか」


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161910a02">
「それであの婆さん、くたばる時はぽっくり
逝っちまったから、とうとう最後まで仕返し
できなかった。ったく、畜生……寝たきりの
ばばあをいびってやるつもりだったのにさ」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161920b55">
「……そうか、そうか。
　どうやら一媛は、心楽しい晩年を過ごせた
ようだな……」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161930a02">
「<RUBY text="・・・・">ばばあは</RUBY>、なっ。
　あたしはいい迷惑だ」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161940b55">
「ふふ。
　そのわりに……嬢は一媛の言うことをよく
聞いていたようだ」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161950a02">
「別に……」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161960b55">
「そうかな。
　そう聞こえたが……」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161970a02">
「…………。
　あたしがなんで婆さんのとこで暮らしてた
か、知ってるか」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0161980b55">
「……うむ。
　綾弥の本家……嬢の家に、災難があったと
いうようなことは耳にしておる」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0161990a02">
「一言で言っちまえば、あたしの父様の責任
で、綾弥の家は潰れたんだ。
　……父様の葬式は酷かった。親戚で泣いて
いる奴は一人もいなかった。みんな文句だけ」


{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0162000a02">
「どいつもこいつも、父様の遺体に唾を吐く
ために集まったみたいだった……。
　でも、あたしは何も言えなかった。父様に
約束させられてたから。言い訳するなって」


{	FwC("cg/fw/fw弥源太_沈思.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0162010b55">
「……」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0162020a02">
「その時に……あのばばあが来たんだ。
　うだうだ抜かしていた連中を全員外に蹴り
出して、婆さんはあたしに言った」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0162030a02">
「おまえの親父は間違ってない。
　融通の利かない馬鹿野郎だけど、間違って
はいないって」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0162040b55">
「……そうかい。
　一媛がそう言うたか」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0162050a02">
「うん。
　そうして葬式が片付いたら……いつの間に
か、あたしは婆さんと暮らすことになってた。
　それだけ。それだけなんだけどな」


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0162060a02">
「あの婆さんはいい加減で、言うことはその
場その場でころころ変わりやがったけど……
　それでも多分、<RUBY text="・・・・・・・・・・・・">間違ったことは一度も言わ</RUBY>
<RUBY text="・・・・">なかった</RUBY>んじゃないかって……そう思う」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0162070b55">
「うむ……。
　うむ…………」


{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0162080a02">
「……ちぇ。ばばあの悪口のはずが、なんで
こうなってんだよ。
　爺さん、あんた変な聞き上手だな」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0162090b55">
「はっはっはっ。
　惚れた女子のことだ……少々贔屓が入って
しまうのは、勘弁してくれ」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0162100a02">
「惚気やがって。
　…………なあ」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0162110b55">
「うん？」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0162120a02">
「あたしは婆さんの若い頃に似てるのか」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0162130b55">
「……そうだな。
　並んだら見分けがつかぬかもしれぬ程には」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0162140a02">
「それで、あの六波羅野郎はあたしが欲しい
のなんのと寝ぼけたこと言いやがったのか」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0162150b55">
「……」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0162160a02">
「あんたと違って、あっちの山犬は婆さんに
ふられたことにまだこだわってるんだろ？
　三十年経っても」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0162170b55">
「……そういうことになるかな。
　あやつはつい先頃、代官として村へ帰って
きた。そのわけがまさか、昔の決着をつける
ためだとは、うてもすぐには気付かなんだが」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0162180a02">
「執念深い野郎だな」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0162190b55">
「<RUBY text="ひたむき">純粋</RUBY>なのよ。
　昔から……良くも、悪くも」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0162200a02">
「野郎は何をしようとしたんだ？　今更……」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0162210b55">
「……くだらぬことを。
　だが、奴の企みは挫ける。ＧＨＱから来た
変わり者の巡察官に失脚させられてしもうた
からな。今は逃げ回っておるが、すぐ捕まる」


//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0162220b55">
「だから、嬢。
　それまでは余り外を出歩かぬが良い。いや、
本当は今すぐに鎌倉へ帰った方が安全なのだ
が……」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0162230a02">
「けっ。
　あんな糞野郎のために、どうしてあたしが
予定を変えなきゃならねぇ」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0162240b55">
「……そう言うような気はしたよ。
　嬢の予定は？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0162250a02">
「婆さんの命日を挟んで二泊三日。毎年そう
してる。
　昨日来て、今日が命日で、明日帰りだ」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0162260b55">
「そうか……明日には帰るのだな」


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0162270a02">
「ああ。
　もっともあの山犬、あたしが鎌倉に帰った
くらいで諦めるようなツラじゃなかったから
な。追ってくるかもしれねぇか」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0162280b55">
「……」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0162290a02">
「へっ、それならそれで構うかよ。暇潰しに
相手してやる。
　いや待ってるのも面倒か。いっそ、こっち
から行って――」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0162300b55">
「……無用よ、嬢。
　奴との決着はうてがつける」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0162310a02">
「爺さん？」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0162320b55">
「あやつ……長坂右京とは因縁がある。
　うてがこの手で決着をつけねばならんのよ。
いかに嬢といえど、これは譲れんな」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0162330a02">
「……年寄りが気張るといいことねえぞ」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0162340b55">
「なに、奴も年寄りさ。
　案ずるには及ばぬよ」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0162350a02">
「……ち。
　そういう顔されると何も言えなくなる。
　ばばあと同じだ……」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0162360b55">
「…………。
　嬢。うてらのことなど、気にしてくれるな」

//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0162370b55">
「うてらには過去だけよ。昔にしがみついて、
今更どうにもならぬことにああだ、こうだと
言うておる暇人どもさ。うても右京も。
　嬢は若い。老輩などに構わず、<RUBY text="さき">未来</RUBY>へゆけ」

//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0162380b55">
「だが……
　嬢に会えて良かったよ。本当に良かった。
　これも一媛の導きかな。とすれば、感謝の
種が一つ増えてしまったわ」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0162390b55">
「ふふふ。
　これではあの世で会っても、また頭の上が
らぬことになりそうだ……」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0162400a02">
「弥源太爺さん……」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0162410b55">
「……若人の時間をいつまでも貰っていては
悪い。そろそろゆくよ。
　もう会うこともないかもしれぬが……達者
でな、嬢。一媛と同様、嬢のことも忘れんよ」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0162420a02">
「……あ、……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆弥源太、去る
	CreateSE("SE01","se人体_足音_歩く01_L");
	MusicStart("SE01",0,1000,0,700,null,true);

	DeleteStL(300,true);

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0162430a02">
「…………」

{	SetVolume("SE*", 2000, 0, null);
	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0162440a02">
「……ち。言うだけ言って……。
　これだから爺婆は苦手だよ……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma02_017.nss"