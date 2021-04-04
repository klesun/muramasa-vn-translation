//<continuation number="820">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_018.nss_MAIN
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
	#bg053_堀越御所の庭_01=true;
	#ev002_銀星号事件イメージ２=true;
	#bg052_湊斗家道場_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_019.nss";

}

scene md02_018.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md02_017.nss"

//◆庭
	PrintBG("上背景", 30000);
	CreateColorSP("ホワイトイン", 5000, "WHITE");
	OnBG(100, "bg053_堀越御所の庭_01.jpg");
	FadeBG(0, true);
	Delete("上背景");
	FadeDelete("ホワイトイン",1500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　気付けば。
　俺は足腰の力を失い、空を仰ぎ、それでも背を地面
に触れさせてはいなかった。

　その不思議を、三秒間費やして解消する。
　……俺は支えられていた。

　支えていたのは光だった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆光アップ
//■まだ素材ない。素材によってはウィンドウを動かす inc櫻井
//↓試し inc櫻井

	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateColorEX("絵色100", 16050, "BLACK");
	CreateTextureEX("絵演窓上/絵演背景", 16100, 100, -144, "cg/bg/bg053_堀越御所の庭_01.jpg");
	CreateTextureEX("絵演窓上/絵立絵", 16200, 160, -468, "cg/st/resize/st光_通常_私服_l.png");
	Zoom("絵演窓上/絵演背景", 0, 2000, 2000, null, true);
	SetShade("絵演窓上/絵演背景", HEAVY);

	Move("絵演窓上", 0, @0, @128, null, true);

	Request("絵演窓上/絵演背景", Smoothing);
	Request("絵演窓上/絵演背景", Smoothing);

	Move("絵演窓上/絵演背景", 30000, @-100, @0, null, false);
	Move("絵演窓上/絵立絵", 30000, @-200, @0, null, false);

	Fade("絵色100", 300, 300, null, false);
	Fade("絵演窓上/絵演背景", 500, 1000, null, false);
	Fade("絵演窓上/絵立絵", 500, 1000, null, true);
	Wait(300);
/*
	StR(1000, @0, @800, "cg/st/resize/st光_通常_私服_l.png");
	Request("@StR*", Smoothing);
	FadeStR(300, false);
*/

	SetFwR("cg/fw/fw光_慈愛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【光】
<voice name="光" class="光" src="voice/md02/0180010a14">
「健気なやつめ」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0180020a00">
「……光……」

{	SoundPlay("@mbgm30", 0, 1000, true);
	FwR("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0180030a14">
「そんなにもおれに追いつきたいか」

{	FwR("cg/fw/fw光_慈愛.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0180040a14">
「その愚直な執念はいとおしい。
　八幡宮で<RUBY text="・・">あれ</RUBY>を見せてやった甲斐もある」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0180050a00">
「……」

//【景明】
<voice name="景明" class="景明" src="voice/md02/0180060a00">
「お前には……わかっているのか？
　俺が何をしていたか……」

{	FwR("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0180070a14">
「一口にいえば、明鏡止水。
　雑念を捨て去り、光をより深く近しく感じ
取ろうとしたのであろう」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0180080a00">
「……」

{	FwR("cg/fw/fw光_慈愛.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0180090a14">
「ふっ……ふふ」

//【光】
<voice name="光" class="光" src="voice/md02/0180100a14">
「わかるさ。
　おまえの心の動きをつかむくらい、姫椿の
咲き頃を読むよりもたやすい」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵色100", 500, false);
	FadeDelete("絵演窓上*", 500, true);
	Delete("絵演窓上*");

//	DeleteStA(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　光は左手の人差し指で、植え込みの<RUBY text="つぼみ">蕾</RUBY>を示した。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	StC(1000, @0, @0, "cg/st/st光_通常_私服.png");
	FadeStC(300, false);

	SetFwR("cg/fw/fw光_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【光】
<voice name="光" class="光" src="voice/md02/0180110a14">
「あと二日だな」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0180120a00">
「……俺には、おまえがわからなかった」

{	FwR("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0180130a14">
「焦るでない」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　繊細な造形の指が戻り、俺の頬へ触れる。
　そこに付いていた土埃を、丁寧な仕草で拭った。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_慈愛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【光】
<voice name="光" class="光" src="voice/md02/0180140a14">
「光はここにいる……。
　おまえを置いて、逃げたりはしない」

{	FwR("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0180150a14">
「おまえが来るのを待っている」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0180160a00">
「…………」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　斬るべき――斬ろうと思った相手から、慰めめいた
言葉を掛けられる。
　何か、何処かで決定的に踏み違えているこの状況下、
俺の心は屈辱に沈むより、ただ混迷した。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0180170a00">
（これは何だ）

{	FwR("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0180180a00">
（<RUBY text="・・・・・">これは何だ</RUBY>）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　混迷する。

　その中から浮上するのは、単純な核心。
　それだけは間違いのない、一つの結論。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0180190a00">
（俺は――お前を殺さなくてはならない）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　手を伸ばす。
　穏やかに見詰めてくる光、その喉首へ。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0180200a00">
（すぐに。
　今、この瞬間に）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


	DeleteStA(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　光。
　お前が待つと言っても、俺は待てない。

　待つわけにはいかないのだ。

　時間を与えれば、お前は何をする？
　また、銀星号になるのだろう……。

　膨大な災禍を引き起こすのだろう。
　膨大な不幸を撒き散らすのだろう。
　膨大な死者を産み落とすのだろう。

　だから殺す。
　今、すぐに。

　その喉を捕まえ。
　一息に、握り潰して。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0180210a00">
「…………」

{	FwR("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0180220a14">
「……」

{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0180230a00">
「……っ……」

{	FwR("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0180240a14">
「苦しむか。景明……」

{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0180250a00">
「……」

{	FwR("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0180260a14">
「光は業深い。
　おまえの苦しみを甘露のように感じている」

{	FwR("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0180270a14">
「だが……
　やはり、そんなおまえを見るのは辛いと……
そう感じる部分もある」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　幾多の血を、幾多の断末魔を浴びた指が、俺の頬を
愛撫する。
　冷たいのか、温かいのか――俺にはわからなかった。

　わかりたくなかったのかもしれない。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	StC(1000, @0, @0, "cg/st/st光_通常_私服.png");
	FadeStC(300, false);

	SetFwR("cg/fw/fw光_瞋恚.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【光】
<voice name="光" class="光" src="voice/md02/0180280a14">
「……良かろう……」

//【光】
<voice name="光" class="光" src="voice/md02/0180290a14">
「景明。
　おまえの苦しみを拭ってやる」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);


//◆女王蟻村正、瞬時に登場
	OnSE("se人体_動作_一歩", 1000);
	StR(900, -115, -110, "cg/st/3d二世女王蟻_煽り.png");
	Request("@StR*", Smoothing);
	Zoom("@StR*", 0, 0, 3000, null, false);
	Zoom("@StR*", 100, 950, 950, null, false);
	FadeStR(300, true);

	Wait(500);

	SetFwR("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0180300a00">
「！」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIFO(0,150);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　その影は瞬時に現れた。

　白銀の女王蟻――二世村正。
　仕手の声なき指示を受けたのか。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm32", 0, 1000, true);
	SetFwR("cg/fw/fw光_瞋恚.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【光】
<voice name="光" class="光" src="voice/md02/0180310a14">
「光がわからないと言ったな……」

{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0180320a00">
「――――」

{	FwR("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0180330a14">
「わかるようにしてやろう。
　おまえの雑念、力ずくで払ってくれる」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆それっぽいＳＥ。卵生成

	CreateColorEXadd("たまご", 15000, "WHITE");
	DrawTransition("たまご", 0, 200, 200, 500, null, "cg/data/circle_01_00_0.png", true);


	OnSE("se特殊_その他_卵生成01", 1000);

	Fade("たまご", 500, 1000, null, true);
	Fade("たまご", 1000, 500, null, true);

	SetFwR("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0180340a00">
「それは……っ!?」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆回想・ＯＰの卵生成

	EfRecoIn1(18000,600);
	CreateTextureEX("イベ絵10", 1001, Center, Middle, "cg/ev/resize/ev101_プロローグ_cl.jpg");
	Request("イベ絵10", Smoothing);
	Zoom("イベ絵10", 0, 2000, 2000, null, false);
	Move("イベ絵10", 0, -1500, 300, null, false);
	Fade("イベ絵10", 1000, 1000, null, true);
	Fade("たまご", 0, 0, null, true);

	EfRecoIn2(300);

	WaitKey(1500);

//◆戻り
	EfRecoOut1(300);
	Delete("イベ絵*");
	Fade("たまご", 0, 500, null, true);
	EfRecoOut2(600,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　――――〝卵〟!?

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【光】
<voice name="光" class="光" src="voice/md02/0180350a14">
「〝波〟の結晶だ。
　これだけあれば、おまえにも効くだろう」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　波。
　精神汚染の波。

　銀星号が撒く、心を冒す疫病――

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆フラッシュバック。狂う人々

	EfRecoIn1(18000,600);

	Fade("たまご", 0, 0, null, true);
	CreateTextureEX("イベ絵10", 1001, Center, Middle, "cg/ev/ev002_銀星号事件イメージ２.jpg");
	Fade("イベ絵10", 0, 1000, null, true);


	EfRecoIn2(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　……俺を、あのようにするというのか!?

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	EfRecoOut1(300);
	Delete("イベ絵*");
	Fade("たまご", 1000, 500, null, true);
	CreateSE("SE10","se特殊_雰囲気_共鳴01");
	MusicStart("SE10",2000,700,0,1000,null,true);
	EfRecoOut2(600,true);

	SetFwR("cg/fw/fw光_瞋恚.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【光】
<voice name="光" class="光" src="voice/md02/0180360a14">
「おまえの雑念とは、とどのつまり外界全て」

{	FwR("cg/fw/fw光_哀愁.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0180370a14">
「いずれ光が破壊するものだが……
　それまで待てぬなら、そんなものを感じぬ
心になれ」

{	FwR("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0180380a14">
「これはおまえの心から欲求以外のすべてを
駆逐する。
　おまえの望みが光なら、光の事だけを考え
られるようになるだろう」

{	FwR("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0180390a00">
「止せ!!」

{	FwR("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0180400a14">
「案ずるな。一時のことだ。
　おまえの心にこのようなやり方で干渉する
のは、光としても本意ではない」

{	FwR("cg/fw/fw光_慈愛.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0180410a14">
「おまえを悩ませ苦しめる世界に終末が来た
後で、元に戻そう。
　その時の訪れを、静かな心で待っているが
いい」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　光の腕を振り払う――
　取り落とした刀を求める――
〝波〟の結晶から遠ざかる。逃げる――

　死力を尽くして、その全てを試みた。
　どれ一つとして、ままならなかった。

　光は俺を放さず、刀は何処にあるとも知れず、結晶
は近付いている。
　
　逃げられない。

　最後の抵抗を、俺は視線に込めた。

　魂の奥底まで憎悪の鉱脈を掘り尽くし、成果を叩き
つける。

　光も視線を返してきた。

　ただ、優しいだけだった。

　その優しさに絶望した。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――



//◆卵接近。ホワイトアウト？
	SetVolume("SE10", 1500, 1000, null);

	DrawTransition("たまご", 1500, 200, 1000, 500, Axl2, "cg/data/circle_01_00_0.png", false);
	Fade("たまご", 1500, 1000, null, true);

	CreateColorSPadd("絵フラ", 5000, "#FFFFFF");
	DeleteStA(0,true);
	Delete("たまご");
	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SE10", 1500, 0, null);

	CreateSE("SE01","se戦闘_攻撃_刀衝突01");
	CreateSE("SE02","se特殊_電撃_放電02");

//◆そこへ割り込む鋼線。村正の糸
	CreateTextureSP("絵背景20", 4800, Center, Middle, "cg/ef/ef018_蜘蛛の糸.jpg");
	DrawDelete("絵フラ", 100, 100, "beam_03_00_1", true);

//◆カキーン
	MusicStart("SE01",0,1000,0,1000,null,false);


//◆電磁バリヤー。

	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 0, 1000, null, true);

	CreateTextureSPadd("絵背景31", 4901, Center, Middle, "cg/ef/ef044_火花c.png");
	CreateTextureSP("絵背景30", 4900, Center, Middle, "cg/ef/ef035_蜘蛛網捕獲.jpg");

	MusicStart("SE02",0,1000,0,1000,null,false);
	Zoom("絵背景31", 1000, 4000, 4000, Axl1, false);
	Zoom("絵背景30", 1000, 1200, 1200, Dxl1, false);
	Rotate("絵背景31", 1000, @0, @0, @3000, Axl1,false);
	DrawDelete("絵フラ", 100, 100, "zoom_01_00_0", true);

	Wait(500);

	FadeDelete("絵背景*",300,true);

//◆蜘蛛村正

	StL(1100, @-60, @200, "cg/st/3d村正蜘蛛_俯瞰.png");
	Rotate("@StL*", 0, 0, 180, 0, null, false);

	OnSE("se人体_足音_鎧歩く03",1000);

	Move("@StL*", 400, @0, @50, Dxl2, false);
	FadeStL(300, true);


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0180420a01">
《御堂！》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0180430a00">
「……村正!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　聞き慣れた声に引き止められ、飛ばしかけた意識を
繋ぐ。
　村正がいる――俺の村正が。

　そう。
　村正の〝卵〟による汚染は、唯一、同じ村正の力で
のみ防ぐことができる。

　俺の危地を悟り、駆けつけてくれたのか……！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0, "cg/st/st光_通常_私服.png");
	StC(900, 380, -110, "cg/st/3d二世女王蟻_煽り.png");
	Request("@StC*", Smoothing);
	Zoom("@StC*", 0, 950, 950, null, true);
	FadeStC(300, false);
	FadeStR(300, false);

	SetFwC("cg/fw/fw光_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【光】
<voice name="光" class="光" src="voice/md02/0180440a14">
「……」

//【光】
<voice name="光" class="光" src="voice/md02/0180450a14">
「景明の村正……
　邪魔立てする気か？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0180460a01">
《むしろ邪魔をしない理由があったら教えて
欲しいんだけど！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆肉体変成
	CreateSE("SE01b","se特殊_その他_村正人間変化01");
	MusicStart("SE01b",0,1000,0,700,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	DeleteStL(0,true);
	StL(1000, @0, @0,"cg/st/st村正_通常_私服.png");
	FadeStL(0,true);
	WaitKey(500);
	FadeDelete("絵フラ", 1000, true);
	SetVolume("SE*", 1000, 0, null);


	SetFwC("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0180470a01">
「私の仕手から離れなさい！」

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md02/0180480a15">
《……ほう？》

{	FwC("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0180490a14">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　女王蟻は、村正の肉体化を見て興じたような<RUBY text="こえ">金打声</RUBY>
を響かせ。
　そして光は、そっと俺から両手を離し、体の向きを
変えた。

　今まで見た覚えのない表情がそこに覗いている。
　いや――――

　一度、あった。
　これに近いものが。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想：第五話、光復活直後。光と統。
	EfRecoIn1(18000,600);

	CreateTextureEX("イベ絵10", 1001, Center, Middle, "cg/bg/bg052_湊斗家道場_01.jpg");
	Fade("イベ絵10", 0, 1000, null, true);
	StR(1100, @0, @0, "cg/st/st光二年前_通常_私服.png");
	StL(1100, @0, @0, "cg/st/st統_通常_私服.png");
	FadeStL(0, false);
	FadeStR(0, true);

	EfRecoIn2(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　あの時。
　光が病床から起き上がり、母親と向き合った時に。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	EfRecoOut1(300);
	Delete("イベ絵*");
	DeleteStR(0,false);
	DeleteStL(0,true);
	DeleteStC(0,true);

	StR(1000, @0, @0, "cg/st/st光_通常_私服.png");
	StC(900, 380, -110, "cg/st/3d二世女王蟻_煽り.png");
	Request("@StC*", Smoothing);
	Zoom("@StC*", 0, 950, 950, null, true);
	StL(1000, @0, @0, "cg/st/st村正_通常_私服.png");
	FadeStA(0, true);

	EfRecoOut2(600,true);

	SoundPlay("@mbgm37", 0, 1000, true);

	SetFwC("cg/fw/fw光_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【光】
<voice name="光" class="光" src="voice/md02/0180500a14">
「……景明を導く役には立ってくれたが」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0180510a01">
「……」

{	FwC("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0180520a14">
「もう要らぬ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆光と村正。対峙

//■CGないからブラーとか？　inc櫻井
	OnSE("se特殊_陰義_幻影02", 1000);
	CreatePlainEX("絵板写", 100);
	Fade("絵板写", 0, 500, null, true);
	
	SetBlur("絵板写", 8, true, 400, 200);

	Fade("絵板写", 0, 500, Dxl1, true);
	Zoom("絵板写", 100, 1100, 1100, Dxl1, false);
	Fade("絵板写", 100, 1000, null, true);

	Zoom("絵板写", 500, 1000, 1000, Dxl1, false);
	Fade("絵板写", 500, 0, null, true);


	Delete("絵板写");

	SetFwC("cg/fw/fw光_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【光】
<voice name="光" class="光" src="voice/md02/0180530a14">
「砕けて散って、壊れてしまえ」

{	FwC("cg/fw/fw村正_苦悶.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0180540a01">
「く……っ！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 5000);
	StL(1000, @0, @2,"cg/st/st村正_戦闘_私服.png");
	Rotate("@StL*", 0, @0, @180, @0, null,true);
	Request("@StL*", Smoothing);
	FadeStL(0,true);
	FadeDelete("絵板写", 300, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　村正が身構える。

　仕手に装甲されていない状態でも、劒冑の戦闘能力
は生身の人間を遥かに凌ぐ。
　一対一の勝負で負ける事などまず有り得ない。

　が――
　こと光に限っては、そんな常識が通用する余地こそ
ない！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0180550a00">
「止めろ、光！」

{	FwC("cg/fw/fw光_驚き.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0180560a14">
「……景明」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0180570a00">
「村正を潰せば――
　俺はお前を許せなくなる！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　考え無しに、口をついた言葉だった。

　光が目を<RUBY text="みは">瞠</RUBY>る。

　――失敗した。
　
　直感は、その瞬間に訪れた。

　俺は言うべき言葉を完全に誤ったのだ。

　光の顔が凍っている。
　傷付いていた。

　視線が振り戻され、村正を見据える。
　その瞳はもはや俺からは見えなかったが――村正が
反射的に一歩退いた事で想像できた。

　光は破壊衝動の化身となっている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0180580a00">
（止めねば）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　肉体を駆り立てる。

　だが指一本すら動かない。
　抱えられている間に何かを仕掛けられていたのか。
それとも全神経が殺意に萎縮しているのか。

　動かない。
　しかし、動かねば――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_瞋恚.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【光】
<voice name="光" class="光" src="voice/md02/0180590a14">
「――――」

{	FwC("cg/fw/fw村正_苦悶.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0180600a01">
「……っ……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆光、攻撃準備
	Move("@StR*", 300, @-30, @0, Dxl2, false);
	OnSE("se人体_動作_一歩", 1000);

	WaitKey(500);

	SetFwC("cg/fw/fw二世女王蟻_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md02/0180610a15">
《御堂》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md02/0180620a15">
《良いのか？》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆下がる光
	WaitKey(500);
	Move("@StR*", 300, @30, @0, null, false);
	OnSE("se人体_動作_後ずさり01", 1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　……救いの手は。
　全く予測だにしなかった方角から来た。

　白銀の二世村正。
　宙に舞う女王蟻が、看過しえぬ響きを持った金打声
で、仕手の手足に歯止めを掛けている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【光】
<voice name="光" class="光" src="voice/md02/0180630a14">
「……」

//【光】
<voice name="光" class="光" src="voice/md02/0180640a14">
「良いのかとは、どういう意味だ。
　村正」

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md02/0180650a15">
《わからぬか？
　そうよな……これはなれには馴染まぬもの》

{	FwC("cg/fw/fw光_警戒.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0180660a14">
「早く言え。
　おまえこそわからないのか。おれの臓腑が
今、どれほど煮えているか」

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md02/0180670a15">
《わかるから止めた。
　御堂、それよ》

{	FwC("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0180680a14">
「何……？」

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md02/0180690a15">
《なれは今、敵意を抱いているぞ》

{	FwC("cg/fw/fw光_驚き.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0180700a14">
「――――!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　……そうか。
　村正の誓約、善悪相殺。

　過去、銀星号がそれに囚われずにいたのは敵意など
無く殺戮を展開していたから。
　敵意をもって殺したなら、光とて、その戒律からは
逃れられない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw二世女王蟻_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md02/0180710a15">
《ここで<RUBY text="それ">三世</RUBY>を壊せば……
　引き換えに失うものが何か》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md02/0180720a15">
《御堂、なれには自明であろう》

{	FwC("cg/fw/fw光_警戒.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0180730a14">
「……うぬ……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　光は天頂を見上げた。
　そこにある――<RUBY text="・・">待つ</RUBY>、何者かに許しを乞うように。

　それはしかし、与えられなかったのだろう。
　無念に満ちて、拳が固く握られる。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆光、去る。ずたずた。
	CreateSE("SE01","se人体_足音_歩く08");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetVolume("@mbgm*", 3000, 0, null);
	DeleteStR(500,false);
	DeleteStC(500,true);

	WaitKey(1000);
	SetVolume("SE*", 2000, 0, null);

	StL(1000, @0, @0,"cg/st/st村正_通常_私服.png");
	FadeStL(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　……足音荒く、光は去っていった。
　何とも稀有なことに。

　白銀の劒冑も、無言で消えた。
　こちらは現れた時と同様、音も何も無く。

　村正と二人、庭に残される。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm16", 0, 1000, true);
	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0180740a01">
「……御堂」

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0180750a01">
「大丈夫？
　なんか変なことされてない？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0180760a00">
「……ああ。
　お前が来てくれたお陰で、助かった」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　そう声にして、今の無事を噛み締める。
　本当に危険だった。

　汚染波の結晶を受けていたら……
　俺は今頃、この両手で、何をしていたのか。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フラッシュバック。狂う人々

	EfRecoIn1(18000,600);

//仮画像　inc櫻井
	CreateTextureEX("イベ絵10", 1001, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");
	Fade("イベ絵10", 0, 1000, null, true);

	EfRecoIn2(300);

	WaitKey(1500);

	EfRecoOut1(300);

	Delete("イベ絵*");

	EfRecoOut2(600,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　冷気が全身を貫く。
　氷を剥き出しの皮膚に当てたところで、こうはなら
ないだろう。

　余りにも恐ろしくおぞましい想像であった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0180770a00">
「有難う」

{	FwC("cg/fw/fw村正_照れ.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0180780a01">
「……いいのよ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0180790a00">
「お前も無事で良かった」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0180800a01">
「ええ……」

//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0180810a01">
「…………。
　今日のところは、母様に感謝しないといけ
ないのかしら……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0180820a00">
「……どうだろうな……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　互いに複雑な心境のまま、呟きを交わし合う。
　日差しは決して北風に一方的な敗北を喫してはいな
かったが、その温かさを感じる余裕を取り戻すには、
まだしばらく掛かりそうだった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 1500);
}

..//ジャンプ指定
//次ファイル　"md02_019.nss"