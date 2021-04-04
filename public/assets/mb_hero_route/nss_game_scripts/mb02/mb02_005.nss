//<continuation number="230">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_005.nss_MAIN
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
	#bg062_普陀楽城大手道_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb02_006.nss";

}

scene mb02_005.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mb02_004.nss"


//◆黒
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg062_普陀楽城大手道_02.jpg");
	FadeBG(0,true);
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　結局、通りすがりの人に道順を尋ねた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆城・屋敷地？
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);
	SoundPlay("@mbgm30",0,1000,true);

	StL(1000, @0, @0,"cg/st/st桜子_通常_私服a.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw桜子_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0050010b28">
「ありがとうございました」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0050020a00">
「いえ、お役に立てませず」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　京極屋敷の手前。
　頭を下げる姫に、こちらも礼を返す。

　謙遜になっていないところが我ながら情けない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0050030b28">
「あの」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0050040a00">
「はっ」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0050050b28">
「……これからも、もしわたくしを見掛ける
ことがありましたら。
　どうか気兼ねなく、お声を掛けて下さいな」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　その声はやや、躊躇いの響きを帯びていた。

　岡部桜子は幕府に弓引き、賊の烙印を押され、滅ぼ
された武家の遺族。
　六波羅に仕える者にとって、彼女との接近は決して
<RUBY text="プラス">利益</RUBY>とはならないだろう。

　従順な小役人を演じねばならぬ俺達にとっても。
　……だが、俺は首肯を返した。傍らの一条と共に。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0050060a00">
「勿体なき御言葉。
　喜んで、御厚意に甘えさせて頂きます」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0050070b28">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　何も言わなかったが。
　孤立無援の女性は去り際に、化粧のうすい唇を少し
だけ綻ばせたようだった。

{	DeleteStL(300,false);}
　決して温かくはなかろう住まいへと歩いてゆく。
　
　と。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

	StL(1000, @0, @0,"cg/st/st桜子_通常_私服a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0050080a02">
「……あのっ」


{	FadeStL(300,false);
	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0050090b28">
「はい？」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0050100a02">
「あなたは……どう思ってるんですか」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0050110b28">
「……？」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0050120a02">
「今の立場を……
　六波羅のことを……」


{	SetVolume("@mbgm*", 2000, 0, null);
	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0050130a02">
「賊にされて死んだ、父親のことを……」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0050140a00">
「……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　まずい。
　不意のことで、止め損ねた。

　あまりに無礼である――だが単なる無礼、六波羅の
役人の敗者への嘲弄と受け止められるなら、まだいい。
　しかし。

　一条は感情を隠せない。
　誰が見ても明らかだった。少女は勝者の立場で口に
していない。むしろ逆、岡部の姫の側に立って、問い
掛けている。

　断じて、幕府の役人のすべき事ではなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0050150b28">
「あなた方は……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　言われた当の姫に、それが理解できなかったはずも
ない。双眸が困惑に揺れる。
　俺は取り繕う言葉を持ち合わせなかった。仕方ない。
鉄面皮を通して、無言のまま行方を見守る。

　一条は――流石にまずいことを言ったという自覚は
あったのか、眼差しを伏せている。
　姫がその姿に何を見て、どう結論したのかはもはや
わからない。

　再びその唇が開かれた時、零れ出た声に情感の色艶
はなかった。
　だが決して空虚ではなかった。堅牢な何かがあった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm32",2000,1000,true);

	SetFwC("cg/fw/fw桜子_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0050160b28">
「わたくしは敗者です。
　それ以上の何も語ろうとは思いません」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0050170a02">
「……」


{	FwC("cg/fw/fw桜子_怒り.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0050180b28">
「戦って敗れたからには沈黙し、勝者に<RUBY text="こうべ">頭</RUBY>を
垂れるが武家の倣い……。
　<RUBY text="くちいくさ">論争</RUBY>は戦端を開く前にせねばなりません。
敗れた後の雄弁は無恥の謗りを受けるもの」


//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0050190b28">
「わたくしは語りません。この口からは何も。
岡部の名を辱めぬために。
　六波羅のことも……父のことも」

//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0050200b28">
「父が……
　何を思って戦ったのかも……！」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0050210a00">
「…………」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0050220a02">
「……」


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0050230a02">
「……ごめんなさい……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb02_006.nss"