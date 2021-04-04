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

scene md04_039.nss_MAIN
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
	#bg033_普陀楽城宿舎_01=true;
	#ev128_病床の光_g01=true;
	#ev128_病床の光_gb01=true;
	#ev128_病床の光_gb02=true;
	#bg057_普陀楽城廊下_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_040.nss";

}

scene md04_039.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md04_038.nss"


//◆光の部屋

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg097_堀越御所内光の部屋_03a.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm32", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	Wait(1500);

//◆ＥＶ：病床の光・覚醒→睡眠
	CreateTextureEX("光覚醒", 15100, @0, @0, "cg/ev/ev128_病床の光_g01.jpg");
	Fade("光覚醒", 1500, 1000, null, true);

	CreateTextureSP("光睡眠", 15000, @0, @0, "cg/ev/ev128_病床の光_gb01.jpg");

	Wait(1500);

	FadeDelete("光覚醒", 1000, true);

	Wait(1500);

//◆光
	FadeDelete("光睡眠",2000,true);



	OnSE("se人体_動作_起きる02", 1000);

	Wait(2000);
	StR(1000, @0, @50, "cg/st/st光_通常_私服.png");
	OnSE("se人体_体_骨複数砕ける01", 1000);

	Wait(1500);

	Move("@StR*", 1000, @0, @-50, Dxl1, false);
	FadeStR(1000, false);


	SetFwC("cg/fw/fw光_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【光】
<voice name="光" class="光" src="voice/md04/0390010a14">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
〝光〟は立ち上がった。
　それだけで、全身の骨格が軋みを上げた。

　ぺき、ぽき、という音が体内から響く。
　数ヶ所で小さな骨が折れているようだった。

〝光〟にとって、それはもう慣れた事。

　この肉体は壊れかけている。
　いや――本当は、とうに壊れている。

　それでも動かし続けてきた。

〝光〟はまだ、夢を遂げていないから。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_不思議.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【光】
<voice name="光" class="光" src="voice/md04/0390020a14">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　見覚えのない部屋から出るため、重い足を戸口の方
へ向けようとし。
〝光〟はふと、それに気付いた。

　枕元に――小机くらいの大きさと形をした何か。
　上から布をかけられている。

　取ってみた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【光】
<voice name="光" class="光" src="voice/md04/0390030a14">
「……食事」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　飯、味噌汁、焼魚に漬物。

　ごく素朴な膳だ。
　時間が経っているからだろう、冷めてもいる。

　それでも美味そうだった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_不思議.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【光】
<voice name="光" class="光" src="voice/md04/0390040a14">
「食べていいのかな……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
〝光〟は躊躇した。
　もし他人の食事を横取りするようなことになっては
後味が悪い。

　後味以前に、卑しい行為は慎むべきである。

　……だが。
〝光〟はここに寝かされていて、食事は同じ部屋の中
に用意されていたのだ。普通に考えて、食事は部屋の
住人のものであろう。

　おそらくそうだ。
　九割五分、間違いない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_好戦.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【光】
<voice name="光" class="光" src="voice/md04/0390050a14">
「うむ。
　四捨五入すれば<RUBY text="かんぺき">十割</RUBY>だ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se人体_動作_後ずさり01", 1000);
	Move("@StR*", 300, @0, @50, null, false);
	DeleteStR(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
〝光〟は結論した。
　膳の前に正座する。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぱん。手を合わせる

	OnSE("se人体_動作_ビンタ01", 1000);


	SetFwC("cg/fw/fw光_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【光】
<voice name="光" class="光" src="voice/md04/0390060a14">
「頂きます」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　味噌汁に箸をつけてから、飯を口へ運ぶ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	OnSE("se日常_食器_お茶準備_L", 1000);
	SetFwC("cg/fw/fw光_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//◆もぐもぐ
//【光】
<voice name="光" class="光" src="voice/md04/0390070a14">
「…………」

{	FwC("cg/fw/fw光_不思議.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0390080a14">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　――この味。

〝光〟には覚えがあった。
　これは郷里の風景に通ずる味。

　舌の感触が、誰かの顔を思い出させる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【光】
<voice name="光" class="光" src="voice/md04/0390090a14">
「景明」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　そう。
　彼は時々、母に代わって食事を作ってくれることが
あった。

　いかにも彼らしく、捻りや工夫は何も無いが、丁寧
で丹精な味。
　……妙に好きで、時々せがんで食べさせて貰うこと
もあった。

　あの味だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_慈愛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【光】
<voice name="光" class="光" src="voice/md04/0390100a14">
「……おまえが作っておいてくれたのか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　わざわざ。
　今日この時、〝光〟が起き上がるのを見越して。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【光】
<voice name="光" class="光" src="voice/md04/0390110a14">
「――――」

//◆がつがつがつがつ
{	OnSE("se日常_食器_お茶準備_L", 1000);}
//【光】
<voice name="光" class="光" src="voice/md04/0390120a14">
「……………………」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@OnSE*", 1000, 0, null);
	OnSE("se人体_動作_茶をすする", 1000);

	SetFwC("cg/fw/fw光_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//◆ずずー
//【光】
<voice name="光" class="光" src="voice/md04/0390130a14">
「……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	OnSE("se日常_物_茶碗を置く", 1000);

	SetFwC("cg/fw/fw光_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//◆かちゃん。箸を置く
//【光】
<voice name="光" class="光" src="voice/md04/0390140a14">
「御馳走様！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆光、立つ
	OnSE("se人体_動作_後ずさり01", 1000);
	StR(1000, @0, @50, "cg/st/st光_通常_私服.png");
	Move("@StR*", 100, @0, @-50, null, false);

	FadeStR(100, true);

	WaitKey(300);

	OnSE("se戦闘_動作_突進02", 1000);
	DeleteStR(100, false);

//◆バビーンと外へ


	CreateColorSP("黒幕", 25000, "BLACK");
	DrawTransition("黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_03_1.png", true);

	DeleteStR(0,true);

	SetVolume("@OnSE*", 1000, 0, null);
	OnSE("se日常_建物_スライド開く02", 1000);
	OnBG(100, "bg057_普陀楽城廊下_01.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕", 300, 1000, 0, 100, null, "cg/data/slide_01_03_0.png", true);
	Delete("黒幕");
	OnSE("se人体_動作_一歩", 1000);
	SetFwC("cg/fw/fw光_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【光】
<voice name="光" class="光" src="voice/md04/0390150a14">
「村正!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆二世、蟻

	OnSE("se人体_足音_鎧歩く04", 1000);
	StR(900, @0, @200, "cg/st/3d二世女王蟻_煽り.png");
	Zoom("@StR*", 0, 0, 3000, null, false);
	Zoom("@StR*", 100, 1000, 1000, null, false);
	FadeStR(300, true);

	Wait(500);

	SetFwC("cg/fw/fw二世女王蟻_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md04/0390160a15">
《……今日はやけに元気が良いな》

{	FwC("cg/fw/fw光_笑い.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0390170a14">
「うむ！
　今日の光は<RUBY text="きあい">愛</RUBY>に満ちている！」

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0390180a14">
「過去最強だ！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　空も良い。空気も良い。
　これは<RUBY text="いくさ">戦</RUBY>の気配だと、〝光〟は悟った。

　既に始まっているのだ。
　命と命、魂と魂の争剋が――

　無数の<RUBY text="ひと">戦士</RUBY>から唯一の<RUBY text="かみ">覇者</RUBY>を選び出す、武の祭典が！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【光】
<voice name="光" class="光" src="voice/md04/0390190a14">
「遅れはとらぬ！
　天下に武を布くのはこの光の<RUBY text="さだめ">宿星</RUBY>！」

{	FwC("cg/fw/fw光_笑い.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0390200a14">
「行くぞ、村正！」

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md04/0390210a15">
《応！》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆装甲アクション

	OnSE("se特殊_鎧_装着03",1000);
	CreateColorEXadd("絵フラ", 6500, "#FFFFFF");
	Fade("絵フラ", 300, 1000, null, true);
	DeleteStR(0,true);
	StC(1000, @0, @0,"cg/st/st光_装甲_私服a.png");
	FadeStC(0,true);
	Fade("絵フラ", 1000, 0, null, true);

	SetFwR("cg/fw/fw光_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【光】
<voice name="光" class="光" src="voice/md04/0390220a14">
「鬼に逢うては鬼を斬る。
　仏に逢うては仏を斬る」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 2000);
	StC(1000, @0, @0,"cg/st/st光_装甲_私服b.png");
	FadeStC(0,true);
	FadeDelete("絵板写", 300, true);

	SetFwR("cg/fw/fw光_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【光】
<voice name="光" class="光" src="voice/md04/0390230a14">
「ツルギの理ここに在り!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆銀星号

	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);

	CreateEffect("絵効果雨", 4000, Center, Middle, 512, 288, "Rain");
	SetAlias("絵効果雨","絵効果雨");
	Request("絵効果雨", AddRender);
	Move("絵効果雨", 0, 200, 144, null, true);
	Zoom("絵効果雨", 0, 5000, 5000, null, true);
	Rotate("絵効果雨", 0, @0, @0, -23, null,true);
	Fade("絵効果雨", 0, 100, null, true);

//◆飛翔

	DeleteStC(0,true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg204_横旋回背景_01.jpg");
	Zoom("絵背景100", 0, 2500, 2500, null, true);
	Rotate("絵背景100", 0, @0, @0, 70, null,true);
	Move("絵背景100", 0, -2500, -2680, null, true);

	CreateTextureSPadd("銀星GO", 100, -328, 0, "cg/ef/resize/ef019_銀星号突貫02tll.jpg");
	Request("銀星GO", Smoothing);
//	SetBlur("銀星GO", true, 3, 500, 50, false);
	Zoom("銀星GO", 0, 2000, 2000, null, true);
	DrawDelete("絵黒", 200, 500, "slide_01_03_1", false);
	Wait(100);
	CreateSE("SE03","se戦闘_動作_空上昇01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	Move("銀星GO", 600, @0, -1980, DxlAuto, false);
	Zoom("銀星GO", 600, 1000, 1000, null, false);
	Shake("銀星GO", 1000000, 2, 0, 0, 0, 1000, null, false);

	Wait(600);
	CreateSE("SE04","se戦闘_動作_空上昇01");
	MusicStart("SE04",0,1000,0,750,null,false);
	Move("銀星GO", 8000, @0, -780, Dxl2, false);
	Move("絵背景100", 8000, -1500, 2680, Dxl2, false);


	DrawDelete("絵フラ", 300, 100, "slide_06_00_0", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　――――ああ。

　今日はきっと、良い夢になる。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearFadeAll(1000,true);

}

..//ジャンプ指定
//次ファイル　"md04_040.nss"