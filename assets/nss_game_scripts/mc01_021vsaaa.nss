
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_021vsaaa.nss_MAIN
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

scene mc01_021vsaaa.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_021vsaa.nss"

//●打潮
	SoundPlay("@mbgm08",0,1000,true);

	PrintBG("上背景", 30000);
	CreateTextureSP("絵演背景", 100, InRight, Middle, "cg/bg/bg204_横旋回背景_01.jpg");
	if($mc01_021vsaa_上段==true){
	CreateTextureSP("絵演立絵", 1000, Center, Middle, "cg/st/3d村正標準_騎航_戦闘a.png");
	}else if($mc01_021vsaa_下段==true){
	CreateTextureSP("絵演立絵", 1000, Center, Middle, "cg/st/3d村正標準_騎航_戦闘b.png");
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
	Delete("絵演立絵");
	Delete("絵演背景");

	CreateSE("SE02","se戦闘_攻撃_斧振る01");
	MusicStart("SE02",0,1000,0,1500,null,false);
	SL_down2(20000,@0, @-100,2000);
	SL_downfade2(10);

//◆太刀一閃
	CreateSE("SE01","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE01",0,1000,0,2000,null,false);
	CreateTextureSPadd("絵演上", 20010, Center, Middle, "cg/ef/ef014_汎用横軌道.jpg");
	CreateTextureSP("絵演", 20000, Center, Middle, "cg/ef/ef014_汎用横軌道.jpg");
	Zoom("絵演上", 0, 1200, 10000, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

//◆弾かれる太刀
	CreateSE("SE01","se戦闘_攻撃_剣戟弾く01");
	CreateColorSP("絵色白", 21000, "#FFFFFF");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(10);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg002_空a_01.jpg");

	Delete("絵演*");
	Delete("絵色黒");
	FadeDelete("絵色白", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……手の握力の無さを無視して繰り出された一剣は
いとも容易く弾かれ、そのまま何処かへ飛んで行った。
　戦斧は速度を緩めさえしなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//◆→●失敗

..//ジャンプ指定
//次ファイル　"mc01_021vsz.nss"

}


