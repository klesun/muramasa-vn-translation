//<continuation number="570">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_039.nss_MAIN
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
	#bg039_競技場客席a_01=true;
	#bg039_競技場客席b_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_040.nss";

}

scene md02_039.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md02_038.nss"

//■冒頭立ち絵なしなのはわざとです　inc櫻井

	PrintBG("上背景", 30000);
	CreateColorEX("ホワイトイン", 5000, "WHITE");
	Fade("ホワイトイン", 0, 1000, null, true);
	OnBG(100, "bg039_競技場客席a_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm19", 0, 1000, true);
	Delete("上背景");
	FadeDelete("ホワイトイン", 1500, true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0390010a00">
「……閣下……
　これは何です？」

{	FwC("cg/fw/fw茶々丸変装_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0390020a07">
「テロリストの御一行だな。
　まっ、大して珍しいこっちゃない」

{	FwC("cg/fw/fw茶々丸変装_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0390030a07">
「やっぱ人目につくとこへ来る時は変装とか
しないとだめかぁー」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　俺の疑問への答ではない、しかし重大な事を彼女は
あっさりと言い捨てた。
　犬に吠えつかれた程度の様相である。

　俺は今の怪奇現象について聞きたかったのだが……
　
　頭蓋骨に直接響くようにして伝わったそれが実際の
会話であったのなら、そんな場合ではない――のか？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StR(1001, @0, @0, "cg/st/st村正_通常_私服.png");
	FadeStR(300, false);

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0390040a01">
「結局、何なの？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0390050a00">
「…………。
　<RUBY text="テロ">暴力的政治主張</RUBY>の対象にされるようだ」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0390060a01">
「……いつ、どこで、誰が？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0390070a00">
「これから、ここで、我々が」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0390080a01">
「……一大事？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0390090a00">
「一大事だと思う」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　村正と二人、余り知性的ではない会話をする。
　情報の入手方法にせよ、情報の内容自体にせよ、俺
からすれば現実味を欠くこと甚だしいのだから仕方が
ない。

　又聞きの村正にとっては尚更だろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(1000, @0, @50, "cg/st/st茶々丸_通常_変装_b.png");
	FadeStL(300, false);
	Move("@StL*", 150, @0, @-50, Dxl1, false);

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0390100a07">
「黙って待ってるのも芸がないしね。
　止めに行きますか」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0390110a00">
「はぁ」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0390120a07">
「お兄さん、手伝ってくれる？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0390130a00">
「成り行き上、そうした方が良さそうなので」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　やや消極的に同意する。
　積極的になれない理由は、まず自分の立場。加えて
未だに思考が現状に対して半歩ほど遅れているためで
ある。

　しかし、俺は努力して意識を切り替えた。

　六波羅が悪だとしても、それに対するテロ行為が善
となる道理はない。
　同じ悪行であろう。

　事前に防ぎ止められるのなら、その方が望ましいに
決まっている。
　いま聴いたものが単なる幻覚で、空回りに終わると
しても……それはそれで別に構うまい。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0390140a00">
「閣下、場所はわかりますか？」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0390150a07">
「うん。
　こっちー」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆移動
	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	
	DeleteStA(0,true);
	
	DrawTransition("黒幕１", 500, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　先導する足利茶々丸を追い、客席の中を移動する。
　消化不良を絵に描いた表情ながら、村正も続いた。

　前をゆく少女の足取りには、緊張もなければ迷いも
ない。

　……やはり不思議だ。
　彼女は一体、如何なる能力を備えているのだろう。

　遠方の会話を聴き取り、その地点も正確に把握する
――らしい――技能。
　単に人より聴覚が鋭いだけとは思えないのだが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0, "cg/st/st茶々丸_通常_変装_b.png");
	FadeStL(300, false);

	StR(1001, @0, @0, "cg/st/st村正_通常_私服.png");

	SetFwC("cg/fw/fw茶々丸変装_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0390160a07">
「……あ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0390170a00">
「？」

{	FwC("cg/fw/fw茶々丸変装_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0390180a07">
「向こうのが早かったみたい」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0390190a00">
「閣下？」

{	FwC("cg/fw/fw茶々丸変装_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0390200a07">
「おい、三代目」

{	FadeStR(300, false);
	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0390210a01">
「……何よ」

{	FwC("cg/fw/fw茶々丸変装_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0390220a07">
「これはほんとに忠告だから聞けよ。
　<RUBY text="・・・・・・・">お兄さんを守れ</RUBY>」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0390230a01">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);
	DeleteStA(300,true);


//◆ちゃっ。着火したようなＳＥ
	CreateSE("着火", "se人体_動作_着火音01");
	MusicStart("着火", 0, 1000, 0, 1000, null, false);

//◆少し間を置いて
	WaitKey(2000);
	SetVolume("着火", 1000, 0, null);

//◆どかーん。爆発
//◆爆破跡

	OnSE("se戦闘_破壊_爆発03", 1000);

	CreateColorSP("黒幕１", 25000, "WHITE");
	DrawTransition("黒幕１", 150, 0, 1000, 300, null, "cg/data/circle_01_00_0.png", true);
	Delete("@OnBG*");
	DeleteStA(0,true);
	CreateTextureEX("絵背景", 90, @0, @0, "cg/bg/bg039_競技場客席ｃ_01.jpg");
	Fade("絵背景", 0, 1000, null, false);
	CreatePlainEX("絵板写", 90);
	Fade("絵板写", 0, 1000, null, true);
	Zoom("絵板写", 0, 2000, 2000, null, false);
	CreateTextureSP("絵背景爆発", 100, @0, @0, "cg/ef/ef022_汎用武者散華.jpg");
	EffectZoomadd(10000, 1000, 1000, "cg/ef/ef022_汎用武者散華.jpg", false);

	OnSE("se戦闘_破壊_爆発05", 1000);

	Shake("絵板写", 15000, 0, 1, 0, 0, 1000, DxlAuto, false);
	Zoom("絵背景爆発", 4000, 1500, 1500, Dxl2, false);
	Shake("絵背景爆発", 15000, 2, 5, 0, 0, 1000, DxlAuto, false);

	DrawTransition("黒幕１", 500, 1000, 0, 500, null, "cg/data/circle_01_00_1.png", true);
	FadeDelete("黒幕１", 1500,true);

	Move("絵板写", 3000, 150, 0, Dxl1, false);
	FadeDelete("絵背景爆発", 1500,true);

	FadeDelete("絵板写",1000,true);

	WaitKey(1000);

	SoundPlay("@mbgm34", 0, 1000, true);


	SetNwC("cg/fw/nw男Ｂ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ｅｔｃ／流星団Ｂ】
<voice name="ｅｔｃ／流星団Ｂ" class="その他男声" src="voice/md02/0390240e288">
「はっ、ははは……」

//【ｅｔｃ／流星団Ｂ】
<voice name="ｅｔｃ／流星団Ｂ" class="その他男声" src="voice/md02/0390250e288">
「良し！
　粉微塵だ！」

//【ｅｔｃ／流星団Ｂ】
<voice name="ｅｔｃ／流星団Ｂ" class="その他男声" src="voice/md02/0390260e288">
「堀越公方を殺した！
　天誅だ！　天誅を下したぞ!!」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0390270a00">
「…………貴様ら」

{	NwC("cg/fw/nw男Ｂ.png");}
//【ｅｔｃ／流星団Ｂ】
<voice name="ｅｔｃ／流星団Ｂ" class="その他男声" src="voice/md02/0390280e288">
「ッ!?」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0390290a00">
「貴様らァ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぼこ。一人倒し
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	CreateTextureSPadd("絵背景01", 10000, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");
	OnSE("se戦闘_攻撃_殴る03", 1000);
	FadeDelete("絵背景01", 500, true);
	Delete("黒幕１");

	OnSE("se人体_衝撃_転倒03", 1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　粉塵を払って踏み込み、手近な一人を殴り倒す。
　無責任なほど呆気なく、その男は倒れた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw男Ｃ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【ｅｔｃ／流星団Ｃ】
<voice name="ｅｔｃ／流星団Ｃ" class="その他男声" src="voice/md02/0390300e289">
「ちっ、護衛……
　死ななかったか」

//【ｅｔｃ／流星団Ｃ】
<voice name="ｅｔｃ／流星団Ｃ" class="その他男声" src="voice/md02/0390310e289">
「六波羅はよくよく悪運の――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぼか。倒し

	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	CreateTextureSPadd("絵背景01", 10000, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");
	Rotate("絵背景01", 0, 0, 0, 180, null, true);

	OnSE("se戦闘_攻撃_殴る01", 1000);
	FadeDelete("絵背景01", 500, true);
	Delete("黒幕１");

	OnSE("se人体_衝撃_転倒01", 1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　つまらない御託を最後まで聞いてやるべき事情など、
この銀河系にあるとは思えなかったので、俺は探しも
しなかった。
　顎を打ち抜き、先に倒れた仲間の後を追わせる。

　まだいる筈だ……！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆蜘蛛村正
	StR(1000, 230, 105, "cg/st/3d村正蜘蛛_俯瞰.png");

	OnSE("se人体_足音_鎧歩く03",1000);

	Move("@StR*", 300, 170, @0,Dxl2, false);
	FadeStR(300, false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0390320a01">
《御堂、怪我はない!?》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0390330a00">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　視界を塞ぐ劒冑を除ける。
　安否を気遣われている事も、俺がいま両足で立って
いられるのは彼女のお陰である事もわかっていたが、
俺の心を占めるのはそれへの感謝ではなかった。

　怒りと憎悪だった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆周囲確認。血

	FadeDelete("絵背景40",1000,false);
	CreateColorEXadd("フラッシュ", 15000, "RED");
	Fade("フラッシュ",0,1000,null,false);
	Fade("フラッシュ",1000,1000,null,false);
	FadeDelete("フラッシュ", 500, false);
	CreateTextureEX("絵ＥＦ15", 100, Center, Middle, "cg/ef/ef007_汎用血しぶき.jpg");
	Fade("絵ＥＦ15", 0, 1000, null, true);
	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　死んでいる。

　近くにいた観客――
　何の罪もない、幕府とも関わりない、ただ装甲競技
を観戦するために訪れていた市民達が――

　幾人も、無言の骸となり果てている。

　負傷者はその数倍……
　苦悶の声、嘆きの声、誰にともなく<RUBY text="・・">説明</RUBY>を求める声
の渦は、徐々に徐々に広がりつつあった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0390340a00">
「……どういうつもりだ……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆爆破客席
	
	FadeDelete("絵ＥＦ15",1000,true);
	Wait(500);

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0390350a00">
「これは何の真似だ!!
　答えてみせろッ!!」

{	NwC("cg/fw/nw男Ａ.png");}
//【ｅｔｃ／流星団Ａ】
<voice name="ｅｔｃ／流星団Ａ" class="その他男声" src="voice/md02/0390360e287">
「はッ。
　何の……だと？」

//【ｅｔｃ／流星団Ａ】
<voice name="ｅｔｃ／流星団Ａ" class="その他男声" src="voice/md02/0390370e287">
「盗人猛々しいな、六波羅！
　天の裁きを受ける心当たりが、無いとでも
言う気か！」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0390380a00">
「そんな事は訊いていない」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　俺が六波羅の人間だと思われている事も、今はどう
でも良い。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0390390a00">
「なぜ無関係の人間を巻き込んだ」

{	NwC("cg/fw/nw男Ａ.png");}
//【ｅｔｃ／流星団Ａ】
<voice name="ｅｔｃ／流星団Ａ" class="その他男声" src="voice/md02/0390400e287">
「ん……？」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0390410a00">
「天の裁きなどと云うからには、世のため、
人のために立ち上がったのだろう！
　それでどうして……こんな方法になる!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　辺りに立ち込める臭気。
　これは――競技用劒冑の補助推進器に使われる燃料
の匂いだ。

　この者どもはパドックか何処かから盗み出したそれ
で即席の燃料爆弾を作り、点火したのだろう。
　……そんな事をすれば被害は俺達だけに留まらず、
周囲にも及ぶと、やる前にわからなかった筈はない！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0390420a00">
「本末転倒だ……！」

{	NwC("cg/fw/nw男Ａ.png");}
//【ｅｔｃ／流星団Ａ】
<voice name="ｅｔｃ／流星団Ａ" class="その他男声" src="voice/md02/0390430e287">
「ふん……。
　よりにもよって六波羅に、人道がましい事
を説かれる筋合いはないが」

//【ｅｔｃ／流星団Ａ】
<voice name="ｅｔｃ／流星団Ａ" class="その他男声" src="voice/md02/0390440e287">
「我らは既に修羅！
　大義を果たすため、この身魂を鬼に堕とす
覚悟ならとうに済ませている！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　胸中で、自制心が<RUBY text="・・・">ごそり</RUBY>と減った。

　ソレを殺したくて、<RUBY text="たま">堪</RUBY>らなくなった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw男Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【ｅｔｃ／流星団Ａ】
<voice name="ｅｔｃ／流星団Ａ" class="その他男声" src="voice/md02/0390450e287">
「少々の犠牲を顧みていては、巨悪を倒せん」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0390460a00">
「……少々、だと！」

{	NwC("cg/fw/nw男Ａ.png");}
//【ｅｔｃ／流星団Ａ】
<voice name="ｅｔｃ／流星団Ａ" class="その他男声" src="voice/md02/0390470e287">
「そうだ。
　今日の十人の死は、明日の百人を救うため」

//【ｅｔｃ／流星団Ａ】
<voice name="ｅｔｃ／流星団Ａ" class="その他男声" src="voice/md02/0390480e287">
「貴様らを打倒して大和を救うための犠牲と
なるに、不服を唱える者などおらん！
　いや……それが不服な者は貴様らの同類だ。
巻き添えに殺して、差し障りは無い！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　その男は、いとも簡単に、他人の命の価値を決めた。

　――わかった。
　俺が怒り憎む、根底の理由。

　こいつは何処かの誰かにそっくりだ。
　<RUBY text="・・・・・・・・・・・">鏡を覗けばそこにいる男</RUBY>と、やっている事がまるで
同じだ。

　だから許せないのだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0390490a00">
「……御託はもういい。聞きたくもない。
　投降しろ」

//【景明】
<voice name="景明" class="景明" src="voice/md02/0390500a00">
「司法に預け、相応の刑を受けてもらう」

{	NwC("cg/fw/nw男Ａ.png");}
//【ｅｔｃ／流星団Ａ】
<voice name="ｅｔｃ／流星団Ａ" class="その他男声" src="voice/md02/0390510e287">
「貴様らの法など！
　天命に従う我らを縛れるものか」

//【ｅｔｃ／流星団Ａ】
<voice name="ｅｔｃ／流星団Ａ" class="その他男声" src="voice/md02/0390520e287">
「我々は天命のまま戦い続けるのみだ。
　いつの日か、六波羅を打ち砕くまでな！」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0390530a00">
「天命……？
　このやり口が、天命か!!」

{	NwC("cg/fw/nw男Ａ.png");}
//【ｅｔｃ／流星団Ａ】
<voice name="ｅｔｃ／流星団Ａ" class="その他男声" src="voice/md02/0390540e287">
「そうとも。
　これこそ天の命ずる戦いだ！」

//【ｅｔｃ／流星団Ａ】
<voice name="ｅｔｃ／流星団Ａ" class="その他男声" src="voice/md02/0390550e287">
「我らの導き手、大いなる神将がそう教えて
いる！」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0390560a00">
「神将……？」

{	FwC("cg/fw/fw茶々丸変装_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0390570a07">
「<RUBY text="おひめ">銀星号</RUBY>のこったよ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//すぐ続くようなので、なにもしない inc櫻井
//振り返る的な演出。

	SetVolume("@mbgm*", 1000, 0, null);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

}

..//ジャンプ指定
//次ファイル　"md02_040.nss"