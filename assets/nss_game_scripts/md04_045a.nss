//<continuation number="1520">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_045a.nss_MAIN
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
	#bg063_普陀楽城内廊下_02=true;
	#bg071_普陀楽城内張り出し_02=true;
	#ev952_雷蝶装甲_a=true;
	#ev952_雷蝶装甲_b=true;
	#ev955_虎徹景明装甲_a=true;
	#ev955_虎徹景明装甲_b=true;

	//▼ルートフラグ、選択肢、次のGameName
	#av_虎徹=true;

	$PreGameName = $GameName;

	$GameName = "md04_045aa.nss";

	//★ＥＤロール超速対応
	PreSetRoll(4);
	TheEND(4);
}

scene md04_045a.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



	PrintBG("上背景", 30000);
	CreateColorSP("白", 2000, "WHITE");
	Delete("上背景");

..//ジャンプ指定
//前ファイル　"md04_045.nss"


//●捨てられる

	SetFwC("cg/fw/fw景明汚染_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0010a00">
（捨てられる）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正_驚きa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045a0020a01">
〝――――〟

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm19", 0, 1000, true);

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0030a00">
（容易いことだ。
　得ることの――守ることの至難に比べれば、
捨てるなど！）

//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0040a00">
（それで光を守れるなら、俺はそうする）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正_苦悶.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045a0050a01">
〝御堂……！〟

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0060a00">
（光の他にも大切なものが何かあるだろうと、
そう言ったな。
　その通りかもしれん）

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0070a00">
（だが俺は捨てる）

{	FwC("cg/fw/fw景明汚染_激情.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0080a00">
（お前もだ……村正!!
　俺の内から、消えて去れ!!）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆精神領域破壊。脱出
//◆元の場所。村正
	OnSE("se特殊_陰義_発動04", 1000);

	OnBG(100, "bg105_城門付近内側_02.jpg");
	FadeBG(0, true);

	StL(1000, @0, @0,"cg/st/st村正_通常_私服.png");
	FadeStL(0,true);

	DrawDelete("白", 1000, 200, "circle_01_00_0", true);

	SetFwC("cg/fw/fw村正_凹む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045a0090a01">
「……あぁ……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆がく。膝を突く

	OnSE("se人体_衝撃_転倒03",1000);
	DeleteStL(300,false);

	SetFwC("cg/fw/fw景明汚染_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0100a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　<RUBY text="えにし">結縁</RUBY>は断たれた。

　膝を折り、項垂れる<RUBY text="ひとがた">人形</RUBY>の劒冑はもはや俺とは何の
関わりもない。
　
　一瞥だけして、背を向ける。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0110a07">
「お兄さん……」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0120a00">
「いつまでそんな糸で遊んでいる？」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0130a07">
「や、これがなかなかしつこくて。
　あてもハエ取り紙に捕まったハエごっこを
いつまでもやってたいわけじゃないんですが」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0140a00">
「……じっとしていろ」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0150a07">
「あい」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆太刀一閃
	OnSE("se戦闘_攻撃_刀振る01", 1000);

	CreateTextureEX("絵背景200", 2000, Center, 0, "cg/ef/ef008_汎用上下軌道.jpg");
	Fade("絵背景200", 300, 1000, null, true);
	Fade("絵背景200", 500, 0, null, true);
	OnSE("se戦闘_攻撃_鉄切断",1000);

	Wait(500);

	Delete("絵背景200");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　腰の太刀を抜き、一振りくれる。
　既に効力を弱めていた鋼糸は、あっけなく散った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明汚染_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0160a00">
「これで良かろう。
　さっさと立て」

{	StL(1000, @0, @0, "cg/st/st茶々丸_通常_制服a.png");
	FadeStL(300, false);
	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0170a07">
「お兄さーん！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆だき。アップ

	DeleteStL(150,true);

	OnSE("se人体_動作_抱きつき01",1000);

	StL(1000, @0, @1100, "cg/st/resize/st茶々丸_通常_制服a_l.png");
	Request("@StL*", Smoothing);
	Zoom("@StL*", 0, 1000, 1000, null, true);
	FadeStL(150, true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0180a00">
「……何故、くっつく」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0190a07">
「愛情表現。
　お兄さんなら絶対、あてを選んでくれると
思ってました！」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0200a07">
「フッ……何を隠そうあては信じていた。
　普段の冷血な態度は最後のどんでん返しの
ための伏線に違いないと。ツンツンした後は
デレデレするに違いないって！」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0210a00">
「…………。
　何だかわからんが」

{	FwC("cg/fw/fw景明汚染_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0220a00">
「別にお前を選んだわけではないぞ」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0230a07">
「同じことなの。
　あてはそれでいいんだ……」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0240a07">
「お兄さーん♪」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0250a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　しばらく離れそうになかった。
　煩わしいが、引き剥がすのも面倒なので仕方ない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明汚染_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0260a00">
「行くぞ」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0270a07">
「うん」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0280a00">
「……ああ、そうだ」

//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0290a00">
「あれはどうする」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　動かない劒冑を親指で差す。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明汚染_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0300a00">
「潰すとか言っていたが」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0310a07">
「そうだね。
　……どうでもいいや」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0320a07">
「今度こそ本当に、あいつにはもう何もでき
ないしね」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045a0330a01">
「…………」

{	FwC("cg/fw/fw景明汚染_愉悦.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0340a00">
「……だろうな」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0350a07">
「ほっとこほっとこ。
　どっちかっていえば生かしといてやる方が
いい気味だ」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0360a07">
「行こうよ、お兄さん」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0370a00">
「ああ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆移動
	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	SetVolume("@mbgm*", 1000, 0, null);

	DeleteStA(0,true);

	OnBG(101, "bg063_普陀楽城内廊下_02.jpg");
	FadeBG(0, true);

	Wait(2000);

	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

	SoundPlay("@mbgm12", 0, 1000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　城内の混沌は深まっている。
　無数の生命を消費しながら。

　上空でも、既に白銀色以外の星は探すのに苦労する
ほどしか見当たらなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明汚染_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0380a00">
「後は鍛造雷弾を待つだけか？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0390a07">
「うん。
　もうあてらの目的を妨げる要因は無いしね」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0400a00">
「常闇斎の予感は外れたか。
　まぁ、何も無いならそれでいい」

{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0410a07">
「――――あっ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0420a00">
「どうした？」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0430a07">
「……流石に剣豪、いい勘してるな。
　あてらにしかやれないことが一つ、出来た
みたいだよ、お兄さん」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0440a07">
「あれ見て」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　示された方向に目をやる。

　天頂近く、<RUBY text="ぎんせいごう">白銀の王者</RUBY>が悠然と舞っていた。
　それに挑むつもりか。近付く武者が一騎。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	OnSE("se戦闘_動作_空突進04",1000);
	CreateWindow("絵演窓上", 16200, Center, 0, 1024, 400, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateTextureEX("絵演窓上/絵演背景", 16200, 0, -144, "cg/bg/bg002_空a_02.jpg");
	SetShade("絵演窓上/絵演背景", HEAVY);

	Zoom("絵演窓上/絵演背景", 0, 2000, 2000, null, true);

	CreateTextureEX("絵演窓上/絵立絵", 16300, 400, 0, "cg/st/3d同田貫_騎航_戦闘.png");
	SetBlur("絵演窓上/絵立絵", true, 3, 300, 70, false);

	Move("絵演窓上", 0, @0, @-350, null, true);

	CreateColorEX("明度", 150, "BLACK");
	Fade("明度", 300, 500, null, false);

	Move("絵演窓上", 500, @0, @432, Dxl2, false);
	Fade("絵演窓上/絵演背景", 300, 1000, null, true);

	Move("絵演窓上/絵立絵", 1000, -379, -192, Dxl2, false);
	Fade("絵演窓上/絵立絵", 300, 1000, null, true);

	Wait(500);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0450a00">
「何者だ」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0460a07">
「ど腐れ坊主。
　古河公方遊佐童心さ」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0470a07">
「劒冑は同田貫正国。名物だよ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0480a00">
「ほう」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0490a07">
「酔狂の虫を起こしやがったな。
　……あの婆娑羅者が」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0500a07">
「どーしたもんかな」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0510a00">
「危惧せねばならぬ程の男か？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　問うまでもなく、遊佐童心の勇名は聞き知っている。
　足利一門の連枝であるが、単に名門の一員で終わる
ことなくその重鎮となったのは、槍一筋で立てた戦場
の武功によるところが大きい。

　おそらく六波羅全体でも上位の実力を持つだろう。
　
　だが、相手取ろうとしているのは銀星号だ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵演窓上/絵立絵", 500, false);
	FadeDelete("絵演窓上/絵演背景", 500, false);
	FadeDelete("明度", 500, true);
	Delete("絵演窓*");

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0520a07">
「童心坊だけなら問題ない。
　百回やって百回御姫が勝つよ」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0530a07">
「でも……ほら」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　茶々丸の指が、やや動く。
　引かれて視線をずらした先には、天守閣があった。

　その<RUBY text="テラス">張り出し</RUBY>に、遠目にも異様なほどの巨躯を誇る
男が立ち、俺達と同じように銀星号と古河公方の対峙
を見詰めている。
　あれは――小弓公方。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0540a00">
「今川雷蝶！」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0550a07">
「うん。
　あいつは別だ。あいつはヤベェ」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0560a07">
「さしもの御姫も万一ってことが有り得る」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0570a00">
「しかも遊佐童心まで加わっては、危険は倍
か」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0580a07">
「それだけじゃない。
　もし戦ってる最中に鍛造雷弾が来たら――」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0590a00">
「どうなる」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0600a07">
「御姫は対応できないかもしれない……。
　<RUBY text="・・・">みんな</RUBY>吹っ飛ばされて終わりってことに」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0610a00">
「――――」

{	FwC("cg/fw/fw景明汚染_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0620a00">
「片付けるぞ」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0630a07">
「どっちを？」

{	FwC("cg/fw/fw景明汚染_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0640a00">
「銀星号に加勢して遊佐童心を狙えば、今川
雷蝶に参戦を促す結果になるな。
　奴を銀星号に近付けるのは避けた方が良い
のだろう？」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0650a07">
「うん。
　あて、大概のことは計算に入れてるつもり
だけど、あいつのパワーだけは計算不可能」

{	FwC("cg/fw/fw景明汚染_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0660a00">
「幸い、ひとまずは静観する気らしいな。
　今の内が好機だ」

//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0670a00">
「天守閣に登り、俺達が今川雷蝶を倒す」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0680a07">
「…………」

{	FwC("cg/fw/fw景明汚染_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0690a00">
「怖いなら残っていろ」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0700a07">
「へっへー」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0710a00">
「……？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0720a07">
「あいつの<RUBY text="うで">実力</RUBY>って洒落にもなんないから、
まともにやったら勝ち目無かったんだよね。
　――――さっきまでは」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0730a00">
「今は違うのか」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0740a07">
「勝てる」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0750a07">
「あてとお兄さんなら、絶対に」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0760a00">
「百回やって何回だ？」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0770a07">
「百二十回は勝てるね」

{	FwC("cg/fw/fw景明汚染_愉悦.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0780a00">
「良し。
　信じてやる」

{	FwC("cg/fw/fw景明汚染_激情.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0790a00">
「行くぞ！」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0800a07">
「いえっさー！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆天守内、テラス
	SetVolume("@mbgm*", 3000, 0, null);


	CreateColorSP("暗転", 30000, "#000000");
	DrawTransition("暗転", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//↓　素材用意していただける模様　inc櫻井
	OnBG(100, "bg071_普陀楽城内張り出し_02.jpg");
	FadeBG(0, true);


	StL(1000, @0, @0, "cg/st/st雷蝶_通常_制服.png");
	FadeStL(300, true);

	DrawTransition("暗転", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("暗転");

	SetFwC("cg/fw/fw雷蝶_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/045a0810a08">
「……駄目。
　やはり童心様では及ばない」

{	FwC("cg/fw/fw雷蝶_軍将.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/045a0820a08">
「麿が行くしかないわ！」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0830a07">
「行かせねえよ。
　ここまで来てぶち壊しにさせるか」

{	StR(1000, @0, @0, "cg/st/st茶々丸_通常_制服a.png");
	FadeStR(300, true);
	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/045a0840a08">
「……茶々丸!?」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/045a0850a08">
「あんた、今までどこで何を――」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0860a07">
「長話は止そうぜ。
　もう終演時間が迫ってんだ」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0870a07">
「用件だけ片付けさせろ」

{	SoundPlay("@mbgm09",0,1000,true);
	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/045a0880a08">
「――――――」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/045a0890a08">
「言ってごらんなさい」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0900a07">
「雷蝶。
　おめーを殺しに来た」

{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/045a0910a08">
「そう」

//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/045a0920a08">
「……あんただったわけね。
　全てを仕組んでいたのは」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0930a07">
「ハッハッハッ、ようやくわかったようだね。
　キミタチはずっとワタシの掌の上で踊って
いたのだよ！」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0940a00">
「その割りには予定外の事態に右往左往する
姿ばかりが俺の印象に残っているが……」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0950a07">
「仕方ないやん！
　一時間半で完結する映画とは違うんだから、
そうそう何もかも黒幕の思う通りスムーズに
進みやしませんよっ！」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0960a00">
「がっかりだな」

{	FwC("cg/fw/fw茶々丸_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0970a07">
「……もっとがんばります」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/045a0980a08">
「ふんっ。
　あんた達二人きりで、麿に挑もうというの」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/045a0990a08">
「行き過ぎた無謀は可愛いわね」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1000a07">
「手加減でもしてくれるって？」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/045a1010a08">
「まさか。
　逆よ」

{	FwC("cg/fw/fw雷蝶_軍将.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/045a1020a08">
「――粉微塵にしてあげる!!
　膝丸!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆装甲アクション

	OnSE("se特殊_鎧_装着03",1000);
	CreateColorEXadd("絵フラ", 6500, "#FFFFFF");
	Fade("絵フラ", 300, 1000, null, true);
	DeleteStA(0,true);
	CreateTextureSP("装甲", 1000, @0, @0, "cg/ev/ev952_雷蝶装甲_a.jpg");
	Zoom("装甲", 0, 2000, 2000, null, true);
	SetBlur("装甲", true, 3, 300, 100, false);

//	StC(1000, @0, @0,"cg/st/st雷蝶_装甲_制服.png");
//	FadeStC(0,true);

	Zoom("装甲", 1000, 1000, 1000, Dxl2, false);
	Fade("絵フラ", 1000, 0, null, true);

	Wait(1000);

	SetFwR("cg/fw/fw雷蝶_軍将.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/045a1030a08">
「帰命頂礼八幡大菩薩！
　我、御剣と罷り成る!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆武者・膝丸

	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	Delete("装甲");
	CreateTextureSP("装甲b", 1500, @0, @0, "cg/ev/ev952_雷蝶装甲_b.jpg");

	StC(1000, @0, @0,"cg/st/3d膝丸_立ち_抜刀.png");
	FadeStC(0,true);

	Wait(1000);
	FadeDelete("絵フラ", 1000,true);

	Wait(1000);

	FadeDelete("装甲b",1500,true);

	SetFwR("cg/fw/fw雷蝶_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/045a1040a08">
「湊斗とやら。
　おまえは腕に相当の自信があるようだけど」

{	FwR("cg/fw/fw雷蝶_軍将.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/045a1050a08">
「この間の雑兵と麿を一緒にしないことね！
　我が膝丸の甲鉄……斬れるものなら斬って
見せなさい！」

{	FwR("cg/fw/fw景明汚染_愉悦.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a1060a00">
「――ふん。
　中将閣下の思し召しとあっては、従うほか
あるまいな」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆チャキ。
	OnSE("se擬音_雰囲気_抜刀01", 1000);

	DeleteStC(150,true);

	StL(1000, @0, @0, "cg/st/3d膝丸_立ち_抜刀.png");
	StR(1000, @50, @0, "cg/st/st景明汚染_戦闘_制服.png");
	FadeStR(150, false);
	FadeStL(150, true);

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1070a07">
「そうだね。
　でもお兄さん、やるのはちゃんと武装して
からにしよう」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a1080a00">
「何？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1090a07">
「お兄さんの<RUBY text="えもの">武器</RUBY>は、その太刀じゃない」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1100a07">
「ここにある」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a1110a00">
「…………」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1120a07">
「わかるでしょ？　わかるはずだよ。
　もう<RUBY text="えにし">縁</RUBY>は結ばれている……」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1130a07">
「<RUBY text="・・">ここ</RUBY>だ。
　お兄さんの武装はここにある！」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a1140a00">
「――――」

{	FwC("cg/fw/fw雷蝶_軍将.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/045a1150a08">
「……何だか知らないけど。
　世迷言を並べるしかすることがないなら、
まとめて潰すわよ？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1160a07">
「呼んで！
　お兄さん」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1170a07">
「<RUBY text="な">銘</RUBY>を!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　心の中央。
　そこに一つの語句が思い浮かぶ。

　俺はそれを舌に乗せ、唱えた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);

	SetFwC("cg/fw/fw景明汚染_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a1180a00">
「――――――――――<RUBY text="コテツ">虎徹</RUBY>」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ガリーン。茶々丸分解
//◆装甲アクション

	OnSE("se特殊_鎧_装着03",1000);
	CreateColorEXadd("絵フラ", 6500, "#FFFFFF");
	Fade("絵フラ", 300, 1000, null, true);
	DeleteStA(0,true);

	CreateTextureSP("装甲", 5000, @0, @0, "cg/ev/ev955_虎徹景明装甲_a.jpg");
	Zoom("装甲", 0, 2000, 2000, null, true);
	SetBlur("装甲", true, 3, 300, 100, false);


	Zoom("装甲", 500, 1000, 1000, Dxl2, false);
	Fade("絵フラ", 500, 0, null, true);

	Wait(500);

	SetFwR("cg/fw/fw雷蝶_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/045a1190a08">
「…………なッ――」

{	FwR("cg/fw/fw景明汚染_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a1200a00">
「獅子には肉を。狗には骨を。
　龍には無垢なる魂を」

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明汚染_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a1210a00">
「今宵の虎徹は――血に飢えている」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,150);//―――――――――――――――――――――――――――――

	CreateTextureSP("装甲", 10000, center, middle, "cg/ev/resize/ev955_虎徹景明装甲_al.jpg");
	Request("装甲", Smoothing);

	OnSE("se人体_動作_跳躍03",500);
	EffectZoomadd(17000, 500, 100, "cg/ef/ef003_汎用移動.jpg", false);
	Zoom("装甲", 0, 600, 600, null, true);
	FadeF4("装甲", 200, 1000, 400, 0, 0, Dxl2, true);

	OnSE("se人体_動作_跳躍03",1000);
	EffectZoomadd(17000, 500, 100, "cg/ef/ef003_汎用移動.jpg", false);
	Zoom("装甲", 0, 700, 700, null, true);
	FadeF4("装甲", 200, 1000, 400, 0, 0, Dxl2, true);

	OnSE("se人体_動作_跳躍03",1000);
	OnSE("se戦闘_動作_空突進02",1000);
	Zoom("装甲", 0, 1000, 1000, null, true);
	EffectZoomadd(17000, 500, 100, "cg/ef/ef003_汎用移動.jpg", false);
	FadeF4("装甲", 200, 1000, 400, 0, 0, Dxl2, true);

	Wait(100);

//◆装甲
//◆武者・虎徹
	#av_虎徹=true;

	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 25000, "#FFFFFF");

	SetBlur("装甲", true, 1, 500, 100, false);
	Zoom("装甲", 500, 2000, 2000, Axl2, false);
	Fade("絵フラ", 500, 1000, null, true);
	DeleteStA(0,true);

//	StR(1000, @0, @0,"cg/st/3d虎徹_立ち_通常.png");
	StC(1000, @0, @0, "cg/st/3d膝丸_立ち_抜刀.png");
	FadeStC(150, true);
	CreateTextureSP("装甲", 4900, @0, @0, "cg/ev/ev955_虎徹景明装甲_b.jpg");
	Request("絵背景", Smoothing);

	Zoom("装甲", 0, 2000, 2000, null, true);
	SetBlur("装甲", true, 3, 300, 100, false);

	Wait(1000);

//	FadeStR(0,true);

	Zoom("装甲", 2000, 1000, 1000, Dxl2, false);
	FadeDelete("絵フラ", 2000,true);

	Wait(1500);

//あきゅん「演出：ネタ残し」
	SoundPlay("@msong04_inst",0,1000,true);

	SetFwR("cg/fw/fw雷蝶_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/045a1220a08">
「……茶々丸。
　あんたは、一体」

{	FwR("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1230a07">
《さぁー、戦いだ！》

{	FwR("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1240a07">
《<RUBY text="あてら">虎徹</RUBY>の初陣だよ！
　お兄さん――御堂!!》

{	FwR("cg/fw/fw景明汚染_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a1250a00">
「……ああ」

{	FwR("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1260a07">
《敵騎は六波羅筆頭今川雷蝶》

{	FwR("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1270a07">
《相手に取って不足はないけど余剰もねぇ！
　あてらが勝つに決まってる！》

{	FwR("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1280a07">
《御堂、行ったれーーー!!》

{	FwR("cg/fw/fw景明汚染_激情.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a1290a00">
「応!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateWindow("絵演窓上", 1500, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateColorEX("絵色100", 1050, "BLACK");

	CreateTextureEX("絵演窓上/絵演背景", 1100, 100, -144, "cg/bg/bg071_普陀楽城内張り出し_02.jpg");
	Request("絵演窓上/絵演背景", Smoothing);
	Rotate("絵演窓上/絵演背景", 0, @0, @180, @0, null,true);
	Zoom("絵演窓上/絵演背景", 0, 2000, 2000, null, true);
	SetShade("絵演窓上/絵演背景", HEAVY);

	CreateTextureEX("絵演窓上/絵立絵", 1110, -700, -1000, "cg/st/resize/3d虎徹景明_立ち_抜刀ex.png");
	Move("絵演窓上", 0, @0, @128, null, true);

	Fade("絵色100", 0, 300, null, true);
	Fade("絵演窓上/絵演背景", 0, 1000, null, true);
	Fade("絵演窓上/絵立絵", 0, 1000, null, true);

	OnSE("se戦闘_攻撃_振る04", 1000);
	OnSE("se戦闘_動作_刀構え03", 1000);
	FadeDelete("装甲", 1000, false);
	Move("絵演窓上/絵演背景", 1500, @0, @100, AxlDxl, false);
	Move("絵演窓上/絵立絵", 1500, -800, -200, AxlDxl, true);
	OnSE("se戦闘_動作_刀構え01", 1000);

	Wait(500);

	CreatePlainSP("絵板写", 4999);
	Wait(50);
	Delete("絵色100");
	Delete("絵演窓*");
	SetBlur("絵板写", true, 3, 500, 100, false);

	OnSE("se戦闘_動作_空突進01", 1000);
	OnSE("se戦闘_動作_空突進02", 1000);

	FadeDelete("絵板写", 350, false);
	Zoom("絵板写", 350, 2000, 2000, Axl3, false);

	Wait(250);

	SetBlur("@StC*", true, 1, 500, 50,false);
	SetBlur("@OnBG*", true, 1, 500, 50,false);
	Request("@StC*", Smoothing);
	Zoom("@StC*", 300, 1500, 1500, Dxl3, false);
	Move("@StC*", 300, @0, @100, Dxl3, false);
	Zoom("@OnBG*", 300, 1500, 1500, Dxl3, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　抜刀し、突き進む。

　黄金の敵騎に。
　武者、長曽弥虎徹としての初陣に。

　湊斗景明の、最後の戦いに向かって。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆激突
	CreateTextureEX("絵剣", 18000, Center, Middle, "cg/ef/ef038_汎用射撃.jpg");
	CreateTextureEXadd("絵剣2", 18000, Center, Middle, "cg/ef/ef038_汎用射撃.jpg");
	Zoom("絵剣", 0, 1800, 1800, null, true);
	Zoom("絵剣2", 0, 1800, 1800, null, true);
	Rotate("絵剣", 0, @0, @0, @-90, null,true);
	Rotate("絵剣2", 0, @0, @0, @-90, null,true);

	OnSE("se戦闘_攻撃_鎧_剣戟04",1000);

	EffectZoomDXadd(18100, 500, 100, "#FFFFFF", "cg/ef/ef039_時間移動.jpg", false);

	Fade("絵剣", 0, 1000, null, true);
	Fade("絵剣2", 0, 1000, null, true);
	Zoom("絵剣", 500, 2200, 2200, Dxl2, false);
	Zoom("絵剣2", 500, 2100, 2100, Dxl2, false);

	Wait(300);

	CreateColorSP("黒幕１", 5000, "BLACK");
	CreateTextureSPadd("衝突", 15000, @0, @0, "cg/ef/ef040_汎用衝突.jpg");
	SetBlur("衝突", true, 3, 500, 100, false);
	Zoom("衝突", 0, 1100, 1100, null, true);

	FadeDelete("絵剣*", 800, true);

	OnSE("se戦闘_破壊_爆発07", 1000);

	Zoom("衝突", 5000, 1500, 1500, Dxl2, false);
	Shake("衝突", 500, 50, 0, 0, 0, 1000, Dxl3, false);

	Wait(2000);

//◆エンドロール

	ClearWaitAll(3000, 3000);

}

..//ジャンプ指定
//次ファイル　"md04_045aa.nss"