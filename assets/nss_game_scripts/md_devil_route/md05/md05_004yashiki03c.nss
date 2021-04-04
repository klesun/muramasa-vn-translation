
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004yashiki03c.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	if($同行者 == ""){
		call_scene @->md05_004yashiki03c_to.nss;
		$同行者 = "本家";
	}else if(!$同行者){
		call_scene @->md05_004yashiki03c_to.nss;
		$同行者 = "本家";
	}else{
		call_scene @->md05_004yashiki03c_no.nss;
		$同行者 = "";
	}


	$PreGameName = $GameName;
	$GameName = "md05_004yashiki01.nss";
	//移動先は仮入れです。本組みする時に奈良原確認

}

scene md05_004yashiki03c.nss
{

..//ジャンプ指定
//前ファイル　"md05_004yashiki01.nss"

//◆フラグ分岐


}


//――――――――――――――――――――――――――――――
.//●別れる
//◆$本家同行_Flag == true;
scene md05_004yashiki03c_no.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);

	OnBG(100,"bg051_湊斗家居間_01.jpg");
	FadeBG(0,true);
	SoundPlay("@mbgm30", 0, 1000, true);

	StL(1000, @0, @0,"cg/st/st本家_通常_私服.png");
	FadeStL(0,true);

	Delete("上背景");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　あなたは老人と別れた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆同行フラグ初期化

//◆フラグ調整
//◆$本家同行_Flag = false;

}


//――――――――――――――――――――――――――――――
.//●頼む
scene md05_004yashiki03c_to.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


	PrintBG("上背景", 30000);

	OnBG(100,"bg051_湊斗家居間_01.jpg");
	FadeBG(0,true);
	SoundPlay("@mbgm30", 0, 1000, true);
	StL(1000, @0, @0,"cg/st/st本家_通常_私服.png");
	FadeStL(0,true);

	Delete("上背景");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　あなたは老人に同行を願った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw本家_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【本家】
<voice name="本家" class="本家" src="voice/md05/004ya0090b52">
「ふん……良かろう」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　老人は同行を承知した。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆本家同行フラグ

//◆フラグ調整
//◆$本家同行_Flag = true;

..//ジャンプ指定
//次ファイル



}


