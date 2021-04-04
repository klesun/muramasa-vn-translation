
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_021vsaab.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc01_021vsz.nss";

}

scene mc01_021vsaab.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_021vsaa.nss"

	//$mc01_021vsaa_八相=true;

//●虎眼
	SoundPlay("@mbgm08",0,1000,true);

	PrintBG("上背景", 30000);
	CreateTextureSP("絵演背景", 100, InRight, Middle, "cg/bg/bg204_横旋回背景_01.jpg");
	if($mc01_021vsaa_上段==true){
	CreateTextureSP("絵演立絵", 1000, Center, Middle, "cg/st/3d村正標準_騎航_戦闘a.png");
	}else if($mc01_021vsaa_下段==true){
	CreateTextureSP("絵演立絵", 1000, Center, Middle, "cg/st/3d村正標準_騎航_戦闘b.png");
	}else if($mc01_021vsaa_八相==true){
	CreateTextureSP("絵演立絵", 1000, Center, Middle, "cg/st/3d村正標準_騎航_戦闘d.png");
	Move("絵演立絵", 0, @-90, @0, null, true);
	}else{
	CreateTextureSP("絵演立絵", 1000, Center, Middle, "cg/st/3dアベンジ_騎航_通常.png");
	}

	CreateSE("SE01","se戦闘_動作_空突進01");
	CreateColorEXadd("絵色白", 19000, "#FFFFFF");

	Move("絵演立絵", 0, @316, @-50, null, true);
	Delete("上背景");

	Move("絵演立絵", 2000, @-200, @0, null, false);
	Move("絵演背景", 5000, -100, @0, AxlDxl, false);

	Wait(500);

	Fade("絵色白", 0, 1000, null, true);
	SetBlur("絵演立絵", true, 2, 500, 60, false);

	Wait(16);

	MusicStart("SE01",0,1000,0,1250,null,false);

	Fade("絵色白", 300, 0, Dxl1, false);
	DrawDelete("絵色白", 600, 100, "slide_05_00_1", false);

	Move("絵演立絵", 300, @-2000, @0, Dxl2, false);
	Move("絵演背景", 4000, -100, @0, Dxl3, false);

	$残時間=RemainTime("SE01");
	WaitKey($残時間);

	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

//◆斧一閃
	PrintBG("上背景", 30000);
	CreateTextureSPover("絵演効果", 110, Center, Middle, "cg/ef/ef001_汎用移動.jpg");
	CreateTextureSP("絵演背景", 100, Center, Middle, "cg/bg/resize/bg002_空a_01.jpg");
	Request("絵演背景", Smoothing);
	Zoom("絵演背景", 0, 3000, 1000, null, true);

	CreateTextureSP("絵演合体", 100, Center, Middle, "cg/st/3dガッタイダー_騎航_戦闘a.png");
	Request("絵演合体", Smoothing);
	Zoom("絵演合体", 0, 750, 750, null, true);
	Move("絵演合体", 0, @100, @-80, null, true);
	Rotate("絵演合体", 0, @0, @-30, @0, null,true);

	CreateTextureSP("絵演村正", 110, Center, Middle, "cg/st/3d村正標準_騎航_陰義b.png");
	Request("絵演村正", Smoothing);
	Zoom("絵演村正", 0, 500, 500, null, true);
	Move("絵演村正", 0, @-200, @80, null, true);
	Rotate("絵演村正", 0, @0, @-10, @0, null,true);

	Move("絵演合体", 15000, @60, @-5, Dxl2, false);
	Move("絵演村正", 15000, @-60, @5, Dxl2, false);

	CreateSE("SE02","se戦闘_動作_空急降下01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	DrawDelete("上背景", 150, 100, "zoom_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　俺の仕掛けた<RUBY text="フェイント">牽制</RUBY>は――
　
　病的なまでの闘志を有する敵に、全く意に介されも
しなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//◆→●失敗

..//ジャンプ指定
//次ファイル　"mc01_021vsz.nss"

}


