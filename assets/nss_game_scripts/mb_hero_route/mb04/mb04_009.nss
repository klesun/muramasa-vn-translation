//<continuation number="390">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_009.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/mb04_009.nss","KodouAction",true);
	Conquest("nss/mb04_009.nss","KodouSET",true);
	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼イベントＣＧ
	#bg051_湊斗家居間_01=true;
	#bg043_江ノ島山林_02=true;
	#bg050_湊斗家門前_01=true;
	#bg052_湊斗家道場_01=true;
	#bg002_空b_03=true;
	#bg047_景明故郷町a_01=true;
	#bg049_景明故郷住宅地a_01=true;
	#bg053_湊斗家の庭_01=true;
	#bg054_湊斗家祭殿a_01a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb04_010vs.nss";

}

scene mb04_009.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb04_008vs.nss"

//◆フェードアウト
//◆過去光景
//◆横書きボックス
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg051_湊斗家居間_01.jpg");//ダミー注意
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　
　　　　　母がいて妹がいた。家庭があった。
　<PRE>“Now you are come, all my grief is removed”</PRE>

　
　　　　　　　信ずるに足る絆があった。
　<PRE>“Let me forget that so long you have rov'd”</PRE>

　
　　　　　　　　　愛情が存在した。
　<PRE>“Let me believe that you love as you lov'd”</PRE>

　
　　　　　　　　　　遠い遠い昔。
　　　　　　<PRE>“Long long ago, long ago”</PRE>

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆現実
//あきゅん「演出：ど、どこで戦ってるんだコイツら」
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg043_江ノ島山林_02.jpg");//ダミー注意
	FadeBG(0,true);
//	FadeDelete("上背景", 2000, true);
	FadeDelete("上背景", 1500, true);
	SoundPlay("@mbgm01",2000,1000,true);
//	FadeDelete("絵暗転", 2000, true);
	Wait(500);
	FadeDelete("絵暗転", 2000, true);

	CreateTextureEX("絵演", 3000, -850, -85, "cg/ev/resize/ev101_プロローグ_a.jpg");
	Move("絵演", 6000, @-60, @0, Dxl1, false);
	Fade("絵演", 2000, 750, Dxl1, false);

	Wait(1000);

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【光】
<voice name="光" class="光" src="voice/mb04/0090010a14">
《足りないな……。
　それでは足りないぞ、景明》


//【光】
<voice name="光" class="光" src="voice/mb04/0090020a14">
《この光に届かぬ。
　……<RUBY text="み">充</RUBY>たされぬ》


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb04/0090030a14">
《贅剣を捨てよ。
　武を研ぎ上げよ》


//【光】
<voice name="光" class="光" src="voice/mb04/0090040a14">
《余計なものはいらぬ。
　一心に光を求めるがいい》


//【光】
<voice name="光" class="光" src="voice/mb04/0090050a14">
《でなくば、届かぬぞ……。
　おまえの指はいつまでも、おれに触れては
くれぬ！》


//【光】
<voice name="光" class="光" src="voice/mb04/0090060a14">
《<RUBY text="・・・・・・・・・・・・・・・・・">ここにあるおれの命を認めてはくれぬ</RUBY>！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
//◆過去光景
//◆横書きボックス
	WaitAction("絵演*", null);
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg050_湊斗家門前_01.jpg");//ダミー注意
	FadeBG(0,true);
//	FadeDelete("上背景", 2000, true);
//	FadeDelete("絵暗転", 2000, true);
	FadeDelete("上背景", 500, true);
	FadeDelete("絵暗転", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　
　　　　　　　　あの光景を覚えている。
　　“Do you remember the path where we met?”

　
　　　　　　　　　　遠い遠い昔。
　　　　　<PRE>“Long long ago, long long ago”</PRE>

　
　　　何でもない、けれど決して忘れない光景。
　<PRE>“Ah, yes, you told me you ne'er would forget”</PRE>

　
　　　　　　　　　　遠い遠い昔。
　　　　　　<PRE>“Long long ago, long ago”</PRE>

　
　　　ただ家族がいたというだけの、あの光景。
　“Then to all others my smile you preferr'd”

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆現実
//あきゅん「演出：ど、どこで戦ってるんだコイツら」
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg043_江ノ島山林_02.jpg");//ダミー注意
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);
	FadeDelete("絵暗転", 500, true);

	CreateTextureEX("絵演", 3000, -445, -530, "cg/ev/resize/ev101_プロローグ_cl.jpg");
	Move("絵演", 6000, @60, @0, Dxl1, false);
	Fade("絵演", 2000, 750, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　……何故なのか。
　どうして、俺は打ち倒されたのか。

　わからない。

　俺は銀星号の呼吸を掴んでいた。
　<RUBY text="イ">意</RUBY>を……把握していた、と思う。

　しかし、何の兆候も感じ取れなかった。
　銀星号の攻撃は全く唐突に訪れ、俺を吹き飛ばした。

　何故だ。

　全てが誤解だったからか。
　果てしない距離を隔てて敵騎の呼吸を察知するなど、
やはり妄想でしかなかったのか。

　それとも……
　
　そうでないとするなら。

　銀星号の意を掴むという事に、<RUBY text="・・・・・・・">意味が無かった</RUBY>から
なのか。
　
　あの敵は。あの妹は。あの魔王は。

　既にその境地へ至っているのか。
　意を用いず剣を<RUBY text="と">執</RUBY>る、武人の果てなる心境へ。

　――<RUBY text="ムソウケン">無想剣</RUBY>へ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0090070a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　わからない……。

　わかるのは唯一つだけ。
　
　俺のこの手は何も掴めない。その虚しさだけだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
//◆過去光景
//◆横書きボックス
	WaitAction("絵演*", null);
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg052_湊斗家道場_01.jpg");//ダミー注意
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);
	FadeDelete("絵暗転", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　
　　　　　　　　全てが美しく在った。
<PRE>“Love, when you spoke, gave a charm to each word”</PRE>

　
　　　　　　　　愛がそうさせていた。
“Still my heart treasures the praises I heard”

　
　　　　　　　　　　遠い遠い昔。
　　　　　　<PRE>“Long long ago, long ago”</PRE>

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――


//◆現実
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg002_空b_03.jpg");//ダミー注意
	StR(1000, @0, @0,"cg/st/3d銀星号_立ち_通常.png");
	FadeStR(0,true);
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);
	FadeDelete("絵暗転", 500, true);

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【光】
<voice name="光" class="光" src="voice/mb04/0090080a14">
「……………………」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb04/0090090a14">
《そうか。
　<RUBY text="・・">それ</RUBY>か》


//【光】
<voice name="光" class="光" src="voice/mb04/0090100a14">
《おまえの手足はどうしても……
　そんなものに縛られてしまうのだな》


//【光】
<voice name="光" class="光" src="voice/mb04/0090110a14">
《あのような……虚構に》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
//◆過去光景
//◆横書きボックス
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg047_景明故郷町a_01.jpg");//ダミー注意
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);
	FadeDelete("絵暗転", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　
　　　　　　　尽きることのない優しさ。
　　　　　“Though by your kindness
　　　　　　　my fond hopes were rais'd”

　
　　　　　　　　　　遠い遠い昔。
　　　　　　<PRE>“Long long ago, long ago”</PRE>

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆現実
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg043_江ノ島山林_02.jpg");//ダミー注意
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);
	FadeDelete("絵暗転", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　……意識が浮き沈みを繰り返している。
　夢と……<RUBY text="うつつ">現</RUBY>か。

　どちらがどちらか……
　曖昧になってゆく。

　混濁してゆく。
　失われてゆく。

　それが敗北と死の来訪なのだと知っている。

　だが……だから、何なのか。
　俺はこの戦いに全てを<RUBY text="と">賭</RUBY>した。そのつもりだった。

　全ての力。
　全ての誓い。
　全ての覚悟を。

　それでも及ばなかった。
　完璧に。完膚なく。

　ならば……
　どう仕様があるというのか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0090120a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　この温かな<RUBY text="さいご">瞑夢</RUBY>へ沈むほかに…………

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
//◆過去光景
//◆横書きボックス
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg049_景明故郷住宅地a_01.jpg");//ダミー注意
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);
	FadeDelete("絵暗転", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　
　　　　　　語り尽くせぬ幸福があった。
“You by more eloquent lips have been prais'd”

　
　　　　　　　　　　遠い遠い昔。
　　　　　　<PRE>“Long long ago, long ago”</PRE>

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆現実
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg043_江ノ島山林_02.jpg");//ダミー注意
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);
	FadeDelete("絵暗転", 500, true);

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【光】
<voice name="光" class="光" src="voice/mb04/0090130a14">
《虚構だよ》


//【光】
<voice name="光" class="光" src="voice/mb04/0090140a14">
《まやかし、だ》


//【光】
<voice name="光" class="光" src="voice/mb04/0090150a14">
《何故なら<RUBY text="・・・・・">欠けている</RUBY>……
　光の求めるものが無い》


//【光】
<voice name="光" class="光" src="voice/mb04/0090160a14">
《そんなものは捨ててしまえ。景明。
　いや……もう、捨てたはずだろう？》


//【光】
<voice name="光" class="光" src="voice/mb04/0090170a14">
《<RUBY text="・・">その</RUBY>手で。
　<RUBY text="・・">この</RUBY>手で》


//【光】
<voice name="光" class="光" src="voice/mb04/0090180a14">
《おれとおまえの二人で、壊したはずだ……》


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb04/0090190a14">
《おまえが殺し。
　おれが殺させた》


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb04/0090200a14">
《母を!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
//◆過去光景
//◆横書きボックス
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg053_湊斗家の庭_01.jpg");//ダミー注意
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);
	FadeDelete("絵暗転", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　
　この幸福は、どれだけの歳月を経ても失われない。
“But by long absence your truth has been tried”

　
　　　　決して変わらない、そう信じていた。
　“Still to your accents I listen with pride”

　
　そう信じられるほど――俺は幸福だったのだろう。
　“Still to your accents I listen with pride”

　
　　　　　　　　　　遠い遠い昔。
　　　　　　<PRE>“Long long ago, long ago”</PRE>

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆現実
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg043_江ノ島山林_02.jpg");//ダミー注意
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);
	FadeDelete("絵暗転", 500, true);

	CreatePlainSP("絵板写", 5000);
	CreateWindow("絵演窓右", 4000, 512, Middle, 512, 576, false);
	SetAlias("絵演窓右","絵演窓右");
	CreateTextureSP("絵演窓右/絵演右", 4100, -835, -120, "cg/ev/resize/ev101_プロローグ_a.jpg");
	Move("絵演窓右/絵演右", 6000, @0, @60, Dxl1, false);

	CreateTextureSP("絵演左", 3000, -385, -500, "cg/ev/resize/ev101_プロローグ_cl.jpg");
	Move("絵演左", 6000, @0, @-60, Dxl1, false);

	FadeDelete("絵板写", 2000, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　―――――――――――――――――――――――
――――――――――――――――――――――――
――――――――――――――――――――――――
―――――――――――――――――――――――今。

　夢と現の狭間で、聞き逃せぬ何かを聞いた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0090210a00">
《……何……》


//【景明】
<voice name="景明" class="景明" src="voice/mb04/0090220a00">
《何……だと？》


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb04/0090230a14">
《おれが、<RUBY text="・・・・">殺させた</RUBY>のだ。
　おまえに。あの母を》


//【光】
<voice name="光" class="光" src="voice/mb04/0090240a14">
《二年前……
　村正を解き放つ前から、おれは既に知って
いた》


//【光】
<voice name="光" class="光" src="voice/mb04/0090250a14">
《この劒冑が何を求めるのか。
　この刃で殺せばどうなるのか》


//【光】
<voice name="光" class="光" src="voice/mb04/0090260a14">
《敵の命に味方の命で贖いを。
　一つの悪に一つの善で贖いを》


//【光】
<voice name="光" class="光" src="voice/mb04/0090270a14">
《憎しみには愛の贖いを。
　――求めるのだと、知っていたのだ》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0090280a00">
《――――》


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb04/0090290a14">
《だから、おれは山賊の大将をあえて殺さな
かった》


//【光】
<voice name="光" class="光" src="voice/mb04/0090300a14">
《生かして、湊斗の屋敷へ追い立てた》


//【光】
<voice name="光" class="光" src="voice/mb04/0090310a14">
《おまえに村正の力を使わせ、殺させる為に。
　そして――》


//【光】
<voice name="光" class="光" src="voice/mb04/0090320a14">
《村正の呪戒に縛られたおまえが、母上をも
斬り捨てるように》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆鼓動ＳＥ＋レッドアウトレッドイン
	KodouAction();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　
　　　　　　　　　　　お前が、

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【光】
<voice name="光" class="光" src="voice/mb04/0090330a14">
《二人で殺したのだ。おれとおまえで殺した
のだ。あの<RUBY text="・・">怨敵</RUBY>を。
　あの空疎な<RUBY text="いえ">世界</RUBY>を》


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb04/0090340a14">
《あれはもう何処にも無い。虚構に相応しく
消えて失せた。遠い過去の幻だ。
　そんなものを振り返るな……》


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb04/0090350a14">
《忘れてしまえ。
　おまえはこの光だけを真っ直ぐに見据えて
いれば良い》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆鼓動ＳＥ＋レッドアウトレッドイン
	WaitAction("プロセス鼓動", null);
	KodouAction();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　
　　　　　　　　　　　お前が、

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【光】
<voice name="光" class="光" src="voice/mb04/0090360a14">
《おまえが愛した母はいない。もう何処にも。
　……それでも諦められぬというなら、光が
おまえの母になってやる……》


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb04/0090370a14">
《だからおまえは<RUBY text="・・">ここ</RUBY>へ来い。
　おまえがゆくべきはここしかない》


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb04/0090380a14">
《この光の<RUBY text="もと">許</RUBY>だけだ》


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb04/0090390a14">
《おまえを受け入れられる者は光だけなのだ！
　景明!!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//◆鼓動ＳＥ＋レッドアウトレッドイン
	WaitAction("プロセス鼓動", null);
	KodouAction();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　
　　　　　　　　　お前が――――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
//◆過去光景
//◆横書きボックス
	WaitAction("プロセス鼓動", null);
	ClearWaitAll(2000, 0);
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg054_湊斗家祭殿a_01a.jpg");//ダミー注意
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　
　　　　　　　けれど、それは既に遠い。
　　　　　　<PRE>“Long long ago, long ago”</PRE>

　
　　　　　　　　　　遠い遠い昔。
　　　　　　<PRE>“Long long ago, long ago”</PRE>

　
　　　　　　もう手の届かない、遠い遠い昔。
　　　　　<PRE>“Long long ago, long long ago”</PRE>

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――


	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	FadeDelete("上背景", 1000, true);

}

..//ジャンプ指定
//次ファイル　"mb04_010vs.nss"



.//プロセス用======================================================

..//心臓の鼓動
function KodouAction()
{
	CreateProcess("プロセス鼓動", 5000, 0, 0, "KodouSET");
	SetAlias("プロセス鼓動","プロセス鼓動");
	Request("プロセス鼓動", Start);
	Request("プロセス鼓動", Disused);
}

function KodouSET()
{
	CreateSound("SEP01", SE, "sound/se/se人体_体_心臓の音02");
	SetVolume("SEP01", 0, 0, null);
	SetAlias("SEP01", "SEP01");
	Request("SEP01", "Play");
	SetVolume("SEP01", 0, 1000, null);
	Request("SEP01", Disused);
	$Ｆ時間=RemainTime("SEP01");

	CreateColor("絵Ｐ色赤", 5000, -1024, Middle, 1024, 576, #CC0000);
	SetAlias("絵Ｐ色赤", "絵Ｐ色赤");
	Fade("絵Ｐ色赤", 0, 0, null, true);

	Move("絵Ｐ色赤", 0, @1024, @0, null, true);
	Fade("絵Ｐ色赤", 100, 1000, null, true);
	Wait(30);
	Fade("絵Ｐ色赤", $Ｆ時間, 0, null, true);
	Request("絵Ｐ色赤", Disused);
	WaitPlay("SEP*", null);

}