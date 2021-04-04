
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004hazure01b.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	if($md05_３週目 == true){call_scene @->md05_004hazure01b_03.nss;}
	else if($md05_２週目 == true){call_scene @->md05_004hazure01b_02.nss;}
	else{call_scene @->md05_004hazure01b_01.nss;}

	$PreGameName = $GameName;
	$GameName = "md05_004hazure01.nss";
	//移動先は仮入れです。本組みする時に奈良原確認

}

scene md05_004hazure01b.nss
{

..//ジャンプ指定
//前ファイル　"md05_004hazure01.nss"

//●話す
//◆フラグ分岐

}


//――――――――――――――――――――――――――――――
.//◆第三段階
scene md05_004hazure01b_03.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);

	OnBG(100,"bg050_湊斗家門前_01.jpg");
	FadeBG(0,true);
	StL(1000, @0, @0,"cg/st/st統_通常_私服.png");
	FadeStL(0,true);
	SoundPlay("@mbgm30", 0, 1000, true);

	Delete("上背景");

	SetFwC("cg/fw/fw統_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【統】
<voice name="統" class="統" src="voice/md05/004ha0030b46">
「おや？
　何か困っている様子だな、息子よ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


}

//――――――――――――――――――――――――――――――
.//◆第二段階
scene md05_004hazure01b_02.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);

	OnBG(100,"bg050_湊斗家門前_01.jpg");
	FadeBG(0,true);

	SoundPlay("@mbgm30", 0, 1000, true);
	StL(1000, @0, @0,"cg/st/st統_通常_私服.png");
	FadeStL(0,true);
	Delete("上背景");

	SetFwC("cg/fw/fw統_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【統】
<voice name="統" class="統" src="voice/md05/004ha0020b46">
「そろそろ昼飯にする？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


}



//――――――――――――――――――――――――――――――
.//◆第一段階
scene md05_004hazure01b_01.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);

	OnBG(100,"bg050_湊斗家門前_01.jpg");
	FadeBG(0,true);

	SoundPlay("@mbgm30", 0, 1000, true);
	StL(1000, @0, @0,"cg/st/st統_通常_私服.png");
	FadeStL(0,true);
	Delete("上背景");

	SetFwC("cg/fw/fw統_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【統】
<voice name="統" class="統" src="voice/md05/004ha0010b46">
「どうした？
　迷子みたいな顔をして」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


..//ジャンプ指定
//次ファイル

}


