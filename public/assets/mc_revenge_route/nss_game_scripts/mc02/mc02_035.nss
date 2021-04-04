//<continuation number="90">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_035.nss_MAIN
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
	#bg084_飛行船艦橋_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc02_036.nss";

}

scene mc02_035.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc02_034.nss"

//◆飛行艦艦橋
//◆激しい揺れ
	PrintBG("上背景", 30000);
	OnSE("se戦闘_衝撃_衝突01", 1000);

	Wait(300);

	CreateColorSPadd("白幕１", 1900, "WHITE");

	CreateTextureSP("絵背景10", 1000, Center, Middle, "cg/bg/bg084_飛行船艦橋_01.jpg");
	CreateTextureSPsub("絵背景20", 1100, Center, Middle, "cg/bg/bg084_飛行船艦橋_02.jpg");
	Zoom("絵背景20", 0, 1200, 1200, null, true);

	Fade("絵背景20", 3000, 0, null, false);
	Shake("絵背景20", 3000, 50, 30, 0, 0, 1000, Dxl3, false);

	Delete("上背景");
	FadeDelete("白幕１", 1500, true);

	SetNwH("cg/fw/ny副官.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／船副官】
<voice name="ｅｔｃ／船副官" class="その他男声" src="voice/mc02/0350010e142">
「うおっ……！」

//【ｅｔｃ／船副官】
<voice name="ｅｔｃ／船副官" class="その他男声" src="voice/mc02/0350020e142">
「くそ、こんな辺りにまで爆風が来るのか！
　技術者どもめ、いい加減な仕事しやがって
……!!」


{	FwH("cg/fw/fwウォルフ_絶叫.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0350030a13">
「――――」


{	NwH("cg/fw/ny副官.png");}
//【ｅｔｃ／船副官】
<voice name="ｅｔｃ／船副官" class="その他男声" src="voice/mc02/0350040e142">
「ウォルフ教授！　危険です！
　何かにつかまってください!!」


{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0350050a13">
「……そんな……」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0350060a13">
「爆発……<?>
{Wait(1000);}
してしまった……」


{	FwH("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0350070a13">
「…………ああ…………」


//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0350080a13">
「神よ……
　神よ…………」


//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0350090a13">
「あなたは……遠い…………」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1000, 1000);
}

..//ジャンプ指定
//次ファイル　"mc02_036.nss"