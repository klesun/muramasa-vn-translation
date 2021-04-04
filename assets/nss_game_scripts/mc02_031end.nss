//<continuation number="20">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031end.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;
	#bg084_飛行船艦橋_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	#飛行船探索終了 = true;

	$PreGameName = $GameName;

	$GameName = "mc02_032.nss";

	mc02_FlagDef();

}

scene mc02_031end.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc02_031tennbou.nss"


//●探索終了
//◆横書き

//◆艦橋
	PrintBG("上背景", 30000);
	SetVolume("@mbgm*", 1000, 0, null);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg084_飛行船艦橋_01.jpg");

	FadeDelete("上背景",500,true);


	SetFwH("cg/fw/fwウォルフ_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/031en0010a13">
「時だ」

{	FwH("cg/fw/fwウォルフ_怒り.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/031en0020a13">
「来たれ――――我が神よ!!」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(1000, 1000);


..//ジャンプ指定
//次ファイル　"mc02_032.nss"

}

