
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_023vsb.nss_MAIN
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

	$GameName = "mc03_021vsz.nss";

}

scene mc03_023vsb.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc03_023vs.nss"

//●上以外
	SoundPlay("@mbgm12",0,1000,true);

	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 100, "#000000");
	CreateSE("SE01","se戦闘_動作_鎧_合当理吹かし01");

	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("上背景", 150, 100, "zoom_01_00_1", true);

	SetFrequency("SE01", 1000, 750, Dxl2);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……駄目だ！
　打撃が響いて動きが足りない！

　砲門が追ってくる――――ッッ!?

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆発砲。ぼーん。
//◆撃墜
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE03","se戦闘_衝撃_鎧散華");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPover("絵演上", 19910, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	CreateTextureSP("絵演", 19900, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	SetVertex("絵演上", 474, 293);
	SetBlur("絵演上", true, 3, 300, 100, false);

	Zoom("絵演上", 500, 1100, 1100, Dxl1, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	WaitKey(250);
	FadeDelete("絵演上", 1000, true);

	WaitKey(1000);

	ClearWaitAll(3000, 2000);

//◆ゲームオーバー
//◆あきゅん「演出：ここの死亡は再挑戦確認に飛んだ方が良いか、要確認」

}

..//ジャンプ指定
//次ファイル　"mc03_021vsz.nss"
