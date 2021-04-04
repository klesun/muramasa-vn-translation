

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_004bab.nss_MAIN
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

	$GameName = "mb04_004z.nss";

}

scene mb04_004bab.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb04_004ba.nss"

//●敵の剣だけ止める
//◆一閃
	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 100, "#000000");
	CreateTextureSP("絵演背景", 3000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	Delete("上背景");

	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("絵演背景", 150, 100, "circle_01_00_1", true);

	CreateSE("SE01b","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	SL_left(@0, @0,1500);
	SL_leftfade2(10);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　敵を狙って繰り出した剣撃の軌道を変え、敵の太刀
を防ぎ止める――
　
　そこまでの、卓越した剣腕が果たして俺に有るか!?

　無かった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ずばしゃー
	CreateSE("SE01c","se人体_血_血しぶき01");
	MusicStart("SE01c",0,1000,0,1000,null,false);
	SL_leftdamN(@0, @0,1000);
	SL_leftdamfadeN2(10);
	WaitPlay("SE01c", null);

//◆共通結末へ

}

..//ジャンプ指定
//次ファイル　"mb04_004z.nss"