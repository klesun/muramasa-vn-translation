
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_014vsb.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/mc04_014vsb.nss","RandomMeimetsu_mc04_014vsb",true);
	Conquest("nss/mc04_014vsb.nss","RandomMeimetsuSet_mc04_014vsb",true);
	

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
	#ev187_銘伏の妖剣_g=true;
	#ev187_銘伏の妖剣_h=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mz00_000.nss";

}

scene mc04_014vsb.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"mc04_014vs.nss"

//●待つ
	PrintBG("上背景", 30000);
	SoundPlay("@mbgm08", 0, 1000, true);

	CreateTextureSP("絵演背景09EX", 4101, @0, @0, "cg/ev/ev187_銘伏の妖剣_i.jpg");
	Request("絵演背景09EX", Smoothing);
	Zoom("絵演背景09EX", 0, 1100, 1100, null, true);

	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　焦るな！
　これもおそらく、誘いの一手。

　慌てて打ち込んでは罠に<RUBY text="は">嵌</RUBY>まる。
　落ち着け――落ち着いて、慎重に機を窺い、

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景09", 4300, @0, @0, "cg/ev/ev187_銘伏の妖剣_c.jpg");
	CreateTextureEX("絵背景10", 4400, @0, @0, "cg/ev/ev187_銘伏の妖剣_b.jpg");
	CreateTextureEX("絵背景11", 4500, @0, @0, "cg/ev/ev187_銘伏の妖剣_f.jpg");
	CreateTextureEX("絵背景12", 4600, @0, @0, "cg/ev/ev187_銘伏の妖剣_h.jpg");
	Request("絵背景*", Smoothing);
	Zoom("絵背景*", 0, 1100, 1100, null, true);

	MoveFFP1("@絵背景09",20000);
	MoveFFP2("@絵背景10",20000);
	MoveFRP1("@絵背景11",20000,20,20);
	MoveFRP2("@絵背景12",20000,20,20);

//◆闇差分
	Fade("絵背景09", 2000, 1000, null, true);
	Wait(500);

//◆ぼやけ差分
	Fade("絵背景10", 2000, 1000, null, true);
	Wait(500);

//◆闇差分ｂ
	Fade("絵背景11", 2000, 1000, null, true);
	Wait(500);

//◆ぼやけ差分ｃ
	Fade("絵背景12", 2000, 1000, null, true);
	Wait(500);

	CreateColorSP("下敷き", 100, "BLACK");

	MoveFFP1stop();
	MoveFFP2stop();

	CreateTextureSP("絵背景10", 4400, @0, @0, "cg/ev/ev187_銘伏の妖剣_g.jpg");
	CreateTextureSP("絵背景11", 4500, @0, @0, "cg/ev/ev187_銘伏の妖剣_i.jpg");
	Request("絵背景*", Smoothing);
	Zoom("絵背景*", 0, 1100, 1100, null, true);

	MoveFFP1("@絵背景10",20000);
	MoveFFP2("@絵背景11",30000);

	Delete("絵背景09*");
	RandomMeimetsu_mc04_014vsb();

	SetFwL("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0650a00">
「……っ……ッ……」


{	FwL("cg/fw/fw銘伏_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/014vs0660a06">
「――――」

</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(150,0);//―――――――――――――――――――――――――――――

//◆視界が傾く。画像回転？

//CGの詳細が来なければ何とも言えませんが、回転しますと黒が見えてしまうのでDrawDeleteにしています inc櫻井

	SetVolume("@mbgm*", 300, 0, null);

//◆刺突
	CreateColorSP("絵色黒", 20050, "#000000");
	SL_centerin2(21000,@0, @0,1000);
	OnSE("se戦闘_攻撃_刀振る05", 1000);
	SL_centerinfade2(10);

//◆ぐさー。血。
	OnSE("se戦闘_攻撃_刀刺さる05", 1000);

	CreateColorSP("赤", 21100, "#990000");
	DrawTransition("赤", 150, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);

	FadeDelete("赤", 2000, true);

	ClearWaitAll(1500, 0);


//◆ゲームオーバー

}

..//ジャンプ指定
//次ファイル

..ランダム明滅
function RandomMeimetsu_mc04_014vsb()
{
	CreateProcess("Ｐランダム明滅", 5000, 0, 0, "RandomMeimetsuSet_mc04_014vsb");
	SetAlias("Ｐランダム明滅","Ｐランダム明滅");
	Request("Ｐランダム明滅", Start);
}

function RandomMeimetsuSet_mc04_014vsb()
{
	begin:
	while(1)
	{
	$RFadeTimeSet = Random(3) + 2;
	$RFTS = ($RFadeTimeSet * 1000);
	Fade("@絵背景12", $RFTS, 0, null, true);

	$RWaitSet = Random(10) + 10;
	$RWS = ($RWaitSet * 10) +600;
	Wait($RWS);


	$RFadeTimeSet2 = Random(3) + 1;
	$RFTS2 = ($RFadeTimeSet2 * 1000);
	Fade("@絵背景11", $RFTS2, 0, null, true);

	$RWaitSet2 = Random(10) + 10;
	$RWS2 = ($RWaitSet2 * 10) +600;
	Wait($RWS2);


	$RFadeTimeSet3 = Random(3) + 1;
	$RFTS3 = ($RFadeTimeSet3 * 1000);
	Fade("@絵背景11", $RFTS3, 1000, null, true);

	$RWaitSet3 = Random(3) + 10;
	$RWS3 = ($RWaitSet3 * 10) +600;
	Wait($RWS3);

	$RFadeTimeSet4 = Random(3) + 2;
	$RFTS4 = ($RFadeTimeSet4 * 1000);
	Fade("@絵背景12", $RFTS4, 1000, null, true);

	$RWaitSet4 = Random(3) + 10;
	$RWS4 = ($RWaitSet4 * 10) +600;
	Wait($RWS4);

	}

}