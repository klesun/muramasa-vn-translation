
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004saidenn03c.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	if($同行者 == ""){
		call_scene @->md05_004saidenn03c_to.nss;
		$同行者 = "村正";
	}else if(!$同行者){
		call_scene @->md05_004saidenn03c_to.nss;
		$同行者 = "村正";
	}else{
		call_scene @->md05_004saidenn03c_no.nss;
		$同行者 = "";
	}

	$PreGameName = $GameName;
	$GameName = "md05_004saidenn01.nss";
	//移動先は仮入れです。本組みする時に奈良原確認

}

scene md05_004saidenn03c.nss
{

..//ジャンプ指定
//前ファイル　"md05_004saidenn01.nss"

//◆フラグ分岐

}


//――――――――――――――――――――――――――――――
.//●別れる
//◆$村正同行_Flag == true;
scene md05_004saidenn03c_no.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm30", 0, 1000, true);

	OnBG(100,"bg054_湊斗家祭殿a_01a.jpg");
	FadeBG(0,true);
	StR(1000, @0, @200, "cg/st/3d村正蜘蛛_俯瞰.png");
	FadeStR(0, true);
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　あなたは蜘蛛と別れた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆同行フラグ初期化

//◆フラグ調整
//◆$村正同行_Flag = false;

}




//――――――――――――――――――――――――――――――
.//●頼む
scene md05_004saidenn03c_to.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm30", 0, 1000, true);

	OnBG(100,"bg054_湊斗家祭殿a_01a.jpg");
	FadeBG(0,true);
	StR(1000, @0, @200, "cg/st/3d村正蜘蛛_俯瞰.png");
	FadeStR(0, true);
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　あなたは蜘蛛に同行を願った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/004sa0130a01">
《ええ。
　一緒に戦いましょう》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　蜘蛛は同行を承知した。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆村正同行フラグ

//◆フラグ調整
//◆$村正同行_Flag = true;

..//ジャンプ指定
//次ファイル

}

