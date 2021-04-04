//<continuation number="480">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_013.nss_MAIN
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
	#bg100_天守閣_03=true;
	#bg098_堀越御所内廊下_03=true;
	#bg027_普陀楽評議の間_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_014.nss";

}

scene md04_013.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md04_012.nss"


//◆夜
//◆普陀楽

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg100_天守閣_03.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm20", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒幕１",2000,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　ひとまずのところ、普陀楽城は健在であった。
　進駐軍は日没に合わせて攻撃を停止し、海岸方面へ
撤収していった。

　堀越領衆の幕僚団からは追撃の意見具申もあったが、
おそらく一種の<RUBY text="・・・・">景気付け</RUBY>のようなもので、本当は誰も
そんな事ができるなどと考えてはいなかったろう。
　藤沢口守備隊の死傷率は一割を超えている。

　深刻な被害と言わざるを得なかった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆廊下

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100, "bg063_普陀楽城内廊下_03.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

	Wait(500);
	SetFwC("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0130010a07">
「……？
　どったの、お兄さん」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0130020a00">
「いや……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　ふと足を止める。
　茶々丸が訝しげに問うてきた。

　俺は外の慌しい動きに目を引かれていた。

　担架で運ばれる負傷者。
　搬送手段を待っていられなかったのか、僚友に背負
われて医療所へ向かう片足の無い兵士。

　担架で運ばれる<RUBY text="・・・・・・">動かないもの</RUBY>。
　道端に放置されている、やはりもう動かない何か。
誰もが気付かず、あるいは誰もが気付きながら、彼は
そこに捨て置かれている……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0130030a00">
「死んでいるな」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　わかり切った事実を、俺は口にした。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0130040a00">
「死臭がする。
　あちらこちらから」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0130050a00">
「城の空気が死に澱んできた。
　馴染みの空気だ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0130060a00">
「吐き気がする……」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0130070a07">
「そうだね」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　茶々丸は<RUBY text="わら">微笑</RUBY>った。

　少女らしく微笑んで、俺の耳元に囁いた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0130080a07">
「けど、こんなものじゃない。
　まだまだ死ぬ」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0130090a07">
「死に続ける」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0130100a07">
「……最後には、<RUBY text="・・・">みんな</RUBY>」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0130110a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆評議の間


	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	DeleteStA(0,true);
	OnBG(100, "bg027_普陀楽評議の間_01.jpg");
	FadeBG(0, true);


	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");
	Wait(500);

//雰囲気的にここには常闇以外は立ち絵出さない？

	SetFwC("cg/fw/fw童心_沈思.png");

//嶋：修正（模様）【090930】
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【童心】
<voice name="童心" class="童心" src="voice/md04/0130120a09">
「小弓御所は陥ちた様子でござる。
　先刻、急報があり申した」

{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0130130a08">
「……そうですか」

//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0130140a08">
「童心様、申し訳ございません。
　小弓を預かる公方としてお詫びいたします」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0130150a09">
「いやいや、頭などお下げになるな。
　小弓の件は致し方なき事。雷蝶殿は普陀楽
で奮闘しておられたのだからのう」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0130160a07">
「進駐軍に先手を打たれたら小弓はあっさり
陥ちるって、最初からわかってたじゃねえか。
　攻めるにはいいけど守るにはてんで不向き
だからな、あそこ」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0130170a09">
「さようさよう。
　雷蝶殿、気に病まれてはなりませぬぞ。今
は目の前の敵に集中せねば」

{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0130180a08">
「……ええ……」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0130190a07">
「童心坊主、獅子吼からの連絡はあった？」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0130200a09">
「ござらぬ。
　敵の信号妨害が特に北東方面は厳しいよう
でござっての」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0130210a07">
「そーかぁ……。
　まぁいいや。どうせまだ篠川領に入ったか
どうかってところだろうしな」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0130220a09">
「あと二日……
　いや三日は耐えねばなりますまい」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0130230a07">
「三日と見ても、厳しいところだな。
　二重の意味で」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0130240a08">
「三日で獅子吼が援軍に来られるか。
　あと三日、普陀楽を守り抜けるか」

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0130250a08">
「……ということ？」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0130260a07">
「うん」

{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0130270a08">
「そうね……」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0130280a09">
「大船口の小弓、藤沢口の堀越、両御領衆の
状況は如何でござる？」

{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0130290a08">
「あまり明るくはありません」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0130300a07">
「うちも。
　今日一日でガリガリ削られましたよ」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0130310a07">
「予備隊を一部回してくれない？
　でないと明日はもう保たねえわ」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0130320a09">
「承知いたした。
　後程、取り計らいましょうぞ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぼーん。爆撃音
	OnSE("se戦闘_破壊_爆発02", 1000);

	CreatePlainEX("絵板写", 15000);
	Fade("絵板写", 0, 1000, null, true);

	Shake("絵板写", 1000, 0, 3, 0, 0, 1000, DxlAuto, true);

	Delete("絵板写");

	Wait(300);

	SetFwC("cg/fw/fw茶々丸_冷酷.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0130330a07">
「…………。
　陸の上は退いたが、空からの爆撃は夜通し
やるつもりらしいな」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0130340a09">
「闇の中の盲撃ちでも、城の中心部を狙って
落とせば何処かには当たるからのう。
　直接の戦果はさほど期待できずとも、我ら
の眠りを妨げるだけで充分に意味はあり申す」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0130350a07">
「迷惑な話だ。
　ちっとは手ぇ抜けよ」

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0130360a08">
「向こうに聴こえるように言ったら？」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0130370a07">
「お願いしろってか。
　それでオッケーもらえるようなら最初から
戦争なんてやってねえよ、あてら」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0130380a09">
「ふっふぅ……まったくまったく。
　それよりはましな思案がひとつござるが、
お聞き頂けますかな」

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0130390a08">
「何でしょう？」

{	FwC("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0130400a09">
「や、なに。
　やられっ放しでいるのもつまらなかろうと、
それだけのことでござるよ」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0130410a07">
「…………そりゃ上等だ。
　でも、どの兵を動かす？」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0130420a07">
「<RUBY text="こっち">堀越領衆</RUBY>にはそんな余裕ねーぞ。
　予備隊か？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0130430a09">
「いやいや。
　予備隊は慎重に使わねばなりますまい」

{	FwC("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0130440a09">
「もっと適した者どもがおり申す」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0130450a07">
「……あぁ。そうか。
　いたな」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0130460a00">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	StL(1000, @0, @0, "cg/st/st常闇斎_通常_私服.png");
	FadeStL(500, true);
	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　茶々丸が背後の俺を――いや、俺の更に後方を流し
見る。
　俺も予感するものがあって、同時にそちらへ視線を
投げていた。

　……音もなく、風も揺らさず。
　その男はいつからか、そこに控えていたようだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【童心】
<voice name="童心" class="童心" src="voice/md04/0130470a09">
「頼めるかな、常闇斎？」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0130480b37">
「無論の事でございます。
　しからば、直ちに」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆常闇
//◆すっと去る
	SetBlur("@StL*", true, 1, 50, 50, false);
	Move("@StL*", 200, @-50, @0, Axl2, false);
	DeleteStL(200, false);


	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md04_014.nss"