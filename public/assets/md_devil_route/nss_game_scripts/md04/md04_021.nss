//<continuation number="40">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_021.nss_MAIN
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
	#bg002_空a_02=true;
	#ev806_戦争絵シリーズその４_a=true;
	#bg084_飛行船艦橋_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_022.nss";

}

scene md04_021.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md04_020.nss"


//◆夕空

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	CreateTextureSP("空", 1500, -500, -200, "cg/bg/resize/bg002_空a_02.jpg");
	Zoom("空", 0, 800, 800, null, true);
	CreateTextureSP("飛行船", 150, @0, @0, "cg/ev/ev806_戦争絵シリーズその４_a.jpg");
	Zoom("飛行船", 0, 1050, 1050, null, true);
	SetBlur("飛行船", true, 1, 500, 200, false);
	OnBG(100, "bg002_空a_02.jpg");
	FadeBG(0, true);

$ループムーブナット名 = "@飛行船";
$ループムーブタイム = 15000;

	CreateProcess("プロセス１", 150, 0, 0, "FlyMoving");
	SetAlias("プロセス１","プロセス１");
	Request("プロセス１", Start);

	CloudZoomSet(1000);
	CloudZoomStartB(1000,800,800,1000,1000);
	CloudZoomVertex(0,@-1200,@600,null,true);
	Request("絵Cloud1*", AddRender);

	SoundPlay("@mbgm12", 0, 1000, true);

	CreateSE("SE01","se戦闘_動作_空突進05");
	MusicStart("SE01",2000,500,0,100,null,true);


	Delete("上背景");

	Move("空", 5000, -200, @0, null, false);

	FadeDelete("黒幕１",1500,true);
	Wait(1500);

//◆摩天蛟
	FadeDelete("空", 1000, true);

	Wait(500);

	TelopStart(15000,1500,center,450,"cg/sys/Telop/tp_摩天蛟.png",null);
	Wait(2500);


//◆テロップ「大型飛行艦「摩天蛟」」
	CreateColorSP("黒幕１", 5000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	CloudZoomDelete(0,true);
	Delete("空");
	Delete("飛行船");
//	CreateTextureEX("テロップ", 16000, @350, @500, "cg/sys/Telop/tp_摩天蛟.png");
//	Fade("テロップ", 1000, 1000, null, true);

	OnBG(100, "bg084_飛行船艦橋_02.jpg");
	FadeBG(0, true);
	WaitKey(1000);
//	FadeDelete("テロップ", 2000, true);



	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");



	SetNwC("cg/fw/nw副官.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／篠川副官】
<voice name="ｅｔｃ／篠川副官" class="その他男声" src="voice/md04/0210010e100">
「閣下！
　まもなく鎌倉上空です！」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0210020a06">
「普陀楽は健在か!?」

{	NwC("cg/fw/nw副官.png");}
//【ｅｔｃ／篠川副官】
<voice name="ｅｔｃ／篠川副官" class="その他男声" src="voice/md04/0210030e100">
「健在であります！
　劣勢ながら、なお抗戦中！」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0210040a06">
「……良し！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearFadeAll(1000,true);

}

..//ジャンプ指定
//次ファイル　"md04_022.nss"