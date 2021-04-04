//<continuation number="1630">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_045.nss_MAIN
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
	#bg105_城門付近内側_02=true;
	#bg094_宮中庭_01=true;
	#ev221_月明かりを浴びて立つ光_b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene md04_045.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md04_044.nss"

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg105_城門付近内側_02.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm04", 0, 1000, true);

	CreateMovie("煙動画", 300, 256, 278, true, true, "dx/mvk100.ngs");
	SetAlias("煙動画","煙動画");
	Zoom("煙動画", 0, 3000, 6000, null, true);
	Request("煙動画", SubRender);
	Move("煙動画", 0, @0, @-400, null, true);

	Delete("上背景");
	DrawDelete("黒幕１", 500, 100, "slide_01_04_1", true);


//◆村正

	StL(1000, @0, @0,"cg/st/st村正_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw茶々丸_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0450010a07">
「てめ……村正ァ!!」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450020a01">
「御堂を奪われた時は、貴方が私に<RUBY text="・・・・">こうして</RUBY>
くれたのよね？　茶々丸。
　あの時の仕返しだと思って頂戴！」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0450030a07">
「なめんな駄作！
　こんな網、すぐに抜けるわ！」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0450040a07">
「今日という今日という今日はぜぇってぇに
ぶっ潰してやるッッ!!」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450050a01">
「いつまでも捕えておけるなんて思ってない
けど。しばらくは掛かるでしょう？
　それで充分」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450060a01">
「私の用はすぐに済むから」

{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0450070a07">
「くっ、くそ……
　お兄さん、逃げて!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　蜘蛛の糸に絡め取られ、身動きの取れない茶々丸が
叫ぶ。
　声と瞳が焦りに満ちていた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0450080a07">
「そいつに近付いちゃだめだ！
　そいつは、お兄さんを」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450090a00">
「ふん。
　……杞憂だ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　言い捨てて、前へ踏み出す。
　村正と――俺の劒冑と対峙した。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆景明と村正
	OnSE("se人体_動作_一歩",1000);

	StR(1000, @0, @0, "cg/st/st景明汚染_通常_制服.png");
	FadeStR(500, true);

	Wait(500);

	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450100a01">
「……御堂……」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450110a00">
「何をしに来た？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450120a01">
「貴方を取り戻すために」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450130a00">
「要らぬ世話だ」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450140a01">
「……」

{	FwC("cg/fw/fw景明汚染_冷笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450150a00">
「消えていろ。
　劒冑なら、仕手の指令に従え」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450160a01">
「……駄目よ」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450170a00">
「何故だ？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450180a01">
「私の仕手は湊斗景明、唯一人。
　<RUBY text="・・・・・・">貴方じゃない</RUBY>」

{	FwC("cg/fw/fw景明汚染_愉悦.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450190a00">
「……ふん。
　俺は湊斗景明ではないと？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450200a01">
「湊斗景明なら――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　村正は手を振って、混沌と死の情景を指し示した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景200", 11000, @0, @0, "cg/ev/ev002_銀星号事件イメージ２.jpg");
	Fade("絵背景200", 500, 1000, null, false);

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450210a01">
「あれを前に、ただ眺めていたりしない。
　防ぎ止めるために戦おうとする」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450220a01">
「例え無駄でも、何かをしようとする！」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450230a00">
「……」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450240a01">
「神様だか何だかを待っている暇があったら、
必ずそうしたはずよ」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450250a00">
「違いない。
　嘗ての湊斗景明ならそうだろう」

{	FadeDelete("絵背景200", 1000, false);
	FwC("cg/fw/fw景明汚染_冷笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450260a00">
「だが、それがどうした？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450270a01">
「……貴方の目的は何なの」

{	FwC("cg/fw/fw景明汚染_愉悦.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450280a00">
「知れた事を訊くな」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450290a01">
「……」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450300a00">
「光を、救う」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450310a01">
「どうやって？」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450320a00">
「聴いていたのだろうが？
　地底に埋まっているらしい神とかいう代物
を引っ張り出して、だ」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450330a01">
「……それ、素面でする話？」

{	FwC("cg/fw/fw景明汚染_冷笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450340a00">
「酔っ払いの戯言だな。確かに」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450350a00">
「俺も大して信じてはいないし、興味もない。
　ただ――もはや人の手の及ばぬ光の容態も、
人知を超えた何物かが実在するなら、その力
で癒せるかもしれない」

//【景明】
<voice name="景明" class="景明" src="voice/md04/0450360a00">
「俺の関心はそこにのみある」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450370a01">
「…………。
　もしも、そのふざけた望みが成就して」

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450380a01">
「湊斗光が<RUBY text="・・・・・・・">神のような化物</RUBY>になったとしたら。
　貴方はどうするつもり？」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450390a00">
「どう……？」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450400a01">
「湊斗光は、あの銀星号なのよ!?
　本当に世界が滅びるかもしれない」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450410a00">
「ああ。
　そうだな」

//【景明】
<voice name="景明" class="景明" src="voice/md04/0450420a00">
「俺は構わん」

{	FwC("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450430a01">
「……っ！」

{	FwC("cg/fw/fw景明汚染_愉悦.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450440a00">
「光さえ生きてくれるならいい」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450450a01">
「……………………」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450460a01">
「<RUBY text="・・・・・">明快過ぎる</RUBY>……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450470a00">
「？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450480a01">
「悩みも、迷いもしない。
　いえ、決断すらしていない」

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450490a01">
「選択が……何もない」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450500a00">
「何を言いたい？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450510a01">
「やっぱり貴方は湊斗景明じゃない。
　そう言いたいのよ」

{	FwC("cg/fw/fw景明汚染_冷笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450520a00">
「愚かなことを。
　<RUBY text="・・・">俺こそ</RUBY>湊斗景明だ」

//【景明】
<voice name="景明" class="景明" src="voice/md04/0450530a00">
「嘘偽りのない、<RUBY text="ほんもの">真物</RUBY>の」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450540a01">
「…………ええ。きっと。
　それもきっと、間違いじゃない」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450550a01">
「けれど」

{	FwC("cg/fw/fw景明汚染_冷笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450560a00">
「認めないというのか？
　好きにすればいい……」

//【景明】
<voice name="景明" class="景明" src="voice/md04/0450570a00">
「俺が俺であるために、お前の承認など必要
ではない」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450580a01">
「御堂……」

{	FwC("cg/fw/fw景明汚染_愉悦.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450590a00">
「さて？
　俺はお前を拒絶したが」

//【景明】
<voice name="景明" class="景明" src="voice/md04/0450600a00">
「これからどうするのだ？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450610a01">
「…………」

{	FwC("cg/fw/fw景明汚染_冷笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450620a00">
「対話で解決しなければ実力行使と、相場は
決まっている」

{	FwC("cg/fw/fw景明汚染_愉悦.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450630a00">
「だが、お前には何もできまい」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450640a01">
「……それは……」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450650a00">
「お前には<RUBY text="ちから">能力</RUBY>がある」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450660a00">
「勢洲村正一門固有の秘術〝精神干渉〟。
　お前もその技を備えている」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450670a00">
「しかし――」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆回想。帝の前
	EfRecoIn1(18000,600);

	CreateTextureSP("思い出", 5000, Center, Middle, "cg/bg/bg094_宮中庭_01.jpg");

	EfRecoIn2(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　
　　　　　　　　　　勅令封印
　　　　　　　　　　絶対禁戒

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り

	EfRecoOut1(300);
	Delete("思い出");

	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw景明汚染_激情.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450680a00">
「お前には使えまい！」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450690a01">
「……」

{	FwC("cg/fw/fw景明汚染_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450700a00">
「あの時――
　拘置所の中でもお前はできなかった」

{	FwC("cg/fw/fw景明汚染_冷笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450710a00">
「俺を支配しようとして、失敗した。
　難儀なものだな、勅命とは！」

{	FwC("cg/fw/fw景明汚染_愉悦.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450720a00">
「帝の託宣はそれほど重いか。
　そうだろうよ……お陰で俺は助かる」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450730a01">
「……」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450740a00">
「去れ。何もできないお前がここにいる意味
はない。
　そこの茶々丸は、脱出すれば本当にお前を
潰すぞ……」

{	FwC("cg/fw/fw景明汚染_冷笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450750a00">
「今のうちに逃げて、何処かで眠りにつけ。
　五百年そうしていたように」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450760a01">
「…………」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450770a01">
「……違う……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450780a00">
「……？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450790a01">
「私が貴方を支配できなかったのは……
　勅命に縛られていたからじゃない」

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450800a01">
「あの時も言ったでしょう。
　もう、遠い昔のことだって」

{	FwC("cg/fw/fw景明汚染_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450810a00">
「何だと……」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450820a01">
「……帝の<RUBY text="ことば">勅</RUBY>が重いのは確か。
　目的のため人の心まで侵そうとした<RUBY text="じじさま">始祖</RUBY>と
<RUBY text="かかさま">二世</RUBY>の驕りを戒める気持ちもある……」

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450830a01">
「でもそれだけなら、振り切れた。
　できなかった理由は――私があの時貴方を
支配しなかったのは、」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450840a01">
「貴方の意思を奪いたくなかったからよ!!」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450850a00">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　俺の、
　
　　　　　　　　　　　……意思？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450860a01">
「だから今、私は貴方に<RUBY text="ちから">能力</RUBY>を使う！」

{	FwC("cg/fw/fw村正_厳しい.png");}
//嶋：修正（救う）【090930】
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450870a01">
「今の貴方に意志はない。
　湊斗光を救おうという望みがあるだけ」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450880a01">
「それは確かに、誰に植え付けられたのでも
ない貴方自身のものなんでしょう。
　でも、<RUBY text="・・・・">それだけ</RUBY>が貴方じゃない！」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450890a01">
「貴方は奪われている」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450900a00">
「――俺は……」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450910a01">
「私はそれを取り戻す」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450920a01">
「私は――貴方の<RUBY text="ツルギ">護り</RUBY>だから！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正アップ
//◆ＣＧ：精神干渉。ホワイトアウト
	SetVolume("@mbgm*", 2000, 0, null);

	CreateWindow("絵演窓上", 1500, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateColorEX("絵色100", 1050, "BLACK");

	CreateTextureEX("絵演窓上/絵演背景", 1100, 100, -144, "cg/bg/bg105_城門付近内側_02.jpg");
	Request("絵演窓上/絵演背景", Smoothing);
	Rotate("絵演窓上/絵演背景", 0, @0, @180, @0, null,true);
	Zoom("絵演窓上/絵演背景", 0, 2000, 2000, null, true);
	SetShade("絵演窓上/絵演背景", HEAVY);

	CreateTextureEX("絵演窓上/絵立絵", 1110, 100, -350, "cg/st/resize/st村正_通常_私服llll.png");
	Move("絵演窓上", 0, @0, @128, null, true);


	Move("絵演窓上/絵演背景", 500, @0, @100, AxlDxl, false);
	Move("絵演窓上/絵立絵", 500, @0, @200, AxlDxl, false);

	Fade("絵色100", 300, 300, null, false);
	Fade("絵演窓上/絵演背景", 500, 1000, null, false);
	Fade("絵演窓上/絵立絵", 500, 1000, null, true);

	Wait(200);

	CreatePlainEX("絵板写", 1120);
	SetBlur("絵板写", true, 3, 500, 100, false);

	CreateColorEXadd("下白", 1300, "WHITE");
	CreateTextureEXadd("干渉", 1200, 0, 0, "cg/ef/ef034_精神汚染.jpg");

	OnSE("se特殊_その他_茶々丸衝撃波",1000);
	Fade("下白", 1000, 1000, null, false);

	Fade("絵板写", 100, 1000, null, true);
	Zoom("絵板写", 1000, 15000, 15000, Axl3, false);
	Zoom("干渉", 1000, 2000, 2000, null, false);
	Fade("干渉", 500, 1000, null, true);
	Wait(500);

	DeleteStA(0,true);
	Delete("干渉");
	DeleteStA(0,true);
	Delete("絵板写");
	Delete("絵色100");
	Delete("煙動画");
	Delete("絵演窓*");

	SetFwC("cg/fw/fw景明汚染_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450930a00">
（――くッ――）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　いかぬ。

　<RUBY text="・・・・・・">俺が崩される</RUBY>。

　光を守るだけの俺でいられなくなる。

　……抗え！

　精神を不動に保てば、この干渉も跳ね除けられる筈！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ＳＥ：精神干渉
	OnSE("se特殊_陰義_発動04", 1000);

	SetFwC("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450940a01">
〝御堂。
　私は……貴方に何も強制しない〟

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450950a00">
（……!?）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm05", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　違う。

　以前のこれは、精神を内側から食い荒らそうとする
破壊であった。
　だが、今は――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450960a01">
〝私は貴方から奪われたものを取り戻すだけ〟

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450970a01">
〝<RUBY text="かかさま">銀星号</RUBY>の力で封じられたものを、全て……
　解き放つ！〟

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＳＥ：精神干渉
	OnSE("se特殊_陰義_発動04", 1000);

	SetFwC("cg/fw/fw景明汚染_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0450980a00">
（お……オァ……）

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0450990a01">
〝思い出して〟

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("思い出してる。", 1500, @0, @0, "cg/ev/ev128_病床の光_g01.jpg");
	Fade("思い出してる。", 1000, 500, null, true);

	Wait(300);

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0181]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451000a01">
〝貴方は湊斗光をとても大切に思っていた。
　今だけじゃない。ずっと昔から〟

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451010a01">
〝それでもかつて貴方は彼女と、
　銀星号と戦っていた〟

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451020a01">
〝……どうして？〟

{	FwC("cg/fw/fw景明汚染_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0451030a00">
（…………）

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451040a01">
〝他にも大切なものがあったから。
　そうじゃないの……？〟

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0451050a00">
（違う……！）

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451060a01">
〝…………〟

{	FwC("cg/fw/fw景明汚染_激情.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0451070a00">
（光は、俺に残された最後の家族だ！
　他に大切なものなど無い！）

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451080a01">
〝……そうね……〟

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451090a01">
〝貴方の家族はもう湊斗光しかいない。
　湊斗統を私が奪ってしまったから〟

{	FwC("cg/fw/fw景明汚染_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0451100a00">
（……）

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451110a01">
〝貴方にとって……
　この世は縁もゆかりもない他人ばかり〟

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451120a01">
〝でも〟

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451130a01">
〝貴方は、その見知らぬ他人が……
　名も知らない何処かの誰かが――〟

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451140a01">
〝自分と同じように、
　理不尽な力で大切な人を奪われてゆくのが〟

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451150a01">
〝どうしても許せなかったのではないの!?〟

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451160a01">
〝だから湊斗光とさえ戦ったのではないの!?〟

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆ピキーン。崩壊音
	OnSE("se特殊_陰義_発動03", 1000);

	DrawEffect("思い出してる。", 36000, "SoftSplit", 30, 30, null);
	FadeDelete("思い出してる。", 1500, true);

	SetFwC("cg/fw/fw景明汚染_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0451170a00">
（ぐ……あ……）

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451180a01">
〝思い出して、御堂。
　私の――私達の罪を〟

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451190a01">
〝私達は幾人も、幾人も殺してきた〟

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451200a01">
〝それは決して赦されないこと。
　弁明の余地なんて少しも無い〟

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451210a01">
〝けれど、<RUBY text="・・">理由</RUBY>はあった……〟

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451220a01">
〝暴力で幾多の命を奪ってきた私達は、他の
人にそれを伝えて慈悲を乞うことはできない
けれど。
　自分自身には云える……〟

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451230a01">
〝私は、善悪相殺という勝手な掟のため。
　貴方は――銀星号を増殖させないため〟

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451240a01">
〝より多くの人を死なせないために。
　貴方は殺した〟

{	FwC("cg/fw/fw景明汚染_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0451250a00">
（…………）

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451260a01">
〝御堂。
　貴方が今、世界の滅びを肯定するなら〟

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451270a01">
〝貴方に殺された人々の死は無意味になる〟

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆回想フラッシュ
//◆新田雄飛、ふきとふな、皇路操

	EfRecoIn1(18000,600);

	CreateTexture("思い出", 5000, Center, Middle, "cg/bg/bg007_若宮大路a_01.jpg");
	StC(5100, @0, @0, "cg/st/st雄飛_通常_制服.png");
	FadeStC(0, false);


	EfRecoIn2(300);
	WaitKey(1000);

	EfRecoIn1(18000,600);

	DeleteStA(0,true);
	Delete("思い出*");
	CreateTexture("思い出", 5000, Center, Middle, "cg/bg/bg023_弥源太の家_01.jpg");
	StL(5100, @0, @0, "cg/st/stふき_通常_私服.png");
	StR(5200, @0, @0, "cg/st/stふな_通常_私服.png");
	FadeStL(0, false);
	FadeStR(0, false);


	EfRecoIn2(300);
	WaitKey(1000);


	EfRecoIn1(18000,600);

	DeleteStA(0,true);
	Delete("思い出*");
	CreateTexture("思い出", 5000, Center, Middle, "cg/bg/bg037_競技場ガレージa_01.jpg");
	StC(5100, @0, @0, "cg/st/st操_通常_私服.png");
	FadeStC(0, false);


	EfRecoIn2(300);
	WaitKey(1000);

	EfRecoOut1(300);
	DeleteStA(0,true);
	Delete("思い出*");


//もとに戻る
	EfRecoOut2(600,true);


	SetFwC("cg/fw/fw村正_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451280a01">
〝彼らは何の理由も必要も無く死んだことに
なる！
　……それでいいの!?〟

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0451290a00">
（――――――――）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆以降、景明台詞は中央、村正台詞は右、茶々丸台詞
//◆は左にボックス出す？

	SetVolume("@mbgm*", 300, 0, null);

	SetFwL("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0451300a07">
《良くはない、かな？》

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0451310a07">
《けどお兄さんにはもっと大事なものがある。
　湊斗光への愛情の方が価値は上なんだ》

{	FwL("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0451320a07">
《そうでしょ？》

</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(0,150);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0451330a00">
（……!?）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正_驚きa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451340a01">
〝茶々丸!?
　どうして……貴方が！〟

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm14",0,1000,true);

	SetFwL("cg/fw/fw茶々丸_冷酷.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0451350a07">
《甘く見んな。
　精神干渉なんて離れ業は無理でも、<RUBY text="こえ">信号</RUBY>を
送るくらいならできる……》

{	FwL("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0451360a07">
《お兄さん、迷わないで。
　湊斗光が大切なら守り通せばいい》

{	FwL("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0451370a07">
《それで世界が犠牲になるから何だってんだ。
　世界のためって理由がついたら、何もかも
諦めなきゃいけないのか？》

{	FwL("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0451380a07">
《<RUBY text="・・・・・・・・・・・・・・・・・・・">世界が他の何かを犠牲にするのは許される</RUBY>、
　けど<RUBY text="・・・・・・・・・・・・・・・・・">他の何かが世界を犠牲にするのは絶対</RUBY>
<RUBY text="・・・・・">許されない</RUBY>ってのか!?》

{	FwL("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0451390a07">
《……ハ。
　寝言は寝て抜かせって言いたいね!!》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0451400a00">
（…………）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw茶々丸_冷酷.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0451410a07">
《こんなもんただの力勝負だ。
　世界が他の色々を犠牲にできるのは、世界
の方が強いからってだけだろ》

{	FwL("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0451420a07">
《なんせ人類の総体だかんね。
　でも、全人類より<RUBY text="・・・">こっち</RUBY>の方が強かったら
こっちの望みが通るって寸法だ》

{	FwL("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0451430a07">
《良い悪いの話じゃない。
　どっちが強いか、ただそれだけ》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0451440a00">
（茶々丸……）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw茶々丸_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0451450a07">
《お兄さん。諦めちゃだめだ！》

{	FwL("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0451460a07">
《御姫には世界と戦ってでも遂げたい望みが
ある。あてにもあるよ。
　お兄さんにもある……》

{	FwL("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0451470a07">
《だから、御姫とあてとお兄さん対全世界で
勝負だ。
　勝ち目なんかどうだっていい》

{	FwL("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0451480a07">
《諦めたくないなら戦うしかないんだ!!》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0451490a00">
（…………）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



	SetFwR("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451500a01">
〝御堂。
　……私は何も強制しない〟

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451510a01">
〝ただ貴方の意思で選んで欲しい〟

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0451520a00">
（村正……）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451530a01">
〝私、稲城忠保に会ったの。
　……覚えている？〟

{	FwR("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451540a01">
〝あの元気な三人組の一人よ……〟

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆回想フラッシュ。稲城忠保（第一編）
	EfRecoIn1(18000,600);

	CreateTexture("思い出", 5000, Center, Middle, "cg/bg/bg007_若宮大路a_01.jpg");
	StC(5100, @0, @0, "cg/st/st忠保_通常_制服.png");
	FadeStC(0, false);

	EfRecoIn2(300);

	SetFwR("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451550a01">
〝彼はとても聡い。
　私が新田雄飛の命を奪ったと悟って、こう
言った〟

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451560a01">
〝彼の死を無意味にしないで欲しいと〟

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	EfRecoOut1(300);
	DeleteStA(0,true);
	Delete("思い出*");


	EfRecoOut2(600,true);


	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0451570a00">
（…………）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451580a01">
〝……私から伝えられることは、これで全て〟

{	FwR("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451590a01">
〝あとは……選んで。
　御堂〟

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw茶々丸_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0451600a07">
《お兄さん》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0451610a00">
（……………………）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451620a01">
〝最後の問いよ……〟

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0451630a01">
〝貴方は湊斗光への愛情のためなら、
　他の全てを無価値にして、捨てられるの？〟

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	SetVolume("@mbgm*", 2000, 0, null);



//◆選択：捨てられる／捨てられない

}

..//ジャンプ指定
//◆捨てられる　"md04_045a.nss"
//◆捨てられない　"md04_045b.nss"



//★選択肢シーン
scene md04_045.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	CreateColorSP("白", 50, "WHITE");
	Delete("下白");
//	OnBG(100, "bg105_城門付近内側_02.jpg");
//	FadeBG(0, true);

//	OnBG(100,"bg006_雄飛の部屋_01.jpg");
//	FadeBG(0,true);

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("捨てられる","捨てられない");
	select
	{
		//カーソル用
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @選択肢１
		{
			ChoiceA02();
//◆捨てられる　"md04_045a.nss"
				$GameName = "md04_045a.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆捨てられない　"md04_045b.nss"
				$GameName = "md04_045b.nss";
		}
	}
}