
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004hazure03c.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	if($同行者 == ""){
		call_scene @->md05_004hazure03c_to.nss;
		$同行者 = "統";
	}else if(!$同行者){
		call_scene @->md05_004hazure03c_to.nss;
		$同行者 = "統";
	}else{
		call_scene @->md05_004hazure03c_no.nss;
		$同行者 = "";
	}

	$PreGameName = $GameName;
	$GameName = "md05_004hazure01.nss";
	//移動先は仮入れです。本組みする時に奈良原確認

}

scene md05_004hazure03c.nss
{

..//ジャンプ指定
//前ファイル　"md05_004hazure01.nss"
//◆フラグ分岐

}


//――――――――――――――――――――――――――――――
.//●別れる
scene md05_004hazure03c_no.nss
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

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　あなたは女性と別れた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆同行フラグ初期化
//◆$統同行_Flag = false;


}


//――――――――――――――――――――――――――――――
.//●頼む
scene md05_004hazure03c_to.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm30", 0, 1000, true);

	OnBG(100,"bg050_湊斗家門前_01.jpg");
	FadeBG(0,true);
	StL(1000, @0, @0,"cg/st/st統_通常_私服.png");
	FadeStL(0,true);
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　あなたは女性に同行を願った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【統】
<voice name="統" class="統" src="voice/md05/004ha0090b46">
「いいけど。
　どこへ行くんだ？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　女性は同行を承知した。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆統同行フラグ

//◆フラグ調整
//◆$統同行_Flag = true;

}

..//ジャンプ指定
//次ファイル