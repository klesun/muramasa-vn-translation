//<continuation number="0">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_023.nss_MAIN
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

	$GameName = "md05_024vs.nss";

}

scene md05_023.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	Delete("上背景");

..//ジャンプ指定
//前ファイル　"md05_022.nss"

	PrintBG("上背景", 30000);
	CreateColorSP("下敷き", 50, "BLACK");


	FadeDelete("上背景",1000,true);

//◆ＳＥ：パソコンのリセット音

	OnSE("se日常_機械_PCリセット音", 1000);

	CreateTextureEX("無我", 15000, @0, @0, "cg/ef/ef036_無我の境地.jpg");

	Fade("無我", 1000, 1000, null, true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　<RUBY text="おのれ">自己</RUBY>を再開する。

　自己の固有名称を認識する。<k>
　
《三世継承千子右衛門尉村正》

　完了。

　自己の内容を認識する。<k>
　
《戦闘能力一件有り》

　確認。

　自己の内容を認識する。<k>
　
《存在目的一件有り》

　確認。<k>
　
《勅命拝受／六合四海守護
　朝敵二世右衛門尉村正討伐、天下平らかにす<RUBY text="べ">可</RUBY>し事》

　諒解。

　自己の内容を認識する。<k>
　
《以上二件限り》

　完了。

　自己存在を総括して認識する。<k>
　
《朝敵追討執行用戦闘能力》
《六合塵清四海波静維持防衛力》

　完了。

　自己状況を認識する。<k>
　
《朝敵一騎、交戦圏内にて行動中》

　確認。

　状況認識に基づき待機状態を終了。<k>
　
《朝敵追討執行用戦闘能力／三世千子右衛門尉村正は
状況を勅命該当と認め、戦闘を開始する》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色100", 16500, "WHITE");
	CreateColorEX("絵色200", 16500, "WHITE");
	CreateColorEX("絵色300", 16400, "BLACK");
	Zoom("絵色100", 0, 1000, 5, null, true);
	Zoom("絵色200", 0, 6, 1000, null, true);

	OnSE("se特殊_鎧_電子音02",1000);

	Fade("絵色300", 0, 1000, null, true);
	Fade("絵色100", 0, 1000, null, true);
	Zoom("絵色100", 50, 2, 500, Dxl1, true);
	Zoom("絵色100", 100, 1000, 0, Dxl1, true);

	Wait(500);

}

..//ジャンプ指定
//次ファイル　"md05_024vs.nss"