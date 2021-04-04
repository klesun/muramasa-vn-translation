//<continuation number="50">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_019.nss_MAIN
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
	#bg006_小光の家_03b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_020.nss";

}

scene md06_019.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md06_018.nss"


//◆黒画面

//音楽流さず inc櫻井

	PrintBG("上背景", 30000);

	CreateColorSP("黒", 5000, "BLACK");

	OnBG(100, "bg006_小光の家_03b.jpg");
	FadeBG(0, true);

	FadeDelete("上背景",1500,true);



	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　
//◆蜘蛛
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0190010a01">
　　　　　　《――――御堂》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆小光の家
//◆ばさっ。起き上がる
	OnSE("se人体_動作_起きる01", 1000);

	FadeDelete("黒",1000,true);



	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0190020a00">
「村正？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　夜半。
　不意の金打声に跳ね起きる。

　意識は既に覚醒していた。
　――これあるを期して、橋の現場から程近い光の家
を宿に借りたのだ。

　<RUBY text="ひのみやぐら">火見櫓</RUBY>にいる筈の村正が、続けて通信を送ってくる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0190030a01">
《貴方の予測、的中みたいよ。
　工事の場所で<RUBY text="・・・・">ごそごそ</RUBY>やり始めた》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0190040a00">
「わかった。
　すぐに行く」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　身支度に掛ける時間は必要なかった。
　元々、動ける格好だ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆がらっ。たったったっ。
	OnSE("se日常_建物_スライド開く04", 1000);

	CreateColorSP("黒幕", 5000, "#000000");
	DrawTransition("黒幕", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnSE("se人体_足音_走る03", 1000);

	WaitKey(3000);

	SetFwC("cg/fw/fw小光_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0190050b34">
「……んぅ……？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md06_020.nss"