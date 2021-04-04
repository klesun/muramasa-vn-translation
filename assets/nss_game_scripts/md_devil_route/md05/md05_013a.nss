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

scene md05_013a.nss_MAIN
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
	#bg108_荒れ狂う海b_00=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md05_014.nss";

}

scene md05_013a.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md05_013.nss"


//●ここに留まる

	PrintBG("上背景", 30000);
	OnBG(100, "bg108_荒れ狂う海b_00.jpg");
	FadeBG(0, true);
	CreateSE("暴風", "se自然_風_暴風");
	MusicStart("暴風", 0, 1000, 0, 1000, null,true);
	Delete("上背景");


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/013a0010a01">
《船の横腹に、何か見えない？》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/013a0020a00">
「あの文字列か？
　船の名前だと思うが……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆空間ぶれ
	CreatePlainEX("絵板写", 100);
	OnSE("se特殊_その他_空間歪曲",1000);

	DrawEffect("絵板写", 36000, "MiddleWave", 30, 30, null);

	Fade("絵板写", 500, 900, null, false);
	Zoom("絵板写", 1000, 1300, 1300, AxlDxl, false);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　――――と。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/md05/013a0030a00">
「時間か」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/013a0040a01">
《みたいね。
　……次はもう少し落ち着いた場所だといい
んだけど》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆移動
	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("暴風", 1000, 0, null);

	OnSE("se戦闘_動作_鉄壁吹っ飛ばす", 1000);

	CreateColorSP("黒幕１", 25000, "WHITE");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	WaitKey(1500);
}

..//ジャンプ指定
//次ファイル　"md05_014.nss"