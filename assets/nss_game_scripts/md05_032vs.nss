//<continuation number="430">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_032vs.nss_MAIN
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
	#bg110_月面b=true;
	#bg073_海c_02 = true;
	#ev939_執念の銀星号_a=true;
	#ev939_執念の銀星号_b=true;
	#ev213_景明と村正の結縁_b=true;
	#ev239_茶々丸の最期_c=true;
	#bg109_宇宙空間=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md05_033.nss";

}

scene md05_032vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md05_031a.nss"

//◆飢餓虚空崩壊。ef037系を適当に加工もしくはef041
//◆汚染時用ボックス

	PrintBG("上背景", 30000);
	CreateSE("SE", "se特殊_その他_辰気収斂_L");
	MusicStart("SE", 1000, 1000, 0, 1000, null,true);


	CreateTextureEX("絵背景村正", 3500, Center, Middle, "cg/st/3d銀星号_特殊_ダメージ.png");
	Rotate("絵背景村正", 0, @0, @0, @50, null,true);
	Move("絵背景村正", 0, @0, @0, null, true);

	Request("絵背景村正", Smoothing);
	Zoom("絵背景村正", 0, 1000, 1000, null, true);
	SetBlur("絵背景村正", true, 1, 500, 70, false);


$ループムーブナット名 = "@絵背景村正";
$ループムーブタイム = 25000;

	CreateProcess("プロセス５", 150, 0, 0, "FlyMoving");
	SetAlias("プロセス５","プロセス５");


//	CreateTextureEXsub("絵背景効果線", 3000, Center, Middle, "cg/ef/ef039_時間移動.jpg");
//	SetVertex("絵背景効果線", 512, 270);
//	$効果ナット名 = @絵背景効果線;

//	CreateProcess("プロセス６", 150, 0, 0, "TurboBlur");
//	SetAlias("プロセス６","プロセス６");



	CreateTextureSPover("絵背景100", 200, Center, Middle, "cg/ef/ef037_飢餓虚空魔王星b.jpg");
	CreateTextureSPover("絵背景200", 200, Center, Middle, "cg/ef/ef037_飢餓虚空魔王星b.jpg");
	Request("絵背景200", Smoothing);
	Zoom("絵背景200", 0, 4000, 4000, null, true);
	Fade("絵背景200", 0, 700, null, true);
	Request("絵背景100", Smoothing);
	Zoom("絵背景100", 0, 4000, 4000, null, true);
	Fade("絵背景100", 0, 700, null, true);


	CreateTextureEX("ノイズ", 100, Center, Middle, "cg/ef/ef037_飢餓虚空魔王星b.jpg");
	Request("ノイズ", Smoothing);
	Zoom("ノイズ", 0, 1500, 1500, null, true);
	DrawEffect("ノイズ", 50, "SuperWave", 20, 30, null);
	Fade("ノイズ", 0, 1000, null, true);


	$ローテートナット名１ = @絵背景100;
	$ローテート速度１ = 100000;
	$ローテート角度１ = @3600;

	$ローテートナット名２ = @絵背景200;
	$ローテート速度２ = 100000;
	$ローテート角度２ = @3600;

	$ズームナット名１ = @絵背景100;
	$ズームナット名２ = @絵背景200;


	CreateProcess("プロセス１", 150, 0, 0, "AnkokuZoomLoopEX");
	SetAlias("プロセス１","プロセス１");
	CreateProcess("プロセス２", 150, 0, 0, "RotetoLoop1");
	SetAlias("プロセス２","プロセス２");
	CreateProcess("プロセス３", 150, 0, 0, "TurboBlur3");
	SetAlias("プロセス３","プロセス３");
	CreateProcess("プロセス４", 150, 0, 0, "RotetoLoop2");
	SetAlias("プロセス４","プロセス４");

	Request("プロセス１", Start);
	Request("プロセス２", Start);
	Request("プロセス３", Start);
	Request("プロセス４", Start);
	Request("プロセス５", Start);
//	Request("プロセス６", Start);


	Rotate("絵背景村正", 6000, @0, @0, @90, null,false);
	Zoom("絵背景村正", 6000, 200, 200, null, false);
	Fade("絵背景村正", 1000, 1000, null, false);

	FadeDelete("上背景", 2000, true);

	Wait(1500);
	Wait(2000);
	CreateColorSP("白", 25000, "BLACK");
	DrawTransition("白", 300, 0, 1000, 500, null, "cg/data/effect_01_00_0.png", true);

	Delete("絵背景村*");

	Wait(16);
	CreatePlainSP("絵板写", 5500);
	Request("絵板写", MulRender);

	Wait(16);


	Request("プロセス*", Stop);
	Delete("プロセス*");
	Delete("ノイズ");
	Delete("絵背景*");
	SetVolume("SE", 2000, 0, null);

//	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg205_旋回演出背景宇宙_01.jpg");
	CreateSE("サウンド１","se特殊_その他_辰気収斂_L");
	MusicStart("サウンド１",2000,700,0,500,null,true);

	CreateTextureSP("背景１", 100, 0, 0, "cg/bg/bg110_月面b.jpg");
	CreateTextureSP("エフェクト１", 100, 0, 0, "cg/ef/ef041_青い波動a.jpg");
	Fade("エフェクト１", 0, 500, null, true);


	Wait(1000);

	OnSE("se特殊_その他_辰気流蒸発", 1000);
	DrawDelete("絵板写", 4000, 500, "effect_01_00_0", false);

	FadeDelete("白", 3000, true);

	Wait(3000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　<RUBY text="おれ">私</RUBY>は世界へ帰還した。

　無とされた<RUBY text="おれ">私</RUBY>が有へ復元した事により、
　無の事象であった黒き渦は存在を論理的に否定され、
崩壊へと至る。

　裂けて散りゆく漆黒――
　それは星の死に見えた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw二世女王蟻_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/032vs0010a15">
《……見事……》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/032vs0020a15">
《もはや言うことはない。
　<RUBY text="あ">冑</RUBY>が娘……三世右衛門尉村正よ》

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/032vs0030a01">
《――――》

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/032vs0040a15">
《なれは己と仕手の能を駆使して五階層方陣
を解き明かし、辰気の調和を導いた》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/032vs0050a15">
《なれの仕手は、なれを過信せず誤解せず、
正しい理解と信頼を置き、その<RUBY text="きずな">結縁</RUBY>をもって
〝辰気の地獄〟を覆した》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/032vs0060a15">
《……見事な心甲一致よ……》

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/032vs0070a01">
《――――》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/032vs0080a01">
《――母様》

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/032vs0090a15">
《だが心せよ》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/032vs0100a15">
《<RUBY text="あれ">冑</RUBY>は敗れ、もはや眠るのみだが……
　<RUBY text="あ">冑</RUBY>が仕手はまだ敗れておらぬ》

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/032vs0110a01">
《！》

{	FwC("cg/fw/fw光_愕然.png");}
//【光】
<voice name="光" class="光" src="voice/md05/032vs0120a14">
《ぐぁぁぁぁァァァァァァ!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm37",0,1000,true);

//◆飛び出す銀星号（瀕死）右腕無し。
	CreateTextureEX("背景２", 100, 0, 0, "cg/ev/ev939_執念の銀星号_a.jpg");
	Zoom("背景２", 0, 2000, 2000, null, true);
	SetBlur("背景２", true, 2, 500, 100, false);

	OnSE("se特殊_鎧_ひび割れ02",1000);

	Zoom("背景２", 1000, 1000, 1000, Dxl2, false);
	Fade("背景２", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　それは既に、白銀の流星と呼ばれた姿ではない。

　翼は裂け、
　甲鉄は<RUBY text="ひび">罅</RUBY>割れ、
　右腕に至っては喪失している。

　全能総力を傾注した極技が破られる――その意味を、
克明に物語る姿だった。
　
　敵に向けるべき威力が、己に降り掛かるのだ。

　劒冑がほぼ機能を止めるのは当然。
　むしろ完全停止させまいと支え、自らをも立ち上が
らせる仕手の死力こそ信じ難い。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_怒り.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【光】
<voice name="光" class="光" src="voice/md05/032vs0130a14">
《蜘蛛の村正ッッ!!》

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/032vs0140a01">
《――――》

{	FwC("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md05/032vs0150a14">
《奪うのか……》

{	FwC("cg/fw/fw光_愕然.png");}
//【光】
<voice name="光" class="光" src="voice/md05/032vs0160a14">
《おまえが奪うのか！》

{	FwC("cg/fw/fw光_哀愁.png");}
//【光】
<voice name="光" class="光" src="voice/md05/032vs0170a14">
《かつては母が、父を奪った》

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/032vs0180a14">
《今度は――おまえが景明を！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　武者ではない。もう武者ではないのだ。
　壊れかけの体で立つ白銀のもの、あれは――

　憤怒。
　怨念。
　狂執。

　悲嘆。
　絶望。
　哀訴。

　唯一つの願いに起因する激情の波濤。

　それであった。
　それが――押し寄せる。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se特殊_鎧_装着04",1000);

	CreateTextureEX("背景１", 100, 0, 0, "cg/ev/ev939_執念の銀星号_b.jpg");
	SetBlur("背景１", true, 2, 500, 100, false);
	Fade("背景１", 250, 1000, null, false);
	Zoom("背景１", 300, 1200, 1200, Dxl2, true);
	Zoom("背景１", 500, 1000, 1000, AxlDxl, true);

	SetFwC("cg/fw/fw光_怒り.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【光】
<voice name="光" class="光" src="voice/md05/032vs0190a14">
《返せェッッ!!》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//―――――――――――――――――――――――――――――

//◆汚染重力波
	CreateTextureEX("エフェクト１", 100, 0, 0, "cg/ef/ef003_汎用移動.jpg");

	OnSE("se特殊_陰義_重力波01",1000);
	OnSE("se特殊_陰義_重力波01",1000);
	SetVolume("サウンド１", 2000, 0, NULL);

	Fade("エフェクト１", 500, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　残る左手から撃ち出された波動を、咄嗟に野太刀で
受け止める。
　
　これは……重力衝撃波？

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//―――――――――――――――――――――――――――――

//◆汚染の演出
	CreateTextureEX("エフェクト２", 100, 0, 0, "cg/ef/ef034_精神汚染.jpg");

	CreateSE("サウンド２","se戦闘_銀星号_精神汚染波_L");
	MusicStart("サウンド２",2000,700,0,500,null,true);

	EffectZoomadd(10000, 1000, 100, "cg/ef/ef034_精神汚染.jpg", false);
	Fade("エフェクト２", 500, 1000, null, true);
	Fade("エフェクト１", 0, 0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　――違う。

　これは精神干渉の辰気。

　その力が余りに強烈過ぎるため、<RUBY text="・・・">余波で</RUBY>破壊振動が
生じている！

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0,0);//―――――――――――――――――――――――――――――

//◆汚染

	SetFwC("cg/fw/fw村正武者_通常b.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/032vs0200a01">
《――――ッ!!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　力ずくで、<RUBY text="おれ">私</RUBY>の合一を解くつもりか。

　だが無謀。
　どう考察しても、こちらの抵抗が破られるより敵の
限界の方が早い。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw光_警戒.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【光】
<voice name="光" class="光" src="voice/md05/032vs0210a14">
《景明はおまえを望んだ……。
　おまえもなのか、蜘蛛！》

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/032vs0220a14">
《景明を喰らい、己の内側に溶かし込むのが
おまえの望みか！》

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/032vs0230a01">
《――――》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆汚染

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　野太刀を盾とし、干渉波の侵略を阻止する。
　耐え、耐え凌ぐ。

　おそらくは、あと数秒。
　それだけ持ち堪えれば、敵は力尽きるはず。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_怒り.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【光】
<voice name="光" class="光" src="voice/md05/032vs0240a14">
《景明を消すのか！》

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/032vs0250a01">
《――――》

{	FwC("cg/fw/fw光_愕然.png");}
//【光】
<voice name="光" class="光" src="voice/md05/032vs0260a14">
《光の手の届かぬ処へ、奪い去るために》

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/032vs0270a14">
《喰らい込めて！
　消してしまう、と!!》

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/032vs0280a01">
《――…………》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　<RUBY text="おれ">私</RUBY>は――――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆汚染波強まる

	SetFwC("cg/fw/fw光_警戒.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【光】
<voice name="光" class="光" src="voice/md05/032vs0290a14">
《おまえの中に溶け切ってしまえば、景明は
二度と戻らない……》

//【光】
<voice name="光" class="光" src="voice/md05/032vs0300a14">
《未来永劫、光のもとに来ない！》

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/032vs0310a14">
《そんなことを――許せるかぁ!!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　消える。

　湊斗景明が消失する。

　――だから、何か？

　そんな事は、

　<RUBY text="おれ">私</RUBY>にとって、何の問題ともならない。
　
　<RUBY text="わたし">私</RUBY>にとって、それは――――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆崩壊の兆候っぽく
	SetVolume("サウンド２", 1000, 1, NULL);

	CreateColorEX("色２", 10000, "#000000");
	Fade("色２", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　<RUBY text="おれ">私</RUBY>――

　<RUBY text="わたし">私</RUBY>――

　……私は……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想：景明と村正の結縁
	CreateTextureEX("イベント１", 18000, 0, 0, "cg/ev/ev213_景明と村正の結縁_b.jpg");
	SetTone("イベント１", Sepia);
	CreateColorEX("色１", 19999, "#FFFFFF");

	Fade("色１", 100, 1000, null, true);
	Fade("イベント１", 0, 1000, null, true);
	Fade("色１", 1000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　手を差し伸べてくれた、あの人に――

　応えて。

　力になって。

　どんなことでも、支えになって。

　――最後には、
　幸せになって欲しい、と、

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆汚染波
	Fade("色１", 1000, 1000, null, true);
	Fade("エフェクト２", 0, 0, null, true);
	Fade("イベント１", 0, 0, null, true);
	Fade("色２", 0, 0, null, true);

	OnSE("se特殊_陰義_重力波01",1000);

	Fade("色１", 500, 0, null, false);
	Zoom("背景１", 300, 1200, 1200, Dxl2, true);
	Zoom("背景１", 500, 1000, 1000, AxlDxl, true);

	SetFwC("cg/fw/fw光_怒り.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【光】
<voice name="光" class="光" src="voice/md05/032vs0320a14">
《景明を返せぇぇぇッッ!!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　だから、
　私は、

　<RUBY text="あのひと">景明</RUBY>に、

　消えて欲しくなんて、

　ない――――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆防御破られる
//◆波動に押し流される村正
//◆通常ボックス

	SetVolume("@mbgm*", 1000, 0, NULL);
	OnSE("se戦闘_攻撃_殴る05",1000);

	Fade("色１", 0, 1000, null, true);

	Wait(3000);

	CreateSE("サウンド１","se特殊_その他_辰気収斂_L");
	MusicStart("サウンド１",2000,700,0,500,null,true);

	CreateTextureSP("背景１", 100, 0, 0, "cg/bg/bg110_月面b.jpg");
	CreateTextureSP("エフェクト１", 100, 0, 0, "cg/ef/ef041_青い波動a.jpg");
	Fade("エフェクト１", 0, 500, null, true);

	Fade("色１", 2000, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　重力の激流に呑まれながら自覚する。

　俺、だ。

　湊斗景明が戻っている。

　……いけない。

　俺ではこの戦いに勝てないのだ。

　己を殺し切り、
　世界を守るためにだけ戦える、
　
　無我の英雄でなければ――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆野太刀
//◆砕ける
	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/ev/ev926_野太刀全容.jpg");
	Fade("絵背景100", 500, 1000, null, true);
	Wait(1000);

	OnSE("se戦闘_攻撃_鎧_剣戟04",1000);
	Fade("色１", 0, 1000, null, true);
	FadeDelete("絵背景100", 0, true);
	Wait(500);

	Fade("色１", 1000, 0, null, true);

	SetFwC("cg/fw/fw景明_戦闘.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/md05/032vs0330a00">
「……虎徹……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　破壊の辰気流に晒され続けたからだろう。
　野太刀が砕け、無数の破片となって散る。

　視界に広がる<RUBY text="にびいろ">鈍色</RUBY>の雫。
　
　それは――俺に、何かを、

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/md05/032vs0340a00">
「!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆回想
	CreateTextureEX("イベント１", 18100, 0, 0, "cg/ev/ev239_茶々丸の最期_c.jpg");
	SetTone("イベント１", Monochrome);

	SetVolume("サウンド*", 1000, 0, NULL);

	SoundPlay("@mbgm19",0,1000,true);

	Fade("色１", 100, 1000, null, true);
	Fade("イベント１", 0, 1000, null, true);
	Fade("色１", 1000, 0, null, true);

	SetFwC("cg/fw/fw茶々丸_通常a.png","Monoc");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/032vs0350a07">
「いい？
　これはあてからお兄さんへの、最後の忠告」

{	FwC("cg/fw/fw茶々丸_笑顔.png","Monoc");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/032vs0360a07">
「お兄さんは湊斗景明である限り、御姫には
決して勝てない。
　御姫は、湊斗光なんだから」

{	FwC("cg/fw/fw茶々丸_通常b.png","Monoc");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/032vs0370a07">
「お兄さんは無名の英雄になって。
　世界を守ることだけが目的の……<RUBY text="・">個</RUBY>の無い。
公の大義に従う武力行使者に」

{	FwC("cg/fw/fw茶々丸_冷酷.png","Monoc");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/032vs0380a07">
「本当の英雄になるんだ」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/032vs0390a07">
「御姫を倒して、世界を救える方法は、それ
だけ」

{	FwC("cg/fw/fw茶々丸_通常a.png","Monoc");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/032vs0400a07">
「……いい？
　お兄さん、間違えないで」

{	FwC("cg/fw/fw茶々丸_冷酷.png","Monoc");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/032vs0410a07">
「これは足利茶々丸の」

{	FwC("cg/fw/fw茶々丸_寂寥.png","Monoc");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/032vs0420a07">
「お兄さんへの。
　この世界への」

{	FwC("cg/fw/fw茶々丸_悪戯.png","Monoc");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/032vs0430a07">
「最後の――――呪いだ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆戻り
//◆村正、地球へ
//◆最後は海に落下。bg073c
	SetVolume("@mbgm*", 5000, 0, NULL);

	CreateTextureSP("背景１", 100, 0, 0, "cg/bg/bg109_宇宙空間.jpg");

	Fade("色１", 100, 1000, null, true);

	Fade("背景２", 0, 0, null, true);
	Fade("エフェクト１", 0, 0, null, true);
	Fade("イベント１", 0, 0, null, true);

	Fade("色１", 2000, 0, null, false);

	OnSE("se戦闘_動作_空突進04",1000);

	Move("背景１", 4000, 2612, -1006, Axl2, false);
	Zoom("背景１", 4000, 4000, 4000, Axl2, false);
	Fade("背景１", 4000, 0, Axl3, true);

	CreateTextureEX("地球海", 100, 0, 0, "cg/bg/bg201_旋回演出背景市街地_02.jpg");
	Request("地球海", Smoothing);
	Zoom("地球海", 0, 1000, 1000, null, true);
	CreateSurfaceEX("絵Suf",1000,2200,"地球海");

	CloudZoomSet(10000);

	CreateTextureEXadd("絵背景効果線", 10500, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	$効果ナット名 = @絵背景効果線;
	CreateProcess("プロセス１", 150, 0, 0, "TurboBlur");
	SetAlias("プロセス１","プロセス１");

	CreateSE("SE01","se戦闘_動作_空突進05");
	MusicStart("SE01",10000,1000,0,1000,null,true);


	Request("プロセス１", Start);
	Fade("地球海", 2000, 1000, null, false);
	Fade("絵Suf", 2000, 1000, null, false);
	Move("地球海", 10000, @0, @-4500, Axl1, false);
	Zoom("地球海", 10000, 2000, 2000, Axl1, false);
	Rotate("絵Suf", 10000, @0, @0, @720, Axl1,false);
	CloudZoomStart(400,800,800,1000,1000);
	CloudZoomVertex(0,@0,@0,null,false);



	WaitKey(9000);
	ClearFadeAll(500, true);


	CreateTextureEXadd("落下地球海", 1100, 0, -250, "cg/bg/bg073_海c_02.jpg");
	Zoom("落下地球海", 0, 2000, 2000, null, true);
	CreateTextureEX("落下地球海2", 1000, 0, 0, "cg/bg/bg073_海c_02.jpg");
	Zoom("落下地球海2", 0, 2000, 1100, null, true);

	SetVolume("SE*", 500, 0, null);
	OnSE("se自然_水_汽車落ちる",1000);

	Move("落下地球海", 4000, @0, 0, Dxl1, false);
	Fade("落下地球*", 100, 1000, null, false);
	Zoom("落下地球*", 4000, 1000, 1000, Dxl1, false);

	Wait(2000);

	SetVolume("SE*", 2000, 0, null);
	SetVolume("OnSE*", 2000, 0, null);
	ClearFadeAll(2000, true);

	Wait(2000);

}

..//ジャンプ指定
//次ファイル　"md05_033.nss"