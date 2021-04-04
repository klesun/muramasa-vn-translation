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

scene md02_027.nss_MAIN
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
	#bg008_教室_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_028.nss";

}

scene md02_027.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	Delete("上背景");

..//ジャンプ指定
//前ファイル　"md02_026.nss"


//◆教室

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	OnBG(100, "bg008_教室_01.jpg");
	FadeBG(0, true);
	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	SoundPlay("@mbgm29", 0, 1000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　午後。
　唐突にも転校生がやって来て、俺の隣の席へ座った。

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――


	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg008_教室_01.jpg");

	CreateWindow("ウィンドウ１", 15000, 0, 100, 1024, 376, false);
	SetAlias("ウィンドウ１","ウィンドウ１");

	CreateTextureEX("ウィンドウ１/絵背景100", 2000, 0, Middle, "cg/bg/resize/bg008_教室_01.jpg");
	Zoom("ウィンドウ１/絵背景100", 0, 1500, 1500, null, true);
	Move("ウィンドウ１/絵背景100", 0, @-1300, @-50, null, true);
	SetShade("ウィンドウ１/絵背景100", LIGHT);
	CreateTextureEX("ウィンドウ１/絵st100", 2000, Center, Middle, "cg/rec/stRec_エレナ横.png");
	CreateTextureEX("ウィンドウ１/絵st200", 2000, Center, Middle, "cg/rec/stRec_エレナ前.png");
	Move("ウィンドウ１/絵st100", 0, @+250, @+20, null, true);
	Move("ウィンドウ１/絵st200", 0, @+220, @+20, null, true);
	Zoom("ウィンドウ１/絵st100", 0, 1200, 1200, null, true);
	Request("ウィンドウ１/絵st100",Smoothing);

	Zoom("ウィンドウ１/絵st200", 0, 1200, 1200, null, true);
	Request("ウィンドウ１/絵st200",Smoothing);

	CreateColorEX("絵色100", 1500, "Black");

	Fade("絵色100",500,1000,null,false);
	Move("ウィンドウ１/絵背景100", 2000, @-100, @0, null, false);
	Fade("ウィンドウ１/絵背景100",500,1000,null,true);
	Wait(500);
	Move("ウィンドウ１/絵st100", 1000, @-30, @0, null, false);
	Fade("ウィンドウ１/絵st100",500,1000,null,true);

	Wait(500);

//◆アイン？
	SetNwH("cg/fw/ny無口な転校生.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//◆ネームＣＧ「無口な転校生」
//【ｅｔｃ／ヒロインＦ】
<voice name="ｅｔｃ／ヒロインＦ" class="その他女声" src="voice/md02/0270010e016">
「……」

{	FwH("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0270020a00">
「……」

{	Fade("ウィンドウ１/絵st200", 300, 1000, Dxl1, false);
	Fade("ウィンドウ１/絵st100", 300, 0, Axl1, false);
	NwH("cg/fw/ny無口な転校生.png");}
//【ｅｔｃ／ヒロインＦ】
<voice name="ｅｔｃ／ヒロインＦ" class="その他女声" src="voice/md02/0270030e016">
「…………」

{	FwH("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0270040a00">
「…………」

{	NwH("cg/fw/ny無口な転校生.png");}
//【ｅｔｃ／ヒロインＦ】
<voice name="ｅｔｃ／ヒロインＦ" class="その他女声" src="voice/md02/0270050e016">
「…………………………………………………」

{	FwH("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0270060a00">
「…………………………………………………」

{	Fade("ウィンドウ１/絵st100", 300, 1000, Dxl1, false);
	Fade("ウィンドウ１/絵st200", 300, 0, Axl1, false);
	NwH("cg/fw/ny無口な転校生.png");}
//【ｅｔｃ／ヒロインＦ】
<voice name="ｅｔｃ／ヒロインＦ" class="その他女声" src="voice/md02/0270070e016">
「…………………………………………………
……………………………………………………
……………………………………………………
……………………………………………………」

{	FwH("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0270080a00">
「…………………………………………………
……………………………………………………
……………………………………………………
……………………………………………………」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500,1500);


}

..//ジャンプ指定
//次ファイル　"md02_028.nss"