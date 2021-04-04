//<continuation number="60">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_021.nss_MAIN
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
	#bg079_ウォルフ教授の部屋_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc02_022.nss";

}

scene mc02_021.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc02_020.nss"

//◆時間経過
//◆夜→暁、日の出
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");

	CreateTextureSP("絵背景10", 8, Center, Middle, "cg/bg/bg001_空a_03.jpg");
	CreatePlainSP("絵板写", 100);

	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	WaitKey(1000);

	CreateTextureSP("絵背景11", 9, Center, Middle, "cg/bg/bg001_空a_02.jpg");
	DrawTransition("絵背景11", 0, 0, 180, 1000, null, "cg/data/slide_02_00_1.png", true);
	FadeDelete("絵板写",1000,true);

	WaitKey(1000);

	CreatePlainSP("絵板写", 100);
	CreateTextureSP("絵背景12", 8, Center, Middle, "cg/bg/bg001_空a_01.jpg");
	Delete("絵背景10");
	Delete("絵背景11");
	FadeDelete("絵板写",1000,true);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　
　　　　　　外暦一九四〇年
　　　　　　国紀二六〇〇年／興隆四一年

　
　　　　　　　　　一一月二九日

　
　　　　　　　　　午前六時二二分

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウォルフの部屋

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
	SoundPlay("@mbgm34", 0, 1000, true);

	Delete("絵背景*");

	CreateTextureSP("絵背景50", 10, Center, Middle, "cg/bg/bg079_ウォルフ教授の部屋_01.jpg");
	StC(1000, @0, @0, "cg/st/stウォルフ_通常_私服.png");
	FadeStC(0, true);

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", true);
	Delete("黒幕１");


//◆横書きテキストボックス

	SetFwH("cg/fw/fwウォルフ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0210010a13">
「快眠。
　快便。
　快脱パン」


//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0210020a13">
「僕は二度とパンツを穿いてこの部屋に戻る
ことはない。
　……そうあって欲しいものだ」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆ウィローの部屋
	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
	DeleteStA(0,true);
	Delete("絵背景12");
//■ウィローの部屋という背景がありませんので、キャノンの部屋を inc櫻井
	CreateTextureSP("絵背景50", 10, Center, Middle, "cg/bg/bg029_キャノン中佐執務室_01.jpg");

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", true);
	Delete("黒幕１");

	SetNwH("cg/fw/nyＧＨＱ士官.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／ＧＨＱ副官】
<voice name="ｅｔｃ／ＧＨＱ副官" class="その他男声" src="voice/mc02/0210030e003">
「閣下！
　作戦参加将校、全員集合致しました」


{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0210040b00">
「ご苦労。
　……では、キャノン中佐」


{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0210050b03">
「はい」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆キャノン
	OnSE("se人体_足音_歩く06", 1000);

	StC(1000, @0, @0, "cg/st/stキャノン_通常_制服.png");
	FadeStC(300, true);

	SetFwH("cg/fw/fwキャノン_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0210060b03">
「これより――
〝<RUBY text="ゴールデン・ドーン">黄金の夜明け</RUBY>〟作戦の最終確認を行う！」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆基地研究室
//◆無ければ黒。

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	DeleteStA(0, true);
	CreateTextureSP("絵背景50", 10, Center, Middle, "cg/bg/bg044_研究施設内_01a.jpg");

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", true);
	Delete("黒幕１");


//◆〝少女〟
	StL(1000, @0, @0, "cg/st/st鍛造雷弾_通常_私服.png");
	FadeStL(300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　………………………………


　
　　　　　　　　　午前七時〇〇分

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
	ClearFadeAll(0, true);

}

..//ジャンプ指定
//次ファイル　"mc02_022.nss"