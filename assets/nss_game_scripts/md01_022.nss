//<continuation number="900">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_022.nss_MAIN
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
	#bg033_署長宅景明私室_01=true;
	#ev211_大仏の上に立つ銀星号_c=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_023.nss";

}

scene md01_022.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_021.nss"

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg033_署長宅景明私室_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);
	SoundPlay("@mbgm16",0,1000,true);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220010a00">
「という次第だ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220020a01">
《……本当に斬るかどうかはともかく。
　その用意はする、っていうこと？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220030a00">
「そうなる」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　我が決定ながら、はっきりせぬ話だ。
　きっぱり断った方が良かったのかもしれない。

　が――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220040a01">
《…………》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220050a00">
「どうかしたか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　蜘蛛の沈黙は、物問いたげだった。
　水を向けてみる。

　躊躇うような間を数秒はさんで、金打声が伝わって
きた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220060a01">
《……ね、御堂。
　そんな話を断れなかったのは》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220070a01">
《この間の……
　私の》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220080a00">
「いや」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220090a01">
《……》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220100a00">
「脱獄の件は無関係だ。
　それよりも……銀星号の予告が」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想・両者対峙のＣＧ
	OnSE("se擬音_回想_フラッシュバック01",1000);
	CreateColorEXadd("絵白転", 10000, "#FFFFFF");
	Fade("絵白転", 600, 1000, null, true);

	CreateTextureSP("絵回想", 8000, Center, InTop, "cg/ev/ev211_大仏の上に立つ銀星号_c.jpg");
	CreateColorEXmul("絵回想幕", 8100, "#847000");
	Fade("絵回想幕", 0, 400, null, true);

	Fade("絵白転", 300, 100, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　
　　　　　――――おれは八幡宮へゆく。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	Fade("絵白転", 400, 1000, null, true);
	Delete("絵回想*");
	FadeDelete("絵白転", 600, true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220110a00">
「お前も聞いていただろう」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220120a01">
《ええ……》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220130a00">
「まさか周囲が幕兵で固められる奉刀参拝を
狙って現れるとは思えないが……
　念のためだ」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220140a00">
「八幡宮に詰めていれば、万一の時に素早く
対応できる。
　宮殿下の依頼を半端に受けたのは、言って
しまえばその<RUBY text="・・・">ついで</RUBY>だ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　厳戒警備の中へ潜り込む時点で危険は極まっている。
　そのうえ暗殺の狙いが加わっても、これ以上危うく
はなりようがない。

　……計算と呼ぶには乱暴な、丼勘定だが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220150a01">
《…………》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220160a00">
「ともかく。
　やるやらぬは置いて、策は立てておく必要
がある」

//【景明】
<voice name="景明" class="景明" src="voice/md01/0220170a00">
「当日、八幡宮にどう潜り込み、元帥にどう
近付くか……。
　知恵を貸せ。俺の思案には余る部分もある」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220180a01">
《……う、うん》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @200,"cg/st/3d村正蜘蛛_正面.png");
	Move("@StR*", 300, @0, @-30, DxlAuto, false);
	FadeStR(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　広げていた紙を、村正の方へ向ける。
　そうしなくては見えないということもあるまいが、
鉄の蜘蛛は天井から降りて近寄ってきた。

　その紙に、親切な表題などはない。
　しかし、それが何であるかは一目で知れた筈だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220190a01">
《八幡宮の地図？》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220200a00">
「ああ。
　宮殿下の直筆だ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220210a01">
《……なんか、おかしくない？》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　そう言うのは、舞殿宮の作画能力に対する疑問では
ないだろう。
　地図は素人図面には違いないが、そこそこの正確さ
で描かれている。

　その地図と一般に公開されている境内図とでは幾つ
か大きく異なる部分があり、村正が指摘しているのは
そちらだった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220220a01">
《これは本殿よね？》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220230a00">
「そうだ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　大階段を登った上にある社。
　<RUBY text="じょうぐう">上宮</RUBY>と呼ばれる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220240a01">
《その奥にある……これは何？》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220250a00">
「隠された裏参道だそうだ。
　ぐるりと回って、<RUBY text="・・">地下</RUBY>へ向かう」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220260a01">
《……その先の広間は？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220270a00">
「<RUBY text="げぐう">下宮</RUBY>だ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220280a01">
《下宮はこっちでしょう？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220290a00">
「それは<RUBY text="わかみや">若宮</RUBY>。
　若宮も下宮と呼ばれるが、本当はこちらを
指すらしい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　上宮の真下の、<RUBY text="・・・・">地下空間</RUBY>を指差して言う。
　そんなものが存在するなどと、俺もつい先刻聞いて
知ったばかりだ。

　限られた祭事の折にしか開かれない施設で、公には
秘されている、との話であった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220300a00">
「奉刀参拝の手順だが……
　参拝そのものは、大将領と十人余りの側近
だけで行われる」

//【景明】
<voice name="景明" class="景明" src="voice/md01/0220310a00">
「普陀楽から八幡宮までは相当数の兵を引き
連れて来るが、彼らは祭祀に関与しない。
　<RUBY text="かち">徒士</RUBY>衆は敷地の外、武者衆は境内や上空で
警備につく」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220320a01">
《……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220330a00">
「大将領と側近は上宮へ向かう。
　そこで太刀を奉納、祭儀を執り行う」

//【景明】
<voice name="景明" class="景明" src="voice/md01/0220340a00">
「ここまで襲撃の隙はない」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220350a01">
《大銀杏の陰に隠れてってわけにはいかない
のね》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220360a00">
「実朝公の時は本人も随員も非武装であった
から、公暁はそれで成功したがな。
　護氏が連れる側近のうち少なくとも半数は
武者だと云う」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　不意を襲っても彼らに防がれるだろう。
　そうこうする間に周辺から警備の者が集まってきて、
取り囲まれ、終わりだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220370a00">
「しかし、この後。
　護氏は供奉の者と別れ、地下へ向かう」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220380a01">
《……》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220390a00">
「秘密の下宮にも太刀を奉納するためだ。
　同行を許されるのは、祭祀を行う神官数名
だけ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220400a01">
《護衛はなし？
　……また随分と、おあつらえ向きね》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220410a00">
「これが古くからの慣例で、変更はできない
らしい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　<RUBY text="たっ">達</RUBY>て望めば変えられなくもないのだろうが、それで
は臆病者の<RUBY text="そし">謗</RUBY>りを受ける。
　身内の信望を失い、四公方の誰かに地位を奪われる
ような事態になりかねない。

　六波羅元帥がそんな運命を良しとするとは考えられ
なかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220420a00">
「暗殺の機会があるとすれば、この下宮参拝
の時だけだ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220430a01">
《でしょうね……》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220440a00">
「問題は」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　ここから先の具体案。

　事前に下宮へ潜んで待つのは難しい。
　参拝儀式に先立って境内全域の検査が行われ、危険
要素はこの段階で徹底的に洗い出される。それが完了
すれば警備網が敷かれ、以後の潜入は不可能となる。

　儀式中の強行突入などは論外だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220450a00">
「……やはり手は一つか」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220460a01">
《神官になりすまして、大将領と一緒に下宮
へ降りる？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220470a00">
「ああ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　そして暗殺を遂げた場合には、すぐさま八幡宮から
脱出。これに手管は要らず、騎航での強行突破で良い。
　外からの敵襲に備えた警備網は内からの奇襲に即応
しかねるだろう。捕まる危険はごく低い筈だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220480a01">
《そうね。
　……問題はなさそうだけど》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220490a01">
《何を悩んでるの？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220500a00">
「お前をどうするかだ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　護氏は武者。
　もしも挑むことになるなら、劒冑がなくては勝負に
ならない。

　のだが……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220510a00">
「持ち込む方法が思いつかん」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220520a01">
《……私だけ、あらかじめ潜伏しておくって
のは駄目なの？》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220530a00">
「事前検査には武者も加わるそうだ。
　如何にお前が隠形に優れていても、武者の
<RUBY text="みみ">信号探査</RUBY>や<RUBY text="はだ">熱源探査</RUBY>まで騙すのは無理だろう」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220540a01">
《…………。
　検査が済んだ後で潜り込もうとしても……
同じことよね？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220550a00">
「警備隊に武者がいない筈はないからな……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220560a01">
《祭具の中に紛れ込むとか》

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220570a00">
「無理だろう。
　鏡や玉と一緒に蜘蛛の彫像があったら普通
気付く。奇天烈過ぎる。文化的に有り得ん」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220580a01">
《……私、貴方の家で五百年ばかり、鏡や玉
と一緒に御神体やってたんですけど》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220590a00">
「…………<?>
{	Wait(300);
	FwC("cg/fw/fw景明_通常b.png");}
そうだったな」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　振り返れば、奇天烈に過ぎる祭祀であった。

　つまるところ、考えはここで渦を巻く。
　俺一人の潜入なら神官を装えば済む話だが、村正を
連れてとなるともう一工夫が要る――しかし良い案が
浮かばない。

　いっそ神官ではなく警備の武者になりすまして……<k>
　
　無駄か。警備兵が任務を放り出して下宮へ向かった
りすれば、その時点で騒ぎになる。

　そもそもなりかわる困難が神官の比ではない。
　六波羅百万騎と称される大軍団の中でも武者はごく
限られた特権階級、『無名の者』などいない。誰かが
消え、代わりに別の者が増えていれば、必ず露見する。

　入念な準備の上で潜入するなら、見込みもあろうが。
　……そんな事をしている時間は無い。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220600a01">
《…………》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220610a00">
「どうも手立ては無さそうだ。
　暗殺は断念するか」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220620a00">
「俺が単身で潜入するだけしよう。
　それならさして難しいことはない」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220630a01">
《危険よ。ばれた時どうするの。
　それに、襲う気もないのに潜り込んだって
意味がないじゃない》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220640a00">
「その通りだが、約束した手前、何もせずで
は宮殿下に対して義理が立たん」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220650a01">
《待って。
　要は、私も神官のふりをすればいいわけよ
ね？》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220660a00">
「無茶を言うな」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　蜘蛛の御神体以上に、蜘蛛の神官は有り得ない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220670a01">
《御堂はあの時、見なかったの？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220680a00">
「何をだ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220690a01">
《…………。
　そうね……》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220700a01">
《母様は、<RUBY text="・・・・・・">一歩進めれば</RUBY>できると言っていた。
　……試してみましょうか》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220710a00">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);

//◆キーン
	CreateSE("SE01","se特殊_雰囲気_共鳴01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 600, null, true);
	WaitKey(100);
	FadeDelete("絵フラ", 600, false);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220720a00">
「村正？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220730a01">
《今は見ていて。
　……あの時の……母様の術式は……》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220740a01">
《おそらく……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆キーン。かきょんかきょん。
//◆なんか骨格を組み替えてるよーな
	CreateSE("SE01","se特殊_雰囲気_共鳴01");
	CreateSE("SE01b","se特殊_その他_村正人間変化01");
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");

	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE01b",0,1000,0,700,null,false);
	Fade("絵フラ", 600, 600, null, true);
	WaitKey(100);
	FadeDelete("絵フラ", 600, false);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220750a00">
「何を――」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220760a01">
《昔の姿に戻ってみる》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220770a00">
「……<RUBY text="・・">昔の</RUBY>!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　それはどういう意味だ。
　まさか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆がっきょん
	CreateSE("SE01","se特殊_鎧_駆動音01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220780a01">
《これで――》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆キーン。ホワイトアウト
	CreateSE("SE01","se特殊_陰義_発動04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 1500, 1000, Axl2, true);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220790a00">
「………………………………………………」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220800a01">
《――で》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220810a01">
《できた》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220820a01">
《できちゃった……》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220830a00">
「……村正……」

//【景明】
<voice name="景明" class="景明" src="voice/md01/0220840a00">
「お――お前なのか……」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220850a01">
《……ええ。御堂。
　私よ》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220860a01">
《<RUBY text="ひと">蝦夷</RUBY>として生きていた頃の私よ！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ホワイトイン
//◆破壊ロボ（人間大。赤く塗装？）と景明
	StR(1100, @0, @0,"cg/st/3d破壊ロボ_立ち_通常.png");
	StL(1000, @0, @0,"cg/st/st景明_通常_私服.png");
	FadeStA(0,true);
	FadeDelete("絵フラ*", 2000, true);

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220870a00">
「…………………………………………………
……………………………………………………
……………………………………………………
……………………………………………そうか」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0220880a00">
「非常に……
　その、個性的……だな？」

{	FwC("cg/fw/fw破壊ロボ_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220890a01">
《…………》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0220900a01">
《あれ……？
　私、ものすごく間違えてる……？》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md01_023.nss"