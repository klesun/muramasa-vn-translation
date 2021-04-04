//<continuation number="150">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mz00_000.nss_MAIN
{

	$SYSTEM_menu_lock = true;
	$SYSTEM_skip_lock = true;
//クイックロック
	QuickStop();

	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;
	#ev009_ゲームオーバー = true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

//	QuickStart();
	$SYSTEM_menu_lock = false;
	$SYSTEM_skip_lock = false;

	$GameCircle=0;

}

scene mz00_000.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　""

//共通

	PrintBG("上背景", 30000);

	CreateColorEX("黒2", 20000, "BLACK");
	Fade("黒2", 0, 1000, null, true);

	Delete("上背景");

	CreateTextureEX("絵背景100", 18000, Center, Middle, "cg/ev/ev009_ゲームオーバー.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	CreateTextureEX("絵背景300", 19000, 55, 221, "cg/ev/resize/ev009_ゲームオーバー_l2.png");
	Fade("絵背景300", 0, 1000, null, true);

	CreateTextureEX("絵背景200", 18000, 55, 221, "cg/ev/resize/ev009_ゲームオーバー_l.png");
	Fade("絵背景200", 0, 350, null, true);

	SetVertex("絵背景200", 333, 58);


	DrawEffect("絵背景200", 5000, "Ripple", 700, 500, null);
	FadeDelete("黒2", 2000, true);

//	Zoom("絵背景200", 1000, 1050, 1050, null, true);
//	Zoom("絵背景200", 1000, 1000, 1000, null, true);
//	Zoom("絵背景200", 1000, 1050, 1050, null, true);
//	Zoom("絵背景200", 1000, 1000, 1000, null, true);

	WaitKey();

	ClearFadeAll(3000, true);


//◆２３４５６７８９０１２３４５６７８９０１２３４


}


