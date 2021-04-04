//<continuation number="770">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_015vs.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/mb04_015vs.nss","FlyMoving",true);
	Conquest("nss/mb04_015vs.nss","FlyMoving2",true);
	
//コックピット用Ｓｅｔ
	CP_AllSet("村正");

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼イベントＣＧ
	#bg002_空a_02=true;
	#ev947_村正斬撃汎用=true;
	#ev948_正宗突進汎用=true;
	#ev902_村正電磁抜刀レールガン_b=true;
	#ev902_村正電磁抜刀レールガン_c=true;
	#ev902_村正電磁抜刀レールガン_a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	CP_AllDelete();

	$GameName = "mb04_016vs.nss";

}

scene mb04_015vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb04_014.nss"

//◆ＣＧ：空
//◆ＳＥ：剣撃音。ガキガキーン
	PrintBG("上背景", 30000);
//	SoundPlay("@mbgm17",0,1000,true);
	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 5000, "#FFFFFF");
	CreateTextureSP("絵背景100", 100, Center, -100, "cg/bg/bg002_空a_02.jpg");
	FadeDelete("上背景", 200, true);
	WaitKey(300);
	Move("絵背景100",500, @0, @100, Dxl2, false);
	DrawDelete("絵色白", 500, 100, "slide_02_01_1", true);

	CreateSE("SE01b","se戦闘_攻撃_鎧_剣戟03");
	MusicStart("SE01b",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　裏切り。否定。
　――それが湊斗景明の、綾弥一条への回答なら。

　俺はこの答えを、残り全ての力でお前に返す。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＳＥ：一際大きくガキーン。
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE02","se戦闘_攻撃_鎧_剣戟04");
	CreateSE("SE02b","se戦闘_衝撃_衝突01");
	CreateSE("SE10","se戦闘_動作_空突進05");
	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE02b",0,1000,0,1000,null,false);
	MusicStart("SE10",1000,700,0,1200,null,true);



	CreateColorEXadd("絵フラ", 18000, "#FFFFFF");

	Zoom("絵背景100", 200, 2000, 2000, Axl2, false);
	Fade("絵フラ", 200, 1000, null, true);
	WaitKey(100);

	CreateTextureSP("絵背景100", 100, Center, -864, "cg/bg/bg201_旋回演出背景市街地_02.jpg");
	CreateTextureSP("絵演村正", 1010, Center, Middle, "cg/st/3d正宗_騎突_戦闘.png");
	CreateTextureSP("絵演バロウズ", 1000, Center, Middle, "cg/st/3d村正標準_騎航_通常3a.png");
	Rotate("絵演バロウズ", 0, @0, @0, @0, null,true);
	Zoom("絵演村正", 0, 900, 900, null, true);
	Zoom("絵演バロウズ", 0, 50, 50, null, true);
	Move("絵演村正", 0, @-100, @60, null, true);
	Move("絵演バロウズ", 0, @230, @-60, null, true);
	SetBlur("絵演村正", true, 2, 300, 70, false);
	SetBlur("絵演バロウズ", true, 2, 300, 70, false);


	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);

$ループムーブナット名 = "@絵演バロウズ";
$ループムーブタイム = 30000;

$ループムーブナット名２ = "@絵演村正";
$ループムーブタイム２ = 10000;

	CreateProcess("プロセス１", 150, 0, 0, "FlyMoving");
	CreateProcess("プロセス２", 150, 0, 0, "FlyMoving2");
	SetAlias("プロセス１","プロセス１");
	SetAlias("プロセス２","プロセス２");

	CloudZoomSet(1000);
	CloudZoomStartB(1000,500,500,500,300);
	CloudZoomVertex(500,@300,@0,null,false);

	Fade("絵フラ", 500, 0, null, false);

	Move("絵背景100", 30000, @0, @-200, null, false);

	FadeDelete("絵色100", 500, false);
	DrawDelete("黒幕１", 150, 100, "slide_01_01_0", false);
	Zoom("絵演村正*", 1000, 1000, 1000, Dxl2, false);
	Move("絵演バロウズ*", 1000, @60, @0, Dxl2, false);
	Move("絵演村正*", 1000, @-160, @0, Dxl2, true);
	Move("絵演バロウズ*", 0, @0, @0, null, true);
	Move("絵演村正*", 0, @0, @0, null, true);


	Request("プロセス１", Start);
	Request("プロセス２", Start);


	Request("プロセス*", Stop);
	Delete("プロセス*");

	OnSE("se戦闘_動作_空突進08",1000);


	Move("絵背景100", 300, @0, @-500, Axl2, false);
	Zoom("絵演村正*", 300, 2000, 2000, Axl2, false);
	Move("絵演村正*", 300, @-560, @0, Axl2, false);
	Move("絵演バロウズ*", 300, @560, @0, Axl2, false);

	Fade("絵フラ", 300, 1000, null, true);

	Delete("絵演*");
	Delete("絵背景100");
	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/resize/bg002_空a_02.jpg");


	CloudZoomSet(1000);
	CloudZoomStart(1000,500,500,500,530);
	CloudZoomVertex(500,@0,@0,null,false);

//おがみ：コックピット動作定義=======================
	Cockpit_AllFade2();
	CP_HighChangeA();
	CP_AltChangeA();
	FrameShake();
	MyLife_Count(500,320);
	MyTr_Count(500,358);
	CP_IHPChange(500,4,null,false);
	CP_PowerChange(300,300,null,false);

	CP_AziChange(500,10,null,false);
	CP_HighChange(0,1000,null,false);
	CP_SpeedChange(0,527,null,false);
	BGMoveAuto("@絵背景50",1);
//===================================================

	Zoom("絵背景50", 0, 2000, 2000, null, true);
	Zoom("絵背景50", 1500, 1000, 1000, Dxl2, false);
	CP_RollBarMove("@絵背景50", 1500, -360, Dxl2, false);
	FadeDelete("絵フラ", 1000, true);

	SetVolume("SE10", 2000, 300, null);
	SetFrequency("SE10", 1000, 1000, null);

	Wait(1000);

//◆村正ＶＳ正宗
//あきゅん「演出：ＢＧＭとか適当です」
	SoundPlay("@mbgm10",0,1000,true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/015vs0010a01">
《御堂。注意して。
　長くは保たない》


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/015vs0020a00">
「承知している！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　劒冑が言っているのは<RUBY text="カロリー">熱量</RUBY>のことだ。
　既に銀星号と一戦を交えた後。合当理を稼動させる
エネルギーは小匙数杯分ほどの残量もない。

　短期決戦の必要があった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆正宗をロックオンして突進
//◆村正上段
//◆正宗上段
//◆太刀打ガキョーン。互いに弾かれる
	BGMoveDelete();
	OnSE("se戦闘_動作_空突進03",1000);


	SetFrequency("SE10", 1000, 1100, null);
	Move("@絵背景50", 300, @500, @0, Axl2, false);

	CP_AziChange(300,50,Axl2,false);

	CreateColorSP("黒幕１", 18000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, Axl2, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/resize/bg002_空a_02.jpg");
	Request("絵背景50", Smoothing);
	CreateTextureEX("絵狸", 100, Center, middle, "cg/st/3d正宗_騎突_戦闘.png");
	SetBlur("絵狸", true, 1, 300, 100, false);
	Request("絵狸", Smoothing);
	Zoom("絵狸", 0, 300, 300, null, true);


	CP_AziChange(0,-200,null,true);
	CP_RollBarMove("@絵背景50", 0, 0, null, true);
	CockPit_LockSet(@0,@0);
	CP_LockOnMove("@絵狸",0,@-200,@0,null,true);


	Move("絵背景50", 2000, @100, @50, Dxl2, false);
	CP_AltChange(2000,10,Dxl2,false);
	CP_HighChange(2000,1100,Dxl2,false);
	CP_AziChange(2000,-190,Dxl2,false);

	CreateColorEXadd("絵色100", 1500, "WHITE");
	SL_down(@0, @0,1000);
	CreateSE("SE01","se戦闘_攻撃_鎧_剣戟04");

	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);


//おがみ：ロックオン
	OnSE("se特殊_コックピット_起動音02",1000);

	Fade("@絵狸", 300, 1000, null, false);
	CP_LockOnMove("@絵狸",1000,@200,@0,Dxl1,false);
	CP_LockOnFade(100,"on",false);
	CP_EnemyFade(300,10,420,300);

	SetFrequency("SE10", 1000, 1000, null);


//おがみ：突進攻撃

	OnSE("se戦闘_動作_空突進01",1000);
	SetFrequency("SE10", 1000, 1200, null);
	Zoom("絵背景50", 400, 1200, 1200, Axl2, false);
	CP_LockOnMove("@絵狸",300,@0,@150,Axl3,false);
	Zoom("@絵狸", 300, 1500, 1500, Axl3, false);
	Wait(200);
	Fade("@絵狸", 100, 0, null, true);
	SL_downfade2(10);

//	Wait(100);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵色100", 0, 1000, null, true);
	Delete("@絵狸");
	CP_LockOnDelete();
	Shake("@CP_Frame", 1000, 5, 10, 0, 0, 800, null, false);
	Zoom("絵背景50", 600, 800, 800, Dxl2, false);
	FadeDelete("絵色100", 500, true);
	Wait(100);
	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/015vs0030a00">
「……ち！」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/015vs0040a01">
《真っ向からの<RUBY text="ちからくらべ">剛力勝負</RUBY>は向こうに有利よ、
御堂！》


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/015vs0050a00">
「そのようだ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　今の打ち合いは四分六分でこちらが打ち負けていた。
　危うく、押し切られる事は防いだが。

　本来なら村正も力では劣らない。
　が、今は条件が悪過ぎる。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



//◆反転して再び相対
	BGMoveDelete();

	OnSE("se戦闘_動作_空突進03",1000);
	SetFrequency("SE10", 1000, 1100, null);
	SetVolume("SE10", 1000, 700, null);


//おがみ：定義
	CreateTextureEX("絵背景150", 100, 0, 0, "cg/bg/resize/bg002_空a_02.jpg");
	Request("絵背景150", Smoothing);
	Zoom("絵背景150", 0, 6000, 1000, null, true);

	CreateTextureEX("絵狸", 4100, Center, middle, "cg/st/3d正宗_騎突_戦闘.png");
	Request("絵狸", Smoothing);
	Zoom("絵狸", 0, 200, 200, null, true);
	SetBlur("絵狸", true, 1, 300, 100, false);

$ループムーブナット名２ = "@絵狸";
$ループムーブタイム２ = 15000;

	CreateProcess("プロセス２", 150, 0, 0, "FlyMoving2");
	SetAlias("プロセス２","プロセス２");

	CreateSE("SEロックオン","se特殊_コックピット_起動音02");

	CP_AltChange(2000,10,AxlDxl,false);
	CP_HighChange(2000,1050,AxlDxl,false);
	CP_PowerChange(300,300,null,false);
	CP_AziChange(1500,-379,AxlDxl,false);

//おがみ：動作
	CloudZoomVertex(700,@500,@0,Axl2,false);
	CP_RollBarMove("@絵背景50", 500, -8, AxlDxl, false);
	Move("@絵背景150", 1500, @-5048, @0, AxlDxl, false);
	Move("@絵背景50", 200, @-200, @0, Axl3, false);
	Fade("@絵背景150", 200, 1000, null, true);

	Move("@絵背景50", 0, -312, -288, null, true);
	CockPit_LockSet(@0,@0);
	CP_LockOnMove("@絵狸",0,@200,@0,null,true);

	Wait(600);
	CloudZoomVertex(700,@-500,@0,Dxl2,false);
	CP_RollBarMove("@絵背景50", 600, 0, Dxl2, false);
	Wait(200);
	FadeDelete("絵背景150", 300, false);

//おがみ：ロックオン
	Move("@絵背景50", 600, -512, -288, Dxl2, true);
	BGMoveAuto("@絵背景50",1);

	MusicStart("SEロックオン",0,1000,0,1000,null,false);
	Fade("@絵狸", 500, 1000, null, false);
	CP_LockOnMove("@絵狸",600,@-200,@0,Dxl2,true);
	Request("プロセス２", Start);
	CP_LockOnFade(100,"on",false);
//	CP_EnemyFade(300,10,420,300);

	SetVolume("SE10", 2000, 300, null);
	SetFrequency("SE10", 1000, 1000, null);


//	Wait(500);

	SetFwR("cg/fw/fw一条_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/015vs0060a02">
《湊斗……さん……っ！》


{	FwR("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/015vs0070a00">
《……》


{	FwR("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/015vs0080a02">
《あなたは――――
　…………どうしてっ！》


//【一条】
<voice name="一条" class="一条" src="voice/mb04/015vs0090a02">
《認めてくれてるんだと、思っていたのに！》


{	FwR("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/015vs0100a00">
《認めている。綾弥一条。
　幾度でも繰り返す》


//【景明】
<voice name="景明" class="景明" src="voice/mb04/015vs0110a00">
《悪を憎み、無くそうと願うお前は正しい。
　決して間違っていない》


{	FwR("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/015vs0120a02">
《なのにっ！》


{	FwR("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/015vs0130a00">
《――それでも、戦いには罪が有る。
　正義の一語を冠するには値しない》


{	FwR("cg/fw/fw一条_苦痛.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/015vs0140a02">
《違うっ……！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateSE("SEロックオン","se特殊_コックピット_起動音02");
	CreateSE("SE02","se戦闘_動作_空突進01");
	CreateSE("SE03","se戦闘_攻撃_鎧_剣戟01");
	CreateSE("SE04","se戦闘_動作_突進01");

//◆近接
//◆正宗上段
	MusicStart("SEロックオン",0,1000,0,1000,null,false);
//	CP_LockOnMove("@絵狸",1600,@200,@0,Dxl2,false);
	Fade("@絵狸", 500, 1000, null, true);

	SetVolume("SE10", 2000, 300, null);
	SetFrequency("SE10", 1000, 1000, null);

	BGMoveDelete();
	MusicStart("SE02",0,1000,0,1000,null,false);
	Zoom("@絵狸", 700, 1500, 1500, Axl3, false);
	Zoom("@絵背景50", 800, 1200, 1200, Axl2, false);
	Wait(400);
	MusicStart("SE03",0,1000,0,1000,null,false);
	MusicStart("SE04",0,1000,0,1000,null,false);
//	CP_LockOnMove("@絵狸",400,@-50,@0,Dxl2,false);
	Zoom("@絵背景50", 400, 1200, 1200, Dxl2, false);
	Move("@絵背景50", 400, @-150, @0, Dxl2, true);

	SetFwL("cg/fw/fw一条_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/015vs0150a02">
《悪を討つことが正義でないなら……
　正義は何処にも顕れない！》


{	FwL("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/015vs0160a02">
《ほかにどうしようがある!?
　<RUBY text="サティヤーグラハ">非暴力抵抗運動</RUBY>でもやれって言うんですか
……》

{	FwL("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/015vs0170a02">
《六波羅にそんなのが通用するとでも!?》


{	FwL("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/015vs0180a00">
《……》


{	FwL("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/015vs0190a02">
《するわけがない！
　戦わなければ何も変わらないっ！》

{	FwL("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/015vs0200a02">
《暴力を振りかざす奴等は、同じ暴力で殴り
倒されない限り反省なんかしない！》


{	FwL("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/015vs0210a00">
《その通りだ……》

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　全く正しい。
　一条の言う事は全くの真実だ。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――



//◆テキストボックス＆顔窓、二つ同時表示？
	CreateWindow("絵演窓右", 18000, 512, Middle, 512, 576, false);
	SetAlias("絵演窓右","絵演窓右");
	CreateTextureEX("絵演窓右/絵演右", 18100, 256, -120, "cg/ev/ev504_村正突進.jpg");
	CreateTextureEX("絵演左", 17500, -256, 120, "cg/ev/ev948_正宗突進汎用.jpg");

	Move("絵演窓右/絵演右", 500, @0, @120, Dxl2, false);
	Move("絵演左", 500, @0, @-120, Dxl2, false);
	Fade("絵演左", 300, 1000, null, false);
	Fade("絵演窓右/絵演右", 300, 1000, null, true);

	Delete("プロセス２");
	Delete("@絵狸");






	CreateVOICE("一条","mb04/015vs0220a02");
	CreateVOICE("景明","mb04/015vs0230a00");

	SetBacklog("《だから》", "voice/mb04/015vs0220a02", 一条);
	SetBacklog("《しかし》", "voice/mb04/015vs0230a00", 景明);



	SetFont("@ＭＳ 明朝", 20, #FFFFFF, #222222, 500, RIGHTDOWN);
	CreateText("text02", 20001, 50, 40, 700, 500, "《しかし》");
	Fade("text02", 0, 0, null, true);
	Request("text02", PushText);
	Request("text02", NoLog);
	SetVertex("text02", 0, 0);
	SetAlias("text02","text02");
	Rotate("text02", 0, @0, @0, 90, null,true);
	Move("text02", 0, 828, 134, null, true);

	MusicStart("一条",0,1000,0,1000,null,false);
	MusicStart("景明",0,1000,0,1000,null,false);







	SetFwL("cg/fw/fw一条_怒りa.png");
	SetFwR("cg/fw/fw景明_戦闘.png");
	FadeFwR(200,false);
	Fade("@boxRT",150,1000,null,false);
//	FadeFwL(200,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
{	Fade("text02",0,1000,null,false);}
《だから》

</PRE>
	SetTextEXL();
	Request("@text0090", PushText);
	Request("@text0090", NoIcon);
	Request("@text0090", NoLog);
	TypeBeginTimeLI(150,0);//―――――――――――――――――――――――――――――

/*
//【一条】
<voice name="一条" class="一条" src="voice/mb04/015vs0220a02">
《だから》

//【景明】
<voice name="景明" class="景明" src="voice/mb04/015vs0230a00">
《しかし》
*/


	CreateVOICE("一条","mb04/015vs0240a02");
	CreateVOICE("景明","mb04/015vs0250a00");

	SetBacklog("《それが正義だ！》", "voice/mb04/015vs0240a02", 一条);
	SetBacklog("《それは正義ではない！》", "voice/mb04/015vs0250a00", 景明);



	SetFont("@ＭＳ 明朝", 20, #FFFFFF, #222222, 500, RIGHTDOWN);
	CreateText("text02", 20001, 50, 40, 700, 500, "《それは正義ではない！》");
	Fade("text02", 0, 0, null, true);
	Request("text02", PushText);
	Request("text02", NoLog);
	SetVertex("text02", 0, 0);
	SetAlias("text02","text02");
	Rotate("text02", 0, @0, @0, 90, null,true);
	Move("text02", 0, 828, 134, null, true);

	MusicStart("一条",0,1000,0,1000,null,false);
	MusicStart("景明",0,1000,0,1000,null,false);





	SetFwL("cg/fw/fw一条_戦闘.png");
	SetFwR("cg/fw/fw景明_怒りb.png");
	FadeFwR(0,false);
	Fade("@boxRT",150,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0095]
{	Fade("text02",0,1000,null,false);}
《それが正義だ！》

</PRE>
	SetTextEXL();
	Request("@text0095", PushText);
	Request("@text0095", NoIcon);
	Request("@text0095", NoLog);
	TypeBeginTimeLIO(0,0);//―――――――――――――――――――――――――――――
	Fade("@boxRT",0,0,null,false);
	Fade("@FwR*",0,0,null,false);
	Delete("text02");
/*
//【一条】
<voice name="一条" class="一条" src="voice/mb04/015vs0240a02">
《それが正義だ！》

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/015vs0250a00">
《それは正義ではない！》
*/

//◆太刀打。五分。
//◆交差
	CreateSE("SE01","se戦闘_攻撃_鎧_剣戟02");
	CreateSE("SE02","se戦闘_破壊_鎧03");
	CreateSE("SE03","se戦闘_攻撃_鎧_剣戟03");
	CreateSE("SE04","se戦闘_破壊_鎧04");
	CreateColorEXadd("絵色100", 19000, "WHITE");
//	CreateColorEX("絵色200", 1500, "BLACK");

	CreateTextureEX("絵背景激突", 18200, Center, Middle, "cg/ef/ef040_汎用衝突.jpg");


	MusicStart("SE01",0,1000,0,1000,null,false);
	EffectZoomDXadd(18300, 500, 100, "#FFFFFF", "cg/ef/ef040_汎用衝突.jpg", false);
	Fade("絵背景激突", 100, 1000, null, true);
	Delete("絵演*");

	Wait(200);

//◆一撃
//◆ずがーん
//◆離れ
	MusicStart("SE03",0,1000,0,1000,null,false);

	Fade("絵色100", 0, 1000, null, true);
	Wait(200);

	Delete("絵背景激突");
	Delete("@絵狸");
	CP_LockOnDelete();

	Zoom("@絵背景50", 0, 1200, 1200, null, true);

	BGMoveAuto("@絵背景50",1);
	Zoom("@絵背景50", 1000, 1000, 1000, Dxl2, false);
	FadeDelete("絵色100", 500, false);

	MusicStart("SE04",0,1000,0,1000,null,false);
	EffectZoomDXadd(10000, 1000, 1000, "#FFFFFF", "cg/ef/ef042_汎用打撃.jpg", false);

	MusicStart("SE02",0,1000,0,1000,null,false);

	Wait(1000);
	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/015vs0260a00">
「くっ……」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/015vs0270a02">
《正義でないなら――何だと！》


{	FwC("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/015vs0280a02">
《何だって言うんですか！》


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/015vs0290a00">
《……》


//【景明】
<voice name="景明" class="景明" src="voice/mb04/015vs0300a00">
《悪だ。
　悪を討つものも、また悪でしかない》


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/015vs0310a02">
《ッ……》


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/015vs0320a00">
《いや……
　悪で<RUBY text="・・・・・・・・">なくてはならない</RUBY>》


{	FwC("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/015vs0330a02">
《あなたは、狂ってるっ！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆反転。相対
	BGMoveDelete();

	OnSE("se戦闘_動作_空突進03",1000);
	SetFrequency("SE10", 1000, 1100, null);
	SetVolume("SE10", 1000, 700, null);


//おがみ：定義
	CreateTextureEX("絵背景150", 100, -5048, 0, "cg/bg/resize/bg002_空a_02.jpg");
	Request("絵背景150", Smoothing);
	Zoom("絵背景150", 0, 6000, 1000, null, true);

	CreateTextureEX("絵狸", 4100, Center, middle, "cg/st/3d正宗_騎突_戦闘.png");
	Request("絵狸", Smoothing);
	Zoom("絵狸", 0, 200, 200, null, true);
	SetBlur("絵狸", true, 3, 300, 70, false);

	CreateSE("SEロックオン","se特殊_コックピット_起動音02");

	CP_AltChange(2000,10,AxlDxl,false);
	CP_HighChange(2000,1050,AxlDxl,false);
	CP_AziChange(1600,213,AxlDxl,false);

//おがみ：動作
	CloudZoomVertex(700,@-500,@0,Axl2,false);
	CP_RollBarMove("@絵背景50", 500, 8, AxlDxl, false);
	Move("@絵背景150", 1500, @5048, @0, AxlDxl, false);
	Move("@絵背景50", 200, @200, @0, Axl3, false);
	Fade("@絵背景150", 200, 1000, null, true);

	Move("@絵背景50", 0, -712, -298, null, true);
	CockPit_LockSet(@0,@0);
	CP_LockOnMove("@絵狸",0,@-200,@0,null,true);

	Wait(600);
	CloudZoomVertex(700,@500,@0,Dxl2,false);
	CP_RollBarMove("@絵背景50", 600, 0, Dxl2, false);
	Wait(200);
	SetVolume("SE10", 2000, 300, null);
	SetFrequency("SE10", 1000, 1000, null);
	FadeDelete("絵背景150", 300, false);

//おがみ：ロックオン
	MusicStart("SEロックオン",0,1000,0,1000,null,false);
	CP_LockOnMove("@絵狸",800,@200,@0,Dxl2,false);
	Fade("@絵狸", 500, 1000, null, false);
	Move("@絵背景50", 600, -512, -288, Dxl2, true);
	BGMoveAuto("@絵背景50",1);
	CP_LockOnFade(100,"on",false);
//	CP_EnemyFade(300,10,420,300);


	SetFwR("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/015vs0340a00">
《まさに狂っている。
　だがそれは、戦いそのものが狂った論理の
産物だからだ》


//【景明】
<voice name="景明" class="景明" src="voice/mb04/015vs0350a00">
《善人と云い、悪人と云うも、それは人間の
一面に過ぎない。
　一面しか持たない人間などいない》


{	FwR("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/015vs0360a00">
《そんな事は誰もが知っている。
　……なのに人は対立者を己の知る一面のみ
をもって悪人と断定し、争い、殺す》


//【景明】
<voice name="景明" class="景明" src="voice/mb04/015vs0370a00">
《そうしなくては、殺し合いという絶対的な
矛盾を許容できないからだ！
　もし欺瞞を捨て、戦いの実相をそのままに
受け入れるなら――》


{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/015vs0380a00">
《狂うしかない。
　善も悪も、敵も味方も、隔てなく殺す悪鬼
たるを自ら認める以外にない！》


{	FwR("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/015vs0390a00">
《<RUBY text="おれ">村正</RUBY>になるしかない!!》


{	FwR("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/015vs0400a02">
《ち――違う……！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆村正上段
	OnSE("se戦闘_動作_空突進01",1000);

	Zoom("@絵狸", 500, 1000, 1000, Dxl2, false);
	Zoom("@絵背景50", 500, 1200, 1200, Dxl2, true);

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/015vs0410a00">
《違わぬ！
　違うと言うのなら……一条、お前は何故、》


{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/015vs0420a00">
《遊佐童心を殺した後で――
　己の行為に怯えたのだ!?》


{	FwR("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/015vs0430a02">
《……！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆太刀打
//◆交差
	SL_leftdown2(20000,@0, @0,1000);
	CreateColorSP("絵色100", 18000, "BLACK");

	OnSE("se戦闘_攻撃_鎧_剣戟01",1000);
	SL_leftdownfade2(10);

	Delete("@絵狸");
	CP_LockOnDelete();

	OnSE("se戦闘_攻撃_剣戟弾く02",1000);
	Shake("@CP_Frame", 1000, 5, 10, 0, 0, 800, null, false);
	Zoom("絵背景50", 600, 800, 800, Dxl2, false);


	OnSE("se戦闘_動作_空突進01",1000);
	FadeDelete("絵色100", 500, true);


	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/015vs0440a00">
《あの時のお前は、彼を殺害した事実に怯え、
震えていた》


//【景明】
<voice name="景明" class="景明" src="voice/mb04/015vs0450a00">
《それは何故だ。
　信ずる正義と、為した悪業との間に、どう
にも整合のつけられぬ矛盾を見出したからで
はないのか!?》


{	FwC("cg/fw/fw一条_苦痛.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/015vs0460a02">
《そうじゃない！
　あれは……っ》


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/015vs0470a02">
《ただ、初めて人を斬ったから……
　耐えられなかっただけ、で――》


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/015vs0480a00">
《耐えられなかったのは何故だ。
　遊佐入道を単なる悪と信じ、殺す事が正義
と信じていたなら、どうしてそれほど衝撃を
受けた》


//【景明】
<voice name="景明" class="景明" src="voice/mb04/015vs0490a00">
《お前は風邪薬で病原菌を殺すのにも苦痛を
覚えるのか？
〝社会の悪〟を殺す事はそれとどう違う？》


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/015vs0500a02">
《――――》


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/015vs0510a00">
《……わかっていた筈だ。何処かで。
　お前ほど欺瞞や逃避の似合わぬ者が、真実
を見過ごしたとは考えられない》


//【景明】
<voice name="景明" class="景明" src="voice/mb04/015vs0520a00">
《<RUBY text="・・・・・・・・・・・・・">人を悪と断じて殺す事の矛盾</RUBY>、
　お前は――頭で気付かずとも、体で悟って
いたのだ》


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/015vs0530a00">
《だから震えたのだ！》


{	FwC("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/015vs0540a02">
《違う――――!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆反転。相対
//◆正宗高速突進
	BGMoveDelete();

	OnSE("se戦闘_動作_空突進03",1000);
	SetFrequency("SE10", 1000, 1100, null);
	SetVolume("SE10", 1000, 700, null);


//おがみ：定義
	CreateTextureEX("絵背景150", 100, 0, 0, "cg/bg/resize/bg002_空a_02.jpg");
	Request("絵背景150", Smoothing);
	Zoom("絵背景150", 0, 6000, 1000, null, true);

	CreateTextureEX("絵狸", 4100, Center, middle, "cg/st/3d正宗_騎突_戦闘.png");
	Request("絵狸", Smoothing);
	Zoom("絵狸", 0, 200, 200, null, true);

	CreateSE("SEロックオン","se特殊_コックピット_起動音02");

	CP_AltChange(2000,10,AxlDxl,false);
	CP_HighChange(2000,1050,AxlDxl,false);
	CP_AziChange(2000,-369,AxlDxl,false);

//おがみ：動作
	CP_RollBarMove("@絵背景50", 500, -8, AxlDxl, false);
	Move("@絵背景150", 1500, @-5048, @0, AxlDxl, false);
	Move("@絵背景50", 200, @-200, @0, Axl3, false);
	Fade("@絵背景150", 200, 1000, null, true);

	Move("@絵背景50", 0, -312, -288, null, true);
	CockPit_LockSet(@0,@0);
	CP_LockOnMove("@絵狸",0,@200,@0,null,true);

	Wait(600);
	CP_RollBarMove("@絵背景50", 600, 0, Dxl2, false);
	Wait(200);
	FadeDelete("絵背景150", 300, false);

//おがみ：ロックオン
	MusicStart("SEロックオン",0,1000,0,1000,null,false);
	CP_LockOnMove("@絵狸",800,@-200,@0,Dxl2,false);
	Fade("@絵狸", 500, 1000, null, false);
	Move("@絵背景50", 600, -512, -288, Dxl2, true);
	BGMoveAuto("@絵背景50",1);
	CP_LockOnFade(100,"on",false);
//	CP_EnemyFade(300,10,420,300);

	SetVolume("SE10", 2000, 300, null);
	SetFrequency("SE10", 1000, 1000, null);



	SetFwR("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/015vs0550a00">
《一条ッ!!》


{	FwR("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/015vs0560a02">
《らぁぁぁぁぁァァァッ!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆太刀打
//◆村正被弾
	CreateSE("SE01","se戦闘_攻撃_鎧_剣戟02");
	CreateSE("SE02","se戦闘_破壊_鎧03");
	CreateSE("SE03","se戦闘_攻撃_鎧_剣戟03");
	CreateSE("SE04","se戦闘_破壊_鎧04");
	CreateSE("SE05","se戦闘_動作_空突進01");
	SL_rightdown2(4550,@0, @0,1000);
	CreateColorEXadd("絵色100", 4600, "WHITE");
	CreateColorEX("絵色200", 4500, "BLACK");



	BGMoveDelete();

	MusicStart("SE05",0,1000,0,1000,null,false);
	Zoom("@絵狸", 500, 1500, 1500, Axl3, false);
	Zoom("@絵背景50", 500, 1500, 1500, Axl2, false);
	Wait(400);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵色200", 0, 1000, null, true);
	SL_rightdownfade2(20);

	Wait(400);

	MusicStart("SE03",0,1000,0,1000,null,false);
	MusicStart("SE04",0,1000,0,1000,null,false);

	Fade("絵色100", 0, 1000, null, true);
	Wait(200);
	Delete("絵色200");
	Delete("@絵狸");
	CP_LockOnDelete();
	MyLife_Count(1000,220);
	CP_IHPChange(1000,3,null,false);
	CP_PowerChange(1000,150,null,false);

	Zoom("@絵背景50", 2000, 1000, 1000, Dxl2, false);

	MusicStart("SE04",0,1000,0,1000,null,false);
	EffectZoomDXadd(10000, 1000, 1000, "#FFFFFF", "cg/ef/ef040_汎用衝突.jpg", false);
	FadeDelete("絵色100", 500, false);

	MusicStart("SE02",0,1000,0,1000,null,false);

	Wait(1000);

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/015vs0570a00">
「うぬ!!」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/015vs0580a01">
《御堂！
　これ以上はっ――》


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/015vs0590a00">
「限度か」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/015vs0600a01">
《甲鉄も熱量もね！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　……ならば。
　打つべき手は一つきり、か。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆反転。相対
//あきゅん「ＣＰ：上昇ロール？　という事にしておきます」
	OnSE("se戦闘_動作_空突進03",1000);

	CreateTextureEX("絵背景100", 500, 0, 0, "cg/bg/resize/bg002_空a_02.jpg");
	Zoom("絵背景100", 0, 1000, 28000, null, true);
	Move("絵背景100", 0, @0, @-7000, null, true);

	CP_HighChange(1000,870,null,false);
	CP_SpeedChange(1000,540,null,false);

	Fade("絵背景100", 500, 1000, null, false);
	CloudZoomVertex(700,@0,@-500,Axl2,false);
	Move("絵背景100", 3000, @0, 0, AxlDxl, false);
	Move("@絵背景50", 500, @0, @200, Axl2, false);

	CP_SpeedChange(2000,350,null,false);
	CP_HighChange(2000,1157,null,false);
	CP_AltChange(1250,90,Dxl2,false);

	Wait(1500);

	CP_RollBarMove2(0,180,null,true);
	CP_RollBarMove("@絵背景50",1500,0,AxlDxl,false);
	CP_AziChange(1500,189,Dxl2,false);
	CP_AltChange(1000,0,Dxl2,false);

	Wait(1000);

	CloudZoomVertex(700,@0,@500,Dxl2,false);
	Move("@絵背景50", 0, -512, -588, null, true);
	Fade("絵背景100", 500, 0, null, false);
	Move("@絵背景50", 500, -512, -258, Dxl2, true);
	Move("@絵背景50", 500, -512, -288, AxlDxl, true);
	Delete("絵背景100");

	BGMoveAuto("@絵背景50",1);

	Wait(500);

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/015vs0610a00">
「一手を以て覆す」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/015vs0620a01">
《御堂。
　……いい、のね？》


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/015vs0630a00">
「ああ。
　俺はここで、綾弥一条を殺す」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　殺す。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/015vs0640a00">
「これは非道だ。
　これは無道だ。
　一片の道理もない」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/015vs0650a00">
「<RUBY text="・・・・・・・・">だがこれが戦いだ</RUBY>。
　<RUBY text="・・・・・・・・・・・・">戦いには常に道理などない</RUBY>。
　正義という厚化粧が施されているかいない
かの違いしかない」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/015vs0660a00">
「遊佐童心を、銀星号を、殺すという事。
　綾弥一条を殺すという事」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/015vs0670a00">
「どちらも同じ、許されざる行為。
　前者のみ許し、後者のみ許さぬというなら
それは独善でしか在り得ない」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/015vs0680a00">
「その独善を俺が承認し、世が承認するなら。
　――戦いの火種が無数に撒かれる」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　それは己の善を通し、他者の善を排除する行為への
認可であるから。
　悪と信じた者と争い殺す事は正しいのだと、認める
ものであるから。

〝悪〟と戦う事は尊い――と。
　
　誰もがそう信ずるとき、戦争は禁忌ではなくなる。

　だがそれは違う。
　<RUBY text="いくさ">戦</RUBY>は<RUBY text="まがごと">凶事</RUBY>にして卑しむべし。

　世に災厄を為す者はいる。
　世に死すべき罪人はいる。
　
　戦いが<RUBY text="・・">必要</RUBY>とされる事はある。

　だが<RUBY text="・・">正義</RUBY>である事は決してない。
　その戦いが例えただ一人の善とその他全ての人類の
善との対決であったとしても、一方の善が一方を暴力
で圧殺するならそれは断じて正義を名乗れない。

　ただの殺戮。
　ただの独善。
　ただの悪業である。

　戦い殺すは独善の極地にして常に悪業。
　忌まれ卑しまれ避けられねばならない。

　<RUBY text="さ">然</RUBY>あらずんば、世に戦いの種は尽きまじ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 2000, 0, null);
	SetVolume("@mbgm*", 2000, 0, null);


//◆村正、納刀。電磁抜刀準備
	CreateColorSP("黒幕１", 18000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);


	Cockpit_AllFade0();
	CP_AllDelete();


	Delete("絵M");
	Delete("絵背景50");
	Delete("絵EV100");
	Delete("絵EV200");
	Delete("絵shin");
	Delete("絵色400");
	Delete("エフェクト１");

	CreateWindow("ウィンドウ上", 15000, 0, 0,1024, 288, false);
	CreateWindow("ウィンドウ下", 15000, 0, 288, 1024, 576, false);
	SetAlias("ウィンドウ上","ウィンドウ上");
	SetAlias("ウィンドウ下","ウィンドウ下");

	CreateWindow("ウィンドウ縦", 15000, 512, 0,400, 576, false);
	SetAlias("ウィンドウ縦","ウィンドウ縦");
	CreateTextureEX("ウィンドウ縦/絵EV100", 16000, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_b.jpg");
	Request("ウィンドウ縦/絵EV100", Smoothing);
	Zoom("ウィンドウ縦/絵EV100", 0, 2000, 2000, null, true);
	Move("ウィンドウ縦/絵EV100", 0, @-300, @0, null, false);
	CreateTextureEX("ウィンドウ縦/絵EV200", 16000, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_c.jpg");
	Request("ウィンドウ縦/絵EV200", Smoothing);
	Zoom("ウィンドウ縦/絵EV200", 0, 2000, 2000, null, true);
	Move("ウィンドウ縦/絵EV200", 0, @-300, @0, null, false);



	Delete("黒幕１");


	CreateTextureSP("絵EV100", 14000, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_a.jpg");
	CreateTextureEX("絵EV200", 14000, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_b.jpg");
	Request("絵EV100", Smoothing);
	Zoom("絵EV100", 0, 2000, 2000, null, true);
	Move("絵EV100", 0, @+400, @+288, null, false);
	Request("絵EV200", Smoothing);
	Zoom("絵EV200", 0, 2000, 2000, null, true);
	Move("絵EV200", 0, @0, @+288, null, false);

	Move("絵EV100", 500, @-400, @0, Dxl1, false);
	Move("ウィンドウ上", 300, @0, @-200, null, false);
	Move("ウィンドウ下", 300, @0, @+200, null, true);

	WaitAction("絵EV100", null);
	CreateColorEXadd("絵色100", 14001, "White");

	OnSE("se特殊_鎧_装着01",1000);

	SoundPlay("@mbgm11",0,1000,true);

	CreateProcess("プロセス１", 12000, 0, 0, "Lastfire");
	SetAlias("プロセス１","プロセス１");
	Request("プロセス１",Start);


	Fade("絵EV200", 0, 1000, null, false);
	Fade("絵色100", 0, 1000, null, false);
	Move("絵EV200", 60000, 0, 0, null, false);
	Zoom("絵EV200", 60000, 1000, 1000, null, false);
	DrawTransition("絵色100", 200, 0, 1000, 100, Dxl1, "cg/data/slide_05_00_1.png", true);
	Delete("絵EV100");
	FadeDelete("絵色100",1000,true);



	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/015vs0690a00">
「<RUBY text="われら">村正</RUBY>は装甲悪鬼。
　戦の真実を証し立てる者」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/015vs0700a01">
《――ええ》


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/015vs0710a00">
「忌まれ、憎まれ、畏れられねばならぬ者」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/015vs0720a01">
《――ええ》


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/015vs0730a00">
「故に……
　<RUBY text="あく">銀星号</RUBY>を殺した上は<RUBY text="ぜん">一条</RUBY>をも殺す」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/015vs0740a00">
「ともすれば正義などと奉られる戦いを只の
殺戮に貶める！」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/015vs0750a01">
《ええ》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　一条。これが俺の答えなのだ。
　お前が求めた、湊斗景明という男の答えだ。

　お前の命題、正義の追求に対する回答なのだ。
　
　だから。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/015vs0760a00">
「無益無法の<RUBY text="たたかい">殺戮</RUBY>を行う。
　――綾弥一条を斬り殺す」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　お前を殺す。

　一切の手加減はなく。
　最大の戦力をもって。
　
　お前の命を奪いにゆく。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/015vs0770a00">
（――だが）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　もしも、一条。
　お前の正義が俺の体現する醜い真実さえも超克する
ものであるのなら。

　突き破ってみせろ。
　俺を打ち砕き、先へ進んでみせろ。

　お前の正義こそが、本当の真実だと云うのなら――
　それができる筈だ!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆帯電
//◆突進
	CreateColorSP("ウィンドウ上/絵色100", 15000, "Black");
	CreateColorSP("ウィンドウ下/絵色100", 15000, "Black");

	CreateColorEX("絵色100", 14005, "Black");
	CreateColorEXadd("フラッシュアウト", 18005, "WHITE");
	Fade("絵色100", 0, 700, null, false);
	DrawTransition("絵色100", 300, 0, 1000, 100, Dxl1, "cg/data/slide_06_00_1.png", true);

	Fade("ウィンドウ縦/絵EV100", 0, 1000, null, false);
	DrawTransition("ウィンドウ縦/絵EV100", 500, 0, 1000, 100, Dxl1, "cg/data/slide_02_00_1.png", true);

	Wait(300);

	Fade("ウィンドウ縦/絵EV200", 0, 1000, null, false);
	Shake("ウィンドウ縦/絵EV200", 500000, 2, 1, 0, 0, 1000, null, false);

	OnSE("se特殊_電撃_帯電01",700);

	CreateSE("SE01","se特殊_電撃_帯電01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("ウィンドウ縦/絵200", 20000, #99CCFF);
	Fade("ウィンドウ縦/絵200", 10, 600, null, true);
	Fade("ウィンドウ縦/絵200", 100, 0, null, true);
	Fade("ウィンドウ縦/絵200", 10, 500, null, true);
	Fade("ウィンドウ縦/絵200", 100, 0, null, true);
	Fade("ウィンドウ縦/絵200", 10, 700, null, true);
	Fade("ウィンドウ縦/絵200", 100, 0, null, true);
	Fade("ウィンドウ縦/絵200", 10, 500, null, true);
	Fade("ウィンドウ縦/絵200", 100, 0, null, true);
	Fade("ウィンドウ縦/絵200", 10, 800, null, true);
	Fade("ウィンドウ縦/絵200", 100, 0, null, true);

	SetVolume("SE01", 100, 0, null);



	CreateColorSP("黒幕１", 21000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("ウィンドウ上/*");
	Delete("ウィンドウ下/*");
	Delete("ウィンドウ縦/*");

	Delete("ウィンドウ上");
	Delete("ウィンドウ下");
	Delete("ウィンドウ縦");

	Delete("絵色100");
	Delete("絵EV100");
	Delete("絵EV200");

	CreateTextureSP("絵EV100", 1999, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_c.jpg");
	CreateTextureSP("絵EV200", 2000, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_c.jpg");

	Shake_Loop("@絵EV200","shake01");

	RailgunFlash();

	CreateSE("SE01","se特殊_電撃_帯電01");
	CreateSE("SE02","se特殊_電撃_放電02");
	MusicStart("SE01",300,500,0,1000,null,true);
	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	Fade("絵背景200", 500, 1000, null, true);


	Wait(2000);

	MusicStart("SE02",0,1000,0,1000,null,false);
	Fade("フラッシュアウト", 1000, 1000, null, true);
	SetVolume("SE*", 1500, 0, null);
	ClearFadeAll(1500, true);
	CP_AllDelete();


	Wait(1000);

}

..//ジャンプ指定
//次ファイル　"mb04_016vs.nss"



function FlyMoving()
{

$t = $ループムーブタイム;

	$X1 = $x;
	$X2 = ($X1 / 36) * 1 + 5;
	$X3 = ($X1 / 36) * 2 + - 10;
	$X4 = ($X1 / 36) * 3 + - 10;
	$X5 = ($X1 / 36) * 4 + 5;
	$X6 = ($X1 / 36) * 5 + - 10;
	$X7 = ($X1 / 36) * 6 + - 10;
	$X8 = ($X1 / 36) * 7 + - 10;
	$X9 = ($X1 / 36) * 8 + 5;
	$X10 = ($X1 / 36) * 9 + 0;
	$X11 = ($X1 / 36) * 10 + 5;
	$X12 = ($X1 / 36) * 11 + 10;
	$X13 = ($X1 / 36) * 12 + 15;
	$X14 = ($X1 / 36) * 13 + 10;
	$X15 = ($X1 / 36) * 14 + 5;
	$X16 = ($X1 / 36) * 15 + 0;
	$X17 = ($X1 / 36) * 16 + - 5;
	$X18 = ($X1 / 36) * 17 + 5;
	$X19 = ($X1 / 36) * 18;
	$X20 = ($X1 / 36) * 19 + 5;
	$X21 = ($X1 / 36) * 20 + - 10;
	$X22 = ($X1 / 36) * 21 + - 10;
	$X23 = ($X1 / 36) * 22 + 5;
	$X24 = ($X1 / 36) * 23 + - 10;
	$X25 = ($X1 / 36) * 24 + - 10;
	$X26 = ($X1 / 36) * 25 + - 10;
	$X27 = ($X1 / 36) * 26 + 5;
	$X28 = ($X1 / 36) * 27 + 0;
	$X29 = ($X1 / 36) * 28 + 5;
	$X30 = ($X1 / 36) * 29 + 10;
	$X31 = ($X1 / 36) * 30 + 15;
	$X32 = ($X1 / 36) * 31 + 10;
	$X33 = ($X1 / 36) * 32 + 5;
	$X34 = ($X1 / 36) * 33 + 0;
	$X35 = ($X1 / 36) * 34 + - 5;
	$X36 = ($X1 / 36) * 35 + 5;


	$Y1 = $y;
	$Y2 = ($Y1 / 36) * 1 + - 10;
	$Y3 = ($Y1 / 36) * 2 + 10;
	$Y4 = ($Y1 / 36) * 3 + -5;
	$Y5 = ($Y1 / 36) * 4 + -10;
	$Y6 = ($Y1 / 36) * 5 + 5;
	$Y7 = ($Y1 / 36) * 6 + 0;
	$Y8 = ($Y1 / 36) * 7 + 10;
	$Y9 = ($Y1 / 36) * 8 + -10;
	$Y10 = ($Y1 / 36) * 9 + 0;
	$Y11 = ($Y1 / 36) * 10 + -15;
	$Y12 = ($Y1 / 36) * 11 + -10;
	$Y13 = ($Y1 / 36) * 12 + -5;
	$Y14 = ($Y1 / 36) * 13 + 0;
	$Y15 = ($Y1 / 36) * 14 + 5;
	$Y16 = ($Y1 / 36) * 15 + 10;
	$Y17 = ($Y1 / 36) * 16 + 15;
	$Y18 = ($Y1 / 36) * 17 + 5;
	$Y19 = ($Y1 / 36) * 18;
	$Y20 = ($Y1 / 36) * 19 + - 10;
	$Y21 = ($Y1 / 36) * 20 + 10;
	$Y22 = ($Y1 / 36) * 21 + -5;
	$Y23 = ($Y1 / 36) * 22 + -10;
	$Y24 = ($Y1 / 36) * 23 + 5;
	$Y25 = ($Y1 / 36) * 24 + 0;
	$Y26 = ($Y1 / 36) * 25 + 10;
	$Y27 = ($Y1 / 36) * 26 + -10;
	$Y28 = ($Y1 / 36) * 27 + 0;
	$Y29 = ($Y1 / 36) * 28 + -15;
	$Y30 = ($Y1 / 36) * 29 + -10;
	$Y31 = ($Y1 / 36) * 30 + -5;
	$Y32 = ($Y1 / 36) * 31 + 0;
	$Y33 = ($Y1 / 36) * 32 + 5;
	$Y34 = ($Y1 / 36) * 33 + 10;
	$Y35 = ($Y1 / 36) * 34 + 15;
	$Y36 = ($Y1 / 36) * 35 + 5;

	begin:
	while(1)
	{
	BezierMove("$ループムーブナット名", $t, (@0,@0){@$X2,@$Y2}{@$X3,@$Y3}(@$X4,@$Y4){@$X5,@$Y5}{@$X6,@$Y6}(@$X7,@$Y7){@$X8,@$Y8}{@$X9,@$Y9}(@$X10,@$Y10){@$X11,@$Y11}{@$X12,@$Y12}(@$X13,@$Y13){@$X14,@$Y14}{@$X15,@$Y15}(@$X16,@$Y16){@$X17,@$Y17}{@$X18,@$Y18}(@$X19,@$Y19){@$X20,@$Y20}{@$X21,@$Y21}(@$X22,@$Y22){@$X23,@$Y23}{@$X24,@$Y24}(@$X25,@$Y25){@$X26,@$Y26}{@$X27,@$Y27}(@$X28,@$Y28){@$X29,@$Y29}{@$X30,@$Y30}(@$X31,@$Y31){@$X32,@$Y32}{@$X33,@$Y33}(@$X34,@$Y34){@$X35,@$Y35}{@$X36,@$Y36}(@$X1,@$Y1), null, true);
	}
}

function FlyMoving2()
{

$t2 = $ループムーブタイム２;

	$X1 = $x;
	$X2 = ($X1 / 36) * 1 + 5;
	$X3 = ($X1 / 36) * 2 + - 10;
	$X4 = ($X1 / 36) * 3 + - 10;
	$X5 = ($X1 / 36) * 4 + 5;
	$X6 = ($X1 / 36) * 5 + - 10;
	$X7 = ($X1 / 36) * 6 + - 10;
	$X8 = ($X1 / 36) * 7 + - 10;
	$X9 = ($X1 / 36) * 8 + 5;
	$X10 = ($X1 / 36) * 9 + 0;
	$X11 = ($X1 / 36) * 10 + 5;
	$X12 = ($X1 / 36) * 11 + 10;
	$X13 = ($X1 / 36) * 12 + 15;
	$X14 = ($X1 / 36) * 13 + 10;
	$X15 = ($X1 / 36) * 14 + 5;
	$X16 = ($X1 / 36) * 15 + 0;
	$X17 = ($X1 / 36) * 16 + - 5;
	$X18 = ($X1 / 36) * 17 + 5;
	$X19 = ($X1 / 36) * 18;
	$X20 = ($X1 / 36) * 19 + 5;
	$X21 = ($X1 / 36) * 20 + - 10;
	$X22 = ($X1 / 36) * 21 + - 10;
	$X23 = ($X1 / 36) * 22 + 5;
	$X24 = ($X1 / 36) * 23 + - 10;
	$X25 = ($X1 / 36) * 24 + - 10;
	$X26 = ($X1 / 36) * 25 + - 10;
	$X27 = ($X1 / 36) * 26 + 5;
	$X28 = ($X1 / 36) * 27 + 0;
	$X29 = ($X1 / 36) * 28 + 5;
	$X30 = ($X1 / 36) * 29 + 10;
	$X31 = ($X1 / 36) * 30 + 15;
	$X32 = ($X1 / 36) * 31 + 10;
	$X33 = ($X1 / 36) * 32 + 5;
	$X34 = ($X1 / 36) * 33 + 0;
	$X35 = ($X1 / 36) * 34 + - 5;
	$X36 = ($X1 / 36) * 35 + 5;


	$Y1 = $y;
	$Y2 = ($Y1 / 36) * 1 + - 10;
	$Y3 = ($Y1 / 36) * 2 + 10;
	$Y4 = ($Y1 / 36) * 3 + -5;
	$Y5 = ($Y1 / 36) * 4 + -10;
	$Y6 = ($Y1 / 36) * 5 + 5;
	$Y7 = ($Y1 / 36) * 6 + 0;
	$Y8 = ($Y1 / 36) * 7 + 10;
	$Y9 = ($Y1 / 36) * 8 + -10;
	$Y10 = ($Y1 / 36) * 9 + 0;
	$Y11 = ($Y1 / 36) * 10 + -15;
	$Y12 = ($Y1 / 36) * 11 + -10;
	$Y13 = ($Y1 / 36) * 12 + -5;
	$Y14 = ($Y1 / 36) * 13 + 0;
	$Y15 = ($Y1 / 36) * 14 + 5;
	$Y16 = ($Y1 / 36) * 15 + 10;
	$Y17 = ($Y1 / 36) * 16 + 15;
	$Y18 = ($Y1 / 36) * 17 + 5;
	$Y19 = ($Y1 / 36) * 18;
	$Y20 = ($Y1 / 36) * 19 + - 10;
	$Y21 = ($Y1 / 36) * 20 + 10;
	$Y22 = ($Y1 / 36) * 21 + -5;
	$Y23 = ($Y1 / 36) * 22 + -10;
	$Y24 = ($Y1 / 36) * 23 + 5;
	$Y25 = ($Y1 / 36) * 24 + 0;
	$Y26 = ($Y1 / 36) * 25 + 10;
	$Y27 = ($Y1 / 36) * 26 + -10;
	$Y28 = ($Y1 / 36) * 27 + 0;
	$Y29 = ($Y1 / 36) * 28 + -15;
	$Y30 = ($Y1 / 36) * 29 + -10;
	$Y31 = ($Y1 / 36) * 30 + -5;
	$Y32 = ($Y1 / 36) * 31 + 0;
	$Y33 = ($Y1 / 36) * 32 + 5;
	$Y34 = ($Y1 / 36) * 33 + 10;
	$Y35 = ($Y1 / 36) * 34 + 15;
	$Y36 = ($Y1 / 36) * 35 + 5;

	begin:
	while(1)
	{
	BezierMove("$ループムーブナット名２", $t2, (@0,@0){@$X2,@$Y2}{@$X3,@$Y3}(@$X4,@$Y4){@$X5,@$Y5}{@$X6,@$Y6}(@$X7,@$Y7){@$X8,@$Y8}{@$X9,@$Y9}(@$X10,@$Y10){@$X11,@$Y11}{@$X12,@$Y12}(@$X13,@$Y13){@$X14,@$Y14}{@$X15,@$Y15}(@$X16,@$Y16){@$X17,@$Y17}{@$X18,@$Y18}(@$X19,@$Y19){@$X20,@$Y20}{@$X21,@$Y21}(@$X22,@$Y22){@$X23,@$Y23}{@$X24,@$Y24}(@$X25,@$Y25){@$X26,@$Y26}{@$X27,@$Y27}(@$X28,@$Y28){@$X29,@$Y29}{@$X30,@$Y30}(@$X31,@$Y31){@$X32,@$Y32}{@$X33,@$Y33}(@$X34,@$Y34){@$X35,@$Y35}{@$X36,@$Y36}(@$X1,@$Y1), null, true);
	}
}
