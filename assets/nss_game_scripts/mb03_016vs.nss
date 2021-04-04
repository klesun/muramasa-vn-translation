//<continuation number="950">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb03_016vs.nss_MAIN
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
	#ev918_正宗無弦十征矢=true;

	#bg074_喫茶店の店内_01=true;
	#ev918_正宗無弦十征矢=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb03_017.nss";

}

scene mb03_016vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb03_015.nss"

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#FFFFFF");
	CreateSE("SE01","se戦闘_破壊_建物01");
	CreateSE("SE01a","se特殊_陰義_発動03");//ダミー注意
	OnBG(100,"bg074_喫茶店の店内_01.jpg");
	StL(1000, @0, @350,"cg/st/3d正宗天牛虫_正面.png");
	Rotate("@StL*", 0, @0, @180, @0, null,true);
	StR(1000, @100, @100,"cg/st/3d村正蜘蛛_正面.png");
	FadeStA(0,true);
	FadeBG(0,true);
	Delete("上背景");

	CreateMovie("煙動画", 3000, 256, 278, true, true, "dx/mvk100.ngs");
	SetAlias("煙動画","煙動画");
	Zoom("煙動画", 0, 3000, 6000, null, true);
//	Request("煙動画", SubRender);
	Move("煙動画", 0, @0, @-400, null, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	FadeDelete("絵暗転", 1000, true);

	Fade("煙動画", 5000, 0, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　召喚するまでもなく、二領の劒冑が飛び入ってくる。
　<RUBY text="ムラマサ">紅蜘蛛</RUBY>は天窓を抜けて。<RUBY text="マサムネ">天牛虫</RUBY>は容赦なくガラスを
叩き割り。

　いつでも戦闘に移行できる態勢が整った。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE02","se人体_動作_跳躍03");
	MusicStart("SE02",0,750,0,1750,null,false);
	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);
	DeleteStA(0,true);
	Delete("煙動画");

	DrawDelete("絵黒幕", 150, 100, "slide_01_03_1", true);
	SoundPlay("@mbgm34",0,1000,true);


	SetFwC("cg/fw/fw稲田_緊張.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0010b15">
「やはり武者か。
　童心入道を討ったのは、貴様らだな」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/016vs0020a00">
「やはり？
　……成程。そういうことか」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/016vs0030a02">
「？　どういう？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/016vs0040a00">
「こんな罠を仕掛けられた理由だ。
　あの工作員……岩田と言ったか。彼女が俺
達の風貌その他の情報を小弓へ伝えていたの
だろう」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　だから劒冑を見るまでこちらが武者であることには
確証を持てなかったのだ。そう推測はできても。
　あの工作員は俺と一条が劒冑を所持するという情報
だけは報告する暇が無かった筈であるから。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/016vs0050a00">
「……些か見通しが甘かったか。
　こうなる事は予測していて然るべきだった」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/016vs0060a02">
「顔を隠すとか、考えもしませんでしたね」


{	FwC("cg/fw/fw稲田_緊張.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0070b15">
「……ふっ。
　惚けるなよ？　親王の手駒ども」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/016vs0080a00">
「何？」


{	FwC("cg/fw/fw稲田_微笑.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0090b15">
「貴様たちが堂々と小弓へ近付いてきた理由
くらいは読めている。
　――陽動だ」


//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0100b15">
「貴様らが我が軍を引き付けている間に主力
で公方府を衝く……そういうことだろう？
　単純かつ有効な戦術だ。こちらが引っ掛か
っていれば、の話だがな」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/016vs0110a00">
「……」


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/016vs0120a02">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　成程。
　相手にすれば、そう考えられるのか。

　確かに、わずか二騎で総大将の首を取りに来た、と
考えるよりは現実味がある。
　彼らがこちらの戦力規模を過大評価しているとなれ
ば尚のこと、そうとしか見られまい。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw稲田_微笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0130b15">
「その手には乗らん。
　軍は動かさんよ。貴様らは我々だけで始末
する！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆わらわら。
//◆竜騎兵数人
	CreateTextureEX("絵演鎧１", 900, Center, InBottom, "cg/st/3d九四式竜騎兵_立ち_通常b.png");
	CreateTextureEX("絵演鎧２", 700, Center, InBottom, "cg/st/3d九四式竜騎兵_立ち_通常c.png");
	CreateTextureEX("絵演鎧３", 600, Center, InBottom, "cg/st/3d九四式竜騎兵_立ち_通常b.png");
	CreateTextureEX("絵演鎧４", 800, Center, InBottom, "cg/st/3d九〇式竜騎兵_立ち_抜刀.png");
	CreateTextureEX("絵演鎧５", 600, Center, InBottom, "cg/st/3d九〇式竜騎兵_立ち_通常.png");
	CreateTextureEX("絵演鎧６", 700, Center, InBottom, "cg/st/3d九四式竜騎兵_立ち_抜刀.png");
	CreateTextureEX("絵演鎧７", 500, Center, InBottom, "cg/st/3d九四式竜騎兵_立ち_抜刀.png");
	CreateTextureEX("絵演鎧８", 400, Center, InBottom, "cg/st/3d八八式竜騎兵_立ち_抜刀.png");

	SetVertex("絵演鎧*", Center, bottom);
	Zoom("絵演鎧２", 0, 900, 900, null, true);
	Zoom("絵演鎧３", 0, 840, 840, null, true);
	Zoom("絵演鎧４", 0, 970, 970, null, true);
	Zoom("絵演鎧５", 0, 840, 900, null, true);
	Zoom("絵演鎧６", 0, 900, 900, null, true);
	Zoom("絵演鎧７", 0, 1100, 1100, null, true);
	Zoom("絵演鎧８", 0, 1030, 1030, null, true);

	CreateSE("SE01a","se人体_足音_鎧歩く03");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Fade("絵演鎧３", 300, 1000, null, false);
	Move("絵演鎧３", 300, @-20, @0, AxlDxl, false);

	Wait(60);

	CreateSE("SE01b","se人体_足音_鎧歩く03");
	MusicStart("SE01b",0,1000,0,1100,null,false);
	Fade("絵演鎧４", 300, 1000, null, false);
	Move("絵演鎧４", 300, @120, @0, AxlDxl, false);

	Wait(60);

	CreateSE("SE01c","se人体_足音_鎧歩く03");
	MusicStart("SE01c",0,1000,0,900,null,false);
	Fade("絵演鎧２", 300, 1000, null, false);
	Move("絵演鎧２", 300, @-240, @0, AxlDxl, false);

	Wait(60);

	CreateSE("SE01d","se人体_足音_鎧歩く03");
	MusicStart("SE01d",0,1000,0,1000,null,false);
	Fade("絵演鎧５", 300, 1000, null, false);
//あきゅん「演出：移動距離がありすぎなので調整」
	//Move("絵演鎧５", 300, @360, @0, AxlDxl, false);
	Move("絵演鎧５", 0, @200, @0, AxlDxl, false);
	Move("絵演鎧５", 300, @160, @0, AxlDxl, false);

	Wait(60);

	CreateSE("SE01e","se人体_足音_鎧歩く03");
	MusicStart("SE01e",0,1000,0,1200,null,false);
	Fade("絵演鎧１", 300, 1000, null, false);
//あきゅん「演出：移動距離がありすぎなので調整」
	//Move("絵演鎧１", 300, @-480, @0, AxlDxl, false);
	Move("絵演鎧１", 0, @-240, @0, AxlDxl, false);
	Move("絵演鎧１", 300, @-240, @0, AxlDxl, false);

	Wait(60);

	CreateSE("SE01f","se人体_足音_鎧歩く03");
	MusicStart("SE01f",0,1000,0,800,null,false);
	Fade("絵演鎧６", 300, 1000, null, false);
//あきゅん「演出：移動距離がありすぎなので調整」
	//Move("絵演鎧６", 300, @520, @0, AxlDxl, true);
	Move("絵演鎧６", 0, @200, @0, AxlDxl, true);
	Move("絵演鎧６", 300, @320, @0, AxlDxl, false);

	Wait(60);

	CreateSE("SE01g","se人体_足音_鎧歩く03");
	MusicStart("SE01g",0,1000,0,1000,null,false);
	Fade("絵演鎧７", 300, 1000, null, false);
	Move("絵演鎧７", 300, @-160, @0, AxlDxl, false);

	Wait(60);

	CreateSE("SE01h","se人体_足音_鎧歩く03");
	MusicStart("SE01h",0,1000,0,700,null,false);
	Fade("絵演鎧８", 300, 1000, null, false);
	Move("絵演鎧８", 0, @150, @0, AxlDxl, true);
	Move("絵演鎧８", 300, @150, @0, AxlDxl, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　店の奥から、既に装甲を遂げた竜騎兵が次々と躍り
出て来る。
　その数――八騎。

　いや、一騎が鎧櫃を抱えている。
　ウェイトレスの分か？　ならば九騎！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw小弓十傑Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ｅｔｃ／十傑Ｂ】
<voice name="ｅｔｃ／十傑Ｂ" class="その他男声" src="voice/mb03/016vs0140e112">
「我らは闇の掃除人」


{	NwC("cg/fw/nw小弓十傑Ｂ.png");}
//【ｅｔｃ／十傑Ｃ】
<voice name="ｅｔｃ／十傑Ｃ" class="その他男声" src="voice/mb03/016vs0150e113">
「美しき雷蝶様のため。
　御道を清め整える」


{	NwC("cg/fw/nw小弓十傑Ｃ.png");}
//【ｅｔｃ／十傑Ｄ】
<voice name="ｅｔｃ／十傑Ｄ" class="その他男声" src="voice/mb03/016vs0160e114">
「汚れた犬は追い払い」


{	NwC("cg/fw/nw小弓十傑Ｄ.png");}
//【ｅｔｃ／十傑Ｅ】
<voice name="ｅｔｃ／十傑Ｅ" class="その他男声" src="voice/mb03/016vs0170e115">
「邪魔な<RUBY text="いしくれ">石塊</RUBY>は取り除けようぞ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StC(1000, @-60,@0,"cg/st/st稲田_戦闘_制服.png");
	Move("@StC*", 300, @60, @0, Dxl2, false);
	FadeStC(300,true);
	SetFwR("cg/fw/fw稲田_微笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0085]
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0180b15">
「人呼んで小弓十傑。
　憚りながら推して参る！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 300, 0, null);
	SetVolume("@mbgm*", 300, 1, null);

//◆ばーん。
//◆稲田を中心に整列。
	CreateSE("SE01","se特殊_雰囲気_鎧登場演02");
	MusicStart("SE01",0,1000,0,850,null,false);
	CreatePlainEXadd("絵演上", 3100);
	CreatePlainSP("絵演", 3000);
	SetVertex("絵演", center, middle);
	Fade("絵演上", 200, 750, null, false);
	Zoom("絵演上", 600, 1200, 1200, AxlDxl, false);
	Wait(200);
	FadeDelete("絵演上", 800, true);

	WaitKey(2000);
	Delete("絵演");

	CreatePlainSP("絵演十傑衆", 2000);
	Wait(1);
	Delete("絵演鎧*");
	DeleteStA(0,true);

	SetVolume("@mbgm*", 2000, 1000, null);

	SetFwR("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/016vs0190a00">
「十傑……」


{	FwR("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/016vs0200a02">
「……一人足りなくねーか」


{	FwR("cg/fw/fw稲田_緊張.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0210b15">
「ここにおらぬ一人は、既に果てた……。
　先日、貴様らの手によってな」


{	NwR("cg/fw/nw小弓十傑Ｂ.png");}
//【ｅｔｃ／十傑Ｃ】
<voice name="ｅｔｃ／十傑Ｃ" class="その他男声" src="voice/mb03/016vs0220e113">
「フッ。だが図に乗るなよ。
　奴の実力は我々の中で最も下だったのだ」


{	NwR("cg/fw/nw小弓十傑Ｄ.png");}
//【ｅｔｃ／十傑Ｅ】
<voice name="ｅｔｃ／十傑Ｅ" class="その他男声" src="voice/mb03/016vs0230e115">
「我らこそ真の小弓十傑よ。
　本物の力を味わわせてやろう！」


{	FwR("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/016vs0240a02">
「……何だか知らねーけど、わかった。
　要はぶっ倒していいってことだな」


{	SetVolume("@mbgm*", 300, 0, null);
	FwR("cg/fw/fw一条_戦闘.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/016vs0250a02">
「正宗！」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb03/016vs0260b40">
《応！》


</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色100", 4500, "BLACK");

	CreateWindow("絵窓", 5000, 636, 0, 340, 576, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 0, 1000, null, true);
	CreateColorSP("絵窓/絵演色", 5010, "#002080");
	CreateTextureSPmul("絵窓/絵演背景", 5020, Center, Middle, "cg/ef/ef001_汎用移動.jpg");

	CreateTextureSP("絵窓/絵演立絵装甲", 5100, Center, InBottom, "cg/st/st一条_装甲_制服a.png");
	Move("絵窓/絵演立絵装甲", 0, @280, @0, null, true);//ダミー注意：仮位置

	Fade("絵色100", 300, 500, null, false);
	Zoom("絵窓", 300, 1000, 1000, Dxl2, true);


	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0098a]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/016vs0270a02">
「世に鬼あれば鬼を断つ。
　世に悪あれば悪を断つ」


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 5500);
	CreateTextureSP("絵窓/絵演立絵装甲", 5100, Center, InBottom, "cg/st/st一条_装甲_制服b.png");
	Move("絵窓/絵演立絵装甲", 0, @280, @0, null, true);//ダミー注意：仮位置
	FadeDelete("絵板写", 300, false);

	SetFwC("cg/fw/fw一条_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0098b]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/016vs0280a02">
「ツルギの<RUBY text="ことわり">理</RUBY>ここに在り」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//――――――――――――――――――――――――

//◆正宗変身
	CreateSE("SE01","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,1250,null,false);
	CreateColorSPadd("絵窓/絵フラ", 10000, "#FFFFFF");
	CreateTextureSP("絵窓/絵演立絵装甲", 5100, Center, InBottom, "cg/st/3d正宗_立ち_通常.png");
	Move("絵窓/絵演立絵装甲", 0, @280, @0, null, true);//ダミー注意：仮位置
	WaitKey(300);
	FadeDelete("絵窓/絵フラ", 600, true);
	CreateSE("SE01a","se特殊_鎧_駆動音02");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	WaitKey(500);

	Fade("絵色100", 500, 0, null, false);
	Zoom("絵窓", 500, 0, 1000, null, true);
	Delete("絵窓*");

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/016vs0290a00">
「……村正」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb03/016vs0300a01">
《ええ》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateWindow("絵窓", 5000, 48, 0, 340, 576, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 0, 1000, null, true);
	CreateColorSP("絵窓/絵演色", 5010, "#CC0000");
	CreateTextureSPmul("絵窓/絵演背景", 5020, Center, Middle, "cg/ef/ef002_汎用移動.jpg");

	CreateTextureSP("絵窓/絵演立絵装甲", 5100, Center, InBottom, "cg/st/st景明_装甲_私服a1.png");
	Move("絵窓/絵演立絵装甲", 0, @-280, @0, null, true);//ダミー注意：仮位置

	Fade("絵色100", 300, 500, null, false);
	Zoom("絵窓", 300, 1000, 1000, Dxl2, true);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101a]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/016vs0310a00">
「鬼に逢うては鬼を斬る。
　仏に逢うては仏を斬る」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 5500);
	CreateTextureSP("絵窓/絵演立絵装甲", 5100, Center, InBottom, "cg/st/st景明_装甲_私服b1.png");
	Move("絵窓/絵演立絵装甲", 0, @-280, @0, null, true);//ダミー注意：仮位置
	FadeDelete("絵板写", 300, false);

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101b]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/016vs0320a00">
「ツルギの理ここに在り」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//――――――――――――――――――――――――

//◆村正変身
	CreateSE("SE01","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,1250,null,false);
	CreateColorSPadd("絵窓/絵フラ", 10000, "#FFFFFF");
	CreateTextureSP("絵窓/絵演立絵装甲", 5100, Center, InBottom, "cg/st/3d村正標準_立ち_通常.png");
	Move("絵窓/絵演立絵装甲", 0, @-280, @0, null, true);//ダミー注意：仮位置
	WaitKey(300);
	FadeDelete("絵窓/絵フラ", 600, true);
	CreateSE("SE01a","se特殊_鎧_駆動音01");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	WaitKey(500);

	Fade("絵色100", 500, 0, null, false);
	Zoom("絵窓", 500, 0, 1000, null, true);
	Delete("絵窓*");
	Delete("絵色100");

	SoundPlay("@mbgm13",0,1000,true);

	SetFwR("cg/fw/fw稲田_無.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0330b15">
「ほう……なかなかの武者ぶりだ。
　舞殿宮が先手として送り込んできただけは
ある……」


{	FwR("cg/fw/fw稲田_微笑.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0340b15">
「だが所詮二騎。
　それで我らに勝てるつもりか？」


{	FwR("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/016vs0350a02">
「つもりじゃ、悪いかよ」


{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/016vs0360a00">
「……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　一条の自信は完全だ。
　俺は、そこまでの勝算を持てなかったにせよ。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/016vs0370a00">
（やってやれない勝負ではない）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　障害物の多い屋内は寡勢を利する。
　それに、何も殲滅戦を挑む必要はない。数騎を戦闘
不能にして敵の士気を挫き、その隙をついて脱出する、
それで良いのだ。

　やり方を間違えなければそう難しくはない筈。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw小弓十傑Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【ｅｔｃ／十傑Ｂ】
<voice name="ｅｔｃ／十傑Ｂ" class="その他男声" src="voice/mb03/016vs0380e112">
「ふん。
　無謀な奴だ。若さゆえと思えば可愛いが」


{	NwR("cg/fw/nw小弓十傑Ｂ.png");}
//【ｅｔｃ／十傑Ｃ】
<voice name="ｅｔｃ／十傑Ｃ" class="その他男声" src="voice/mb03/016vs0390e113">
「我らはその逆よ。
　謀計を尽くし、勝算の上になお勝算を積み
上げて戦う」


{	NwR("cg/fw/nw小弓十傑Ｃ.png");}
//【ｅｔｃ／十傑Ｄ】
<voice name="ｅｔｃ／十傑Ｄ" class="その他男声" src="voice/mb03/016vs0400e114">
「それが小弓十傑の最強たる所以」


{	FwR("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/016vs0410a02">
「なに言ってやがる。そいつが失敗したから、
こういう格好になったんだろうが。
　御託は止めて、さっさと掛かって来な」


{	FwR("cg/fw/fw稲田_無.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0420b15">
「くっくっく……！
　失敗？　失敗だと」


{	FwR("cg/fw/fw稲田_微笑.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0430b15">
「まだ何も失敗してなどいない。
　まぁ確かに、貴様らがその茶に口をつけて
くれていたら事は手早く片付いたろうが」


{	FwR("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/016vs0440a00">
「毒か……」


{	FwR("cg/fw/fw稲田_無.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0450b15">
「元々期待はしていなかった。
　策は――これからだ」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);
	CreateSE("SE01","se人体_動作_ビンタ01");//ダミー注意
	MusicStart("SE01",0,1000,0,850,null,false);

	$残時間=RemainTime("SE01");
	WaitKey($残時間);

	CreateSE("SE01a","se日常_建物_扉開く09");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
	CreateTextureSP("絵演背景上", 5100, Center, Middle, "cg/bg/bg074_喫茶店の店内_01.jpg");//ダミー注意
	DrawDelete("絵黒幕", 300, 100, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　ぱちん、と女が指を弾く。
　合図だったのだろう。端にいた一騎が厨房へ続く扉
に手を掛け、開いた。

　そして何かを引き摺り出す。
　何か――

　縄で縛られた――幾つかの――
　
　それは、

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/016vs0460a00">
「――――」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/016vs0470a02">
「てめえら」


{	FwC("cg/fw/fw稲田_微笑.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0480b15">
「……ふふふ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　人間だった。三人。
　壮年の男性と、同じ頃の女性、そして男児。

　三人とも、怯え切った眼差しで自分達以外の全てを
見詰めている。
　声はない。猿轡を噛まされていた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw稲田_微笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0490b15">
「この店の、本来の持ち主だよ」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/016vs0500a00">
「……」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/016vs0510a02">
「今すぐ、放せ」


{	FwC("cg/fw/fw稲田_微笑.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0520b15">
「……くくっ。
　岩田の報告にあった通りだな」


//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0530b15">
「無関係の者など、気にしなければそれまで
だろうに……。
　そうはいかぬ、か？　綾弥一条」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/016vs0540a02">
「……放せ、って言ってんだ」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/016vs0550a00">
「一条」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　肩の上へ手を置く。押し留めるように。
　怒りは当然だ。しかし――ここは怒りに任せて行動
して良い局面ではない。

　慎重に機を窺わねば……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Zoom("絵演背景上", 2000, 750, 750, null, false);
	FadeDelete("絵演背景上", 500, true);

	SetFwR("cg/fw/fw稲田_無.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0560b15">
「男の方は物分りが良いようだな。
　ふむ」


//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0570b15">
「人質もちゃんと己の立場をわきまえている。
　そうなると……一人だけか」


{	FwR("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/016vs0580a02">
「……」


{	FwR("cg/fw/fw稲田_緊張.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0590b15">
「しかし一人でも馬鹿がいると、話はうまく
まとまらん。仕方ないな……。
　気は進まんが。なに、人質は三人いるのだ」


{	FwR("cg/fw/fw稲田_微笑.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0600b15">
「なァ？」


{	NwR("cg/fw/nw小弓十傑Ａ.png");}
//【ｅｔｃ／十傑Ｂ】
<voice name="ｅｔｃ／十傑Ｂ" class="その他男声" src="voice/mb03/016vs0610e112">
「うむ――」


{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/016vs0620a00">
「!!」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　止める暇はなかった。

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//――――――――――――――――――――――――

//◆一閃
	CreateColorSP("絵色黒", 5000, "#000000");
	CreateSE("SE01","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_right2(5100,@0, @0,2000);
	SL_rightfade2(5);

	Fade("絵演十傑衆", 0, 0, null, true);

	FadeDelete("絵色黒", 500, true);

	Wait(500);

	SetFwR("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/016vs0630a02">
「――てめ――」


{	FwR("cg/fw/fw稲田_無.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0640b15">
「……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　竜騎兵が、太刀を一薙ぎし……
　束縛された子供が全ての動きを止める。

　数瞬。
　空気が凝固した。

　血が――
　男児の首筋から血が溢れる。

　一筋――
　二筋――
　三筋――

　そこまで。
　糸ほどの太さの血流が数条、現れただけだった。

　傷は……深くない。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	Fade("絵演十傑衆", 500, 1000, null, true);

	SetFwR("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/016vs0650a00">
「…………」


{	FwR("cg/fw/fw稲田_無.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0660b15">
「<RUBY text="・・・・・・・">人質は三人いる</RUBY>。
　意味は通じたな？」


{	FwR("cg/fw/fw稲田_微笑.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0670b15">
「一人くらいはいつでも殺せるということだ」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　ぼろぼろと、泣き声も出せない子供の両目から涙の
粒がこぼれ落ちた。
　両親であろう男女がもがき出す。

　子供は放置され、男女は背中を踏みつけられた。
　そして<RUBY text="そろ">揃</RUBY>って、首筋に改めて刃を当てられる。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw稲田_微笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0680b15">
「理解が得られたところで、話を進めよう。
　我々は貴様ら二人の命が欲しい」


{	FwR("cg/fw/fw稲田_通常.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0690b15">
「くれ」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　酷く横着に、女は言った。
　お陰で誤解の余地も無い。

　俺と一条で首を<RUBY text="は">刎</RUBY>ね合えということか。

　……どうする。
　考えるまでもなく、受け入れようのない要求だ。

　しかし断るに断れない。
　拒否を意味する返答をすればその瞬間、少なくとも
人質の一人は殺される。

　言葉に注意して、交渉するべきだ。
　いや……それすら危険だが。交渉の意思表明に対し
て、最も高い確率で予測される相手の返答は、やはり
人質一名の殺害による拒絶だ。

　そうしても敵の手元にはなお二人の人質が残る。
　脅迫を続けるに不足はない数だ。
　
　三名の人質。何と巧妙な。

　受け入れるしかないのだろうか。
　二人が死んで三人が助かるなら、悪くない計算では
ある。

　だが一条は死なせられない。
　俺は、最悪……一条に後事を託し、首をくれてやっ
ても良い、が……

　――いや。
　それでは、銀星号を――

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw稲田_無.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0700b15">
「悩んでいるな、湊斗景明」


{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/016vs0710a00">
「……お陰をもって。
　実に難問だ」


{	FwR("cg/fw/fw稲田_微笑.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0720b15">
「そうか？　簡単だろう。
　一瞬で我々を全員倒すというのはどうだ」


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/016vs0730a00">
「……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　くく、ふふ、と竜騎兵らが含み笑う。
　無論――そんな真似は不可能だ。

　<RUBY text="レールガン">電磁撃刀</RUBY>をもってしても、確実に仕留められるのは
せいぜいが二、三騎。
　仮に全員を殺傷範囲に納められても、その時は人質
まで巻き込むことになる。

　……どうにもならない。
　なりようがない。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw稲田_無.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0740b15">
「さて。
　そろそろ結論を出して貰おうか」


//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0750b15">
「無言は拒否と見なすから、そのつもりでな」


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/016vs0760a00">
「……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　それでも、返答のしようはない。
　だが沈黙は続けられない。

　どうすれば……

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);

	SetFwR("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/016vs0770a02">
「わかった」


{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/016vs0780a00">
「一条……」


{	FwR("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/016vs0790a02">
「お前らの言う通りにする」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　少女は明言した。
　いつものように。曇りない声音で。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw稲田_無.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0800b15">
「ほう。
　思ったより素直じゃないか……」


{	FwR("cg/fw/fw稲田_微笑.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0810b15">
「では早速やってもらおう」


{	FwR("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/016vs0820a02">
「ああ。
　……湊斗さん」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　一条が俺を見上げる。
　俺もその瞳を覗いた。

　そこに、悲哀は存在しない。
　<RUBY text="まった">全</RUBY>き信頼だけがある。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/016vs0830a02">
「一瞬だけ、あいつらを止めてください」


{	SoundPlay("@mbgm12",0,1000,true);
	FwR("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/016vs0840a00">
「――」


{	FwR("cg/fw/fw稲田_緊張.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0850b15">
「なに……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　一条の真意について、考えるのは止めた。
　
　<RUBY text="・・・・・・・">賽は投げられた</RUBY>のだと、理解したからだ。

　――一瞬だけ、やつらを止める。
　
　その要求のみ把握し。

　実行手段について考察。
　
　……決定。劒冑へ意思疎通。

　腰を沈め、床へ右手をついた。

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateColorEX("絵色100", 16050, "BLACK");
	CreateTextureEX("絵演窓上/絵演背景", 16100, -550, -844, "cg/ev/resize/ev903_村正磁気バリアー展開_al.jpg");
	Rotate("絵演窓上/絵演背景", 0, @0, @0, @90, null,true);
//	Zoom("絵演窓上/絵演背景", 0, 800, 800, null, true);

//	CreateTextureEX("絵演窓上/絵立絵", 16200, 60, -60, "cg/st/resize/st稲田_通常_制服l.png");
	Move("絵演窓上", 0, @0, @128, null, true);

	Request("絵演窓上/絵演背景", Smoothing);
	Request("絵演窓上/絵演背景", Smoothing);

	Move("絵演窓上/絵演背景", 1000, @0, @400, Dxl2, false);
//	Move("絵演窓上/絵立絵", 1000, @0, @-500, null, false);

	Shake("絵演窓上/絵演背景", 500000, 2, 0, 0, 0, 1000, null, false);

	Fade("絵色100", 300, 300, null, false);
	Fade("絵演窓上/絵演背景", 500, 1000, null, false);
	Fade("絵演窓上/絵立絵", 500, 1000, null, true);


	CreateSE("SE01","se特殊_陰義_発動04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureEXadd("絵フラ", 5000, Center, Middle, "cg/ef/ef021_汎用陰義発動b.jpg");
	Zoom("絵フラ", 1000, 1300, 1300, null, false);
	Fade("絵フラ", 200, 600, null, true);
	WaitKey(100);
	FadeDelete("絵フラ", 600, true);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/016vs0860a00">
「<RUBY text="エンチャント・プラス">磁装・正極</RUBY>――」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb03/016vs0870a01">
《〝ながれ・まわる〟――》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆磁力放散
	CreateSE("SE01","se特殊_電撃_放電01");

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵演窓上/絵演背景", 500, @0, @-400, Axl2, true);
	CreateColorSPadd("絵フラ", 17000, "#FFFFFF");

	Delete("絵演窓*");
	Delete("絵色*");
	WaitKey(100);
	CreatePlainSPadd("絵板写", 4999);
	FadeFR2("絵板写",0,750,300,0,0,30,Dxl3, false);
	FadeDelete("絵フラ", 600, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　そして、左手も。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/016vs0880a00">
「――<RUBY text="エンチャント・マイナス">磁装・負極</RUBY>」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb03/016vs0890a01">
《――〝ながれ・かえる〟》

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//――――――――――――――――――――――――

//◆磁力放散
//◆二つの流れがぶつかってばちばちっと
	CreateSE("SE01","se特殊_電撃_放電02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵フラ", 5000, "#FFFFFF");
	WaitKey(100);
	CreateProcess("プロセス１", 150, 0, 0, "fire01");
	CreateProcess("プロセス２", 150, 0, 0, "fire02");
	CreateProcess("プロセス３", 150, 0, 0, "fire03");
	CreatePlainSPadd("絵板写", 4999);
	FadeFR2("絵板写",0,750,300,0,0,30,Dxl3, false);
	FadeDelete("絵フラ", 600, false);

	Request("プロセス１", Start);
	Request("プロセス２", Start);
	Request("プロセス３", Start);

	Fade("絵板写", 5000, 600, null, false);
	Shake("絵板写", 360000, 0, 2, 0, 2, 1000, null, false);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　正極と負極。
　二つの磁流。

　それは竜騎兵らの踏む床へ広がり。
　足から這い上がり。

　全身を包んで。
　<RUBY text="・・・・・・">動きを止めた</RUBY>。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw稲田_緊張.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0900b15">
「――!?」


{	NwR("cg/fw/nw小弓十傑Ｂ.png");}
//【ｅｔｃ／十傑Ｃ】
<voice name="ｅｔｃ／十傑Ｃ" class="その他男声" src="voice/mb03/016vs0910e113">
「ごっ――」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　自己の内部へ施し、騎体動作を高速化する磁装正極。
　自己の外皮へ施し、攻撃を防ぐ障壁を張る磁装負極。

　この二術を同時に施された対象は、
　磁力的に<RUBY text="・・・・・">完全な安定</RUBY>を迎えてしまい、一切、身動き
がとれなくなる。

　こちらの敵対行動に反応して即座に人質の首を薙ぐ
筈だった刃は……<k>今、ぴくりとも動かない。

　だが――この状態を保てるのは本当に一瞬である。
　本来は自己一体のみを対象とし、それでも長時間の
維持は難しい術を、これだけ広範囲に広げているのだ。

　一呼吸にも満たない一瞬で、この膠着は終わる。
　
　
　彼女が俺に求めたものは、それで全てだった。

　それで充分だったから。
　勝利するために。

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//――――――――――――――――――――――――


	SetVolume("SE*", 1000, 0, null);
	CreateSE("SE01","se戦闘_攻撃_刀衝突01");
	MusicStart("SE01",0,1000,0,800,null,false);
	CreateTextureSPmul("絵演効果", 6000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	CreateTextureSPadd("絵演上", 5100, Center, Middle, "cg/ev/resize/ev918_正宗無弦十征矢l.jpg");
	CreateTextureSP("絵演", 5000, Center, Middle, "cg/ev/resize/ev918_正宗無弦十征矢l.jpg");
	Zoom("絵演効果", 0, 2000, 2000, null, true);
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Move("絵演", 0, @-10, @200, null, true);
	SetBlur("絵演", true, 3, 500, 70, false);

	Zoom("絵演効果", 300, 1000, 1000, AxlDxl, false);
	Fade("絵演効果", 300, 0, null, false);
	DrawDelete("絵演効果", 300, 100, "zoom_01_00_0", false);

	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	Delete("プロセス*");
	Delete("絵演十傑衆");
	Delete("絵板写");

	Wait(500);

	SetFwR("cg/fw/fw一条_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/016vs0920a02">
「正宗七機巧――――」


//◆読み「むげん・じゅうせいし」
{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb03/016vs0930b40">
《無弦・十征矢》

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

//◆指鉄砲な。
//◆ばしゅばしゅばしゅっと
//◆全弾命中
	CreateSE("SE01a","se戦闘_正宗_無弦十征矢");
	CreateSE("SE02a","se特殊_鎧_装着06");
	CreateSE("SE03a","se戦闘_動作_鎧_合当理吹かし01");
	CreateSE("SE04a","se戦闘_動作_空突進03");
	CreateTextureEX("絵演２", 5000, Center, Middle, "cg/ev/ev918_正宗無弦十征矢.jpg");
	CreateColorEXadd("絵色100", 15000, "WHITE");

	MusicStart("SE01a",0,1000,0,1000,null,false);
	MusicStart("SE02a",0,1000,0,1000,null,false);

	Fade("絵演２", 600, 1000, Axl3, false);
	Move("絵演", 600, @10, @-200, Dxl2, false);
	Zoom("絵演", 600, 500, 500, Dxl2, true);

	MusicStart("SE03a",0,1000,0,1000,null,false);
	Shake("絵演２", 1000, 5, 0, 0, 0, 1000, Dxl2, false);

	CreateTextureSPadd("絵演効果壱", 6000, 254, 142, "cg/ef/ef026_汎用爆撃.jpg");
	Zoom("絵演効果壱", 0, 1500, 1500, null, true);
	Zoom("絵演効果壱", 300, @100, @100, null, false);
	Fade("絵演効果壱", 300, 0, null, false);
	DrawDelete("絵演効果壱", 300, 1000, "effect_01_00_0", false);

	Wait(100);

	OnSE("se戦闘_正宗_無弦十征矢",1000);//ダミー注意
	CreateTextureSPadd("絵演効果弐", 6000, -80, -40, "cg/ef/ef026_汎用爆撃.jpg");
	Zoom("絵演効果弐", 0, 1500, 1500, null, true);
	Rotate("絵演効果弐", 0, @0, @180, @0, null,true);
	Zoom("絵演効果弐", 300, @200, @200, null, false);
	Fade("絵演効果弐", 300, 0, null, false);
	DrawDelete("絵演効果弐", 300, 1000, "effect_01_00_0", false);

	Wait(100);

	OnSE("se戦闘_正宗_無弦十征矢",1000);//ダミー注意
	CreateTextureSPadd("絵演効果参", 6000, Center, Middle, "cg/ef/ef026_汎用爆撃.jpg");
	Zoom("絵演効果参", 0, 1500, 1500, null, true);
	Zoom("絵演効果参", 300, @50, @50, null, false);
	Fade("絵演効果参", 300, 0, null, false);
	DrawDelete("絵演効果参", 300, 1000, "effect_01_00_0", false);

	Wait(100);

	OnSE("se戦闘_正宗_無弦十征矢",1000);//ダミー注意
	CreateTextureSPadd("絵演効果四", 6000, -254, 140, "cg/ef/ef026_汎用爆撃.jpg");
	Zoom("絵演効果四", 0, 1500, 1500, null, true);
	Rotate("絵演効果四", 0, @180, @0, @0, null,true);
	Zoom("絵演効果四", 300, @50, @50, null, false);
	Fade("絵演効果四", 300, 0, null, false);
	DrawDelete("絵演効果四", 300, 1000, "effect_01_00_0", false);

	Wait(100);

	OnSE("se戦闘_正宗_無弦十征矢",1000);//ダミー注意
	CreateTextureSPadd("絵演効果五", 6000, Center, Middle, "cg/ef/ef026_汎用爆撃.jpg");
	Zoom("絵演効果五", 0, 1500, 1500, null, true);
	Zoom("絵演効果五", 300, @500, @500, null, false);
	Fade("絵演効果五", 300, 0, null, false);
	DrawDelete("絵演効果五", 300, 1000, "effect_01_00_0", false);

	Fade("絵色100", 100, 800, null, true);
	MusicStart("SE04a",0,1000,0,1000,null,false);

	FadeDelete("絵色100", 1000, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　……飛んだものは、指だ。
　正宗の――両手の。

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,0);//―――――――――――――――――――――――――――――

	CreateColorEXadd("絵色100", 17500, "WHITE");
	SetBlur("絵演２", true, 3, 300, 50, false);
	CreateSE("SE01","se戦闘_動作_空突進02");


	MusicStart("SE01",0,1000,0,1000,null,false);

	Fade("絵演２", 300, 0, Axl3, false);
	Zoom("絵演２", 300, 2000, 2000, Dxl2, false);
	Fade("絵色100", 300, 1000, null, true);

	CreateTextureSP("絵演鎧１", 900, Center, InBottom, "cg/st/3d九四式竜騎兵_立ち_通常b.png");
	CreateTextureSP("絵演鎧２", 700, Center, InBottom, "cg/st/3d九四式竜騎兵_立ち_通常c.png");
	CreateTextureSP("絵演鎧３", 600, Center, InBottom, "cg/st/3d九四式竜騎兵_立ち_通常b.png");
	CreateTextureSP("絵演鎧４", 800, Center, InBottom, "cg/st/3d九〇式竜騎兵_立ち_抜刀.png");
	CreateTextureSP("絵演鎧５", 600, Center, InBottom, "cg/st/3d九〇式竜騎兵_立ち_通常.png");
	CreateTextureSP("絵演鎧６", 700, Center, InBottom, "cg/st/3d九四式竜騎兵_立ち_抜刀.png");
	CreateTextureSP("絵演鎧７", 500, Center, InBottom, "cg/st/3d九四式竜騎兵_立ち_抜刀.png");
	CreateTextureSP("絵演鎧８", 400, Center, InBottom, "cg/st/3d八八式竜騎兵_立ち_抜刀.png");

	SetVertex("絵演鎧*", Center, bottom);
	Zoom("絵演鎧２", 0, 900, 900, null, true);
	Zoom("絵演鎧３", 0, 840, 840, null, true);
	Zoom("絵演鎧４", 0, 970, 970, null, true);
	Zoom("絵演鎧５", 0, 840, 900, null, true);
	Zoom("絵演鎧６", 0, 900, 900, null, true);
	Zoom("絵演鎧７", 0, 1100, 1100, null, true);
	Zoom("絵演鎧８", 0, 1030, 1030, null, true);

	Move("絵演鎧３", 0, @-20, @0, null, true);
	Move("絵演鎧４", 0, @120, @0, null, true);
	Move("絵演鎧２", 0, @-240, @0, null, true);
	Move("絵演鎧５", 0, @360, @0, null, true);
	Move("絵演鎧１", 0, @-480, @0, null, true);
	Move("絵演鎧６", 0, @520, @0, null, true);
	Move("絵演鎧７", 0, @-160, @0, null, true);
	Move("絵演鎧８", 0, @300, @0, null, true);


	CreateSE("SE02","se戦闘_衝撃_鎧転倒03");
	CreateSE("SE03","se戦闘_破壊_鎧03");
	CreateSE("SE04","se戦闘_破壊_鎧04");
	CreateSE("SE05","se戦闘_攻撃_殴打連撃02_L");
	CreateSE("SE06","se戦闘_衝撃_鎧転倒02");
	CreateSE("SE07","se戦闘_破壊_鎧05");

	Delete("絵演");
	Delete("絵演２");
	Delete("絵演十*");

	SetVolume("@mbgm*", 3000, 0, null);


	Fade("絵色100", 0, 1000, null, true);
	MusicStart("SE05",0,1000,0,1500,null,false);
	Fade("絵色100", 100, 0, null, false);
	Shake("絵演鎧３", 200, 10, 0, 0, 0, 1000, null, false);
	Move("絵演鎧３", 200, @0, @100, Dxl2, false);
	Fade("絵演鎧３", 300, 0, null, false);
	Wait(100);
	Shake("絵演鎧５", 200, 10, 0, 0, 0, 1000, null, false);
	Move("絵演鎧５", 200, @0, @100, Dxl2, false);
	Fade("絵演鎧５", 300, 0, null, false);
	Wait(100);





	Fade("絵色100", 0, 1000, null, true);
	MusicStart("SE02",0,1000,0,1000,null,false);
	Fade("絵色100", 100, 0, null, false);
	Shake("絵演鎧８", 200, 10, 0, 0, 0, 1000, null, false);
	Move("絵演鎧８", 200, @0, @100, Dxl2, false);
	Fade("絵演鎧８", 300, 0, null, false);
	Wait(100);
	Shake("絵演鎧６", 200, 10, 0, 0, 0, 1000, null, false);
	Move("絵演鎧６", 200, @0, @100, Dxl2, false);
	Fade("絵演鎧６", 300, 0, null, false);
	Wait(100);

	Fade("絵色100", 0, 1000, null, true);
	MusicStart("SE03",0,1000,0,1000,null,false);
	Fade("絵色100", 100, 0, null, false);
	Shake("絵演鎧１", 200, 10, 0, 0, 0, 1000, null, false);
	Move("絵演鎧１", 200, @0, @100, Dxl2, false);
	Fade("絵演鎧１", 300, 0, null, false);
	Wait(100);
	Shake("絵演鎧７", 200, 10, 0, 0, 0, 1000, null, false);
	Move("絵演鎧７", 200, @0, @100, Dxl2, false);
	Fade("絵演鎧７", 300, 0, null, false);
	Wait(100);

	Fade("絵色100", 0, 1000, null, true);
	MusicStart("SE04",0,1000,0,1000,null,false);
	Fade("絵色100", 100, 0, null, false);
	Shake("絵演鎧４", 200, 10, 0, 0, 0, 1000, null, false);
	Move("絵演鎧４", 200, @0, @100, Dxl2, false);
	Fade("絵演鎧４", 300, 0, null, false);
	Wait(100);
	Shake("絵演鎧２", 200, 10, 0, 0, 0, 1000, null, false);
	Move("絵演鎧２", 200, @0, @100, Dxl2, false);
	Fade("絵演鎧２", 300, 0, null, false);
	Wait(300);

	MusicStart("SE06",0,1000,0,1000,null,false);
	MusicStart("SE07",0,1000,0,1000,null,false);
	Fade("絵色100", 1000, 1000, null, true);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0465]
　それが強弓より放たれた矢と化して九騎の竜騎兵を
貫いた。
　九騎全ての急所を穿った。一瞬にして。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);
	Wait(1000);

	PrintBG("上背景", 30000);
	OnBG(100,"bg074_喫茶店の店内_01.jpg");
	StC(1000, @0, @0,"cg/st/st稲田_戦闘_制服.png");
	FadeStC(0,true);
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);

	SetFwR("cg/fw/fw稲田_無.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/016vs0940b15">
「――――――――」


{	FwR("cg/fw/fw一条_冷笑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/016vs0950a02">
「一瞬で全員倒せばいい。
　……てめぇの言った通りだったな」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆稲田倒れる。ばったり。
	Shake("@StC*", 300, 4, 0, 0, 0, 1000, Dxl2, false);
	Move("@StC*", 300, @-10, @40, null, false);
	DeleteStA(300,true);
	CreateSE("SE01","se人体_衝撃_転倒03");
	MusicStart("SE01",0,1000,0,1000,null,false);

//◆フェードアウト
	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb03_017.nss"