
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004byoushitsu01cc.nss_MAIN
{

	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;
	#ev128_病床の光_g01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$光目的_Flag = true;

	$PreGameName = $GameName;

	$GameName = "md05_004byoushitsu01.nss";
	//移動先は仮入れです。本組みする時に奈良原確認

}

scene md05_004byoushitsu01cc.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md05_004byoushitsu01c.nss"

	PrintBG("上背景", 30000);

	CreateTextureSP("絵hikaru", 2000, @0, @0, "cg/ev/ev128_病床の光_g01.jpg");

	SoundPlay("@mbgm30", 0, 1000, true);

	Delete("上背景");


//●目的の事

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　返答は無い。
　……しかしあなたは、自分の目的がこの病床の少女
に深く関わる事を直感した。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆フラグ調整
//◆$光目的_Flag = true;

..//ジャンプ指定
//次ファイル

}


