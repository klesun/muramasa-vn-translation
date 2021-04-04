//<continuation number="30">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_005.nss_MAIN
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
	#bg010_拘置所外観_03=true;
	#bg011_拘置所内_01b=true;




	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma01_006.nss";

}

scene ma01_005.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma01_004.nss"

	PrintBG("上背景", 30000);
	CreateColorSP("絵色100", 1500, "Black");
	Fade("上背景", 0, 0, null, true);
	Delete("上背景");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
《未決囚〇四八号》

《容疑　殺人罪一二件》

《うち一件は尊属殺人》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆関東拘置所
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg010_拘置所外観_03.jpg");
	Fade("絵背景100", 0, 1000, null, true);
	Fade("絵色100", 1000, 0, null, true);
	Delete("絵色100");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
《鎌倉市警本部より関東拘置所》

《未決囚〇四八号に保釈措置発令》

《<RUBY text="しんのうりょうじ">親王令旨</RUBY>による特例保釈》

《直ちに〇四八号を釈放されたし》

《緊急の執行を求む》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//◆景明の獄室。暗い
	CreateTextureEX("絵背景10", 150, Center, Middle, "cg/bg/bg011_拘置所内_01b.jpg");
	Fade("絵背景10", 1000, 1000, null, true);
	Delete("絵背景100");


	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");


	SetNwC("cg/fw/nw看守.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／看守】
<voice name="ｅｔｃ／看守" class="その他男声" src="voice/ma01/0050010e038">
「〇四八号」

//【ｅｔｃ／看守】
<voice name="ｅｔｃ／看守" class="その他男声" src="voice/ma01/0050020e038">
「釈放だ。出ろ」

//嶋：念のためチェック。ネームプレートなし【09/01/26】
{	NwC("cg/fw/nwその他.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0050030a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1000, 2000);

..//ジャンプ指定
//次ファイル　"ma01_006.nss"


}
