//<continuation number="210">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_024.nss_MAIN
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
	if($その他死亡){$その他復活=true;$Others_Flag = 0;$OthersFav_After = 0;SetHex();}
	else if($グレイワンド殺害){$その他復活=true;$Others_Flag = 0;$OthersFav_After = 0;SetHex();}
	else{$その他復活=true;$Others_Flag = 0;$OthersFav_After = 0;SetHex();}

		$PreGameName = $GameName;
		$GameName = "ma05_001vs.nss";

}

scene ma04_024.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//◆第四話・了
	PrintGO("上背景", 25000);
	CreateColorSP("絵黒地", 10, "#000000");
	CreateTextureSP("絵テロ２", 100, Center, Middle, "cg/sys/Telop/lg_第四編.png");
	WaitKey(3000);
	FadeDelete("上背景", 2000, true);

	Wait(1000);

	PrintGO("上背景", 25000);
	CreateColorSP("絵黒地", 10, "#000000");
	CreateTextureSP("絵テロ３", 100, Center, Middle, "cg/sys/Telop/lg_第四編了.png");
	FadeDelete("上背景", 1000, true);

	WaitKey(3000);

	ClearWaitAll(3000, 3000);

..//ジャンプ指定
//次ファイル　"ma05_001vs.nss"

//２３４５６７８９０１２３４５６７８９０１２３４


}




