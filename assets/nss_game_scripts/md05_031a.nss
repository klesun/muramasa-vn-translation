//<continuation number="110">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_031a.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/md05_031a.nss","TurboBlur3",true);
	

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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md05_032vs.nss";

}

scene md05_031a.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md05_031.nss"

	PrintBG("上背景", 30000);

	CreateTextureSP("絵巨大光", 1000, Center, Middle, "cg/ev/ev253_飢餓虚空の内側.jpg");

	Delete("上背景");

//●村正

	SetFwR("cg/fw/fw光_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【光】
<voice name="光" class="光" src="voice/md05/031a0010a14">
《……なぜだ……？》

{	FwR("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md05/031a0020a14">
《なぜ、光を求めない？
　なぜ……その蜘蛛を求める？》

{	FwR("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/031a0030a14">
《なぜだ、景明!?》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　…………。

　俺はお前を拒絶する。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【光】
<voice name="光" class="光" src="voice/md05/031a0040a14">
《なぜ――》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　俺とお前は、共に罪で穢れきった武人。

　罪の重さで言えば同様だろう。

　だがそれでも、俺とお前は違う。
　同じ世界には住めない。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【光】
<voice name="光" class="光" src="voice/md05/031a0050a14">
《なぜだ!!》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　お前は、夢だ。

　夢だから、己を完全に肯定する。

　殺戮を重ね、宿願に向けて突き進む己に、
　一切の疑問を抱かない。

　お前はお前自身を認め、受け入れている。
　
　
　だが俺は違う。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【光】
<voice name="光" class="光" src="voice/md05/031a0060a14">
《――――》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　俺は己を否定する。

　お前のように、自分の正しさを信じる事はできない。

　俺は現実だから。
　夢であるお前のように、前だけを見てはいられない。

　俺の戦いに救われた人がいて、その人が前に立って
喜んでいたとしても、
　俺は横と後方に倒れる、犠牲になった人々の屍をも
一緒に眺めずには済ませられないだろう。

　こうするしかないと思い、一つの道を進んできた。
　それでも決して、俺は自分の道を認めない。

　正しいとは思わない。

　<RUBY text="・・・・・・">お前とは違う</RUBY>。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【光】
<voice name="光" class="光" src="voice/md05/031a0070a14">
《景明――》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　お前は夢。俺は現実。
　夢と現実が混じり合う事はない。

　俺が共に歩む者を選ぶとすれば、同じ現実だ。

　俺と同じ血の道を歩みながら、
　俺と同じように、決して己を許さない者だ。

　だから。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/md05/031a0080a00">
「だから」

{	FwR("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/031a0090a00">
「俺はお前を呼ぶ」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　塵とされたものを掻き集める。
　集め、繋ぎ、再現する。

　自分自身を構築し――
　その上に、あるべき鉄の<RUBY text="はだ">皮膚</RUBY>を。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/md05/031a0100a00">
「村正!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆蜘蛛村正
//◆ガキーン。装甲

	CreateColorEX("白", 5000, "WHITE");
	Fade("白", 1000, 1000, null, false);

	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);

	DrawEffect("絵巨大光", 1600, "HardSplit", 30, 30, null);


	FadeDelete("絵巨大光", 1000, true);



	CreateTextureEX("蜘蛛顔", 15100, @-400, @-300, "cg/st/resize/3d村正蜘蛛_正面m.png");
	Zoom("蜘蛛顔", 0, 1200, 1200, null, true);

	Zoom("蜘蛛顔", 5000, 1000, 1000, null, false);
	Fade("蜘蛛顔", 300, 300, null, true);




	FadeDelete("蜘蛛顔", 1000, true);


//	Fade("白",1000,0,null,true);
//	Delete("白");


	SetFwC("cg/fw/fw光_愕然.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【光】
<voice name="光" class="光" src="voice/md05/031a0110a14">
《景明ぃっっ!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);


//◆世界崩壊。脱出

	OnSE("se特殊_雰囲気_崩壊音", 1000);
	CreateSEEX("SE01","se戦闘_攻撃_エネルギー鬩ぎ合い01_L");
	MusicStart("SE01",0,1000,0,1000,null,true);

//	CreateColorSPadd("白", 2500, "WHITE");


	CreateTextureSP("瞬間移動", 1000, @0, @0, "cg/ef/ef034_精神汚染.jpg");

	CreateColorEXadd("絵色100", 2000, "WHITE");
	Fade("絵色100", 0, 500, null, true);

	$Warpトランジ = @絵色100;
	$Warpトランジ速度 = 500;
	$Warpトランジなめらかさ = 500;



	CreateTextureEXadd("絵背景効果線", 1500, Center, Middle, "cg/ef/ef034_精神汚染.jpg");
//	SetVertex("絵背景効果線", 800, 420);
	$効果ナット名 = @絵背景効果線;


	CreateProcess("プロセス２", 150, 0, 0, "TurboBlur");
	SetAlias("プロセス２","プロセス２");
	CreateProcess("プロセス３", 150, 0, 0, "TurboBlur3");
	SetAlias("プロセス３","プロセス３");


	Request("プロセス２", Start);
	Request("プロセス３", Start);

	Delete("上背景");
	FadeDelete("黒幕１",1000,true);
	Fade("白", 1000, 0, null, true);


	Wait(3500);

	SetVolume("SE*", 1500, 0, null);
	SetVolume("OnSE*", 1500, 0, null);
	SetVolume("@mbgm*", 1500, 0, null);

	Fade("白", 1500, 1000, null, true);

	Wait(3000);

//	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md05_032vs.nss"



function TurboBlur3()
{

	while(1){

	DrawTransition($Warpトランジ, $Warpトランジ速度, 0, 1000, $Warpトランジなめらかさ, Axl2, "cg/data/circle_01_00_0.png", true);
	DrawTransition($Warpトランジ, $Warpトランジ速度, 1000, 0, $Warpトランジなめらかさ, Dxl2, "cg/data/circle_01_00_1.png", true);

	}

}