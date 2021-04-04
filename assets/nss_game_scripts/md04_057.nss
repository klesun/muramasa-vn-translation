//<continuation number="300">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_057.nss_MAIN
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
	#bg063_普陀楽城内廊下_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_058.nss";

}

scene md04_057.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md04_056.nss"


//◆城内通路
//◆走る村正

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg063_普陀楽城内廊下_02.jpg");
	FadeBG(0, true);

	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	CreateSE("走る", "se特殊_鎧_駆動音01");
	MusicStart("走る", 0, 1000, 0, 1000, null,false);

	WaitKey(500);

	SetVolume("走る", 1000, 0, null);




	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0570010a01">
《――御堂！　あれ!!》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0570020a00">
「!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("走る", "se人体_足音_鎧歩く03");
	MusicStart("走る", 0, 1000, 0, 1000, null,false);

	StR(1000, @100, @0, "cg/st/3d村正脇差_立ち_通常.png");
	Move("@StR*", 300, @-100, @0, Dxl1, false);
	FadeStR(300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　気付いたのは、劒冑の指摘とほぼ同時だった。

　廊下に倒れ伏している、小さな――――
　それ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0570030a00">
「茶々丸!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆駆け寄る

	Move("@StR*", 300, @-100, @0, Axl1, false);
	DeleteStR(300,true);

	SoundPlay("@mbgm19", 0, 1000, true);

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0570040a07">
「……やっ。
　早いね、お兄さん」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0570050a07">
「もうちょっと掛かるかと思ったんだけど」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateTextureEX("血", 5000, @0, @0, "cg/ef/ef005_汎用血雫.jpg");
	Fade("血", 1000, 1000, null, false);
	OnSE("se人体_血_たれる01", 1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　茶々丸は負傷している。
　軽傷ではない。重傷という表現も厳密には当てはま
らない。

　傷の深さ、大きさ、出血の量……
　それらを勘案して、脳の醒めた部分が告げている。

　これは致命傷だ。

　武者の回復力をもってしても生命の流出を留められ
ない、傷。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("血", 1000, true);


	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0570060a00">
「どういうことだ……」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0570070a07">
「最後の最後で、ヘマやっちまいました」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0570080a00">
「誰にやられた！」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0570090a07">
「雷蝶……」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0570100a00">
「……小弓公方に!?」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0570110a07">
「邦氏を殺しに行くところだってのがバレて。
　やー、きつい一発もらいました」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　おかしそうに笑う。
　血の気の失せた唇を震わせて。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_冷酷.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0570120a07">
「ほんと……バカみてー。
　いらんことして、地雷踏んで」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0570130a07">
「想定外のアクシデントが多かったから……
念には念を、のつもりだったんだけど。
　裏目に出たなー」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0570140a07">
「あて、本当は陰謀ってのにとことん向いて
なかったのかもねぇ……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0570150a00">
「…………向いていなかったのだ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　腕の中で進む一個の生命の薄弱化を、どうしようも
なく感じ取りながら。
　考えず、想うままに呟く。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0570160a00">
「きっと他にもやり方はあった。
　あった筈だ」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0570170a07">
「……あったのかな」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0570180a07">
「例えば……
　お兄さんに、一緒にいて欲しいって思った
なら――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　茶々丸が片手を伸ばす。
　もどかしくなる程、それは遅い。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0570190a07">
「力ずくで洗脳なんかしなくても。
　こうして」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　俺の指を、<RUBY text="やわ">柔</RUBY>く掴む。
　一差し指、一本だけ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_落胆.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0570200a07">
「一緒にいて、って……
　お願いすれば良かったのかな」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0570210a07">
「そうしたら……聞いてくれた？」

{	FwC("cg/fw/fw景明_悲しみ.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0570220a00">
「――――――」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0570230a07">
「あは」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0570240a07">
「でも」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　茶々丸の手が離れる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_落胆.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0570250a07">
「あては……
　力ずくで奪う方を、もう選んじゃったから」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0570260a07">
「失敗したからって……今更、お願いなんか
しないもんね……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0570270a00">
「……茶々丸……」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0570280a07">
「来るよ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0570290a00">
「？」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0570300a07">
「そら」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　茶々丸が窓の向こうを示す。
　俺は振り仰いだ――自分が<RUBY text="・・・・・・・・">間に合わなかった</RUBY>ことを
直感的に悟りながら。

　輝く小さな球体が、落ちる。
　天頂から真っ直ぐに。白銀の騎体を目指して。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md04_058.nss"