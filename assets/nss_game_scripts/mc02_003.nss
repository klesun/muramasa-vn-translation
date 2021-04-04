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

scene mc02_003.nss_MAIN
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
	#bg030_ＧＨＱ監禁部屋_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc02_004.nss";

}

scene mc02_003.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc02_002a.nss"
//前ファイル　"mc02_002b.nss"

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm34",0,1000,true);

	CreateTextureSP("絵背景20", 0, Center, Middle, "cg/bg/bg078_いーかげんな法廷_01.jpg");
	StR(1800, @0, @0, "cg/st/st雄飛_通常_制服.png");
	FadeStR(0,true);

	SetFwC("cg/fw/fw雄飛_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【雄飛】
{Delete("上背景");}
<voice name="雄飛" class="雄飛" src="voice/mc02/0030010b56">
「それと――」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_怒り.png");
	SetComic(@0,@0,1);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030020a07">
「多いよ！　いつまで続くんだよ！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	DeleteComic();

	SetFwC("cg/fw/fw雄飛_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/mc02/0030030b56">
「じゃあ中略して、あと一つだけ」


{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/mc02/0030040b56">
「あいつは自分の母親も殺しました。
　以上」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030050a07">
「はいご苦労さん」


{	DeleteStR(300,false);
	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030060a07">
「では、弁護人！」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc02/0030070a11">
「はい」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――


	StL(1800, @0, @20, "cg/st/st署長_通常_制服.png");
	OnSE("se日常_物_椅子鳴る02",1000);
	Move("@StL*", 300, @0, @-20, Dxl1, false);
	FadeStL(300, true);

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030080a07">
「弁護できるならしてみるがよい」


{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc02/0030090a11">
「仕方なかったんです」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_驚き.png");
	SetComic(@0, @0, 7);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030100a07">
「ハァ？
　仕方なかったァァァァァァ!?」


</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	DeleteComic();

	SetFwC("cg/fw/fw署長_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【署長】
<voice name="署長" class="署長" src="voice/mc02/0030110a11">
「そうです。仕方なかったのです」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030120a07">
「じゃー仕方ないな。
　情状酌量の余地を認める」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030130a07">
「無罪!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	OnSE("se人体_動作_叩く02",1000);
	StR(1800, @0, @70, "cg/st/st雄飛_通常_制服.png");
	Move("@StR*", 300, @0, @-70, Axl3, false);
	OnSE("se日常_物_椅子鳴る02",1000);
	FadeStR(300, false);

	SetFwC("cg/fw/fw雄飛_勇敢.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/mc02/0030140b56">
「異議有りッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_落胆.png");
	SetComic(@30, @0, 5);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030150a07">
「えー」


</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	DeleteComic();


	SetFwC("cg/fw/fw雄飛_勇敢.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/mc02/0030160b56">
「弁護人に質問します！
　仕方なかったってのは、いったいどう仕方
なかったんですかっ」


{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc02/0030170a11">
「被告人は幼い頃に両親を無くし（中略）」


{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc02/0030180a11">
「愛情に飢えていた被告人は甘えようとして
うっかり殺してしまっただけであり（中略）」


{	FwC("cg/fw/fw署長_笑顔.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc02/0030190a11">
「死体を押入れに隠したのは精霊に生き返ら
せて貰おうという彼の善意の顕れであって
（中略）」


{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc02/0030200a11">
「……以上の理由により、被告人に被害者へ
の殺意は無かったと断定できるのであります」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_怒りb.png");
	SetComic(@0, @0, 15);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]

//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/mc02/0030210b56">
「ＺＡ・ＫＥ・ＲＯＯＯＯＯＯＯＯ!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	DeleteComic();

	SetFwC("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030220a07">
「うーん、何という弁護……。
　突っ込み所が多過ぎてどこから突っ込んだ
もんだかわからねえ」


{	FwC("cg/fw/fw茶々丸_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030230a07">
「これって一種のノーガード戦法か？
　うかつに突っ込むとカウンター食いそうだ」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc02/0030240a11">
「納得して頂けましたか」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_悪戯.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text00130]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030250a07">
「したような気もする。
　じゃ、閉廷すっか」


{	FwC("cg/fw/fw雄飛_怒りa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/mc02/0030260b56">
「騙されないでください判事！」


{	FwC("cg/fw/fw茶々丸_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030270a07">
「えー」


{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc02/0030280a11">
「何かご不満でも」


{	FwC("cg/fw/fw雄飛_怒りb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/mc02/0030290b56">
「あらいでかっ！」


{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030300a07">
「だって聞いてたろー今のー。
　仕方なかったんだよー。殺意は無かったん
だよー。ならゴメンネ☆って謝ってもらえば
もうそれでいーだらぁー？」


{	FwC("cg/fw/fw雄飛_怒りb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/mc02/0030310b56">
「良くねえよっ！
　仕方なかろうが殺意が無かろうが、それで
殺された方が納得いくわけねーだろ!!」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030320a07">
「法律は死人の為に有るんじゃないしィ？
　生きてる人の為に有るんだしィ？」


{	FwC("cg/fw/fw署長_笑顔.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc02/0030330a11">
「流石は判事。至言であります」


{	FwC("cg/fw/fw雄飛_怯えb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/mc02/0030340b56">
「おめーら……自分の言ってることが社会に
どういう影響を与えるかとか……ちょっとは
考えろよ。頼むから……」


{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030350a07">
「そんなこと言われてもにゃー？」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc02/0030360a11">
「これが仕事なので」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_怒りb.png");
	SetComic(@0, @0, 1);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text00140]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/mc02/0030370b56">
「ぐあーーーー!!
　悪い意味で職業意識が発達し過ぎた世界は
ほんと駄目だーーーーーーー!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――
	
	DeleteComic();

	SetFwC("cg/fw/fw茶々丸_落胆.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text00150]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030380a07">
「うーむ。ワガママな検事だなぁ」


{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030390a07">
「しかたねー。妥協案を考えてやろう」


{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/mc02/0030400b56">
「どんな？」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030410a07">
「景明ちゃんは悪くにゃいから死刑になんか
できねぇけどぉー。
　代わりにそこの弁護人を殺して良い」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0,150);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text00160]
　――――待て。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【署長】
<voice name="署長" class="署長" src="voice/mc02/0030420a11">
「私ですか」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030430a07">
「うん」


{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc02/0030440a11">
「まあ、被告人さえ救えば私の仕事は果たさ
れるので構いませんが」


{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030450a07">
「検事は？」


{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/mc02/0030460b56">
「うーん……
　どっちかってーと今は被告人より弁護人の
方がムカつくしなァ」


{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030470a07">
「大人になることも必要だよ？」


{	FwC("cg/fw/fw雄飛_笑顔b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/mc02/0030480b56">
「そーですね。
　じゃ、それでいいです」


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

// ★inc久保田 ここからしばらく、影明とボックスを同時描画・同時消去

	DeleteStL(150,false);
	DeleteStR(150,false);

	StC(1800, @0, @0, "cg/st/st景明_通常_私服.png");
	FadeStC(200, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　待て。
　待ってくれ。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	DeleteStC(150,false);

	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030490a07">
「ん？
　どーかしたんかね被告人。口ぱくぱくして」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030500a07">
「なんか言いたいことでも？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	StC(1800, @0, @0, "cg/st/st景明_通常_私服.png");
	FadeStC(150, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　あるに決まっている！

　何故――俺の罪で俺が罰せられず、他の人間が殺さ
れねばならないのだッ!!
　俺を罰すればいい……！

　俺の罪に言い逃れの余地など無いことは、誰よりも
俺が知っている！
　この首には絞首紐が相応だ――いや、必要だ！

　だから、俺を……

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	DeleteStC(150,false);


	SetFwC("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030510a07">
「なんも聞こえんね」


{	FwC("cg/fw/fw署長_笑顔.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc02/0030520a11">
「特に意見は無いようです」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StC(1800,@0,@ 0,"cg/st/st景明_通常_私服.png");
	FadeStC(150,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　………………ッ!?

　口が――動かない！
　毒だ。毒で――麻痺している――

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	DeleteStC(150,false);

	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030530a07">
「では刑を執行する」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030540a07">
「エクスキューショナー、カモーン！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ずざー。バロウズ登場
//◆ボーガン構え

	StL(1800, @-50, @0, "cg/st/3dバロウズ_立ち_戦闘.png");
	Move("@StL*", 300, @50, @0, null, false);
	OnSE("se特殊_鎧_駆動音01",1000);
	FadeStL(300, true);
	OnSE("se戦闘_銃器_構える01",1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　待て！
　待っ――――――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0030550a07">
「<RUBY text="ごー・とぅー・へーる">やっちまえ</RUBY>♪」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ずがーん
//◆ＣＧ：バロウズ、明堯射殺

	CreateColorSP("黒", 1100, "BLACK");
	DeleteStA(0,true);

	SL_centerout(@0,@-100,300);

	OnSE("se特殊_陰義_バロウズ_パラドックス01",1000);

	SL_centeroutfade2(10);



	CreateColorSP("ギャー", 15000, "RED");

//inc久保田　動作確認のためダミーＣＧを入れてあります。


	CreateTextureSP("絵演2", 3000, Center, Middle, "cg/ev/ev170_バロウズ署長を射殺_b.jpg");

	Zoom("絵演3", 0, 1500, 1500, null, true);
	SetBlur("絵EF100", true, 5, 500, 50, false);
	Zoom("絵EF100", 0, 2000, 2000, null, true);
	OnSE("se戦闘_動作_突進01",1000);
	Zoom("絵EF100", 500, 1000, 1000, Dxl1, false);
	Fade("絵EF100", 200, 1000, null, true);
	WaitKey(400);
	Delete("絵EF100");

	Fade("ギャー", 1000, 0, null, true);


	OnSE("se戦闘_破壊_爆発01",1000);
	FadeDelete("絵演", 0, true);
	FadeDelete("絵色100", 1500, false);
	FadeDelete("絵演3", 1500, false);
	Move("絵演3", 1500, @-400, @0, DxlAuto, false);


	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0030560a00">
「――――――――――――――――――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

	SL_centerdam(@0,@0,1600);
	OnSE("se人体_血_たれる01",1000);
	CreateColorEX("絵赤転", 25000, "RED");
	Fade("絵赤転", 1000, 1000, null,false);
	SL_centerdamfade2(100);
	DeleteStR(300,true);
	FadeDelete("絵演2", 0, true);
	FadeDelete("絵赤転", 1500, true);
	SoundPlay("@mbgm31",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　何故だッッッッッッッ!!

　何故……この俺が生きることを許され……
　生きるべき人が死んでゆくのだ!?

　この世に正義は無いのか。

　こんな事はもうやめてくれ。
　どうすれば終わる？　どうすれば<RUBY text="・・・・">これきり</RUBY>になる？

　俺が自分で自分を殺すしかないのか。

　安楽な、逃避としての死しか、俺には許されないの
か。
　罰は？　苦痛は？　鉄槌は？

　罰!!

　これほどの罪を犯した俺に、どうして断罪たる死が
与えられないのだ。
　汚辱に満ちた刑死をもって報いてくれないのだ。

　それが…………この世界だというのか!?

　ならば<RUBY text="ここ">世界</RUBY>には何の希望も無い！
　正しき人間が非業に斃れ――その死を<RUBY text="もたら">齎</RUBY>した悪鬼に
罰はなく――<RUBY text="しか">然</RUBY>らば正しき人間の正しき生き様は全く
の無価値に帰す!!

　そんな事を認めて<RUBY text="たま">堪</RUBY>るか。

　彼らには価値が有った――大いなる価値があった！
　それを俺が無道にも奪ったのだ。

　だから、頼む。
　誰か……誰でもいい。

　俺を、
　この俺を――――誰か――――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆目覚め
//◆横浜基地内、景明の軟禁部屋
//◆辺りを見回す演出、もしくは間

	CreateColorEX("黒", 25000, "BLACK");
	Fade("黒", 0, 1000, null, true);

	CreateTextureSP("絵背景11", 10, Center, Middle, "cg/bg/bg030_ＧＨＱ監禁部屋_01.jpg");
	CreateTextureSP("絵背景10", 11, Center, Middle, "cg/bg/bg030_ＧＨＱ監禁部屋_01.jpg");
	SetShade("絵背景10", NOMORE);
	FadeDelete("黒", 500, false);
	WaitKey(1500);	
	FadeDelete("絵背景10", 1500, true);
	WaitKey(1500);


	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0030570a00">
「……………………」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0030580a00">
「……ここは……何処だ……？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);
}

..//ジャンプ指定
//次ファイル　"mc02_004.nss"