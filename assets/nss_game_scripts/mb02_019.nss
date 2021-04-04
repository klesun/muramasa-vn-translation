//<continuation number="80">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_019.nss_MAIN
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
	#bg067_普陀楽城内能楽堂_01b=true;

	//▼ルートフラグ、選択肢、次のGameName
	#av_八八式竜騎兵=true;

	$PreGameName = $GameName;

	$GameName = "mb02_020.nss";

}

scene mb02_019.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb02_018.nss"

//◆景明サイド
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg067_普陀楽城内能楽堂_01b.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);
	SoundPlay("@mbgm36",0,1000,true);

	SetFwC("cg/fw/fw一条_憎悪b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//◆鬼相
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0190010a02">
「……坊主……」


{
//◆ぱしっ。腕を掴んで止めた
	CreateSE("SE01","se人体_動作_腕を掴む01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0190020a00">
「――――」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0190030a02">
「湊斗さん？」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0190040a00">
（……動くな）


{	FwC("cg/fw/fw一条_怒りc.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0190050a02">
（どうして）


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0190060a00">
（良く、見ろ）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆舞台周辺
//◆竜騎兵（親衛隊、奉公衆）
//◆柳生常闇
	#av_八八式竜騎兵=true;

	CreatePlainSP("絵板写", 5000);
	Wait(1);
	CreateTextureSP("絵演背景", 2100, -437, -418, "cg/bg/resize/bg067_普陀楽城内能楽堂_01bl.jpg");

	StL(3000, @-60, @0,"cg/st/3d八八式竜騎兵_立ち_通常.png");
	StCL(3050, @60, @0,"cg/st/3d九〇式指揮官_立ち_通常.png");
	StC(3100, @180,@0,"cg/st/st常闇斎_通常_私服.png");
	StCR(3000, @30, @0,"cg/st/3d九〇式竜騎兵_立ち_通常.png");
	StR(3050, @120, @0,"cg/st/3d八八式竜騎兵_立ち_通常.png");
	FadeStA(0,true);

	FadeDelete("絵板写", 300, true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0190070a00">
（<RUBY text="・・・・">今動けば</RUBY>、<RUBY text="・・・・・・・">誰も助けられん</RUBY>）


{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0190080a02">
（く……ッ!!）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆がつ。床を殴った音
	CreateSE("SE01","se人体_動作_床殴る01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	$残時間=RemainTime("SE01");
	WaitKey($残時間);

	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);


}

..//ジャンプ指定
//次ファイル　"mb02_020.nss"