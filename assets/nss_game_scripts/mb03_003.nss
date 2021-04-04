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

scene mb03_003.nss_MAIN
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
	#bg014_鎌倉繁華街_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb03_004.nss";

}

scene mb03_003.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	Delete("上背景");

..//ジャンプ指定
//前ファイル　"mb03_002.nss"

//◆鎌倉
//◆市中
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg014_鎌倉繁華街_01.jpg");
	CreateSE("SEL01","se背景_ガヤ_ざわめく01_L");
	MusicStart("SEL01",3000,1000,0,1000,null,true);
	FadeBG(0,true);
	Delete("上背景");

	CreateTextureEX("絵背景100", 100, -200, -150, "cg/bg/resize/bg014_鎌倉繁華街_01l.jpg");
	FadeDelete("絵暗転", 2000, true);

	Wait(1000);

	Move("絵背景100", 100000, @-800, @	0, null, false);
	Fade("絵背景100", 1000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　――聞いたか。

　――ああ。

　――きっと、噂の赤い武者がやったんだぜ。
　　　護氏の野郎も……

　――銀星号じゃねぇのか……？

　――ＧＨＱに消されたのさ。

　――何だっていいや。
　　　ざまぁ見やがれ。

　――さんざん好き勝手したツケが来たんだ……！

　――ああ……。

　――けどよ。

　――ん？

　――これから、どうなるんだ？

　――…………。

　――どうなるんだろうな……。

　――わからねえ……。

　――なんか、ケツがむずむずしてきやがる。

　――この国は……大和は……
　　　どうなっちまうんだ……？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb03_004.nss"