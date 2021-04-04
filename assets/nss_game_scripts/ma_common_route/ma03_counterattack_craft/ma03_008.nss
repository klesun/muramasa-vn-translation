//<continuation number="590">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_008.nss_MAIN
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
	#bg033_署長宅景明私室_03a=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma03_009.nss";

}

scene ma03_008.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_007.nss"

//◆黒
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 10, "#000000");
	Delete("上背景");

	SetFwC("cg/fw/fwふな_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma03/0080010b06">
「……にーやぁ……」

{	FwC("cg/fw/fwふき_笑い.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma03/0080020b05">
「……お武家さまー……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆第二編の姉妹

	StL(1000, @0, @0,"cg/st/stふき_通常_私服.png");
	StR(1000, @0, @0,"cg/st/stふな_通常_私服.png");
	FadeStA(300,true);


	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0080030a00">
「……貴方たちは……」

{	FwC("cg/fw/fwふな_通常.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma03/0080040b06">
「あのね、あのね……」

{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma03/0080050b05">
「あて……お武家さまのことが……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ズバッと血飛沫ＣＧ

	DeleteStA(0,true);

	OnSE("se戦闘_攻撃_刀振る01",1000);
	SL_right(@0, @0,2000);
	SL_rightfade2(10);

	WaitKey(300);

	CreateSE("SE01","se人体_血_血しぶき01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateTextureSP("絵ＥＦ50", 50, Center, Middle, "cg/ef/ef007_汎用血しぶき.jpg");

	SetFwC("cg/fw/fwふな_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma03/0080060b06">
「すきー！」

{	FwC("cg/fw/fwふき_笑い.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma03/0080070b05">
「大好きです」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0080080a00">
「……ッ!?」

{	FwC("cg/fw/fwふき_照れ.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma03/0080090b05">
「だって、こんなに綺麗に殺してくださった
んですもの！」

{	FwC("cg/fw/fwふな_笑い.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma03/0080100b06">
「えへへー♪」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0080110a00">
「あ……あぁぁ…………」

{	NwC("cg/fw/nwその他.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma03/0080120b56">
「そうだよなあ。
　おれも尊敬してるぜ！」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0080130a00">
「!?」

{	FwC("cg/fw/fw雄飛_快活.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma03/0080140b56">
「こんなに綺麗に殺してくれたもんなっ！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆新田雄飛
//◆ズバッと血

	FadeDelete("絵ＥＦ50", 1000, true);

	StC(1000, @0,@0,"cg/st/st雄飛_通常_制服.png");
	FadeStC(500,true);

	WaitKey(1000);
	CreateColorSP("絵暗転２", 100, "#000000");
	SL_leftdown(@0, @0,2000);

	DeleteStA(0,true);

	OnSE("se戦闘_攻撃_刀振る01",1000);
	SL_leftdownfade2(10);

	CreateTextureEX("絵ＥＦ51", 51, Center, Middle, "cg/ef/ef006_汎用血しぶき.jpg");
	Fade("絵ＥＦ51", 0, 600, null, true);

	CreateSE("SE02","se人体_血_血しぶき01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Delete("絵暗転２");


	SetFwC("cg/fw/fw雄飛_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma03/0080150b56">
「すげえよ湊斗さん！」

{	FwC("cg/fw/fw景明_恐怖.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0080160a00">
「あっ……ああああああああああああああ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　許して。
　許して。
　許してください。

　――その言葉が出てこない。
　言いたくてたまらぬ、その言葉が出ない。

　知っているからだ。
　許されないと、知っているからだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwふな_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma03/0080170b06">
「にーやー」

{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma03/0080180b05">
「お武家さまぁー」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma03/0080190b56">
「村正サイコー。
　正義の味方」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　やめて。
　やめてくれ。
　聞きたくない。

　<RUBY text="コトホギ">言祝</RUBY>など聞きたくない。
　せめて<RUBY text="カシリ">呪詛</RUBY>を。怨嗟の声を。

　この身を穿つ断罪の叫びを。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



//◆ボッ。炎が現れるエフェクト
//◆銀星号。朧
	SetVolume("SE*", 100, 0, null);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 50, 1000, null, true);
	PrintGO("上背景", 15000);
	CreateColorSP("絵暗転", 10, "#000000");
	FadeDelete("上背景", 600, true);

	CreateSE("SE01b","se人体_体_心臓の音02");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateColorSP("絵演波紋", 2000, "#4AC6FF");
	CreateColorSP("絵演波紋弐", 2100, "#000000");
	DrawTransition("絵演波紋", 600, 0, 1000, 100, Dxl3, "cg/data/circle_02_00_0.png", false);
	WaitKey(30);
	DrawTransition("絵演波紋弐", 600, 0, 1000, 100, Dxl2, "cg/data/circle_02_00_0.png", true);
	Delete("絵演波紋");

	CreateTextureEXadd("絵立100", 1000, Center, InBottom, "cg/st/3d銀星号_立ち_通常.png");
	DrawEffect("絵立100", 3600000, "LowWave", 30, 30, null);
	Fade("絵立100", 0, 600, null, true);

	WaitPlay("SE01b", null);

	FadeDelete("絵演波紋弐", 600, true);

	SetFwL("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【光】
<voice name="光" class="光" src="voice/ma03/0080200a14">
「苦しんでいるな。
　景明……」

//【光】
<voice name="光" class="光" src="voice/ma03/0080210a14">
「それは<RUBY text="・・・">生まれ</RUBY>の苦しみだ」

//【光】
<voice name="光" class="光" src="voice/ma03/0080220a14">
「おれも苦しい……
　おまえの苦悶はおれの心を傷つけてやまぬ」

//【光】
<voice name="光" class="光" src="voice/ma03/0080230a14">
「これは<RUBY text="・・">生み</RUBY>の苦しみ」

//【光】
<voice name="光" class="光" src="voice/ma03/0080240a14">
「共に耐えよう、可愛い景明。
　これは誕生の苦しみなのだ」

//【光】
<voice name="光" class="光" src="voice/ma03/0080250a14">
「母と子が共に味わう苦痛。
　生命が生命をつくるための、避けて通れぬ
<RUBY text="イニシエイション">通過儀礼</RUBY>だ」

//【光】
<voice name="光" class="光" src="voice/ma03/0080260a14">
「おれは全身全霊をもっておまえを産み落と
そう。おまえを産んでおまえの母となろう。
　だから――景明」

//【光】
<voice name="光" class="光" src="voice/ma03/0080270a14">
「生まれ落ちたなら……
　心置きなく、おれを愛するがいい」

</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(150,0);//――――――――――――――――――――――――

//◆署長宅内・景明の部屋
	PrintBG("上背景", 25000);
	OnBG(100,"bg033_署長宅景明私室_03a.jpg");
	FadeBG(0,true);

//あきゅん「SE：要望：がばっと起き上がる感じの布団の音」
	OnSE("se人体_動作_掴む01",1000);
	Delete("上背景");

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0080280a00">
「……………………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　目を覚ますと、布団の上だった。
　体を包む感触にも、視界に映る光景にも覚えがある。
馴染んだ、というほどではないにせよ。

　署長宅内の一室だ。
　俺の部屋としてあてがわれている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0080290a03">
「……お目覚めになりまして？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆香奈枝

	SoundPlay("@mbgm30",0,1000,true);
	StR(1000, @0, @0,"cg/st/st香奈枝_通常_私服c.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0080300a00">
「……中尉……
　いや、失礼。大尉殿でした」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0080310a03">
「覚えておられますの？　先程のことは」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0080320a00">
「……はい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　そうだ。
　俺は予期せぬ話の流れに動揺し、我を失い――

　…………なんと、無様な。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0080330a00">
「見苦しい所をお目にかけました。
　お恥ずかしい限りです」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0080340a03">
「とんでもない。
　わたくしどもの方こそ、景明さまのお悩み
も知らず、無神経なことばかり言ってしまい
ました」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0080350a03">
「あの村の一件を、余程気にしておいでです
のね……。
　無理はありませんけれど……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0080360a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　誤解に苛立たず、黙って流せる程度には、冷静さも
回復していた。
　短い時間でも体を休めたのが良かったのだろう。

　体感で、二時間程度が経過している。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0080370a00">
「自分が倒れたせいで、この家に入るのにも
不自由されたのでは？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0080380a03">
「いえ、声をかけましたら、使用人のかたが
すぐに出てきてくださいまして。
　あれこれ説明するまでもなく、察して頂け
ました。良い人をお雇いですのね」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0080390a00">
「牧村さんですか……後で礼を言っておきま
しょう。無論、大尉殿にも。
　お手を煩わせました。申し訳ありません」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0080400a03">
「もう、ご迷惑を掛けてしまったのはこちら
ですのに。本当にお堅い方。
　お身体には障りありませんの？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0080410a00">
「はい。何程のことも」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　体を起こす。
　倒れた時に打ったのか、肩が多少痛むがその程度だ。
動くのに差し支えはない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0080420a00">
「綾弥さんはどうされました？
　帰られましたか」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0080430a03">
「いいえ。居間の方でお待ちです。
　自分の来訪が景明さまに負担を掛けたので
はないかと、気にしておいででしたね」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0080440a00">
「そうですか。
　では誤解を解く必要があります」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　立ち上がっても、改めて痛み出すような箇所はない。
　安堵する――戦うべき事態はいつ到来するとも知れ
ない。体調は常に万全であることが望ましかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0080450a00">
「参りましょう」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0080460a03">
「……景明さま」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0080470a00">
「はい」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0080480a03">
「やはり………余計なことを申し上げました
かしら？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　それが何のことを指しているかは明白だった。
　かぶりを振る。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0080490a00">
「いいえ。
　冷静になって考え直せば、あそこまで思い
込んだ彼女に翻意を促すのは難しいでしょう」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0080500a00">
「追い払ったところで諦めるとは思えません。
　捜査中を密かに尾行でもされては大事です。
こちらの知らない所で危難に遭いかねません
から」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0080510a03">
「ええ……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0080520a00">
「それを思えば、要望を認めて連れてゆくの
は次善の策と言えます。
　彼女は歳相応以上の能力を備えているよう
ですから、おそらく任務の阻害はしません」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0080530a00">
「むしろその意味では有益でしょう。
　任務の危険性を思えば学生を連れ歩くなど
論外ですが、この際は仕方ありません。署長
にも説明して諒解を得ておくことにします」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　要は大尉、貴方と同じです。
　……これは口には出さずにおく。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0080540a03">
「わたくしもそれが良いと思います。
　扱いは、進駐軍徴発の現地協力員という事
でよろしいかしら？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0080550a00">
「貴方に責任を押し付ける気はありません。
　警察属員、つまり自分と同じ立場という事
にしておきます」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0080560a03">
「よろしいの？
　一条さんを受け入れようと言い出したのは
わたくしなのですから――」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0080570a00">
「彼女が訪ねてきたのは自分です。
　自分が身柄を引き受けるのが筋というもの
でしょう」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0080580a03">
「……そう、ですね。
　あの学生さんもきっと、そうなさった方が
喜ぶでしょうし」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0080590a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

}

..//ジャンプ指定
//次ファイル　"ma03_009.nss"