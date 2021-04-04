
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004urayama01b.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;

//	$md05_２週目 = true;
//	$md05_３週目 = true;

	//▼ルートフラグ、選択肢、次のGameName
	if($md05_３週目 == true || $md05_２週目 == true){call_scene @->md05_004urayama01b_23.nss;}
	else{call_scene @->md05_004urayama01b_01.nss;}

	$PreGameName = $GameName;
	$GameName = "md05_004urayama01.nss";
	//移動先は仮入れです。本組みする時に奈良原確認

}

scene md05_004urayama01b.nss
{

..//ジャンプ指定
//前ファイル　"md05_004urayama01.nss"

//●話す
//◆フラグ分岐

}

//――――――――――――――――――――――――――――――
.//◆第二段階と第三段階は共有
scene md05_004urayama01b_23.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);

	OnBG(100,"bg055_山賊アジト_01.jpg");
	FadeBG(0,true);

	StL(1000, @0, @0, "cg/st/st首領_通常_制服.png");
	FadeStL(0, true);

	SoundPlay("@mbgm30", 0, 1000, true);

	Delete("上背景");

//●軍装の女


	SetFwC("cg/fw/fw首領_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【首領】
<voice name="首領" class="首領姉" src="voice/md05/004ur0020b31">
「どうしたの？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


}


//――――――――――――――――――――――――――――――
.//◆第一段階
scene md05_004urayama01b_01.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);

	OnBG(100,"bg055_山賊アジト_01.jpg");
	FadeBG(0,true);
	StL(1000, @0, @0, "cg/st/st首領_通常_制服.png");
	FadeStL(0, true);

	SoundPlay("@mbgm30", 0, 1000, true);

	Delete("上背景");

//●軍装の女


	SetFwC("cg/fw/fw首領_微笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【首領】
<voice name="首領" class="首領姉" src="voice/md05/004ur0010b31">
「久しぶりね」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


..//ジャンプ指定
//次ファイル

}


