//<continuation number="640">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_043.nss_MAIN
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
	#bg103_普陀楽城外郭藤沢方面_01=true;
	#ev002_銀星号事件イメージ２=true;
	#bg002_空a_01=true;
	#bg001_空b_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_044.nss";

}

scene md04_043.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md04_042.nss"


//◆城周辺
//◆阿鼻叫喚


	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg103_普陀楽城外郭藤沢方面_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm37", 0, 1000, true);


	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	Wait(500);

	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430010a01">
「こんなっ……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　私は絶句と歯噛みと呻吟を全て同時にやった。
　芸の練習ではない。自然にそうなったのだ。

　攻城軍が撤退を始めたことで、ようやく城内へ入る
機会を得られたはずだった。
　いや、一度は実際に踏み入った。

　けれど、すぐに押し出された。
　
　狂躁の巷と化し剣林弾雨が縦横無尽に飛び交う城内
で踏み止まるのは不可能だったから。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆兵士ら、無差別闘争

	CreateTextureEX("兵士", 15000, @0, @0, "cg/ev/ev002_銀星号事件イメージ２.jpg");
	Fade("兵士", 1000, 1000, null, true);

	Wait(500);

	SetFwC("cg/fw/fw村正_凹む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430020a01">
（どうして、こんな）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　目前で起きていることが何なのか、それはわかって
いる。当の暴徒と化した彼らより理解している。
　銀星号が現れ、精神汚染を開始したのだ。それ以外
に考えられない。

　しかし、どうして伊豆堀越にいたはずの湊斗光――
銀星号が普陀楽城に現れるのか。
　足利茶々丸が連れてきたのか。

　だとすると、茶々丸の目的は何なのか。
　この城に破壊と殺戮の化身を解き放って、何の意味
があるのか――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆狂乱兵士
	FadeDelete("兵士",500,true);

	OnSE("se人体_衝撃_転倒02",1000);

	StL(1000, @-60, @110, "cg/st/st六波羅兵士_通常_制服.png");
	FadeStL(300, true);
	Move("@StL*", 500, @60, @-100, AxlAuto, true);
	OnSE("se戦闘_銃器_拳銃構え01", 1000);

	OnSE("se人体_衝撃_転倒04",1000);
	Move("@StL*", 500, @-10, @-10, AxlAuto, true);




	SetFwC("cg/fw/fw村正_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430030a01">
「お呼びじゃないったら！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆糸
	OnSE("se特殊_生物_蜘蛛の糸吐く01",1000);

	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 300, 1000, null, true);
	DeleteStL(0,true);
	CreateTextureSP("絵背景20", 4900, Center, Middle, "cg/ef/ef018_蜘蛛の糸.jpg");
	DrawDelete("絵フラ", 100, 100, "beam_03_00_1", true);

//◆カキーン
	CreateSE("SE01","se戦闘_攻撃_刀衝突01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("絵背景20",300,true);

	OnSE("se人体_衝撃_転倒03",1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　銃口を向けてきた狂兵に間一髪、先制して糸を放つ。
　全身を絡め取り、地面の上へ引き倒した。

　獣じみた無念の唸りを上げて、兵士がのたうち回る。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430040a01">
（こんなことやってる場合じゃない）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　真意はいまだ知れないにしろ、これが茶々丸の企図
したことならば、きっともう<RUBY text="・・・・・">最後の段階</RUBY>なのだ。
　何かが始まり、終わろうとしている。

　取り返しのつかない事態になる。

　御堂を取り戻せなくなる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_苦悶.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430050a01">
（……ここまで来て！）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　焦りが突き上げた。
　それでも、いくら首を巡らそうと、探査機能を働か
せようと、突破口は見つからない。

　周囲は混乱し、混迷し、混沌とし過ぎている。
　進むどころか、後退を続けなければ私自身がその中
に呑み込まれて揉み潰されるだろう。

　どうしたら……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆狂乱兵士三人

	OnSE("se戦闘_銃器_複数構える01",1000);

	StL(1100, @-60, @0, "cg/st/st六波羅兵士_通常_制服.png");
	StCL(1000, @160, @0, "cg/st/st六波羅兵士_通常_制服.png");
	StR(1000, @0, @0, "cg/st/st六波羅兵士_通常_制服.png");
	Rotate("@StR*", 0, @0, @180, @0, null,true);

	FadeStL(300, false);
	FadeStCL(300, false);
	FadeStR(300, true);

	SetFwC("cg/fw/fw村正_驚きa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430060a01">
「あっ――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　しまった。
　
　気付けば、暴徒の一群に接近を許していた。

　逃げるには近過ぎ、遅過ぎる。
　実力で立ち向かうには数が多過ぎる。

　彼らの銃が一斉に火を噴けば、いかにこの身が劒冑
でも……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_苦悶.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430070a01">
（間に合う!?）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆糸
	OnSE("se特殊_生物_蜘蛛の糸吐く01", 1000);

	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 300, 1000, null, true);

	DeleteStA(0,true);

	CreateTextureSP("絵背景20", 4900, Center, Middle, "cg/ef/ef018_蜘蛛の糸.jpg");
	DrawDelete("絵フラ", 100, 100, "beam_03_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　無数の糸を前方に発する。
　これで壁を作るだけの間があれば助かる――<k>しかし
――――<k>無理か！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆糸張り
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 300, 1000, null, true);
	OnSE("se特殊_生物_蜘蛛の糸吐く01", 1000);


	CreateTextureEX("絵背景20", 4900, Center, Middle, "cg/ef/ef035_蜘蛛網捕獲.jpg");
	Request("絵背景20", Smoothing);

	Fade("絵背景20", 0, 1000, null, true);
	DrawDelete("絵フラ", 100, 100, "beam_03_00_1", false);
	Zoom("絵背景20", 1500, 1200, 1200, Dxl2, false);

	Wait(1500);

	SetVolume("@mbgm*", 1000, 0, null);

	SetFwC("cg/fw/fwバロウズ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430080a03">
　　　　《<RUBY text="バロウズ">贋作弓聖</RUBY>――<RUBY text="ディスパーション・ショット">分散射撃</RUBY>》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆分散射撃
	OnSE("se戦闘_バロウズ_分散射撃", 1000);

	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 300, 1000, null, true);

	Wait(1000);

	CreateTextureSP("絵背景20", 4900, Center, Middle, "cg/ef/ef033_分散射撃.jpg");
	CreateTextureEXadd("絵背景30", 4900, Center, Middle, "cg/ef/ef033_分散射撃.jpg");

	SetVertex("絵背景30", 0, 0);

	OnSE("se戦闘_バロウズ_ボーガン射撃01", 1000);
	FadeF4("絵背景30", 500, 800, 1000, 0, 0, Axl2, false);
	Zoom("絵背景30", 1000, 1100, 1100, Dxl1, false);
	DrawTransition("絵フラ", 100, 1000, 0, 300, null, "cg/data/slide_03_00_1.png", true);

	Wait(700);
	DrawTransition("絵フラ", 200, 0, 1000, 300, null, "cg/data/slide_03_00_0.png", true);
	Delete("絵背景*");

	Wait(300);

	SetFwC("cg/fw/fw村正_驚きa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430090a01">
「……えっ？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	OnSE("se戦闘_攻撃_殴打連撃02_L",1000);
	Wait(800);
	SetVolume("OnSE*", 200, 0, null);

	OnSE("se戦闘_動作_鉄壁吹っ飛ばす",1000);

	FadeDelete("絵フラ",1000,true);

	OnSE("se人体_衝撃_転倒05",1000);
	Wait(200);
	OnSE("se人体_衝撃_転倒04",1000);
	Wait(200);
	OnSE("se人体_衝撃_転倒03",1000);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　蜂の巣にされた――そう思った、その瞬間。
　幾筋もの矢が飛来して、兵士達の武器を――腕ごと
――刺し貫いた。

　矢の勢力は相当のものだ。
　兵士の群れは更に吹き飛ばされ、転がってゆく。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆バロウズ
	CreateSE("SE01","se人体_足音_鎧歩く03");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateSE("se特殊_鎧_駆動音01", "se特殊_鎧_駆動音01");
	MusicStart("se特殊_鎧_駆動音01", 0, 1000, 0, 400, null, false);
	Wait(200);
	StC(1000, @-120, @0, "cg/st/3dバロウズ_立ち_通常.png");
	FadeStC(300, false);
	Move("@StC*", 300, @100, @90, Dxl1, false);
	Wait(200);
	SetVolume("@OnSE*", 0, 0, null);

	Shake("@StC*", 500, 0, 3, 0, 0, 600, Dxl2, true);
	Wait(300);
	OnSE("se特殊_鎧_駆動音01", 1000);
	Wait(200);	// 都合500のWaitを途中SEのタイミング併せて調整
	Move("@StC*", 800, @15, @-40, Dxl3, true);
	Wait(200);
	CreateSE("se特殊_鎧_駆動音01", "se特殊_鎧_駆動音01");
	MusicStart("se特殊_鎧_駆動音01", 0, 1000, 0, 600, null, false);
	Move("@StC*", 800, @-5, @-50, Axl1, true);
	Wait(200);

	SoundPlay("@mbgm18", 0, 1000, true);

	SetFwR("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430100a03">
「<RUBY text="くも">村正</RUBY>のお姫さま、ご無事？」

{	FwR("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430110a01">
「貴方……大鳥香奈枝!?」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　現れた武者の劒冑に覚えはなかった。
　けれど、声が記憶に触れる。

　一時期行動を共にすることもあった、彼女だ。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

//■時間経過？ inc櫻井
//	CreateColorEX("黒", 3000, "BLACK");
//	Fade("黒", 1000, 1000, null, true);
//	Fade("黒", 500, 0, null, true);
//	Delete("黒");

	SetFwR("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430120a01">
「……そう。あの大きな楽器！
　何か妙だとは思っていたのよ」

{	FwR("cg/fw/fw香奈枝_笑顔.png");}
//嶋：修正（説明して）【090930】
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430130a03">
「はい正解。
　詳しくご説明差し上げたいところです
けれど」

{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430140a03">
「そんな状況ではないかしら」

{	FwR("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430150a01">
「……そうね。残念ながら。
　でもお礼は言っておくから」

{	FwR("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430160a01">
「ありがとう」

{	FwR("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430170a03">
「いえいえ。
　ほんの気紛れです」

{	FwR("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430180a03">
「……ええ。本当に気紛れ。
　考えてみたら、助ける義理はありませんの
にね……何やってるのかしら、わたくし」

{	FwR("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430190a01">
「……？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　確かに、私と彼女は格別に親しくしていた間柄では
ない。
　しかし、彼女の呟きはそういう意味ではないような
気がした。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430200a01">
「まぁいいけど。
　それで貴方、こんな所にどうしているの？」

{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430210a03">
「もちろん城の中に用事があるのです。
　でも――」

{	FwR("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430220a01">
「私と同じ？
　……中に用事があるのに、この辺りでうろ
うろしている理由も」

{	FwR("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430230a03">
「ええ、多分」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆狂乱状態

	CreateTextureEX("兵士", 15000, @0, @0, "cg/ev/ev002_銀星号事件イメージ２.jpg");
	Fade("兵士", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　身近の危険は彼女の手で払われたが、状況は相変わ
らずだ。
　人型の肉食獣が駆け回る世界は、正気の者が近寄る
のを許さない。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	FadeDelete("兵士",500,true);

	SetFwR("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430240a01">
「けれど、貴方は武者でしょう。
　飛んでいけば済む話じゃない」

{	FwR("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430250a03">
「……ご存じないの？
　空がどうなっているか、ご覧になったら？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　空？
　
　促されて、私は上を見上げてみた。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆量産型銀星号ズ
	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	DeleteStC(0,true);
	OnBG(100, "bg001_空a_01.jpg");
	FadeBG(0, true);

	CreateCamera("カメラ１", Center, Middle, 500);
	SetAlias("カメラ１","カメラ１");

	CreateTextureEX("カメラ１/やられ役01a", 500, @200, @-200, "cg/st/3d零零式汚染_騎航_通常.png");
	CreateTextureEX("カメラ１/やられ役02a", 350, @400, @-0, "cg/st/3d零零式汚染_騎航_通常.png");
	CreateTextureEX("カメラ１/やられ役03a", 200, @400, @-300, "cg/st/3d零零式汚染_騎航_通常.png");
	CreateTextureEX("カメラ１/やられ役04a", 100, @500, @-200, "cg/st/3d零零式汚染_騎航_通常.png");
//	CreateTextureEX("カメラ１/やられ役01b", 500,  @200, @-200, "cg/st/3d零零式竜騎兵_騎航_発振.png");
//	CreateTextureEX("カメラ１/やられ役02b", 350,  @400, @-0, "cg/st/3d零零式竜騎兵_騎航_発振.png");
//	CreateTextureEX("カメラ１/やられ役03b", 200,  @400, @-300, "cg/st/3d零零式竜騎兵_騎航_発振.png");
//	CreateTextureEX("カメラ１/やられ役04b", 100,  @500, @-200, "cg/st/3d零零式竜騎兵_騎航_発振.png");

	Fade("カメラ１/やられ役01a", 0, 1000, null, false);
	Fade("カメラ１/やられ役02a", 0, 1000, null, false);
	Fade("カメラ１/やられ役03a", 0, 1000, null, false);
	Fade("カメラ１/やられ役04a", 0, 1000, null, false);

	Zoom("カメラ１/やられ役01*", 0, 600, 600, null, false);
	Zoom("カメラ１/やられ役02*", 0, 500, 500, null, false);
	Zoom("カメラ１/やられ役03*", 0, 300, 300, null, false);
	Zoom("カメラ１/やられ役04*", 0, 250, 250, null, false);

	Move("カメラ１/やられ役01*", 0, 41, -218, null, true);
	Move("カメラ１/やられ役02*", 0, -268, -45, null, true);
	Move("カメラ１/やられ役03*", 0, -429, -206, null, true);
	Move("カメラ１/やられ役04*", 0, -257, -304, null, true);

	Request("カメラ１/やられ役0*", Smoothing);

	OnSE("se戦闘_動作_空突進03", 1000);
	OnSE("se戦闘_動作_空突進06", 1000);
	CreateSE("停滞", "se戦闘_動作_空走行02_L");
	MusicStart("停滞", 2000, 700, 0, 1000, null,true);


$ループムーブナット名 = "@カメラ１/やられ役01*";
$ループムーブタイム = 25000;

$ループムーブナット名２ = "@カメラ１/やられ役02*";
$ループムーブタイム２ = 20000;

$ループムーブナット名３ = "@カメラ１/やられ役03*";
$ループムーブタイム３ = 15000;

$ループムーブナット名４ = "@カメラ１/やられ役04*";
$ループムーブタイム４ = 10000;

	CreateProcess("プロセス１", 150, 0, 0, "FlyMoving");
	CreateProcess("プロセス２", 150, 0, 0, "FlyMoving2");
	CreateProcess("プロセス３", 150, 0, 0, "FlyMoving3");
	CreateProcess("プロセス４", 150, 0, 0, "FlyMoving4");
	SetAlias("プロセス１","プロセス１");
	SetAlias("プロセス２","プロセス２");
	SetAlias("プロセス３","プロセス３");
	SetAlias("プロセス４","プロセス４");

	Request("プロセス１", Start);
	Request("プロセス２", Start);
	Request("プロセス３", Start);
	Request("プロセス４", Start);

	MoveCamera("@カメラ１", 0, -100, -100, @0, null, true);

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_01_02_1.png", false);
	MoveCamera("@カメラ１", 500, 50, 200, @300, Dxl1, true);
	Delete("黒幕１");

	SetBlur("カメラ１/やられ役0*", true, 1, 500, 100, false);

	Wait(500);

	OnSE("se戦闘_動作_空突進01", 1000);
	OnSE("se戦闘_動作_空突進02", 1000);

	SetBlur("カメラ１/やられ役0*", false, 1, 500, 100, false);
	MoveCamera("@カメラ１", 300, -1000, -300, @500, Axl2, true);

	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Delete("カメラ*");
	Request("プロセス*", Stop);
	Delete("プロセス*");

	CreateTextureSP("量産02", 1000, OutLeft, Middle, "cg/st/3d零零式汚染_騎航_通常.png");
	CreateTextureSP("量産04", 1000, OutLeft, Middle, "cg/st/3d零零式汚染_騎航_通常.png");
	CreateTextureSP("量産03", 1090, OutLeft, Middle, "cg/st/3d零零式汚染_騎航_通常.png");
	CreateTextureSP("量産01", 1090, OutLeft, Middle, "cg/st/3d零零式汚染_騎航_通常.png");

	Move("量産02", 0, @0, @-180, null, true);
	Move("量産04", 0, @0, @-60, null, true);
	Move("量産03", 0, @0, @60, null, true);
	Move("量産01", 0, @0, @180, null, true);

	Zoom("量産01", 0, 500, 500, null, true);
	Zoom("量産03", 0, 500, 500, null, true);
	Zoom("量産02", 0, 250, 250, null, true);
	Zoom("量産04", 0, 250, 250, null, true);

	SetBlur("量産*", true, 2, 200, 50, false);

	SetVolume("停滞", 1000, 0, null);
	OnSE("se戦闘_動作_空突進02", 1000);

	DrawTransition("黒幕１", 200, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("黒幕１");

	OnSE("se戦闘_動作_空突進01", 1000);
	$なんとなくランダム=Random(10)*100;
	$Ｘ移動値１=1300+$なんとなくランダム;
	Move("量産01", 300, $Ｘ移動値１, @0, Axl1, true);
	$なんとなくランダム=Random(10)*100;
	$Ｘ移動値２=1300+$なんとなくランダム;
	Move("量産02", 300, $Ｘ移動値２, @0, Axl1, true);

	OnSE("se戦闘_動作_空突進03", 1000);
	$なんとなくランダム=Random(10)*100;
	$Ｘ移動値３=1300+$なんとなくランダム;
	Move("量産03", 300, $Ｘ移動値３, @0, Axl1, true);
	$なんとなくランダム=Random(10)*100;
	$Ｘ移動値=1300+$なんとなくランダム;
	Move("量産04", 300, $Ｘ移動値, @0, Axl1, true);

	SetFwC("cg/fw/fw村正_驚きa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430260a01">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　声を失う。

　無数の星が輝いていた。
　白銀の――手足と翼と刃を持つ星。

　狂気の唄を高らかに歌いながら、天を踊り。
　挑み掛かってくる武者を……あるいは逃げ延びよう
とする武者を、暴力的な性能差で撃ち墜としてゆく。

　それは、かの銀星号ではない。
　別のものだ。

　けれども、あらゆる意味で酷似していた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	Delete("量産*");

	OnBG(100, "bg103_普陀楽城外郭藤沢方面_01.jpg");
	FadeBG(0, true);

	StL(1000, @0, @0, "cg/st/3dバロウズ_立ち_通常.png");
	FadeStL(0, false);


	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);
	Delete("黒幕１");


	SetFwC("cg/fw/fw村正_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430270a01">
「ふ……複製!?
　そんな、あんなにたくさん！」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430280a03">
「以前、景明さまが教えて下さいました。
　銀星号は〝卵〟を用いて増殖すると……」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430290a03">
「やはり、あれがそうなのですね？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　返す言葉もなく、私は首を頷かせだけした。
　
　これも……茶々丸の？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430300a03">
「あんなものが陣取っていては、とても空に
上がれません。
　一騎や二騎なら躱せますけど、あれでは数
が多過ぎますもの」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430310a01">
「……そ、そうね……」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430320a03">
「といって、地上もこの有様。
　劒冑のあなたも武者のわたくしも、並んで
立ち往生するしかないわけです」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　納得した。
　納得はしたが、何ら建設的な成果を得られなかった。

　同じように困っている人間を発見しただけだ。
　同情し合うくらいのことしかできない。

　そして私には、おそらく彼女にも、そんな暇は無い。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430330a03">
「……でも……」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430340a01">
「何？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430350a03">
「あなた一人なら、何とか城内へ送り込める
かもしれない。
　わたくしが力を貸せば……」

{	FwC("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430360a01">
「え？
　……それ本当？」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430370a03">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　大鳥香奈枝はしばし沈思する風だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430380a03">
「……そう、ね……
　考えてみたら、わたくしでは難しいし……」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430390a03">
「城の内部へ入れたとしても、この状況では
武装を解けない。けれど西洋の劒冑を纏った
まま邦氏殿下に近付けるとも思えない。
　……これは無理」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430400a03">
「なら――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　細い瞳がこちらへ向けられる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430410a03">
「あなたの目的は、景明さまに会うこと？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430420a01">
「……そうよ」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430430a03">
「でしたら、あのかたに伝言をお願いします。
　――進駐軍は決戦兵器鍛造雷弾を使用する」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430440a03">
「これが普陀楽に投下された時、城の人間は
全滅するでしょう。
　いえ、もしかしたら鎌倉市街にまで被害が
及ぶかもしれない」

{	FwC("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430450a01">
「……はぁ!?」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430460a03">
「いいから。今は疑わず信じて、景明さまに
そのまま伝えてください。
　――この作戦を未然に防ぐ方法は、<RUBY text="・・・">六波羅</RUBY>
<RUBY text="・・・・・・・・">幕府を消滅させる</RUBY>ことだけ」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430470a03">
「敵がいなければ爆弾投下はできませんから。
　鍵は足利四郎邦氏」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430480a03">
「伝言は以上です。
　よろしくて？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430490a01">
「え、ええ」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430500a03">
「本当はわたくしがやるつもりだったのです
けど……どうも見込みが無さそうなので。
　あなたと景明さまにお願いします」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430510a03">
「わたくしは万一に備えて鎌倉の人々を避難
させましょう。
　舞殿宮殿下や署長さんとも協力して、少し
でも被害を減らします」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430520a01">
「わかった。
　けど、どうやって私を城内に送るの？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430530a03">
「さっきの糸を出してくださいまし」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430540a01">
「？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430550a03">
「それを、この矢に」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　大鳥香奈枝は自騎の主兵装と<RUBY text="おぼ">思</RUBY>しき石弓を示した。
　太い矢が装填されている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430560a01">
「絡めればいいの？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430570a03">
「ええ」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430580a01">
「……」

{	FwC("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430590a01">
「あっ……そういうこと！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　私は合点した。
　――そんなやり方があったなんて。

　余りに大雑把で乱暴だが、不平は言っていられない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430600a03">
「よろしい？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430610a01">
「ええ！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_バロウズ_ボーガン構え02",1000);

	StL(1000, @0, @0,"cg/st/3dバロウズ_立ち_戦闘.png");
	FadeStL(500,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　彼女の騎体が射撃体勢をとる。
　私は体の力を抜いて、訪れる一瞬に備えた。

　……本来、劒冑は劒冑単独では騎航できない。
　鳥や蝶の独立形態を持つなら別だが。通常、劒冑は
仕手と合一して武者となり、初めて空へ舞い上がる力
を手に入れる。

　だから今の私は飛べない。
　
　<RUBY text="・・">裏技</RUBY>でも使わない限りは！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆発射

	OnSE("se戦闘_バロウズ_ボーガン射撃02", 1000);
	CreateColorSP("白幕", 25000, "WHITE");
	DrawTransition("白幕", 300, 0, 1000, 100, null, "cg/data/slide_05_00_1.png", true);

	DeleteStL(0,true);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/ef/ef038_汎用射撃.jpg");
	Request("絵背景100", Smoothing);
	Rotate("絵背景100", 0, @0, @0, @180, null,true);
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	SetBlur("絵背景100", true, 2, 300, 70, false);

	Zoom("絵背景100", 500, 1010, 1010, Dxl2, false);
	DrawTransition("白幕", 300, 1000, 0, 100, null, "cg/data/circle_01_00_1.png", true);
	Delete("白幕");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　引き絞られた弦が解き放たれる。

　矢は風を裂き、虚空を疾駆した。
　糸で結ばれた私を連れて。

　並みの矢にこんな芸当はできない。
　しかし武者の剛弓から撃ち出される矢なら――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆飛翔
	CreateTextureEX("絵背景250", 100, Center, Middle, "cg/bg/bg001_空b_01.jpg");
	Request("絵背景250", Smoothing);
	CreateTextureEXadd("絵背景200", 100, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	Request("絵背景200", Smoothing);
	OnSE("se戦闘_動作_空突進01",1000);
	OnSE("se戦闘_動作_空突進04",1000);

	Shake("絵背景200", 700, 3, 5, 0, 0, 1000, Dxl2, false);
	Fade("絵背景200", 150, 1000, null, false);
	Shake("絵背景250", 700, 3, 5, 0, 0, 1000, Dxl2, false);
	FadeF4("絵背景250", 150, 1000, 2000, 0, 0, Dxl2, false);
	Zoom("絵背景250", 2000, 1500, 1500, Dxl1, false);
	Zoom("絵背景200", 700, 1100, 1100, null, true);

	Wait(500);

	Delete("絵背景100");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　精神汚染がもたらす地獄絵図の上を越えてゆく。
　それは広範囲だったものの、この勢いがあれば楽に
渡り切れるだろう。

　城壁をも越えて。
　城の中へ、文字通り飛び込む……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆量産型銀星号。上から襲う
	CreateColorSP("白", 25000, "WHITE");
	DrawTransition("白", 300, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);

	Delete("絵背景*");

	OnBG(100, "bg001_空a_01.jpg");
	FadeBG(0, true);

	CreateTextureEX("量産01", 1090, center, @-600, "cg/st/3d零零式汚染_騎航_通常.png");
	Zoom("量産01", 0, 100, 100, null, false);
	SetBlur("量産01", true, 2, 300, 70, false);

	DrawTransition("白", 300, 1000, 0, 100, null, "cg/data/slide_03_01_1.png", true);
	Delete("白");

	OnSE("se戦闘_動作_空突進08", 1000);
	Fade("量産01", 100, 1000, null, false);
	Zoom("量産01", 500, 500, 500, Dxl2, false);
	Move("量産01", 500, @0, -400, Dxl2, true);

	SetFwC("cg/fw/fw村正_驚きa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430620a01">
「……っ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　突然だった。
　上方から一騎――銀星号の複製！

　この速度でも捕捉された!?
　……まずい。

　劒冑としての反射的計算が告げている。
　私の進路と敵騎の降下軌道は交差する――つまりは
攻撃を浴びる。

　避けられない。
　避けようがない！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 500, 0, null);

	CreateColorEX("黒", 3000, "BLACK");
	Fade("黒", 0, 1000, null, true);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//◆ＣＧ処理？
　
　ウィリアム・テルの矢は決して林檎に届かない。
　　　　<PRE>The paradox of "Tell and apple".</PRE>

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//―――――――――――――――――――――――――――――

//◆軌道変化
	SetBlur("量産01", false, 2, 300, 70, false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	OnSE("se戦闘_動作_空突進01",1000);

	Fade("黒", 0, 0, null, true);
	Zoom("量産01", 600, 2000, 2000, Axl1, false);
	Wait(300);
	Move("量産01", 300, @-2000, @0, null, false);

	Wait(200);

	Fade("絵フラ", 0, 1000, null, true);
	OnSE("se戦闘_バロウズ_ボーガン射撃01", 1000);
	Delete("黒");
	Delete("量産");


	CreateTextureSP("絵背景20", 4900, Center, Middle, "cg/ef/ef025_パラドックスシューティングa.jpg");
	DrawDelete("絵フラ", 100, 100, "beam_03_00_1", true);

	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 0, 1000, null, true);
	OnSE("se戦闘_バロウズ_ボーガン射撃02", 1000);


	CreateTextureSP("絵背景20", 4900, Center, Middle, "cg/ef/ef025_パラドックスシューティングb.jpg");
	DrawDelete("絵フラ", 100, 100, "beam_03_00_1", true);

	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 0, 1000, null, true);
	OnSE("se戦闘_バロウズ_ボーガン射撃02", 1000);


	CreateTextureSP("絵背景20", 4900, Center, Middle, "cg/ef/ef025_パラドックスシューティングc.jpg");
	DrawDelete("絵フラ", 100, 100, "beam_03_00_1", true);

	Wait(500);

	CreateColorEX("黒", 15000, "WHITE");
	Fade("黒", 500, 1000, null, true);

	Delete("絵背景*");

	SetFwC("cg/fw/fw村正_驚きa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0430630a01">
「――――え……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　<RUBY text="このよのことわり">物理法則</RUBY>が歪曲する。

　矢は、<RUBY text="・・">屈折</RUBY>し。
　白銀の騎体には空白を貫かせ、そのまま置き去って
嘲笑う。

　……避けられないはずの死地を、如何なる理由でか
私は回避した。
　
　そうして遂に、普陀楽城へ降り立った。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆元の場所
//◆香奈枝

	OnBG(100, "bg103_普陀楽城外郭藤沢方面_01.jpg");
	FadeBG(0, true);

	CreateTextureSPadd("絵演弓聖覆", 1011, Center, InBottom, "cg/st/3dバロウズ_立ち_陰義.png");
	CreateTextureSP("絵演弓聖", 1010, Center, InBottom, "cg/st/3dバロウズ_立ち_戦闘.png");
	Move("絵演弓聖*", 0, @-256, @0, null, true);

	FadeDelete("黒",1000,true);

	FadeDelete("絵演弓聖覆", 2000, true);

	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0430640a03">
「……やると言ったことはきっちりやり遂げ
ないとね。
　ばあやに鼻で笑われてしまうもの」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);
}

..//ジャンプ指定
//次ファイル　"md04_044.nss"