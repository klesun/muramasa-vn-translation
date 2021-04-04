//<continuation number="580">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_011.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/md05_011.nss","TurboBlur3",true);
	

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
	#ev244_時間移動図解_a=true;
	#ev244_時間移動図解_b=true;
	#ev244_時間移動図解_c=true;
	#ev244_時間移動図解_d=true;
	#ev244_時間移動図解_e=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md05_012.nss";

}

scene md05_011.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md05_010vsb.nss"

//◆「すげー勢いで時間移動」のイメージ画像


	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");
	CreateColorSPadd("白", 2500, "WHITE");

	CreateTextureEX("瞬間移動覆", 1010, @0, @0, "cg/ef/ef039_時間移動.jpg");
	Fade("瞬間移動覆", 0, 300, null, true);
	MoveFFP1("@瞬間移動覆",3000);

	CreateTextureSP("瞬間移動", 1000, @0, @0, "cg/ef/ef039_時間移動.jpg");

	CreateColorEXadd("絵色100", 2000, "WHITE");
	Fade("絵色100", 0, 1000, null, true);

	$Warpトランジ = @絵色100;
	$Warpトランジ速度 = 3000;
	$Warpトランジなめらかさ = 500;



	CreateTextureEXadd("絵背景効果線", 1500, Center, Middle, "cg/ef/resize/ef039_時間移動l.jpg");
	SetVertex("絵背景効果線", 800, 420);
	$効果ナット名 = @絵背景効果線;


	CreateProcess("プロセス２", 150, 0, 0, "TurboBlur");
	SetAlias("プロセス２","プロセス２");
	CreateProcess("プロセス３", 150, 0, 0, "TurboBlur3");
	SetAlias("プロセス３","プロセス３");


	Request("プロセス２", Start);
	Request("プロセス３", Start);

	Delete("上背景");
	FadeDelete("黒",1500,true);
	FadeDelete("白",2000,true);

	Wait(500);

	SoundPlay("@mbgm02", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　閃光、閃光、閃光。

　数限りない閃光。
　現れて去り、現れてはまた去る。

　輝く雨を浴びているかのようだ。

　……いや。

　あるいは、逆なのか？

　俺が光の群れの中を駆けているのか？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0110010a00">
「……村正。可能な範囲でいい。
　現在状況を解説してくれ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110020a01">
《……えぇと……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　俺の当然かつ無体な要望を受け、村正は教授の代理
で急遽ロンドン王立科学協会の面々を迎えて論文発表
する事が決まった一学生風に逡巡した後、やがてぽつ
ぽつと語り出した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110030a01">
《今、私達は時間的に移動させられている。
　……それは間違いないと思う》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110040a01">
《ただ、私達の意識に混乱が生じていないと
いうことは、私達の<RUBY text="・・・・">内的時間</RUBY>は正常に保たれ
ているということ。
　内的時間と外的時間が乖離してるのね……》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110050a01">
《この宇宙における私と貴方の時間的座標が、
通常の規則から逸脱した変移をしている。
　……って表現で正しいのかしら……》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0110060a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　この時点で俺の理解度は七割五分であった。

　……強引に解釈を進め、単純化を行う。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0110070a00">
「要するに。
　俺達は<RUBY text="・・・・・・・・・・・・">四次元的に吹っ飛ばされた</RUBY>という事
なのか？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110080a01">
《……おおむね、そうなんだと思う》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0110090a00">
「途轍もない過去あるいは未来へ放逐される
と……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　絶望的に呟く。
　……それは困る。大いに。本来の世界、本来の時間
にやり残した事がある。

　帰らなくてはならない。
　だが、どうやって……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110100a01">
《いえ。
　それはどうか、わからない》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0110110a00">
「何故だ？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110120a01">
《私の認識力が状況を正しく理解できている
なら、だけど……
　私達は時間軸上を直線的に移動していない》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110130a01">
《過去と未来を行ったり来たりしてる。
　移動の幅もそんなに大きくはなさそう……
当てずっぽうだけど、多分せいぜい数百年の
範囲内なんじゃないかしら》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0110140a00">
「…………。
　つまり俺達は今、数百年前から数百年後の
富士山上空に、時間的座標を激しく変動させ
ながら存在している？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　噛み砕いてみる。
　当初思った程には酷くない状況、か？

　とりあえず、パンゲア大陸の上やら未知の知的生物
が未知の文明を繁栄させている世界やらへ現れる羽目
にはならなくて済むようだ。
　……だからといって喜べはしないが。

　数百年の範囲に留まる時間移動でも、俺達にとって
致命的に不都合である事には変わりない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110150a01">
《富士山上空、以外はその通りよ。
　……真実がじゃなくて、あくまで私の推測
がそうだってだけだけど》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0110160a00">
「……？　どういう意味だ。
　俺達が富士山上空にいるとは限らないと？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　時間的に移動しているだけなのに？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110170a01">
《時間移動が空間移動を伴わないという保障
はないし、仮に私達の空間座標が固定された
ままだとしても、やっぱり相対的には移動が
生じている可能性がある》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110180a01">
《世界の方が動いたら同じだもの》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0110190a00">
「……成程」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　確かにそうだ。
　地球は自転し、また太陽の周囲を公転もしている。

　幸い、体調に異変がないことから考えて宇宙空間に
放り出されたりはしていないようだが……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0110200a00">
「村正？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110210a01">
《なに？》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0110220a00">
「……<RUBY text="・・">減速</RUBY>していないか？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　周囲を見ながら云う。
　光の流れ去る速度が、次第に緩まりつつあるように
感じられた。

　そのせいだろう、俺の頭脳にも、見えているものの
意味が理解されてくる。
　……光の群れの疾走としか認識できなかったこれは、
その実、流れゆく無数の<RUBY text="・・">光景</RUBY>なのだ。

　俺は確かに時空間を移動している。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110230a01">
《そうね。
　金神が私達に与えた時間的運動力が、少し
ずつ消耗して零に近付いてるのよ》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110240a01">
《もうすぐ止まる……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0110250a00">
「俺達にできるのは祈る事だけか？
　<RUBY text="あれ">金神</RUBY>以外の神に」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　なるたけ俺達本来の時空間に近いところで止まって
くれと。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110260a01">
《…………。
　これも当てにならない推測なんだけど》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110270a01">
《たぶん私達の状況は、それほどまでに悲観
したものでもなさそう》

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0110280a00">
「……そうか？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　絶望ないし絶望の半歩手前に思えるが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110290a01">
《整理してみましょうか……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆時間図
//◆中央に「本来の位置」の点

	CreateTextureEX("時間図01", 3000, @0, @0, "cg/ev/ev244_時間移動図解_a.jpg");
	Fade("時間図01", 1000, 1000, null, true);


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110300a01">
《私達は本来の時間的位置から、金神の力で
弾き飛ばされた》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆矢印で移動を示す

	CreateTextureEX("時間図02", 3100, @0, @0, "cg/ev/ev244_時間移動図解_b.jpg");
	Fade("時間図02", 1000, 1000, null, true);
	Delete("時間図01");
	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110310a01">
《私達に働く外部からの力がそれしか無いの
なら、延々といつまでも同じ速度で時間軸上
を移動し続けるだけよ》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆矢印を端まで伸ばす

	CreateTextureEX("時間図03", 3200, @0, @0, "cg/ev/ev244_時間移動図解_c.jpg");
	Fade("時間図03", 1000, 1000, null, true);
	Delete("時間図02");
	
	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110320a01">
《……でも事実はそうなっていない》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110330a01">
《私達を運ぶ力は徐々に弱まってる。
　何か別の力も働いていて、金神からの時間
移動力を減殺していると考えられる》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110340a01">
《それが》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆「本来の位置」へ向かう矢印

	CreateTextureEX("時間図04", 3300, @0, @0, "cg/ev/ev244_時間移動図解_d.jpg");
	Fade("時間図04", 1000, 1000, null, true);
	Delete("時間図03");

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110350a01">
《私達を本来の、正しい時間的位置へ、引き
戻そうとする力。
　言うなれば時間の<RUBY text="・・・">修正力</RUBY>――》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110360a01">
《……なんだと、思う》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0110370a00">
「…………。
　すると、最終的には？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110380a01">
《修正力は私達を正しい位置へ戻すまで働き
続ける、はずだから……
　金神から新たに力が加えられてきたりしな
ければ、》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110390a01">
《私達は本来の時間へ戻れる――と思う》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　……つまり。
　俺達は地上から大砲で空に向かって射出された砲弾
だが、砲弾には地球の引力が働くため――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆「本来の位置」から撃ち出された村正が引力に引かれ、
//◆ぐるぐる回ったすえ元に戻るの図

	CreateTextureEX("時間図05", 3400, @0, @0, "cg/ev/ev244_時間移動図解_e.jpg");
	Fade("時間図05", 1000, 1000, null, true);
	Delete("時間図04");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　結局は地上へ帰ってくる。
　
　……そういう事になるのか？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0110400a00">
「なら確かに……悲観する必要はないな」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110410a01">
《ええ。
　この推測が正しいならね》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("時間図*",1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　正しくあってもらわねば困る。
　自力での時間移動など為し得ない俺達は、他に希望
の託し処を持たない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110420a01">
《ただ……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0110430a00">
「ん？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110440a01">
《今はあっさり時空間を移動できているけど。
　このまま移動力が弱まっていくと……最後
にはいくつかの時空間に<RUBY text="・・・">捕まる</RUBY>と思う》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0110450a00">
「捕まる？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110460a01">
《一時的に別の時空間の住人になるわけ》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0110470a00">
「……それは、なかなか<RUBY text="おおごと">大事</RUBY>の気がする」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　いわゆる時間旅行か？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110480a01">
《何もなければ、すぐに修正力がその世界の
拘束力を上回って、私達はまた本来の時空間
へ向かって移動できるはずよ》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110490a01">
《<RUBY text="・・・・・・">何もなければ</RUBY>ね》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0110500a00">
「……何事かがあったら、その限りではない
と？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110510a01">
《ええ。
　仮にも住人になるわけだから。何かの拍子
でその時空に固定されて、脱出できなくなる
危険性はある》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0110520a00">
「それを避けるには？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110530a01">
《何もしないのが一番よ。
　その世界の事象に一切関わらないでおいて、
修正力が働くまで待つの》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0110540a00">
「わかった」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110550a01">
《でも、これも絶対ではないから注意して。
　何もしないで待っていたせいで、その世界
の事象に絡んでしまうってことも有り得るし》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　――例えばそう、捕まった時空間というのが銃撃戦
の真っ只中であったとする。
　そこで突っ立っていれば当然、銃弾に撃ち抜かれて、
世界との関わりが生じる。

　村正の示唆はそういう意味であろう。
　
　……いやその場合は、既に世界との関わりがどうの
こうのという事態ではないようにも思えるが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0110560a00">
「基本的には何もせず。
　但し臨機応変の気構えは捨てず」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0110570a00">
「それで良いか？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110580a01">
《多分ね！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　一蓮托生の劒冑は、何とも頼もしい言葉で保障して
くれた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

//◆ばーん。壁を破るような。
//◆ホワイト

//おがみ：↑次スクリプトで演出


//	WaitKey(1500);

}

..//ジャンプ指定
//次ファイル　"md05_012.nss"


function TurboBlur3()
{

	while(1){

	DrawTransition($Warpトランジ, $Warpトランジ速度, 0, 1000, $Warpトランジなめらかさ, Axl2, "cg/data/circle_01_00_0.png", true);
	DrawTransition($Warpトランジ, $Warpトランジ速度, 1000, 0, $Warpトランジなめらかさ, Dxl2, "cg/data/circle_01_00_1.png", true);

	}

}