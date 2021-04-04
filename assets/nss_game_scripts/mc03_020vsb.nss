
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_020vsb.nss_MAIN
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

	Cockpit_AllFade0();

	//◆フラグ分岐：仮入れ
//	$GameName = "mc03_020vsba.nss";

	if($mc03_017vs_Flag == "総力"){
//◆$１Ｒ総力_Flagがある場合
		$GameName = "mc03_020vsba.nss";
	}else if($mc03_017vs_Flag == "避け"){
//◆$１Ｒ避け_Flagがある場合
		$GameName = "mc03_020vsbb.nss";
	}

}

scene mc03_020vsb.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc03_020vs.nss"

//あきゅん「デバッグ：演出確認用フラグ」
//	$mc03_017vs_Flag = "総力";
//	$mc03_017vs_Flag = "避け";

//●戦域離脱
	SoundPlay("@mbgm10",0,1000,true);

	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 19000, "#000000");
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　その作法を、この場は捨てる。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆逃げー。
	CreateSE("SE01","se戦闘_動作_空突進01");

	CreateTextureSP("絵背景空", 100, Center, -150, "cg/bg/bg202_旋回演出背景山_01.jpg");
	CreateSurfaceEX("絵効果サフ", 10000,1000,"@絵背景空");
	Fade("絵効果サフ", 0, 1000, null, true);

	Zoom("絵効果サフ", 120000, 2000, 2000, null, false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("絵色黒", 150, 100, "circle_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　三六計逃げるに如かず、だ。
　我強くして敵弱き時は争い、我弱くして敵強き時は
争わず――これもまた兵法。

　俺は兜角を下げ、退避に掛かった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Move("絵背景空", 900, @0, @-864, Axl1, false);

	Wait(300);

	Zoom("絵効果サフ", 1000, 2000, 2000, Axl1, false);

	Wait(300);

	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 300, 0, 1000, 100, Axl1, "cg/data/slide_02_01_1.png", true);

//◆フラグ分岐
//◆第１Ｒが「総力攻撃」→●離脱失敗
//◆第１Ｒが「避け防御」→●離脱成功

..//ジャンプ指定
//◆$１Ｒ総力_Flagがある場合
//次ファイル　"mc03_020vsba.nss"

//◆$１Ｒ避け_Flagがある場合
//次ファイル　"mc03_020vsbb.nss"

}