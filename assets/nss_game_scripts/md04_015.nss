//<continuation number="130">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_015.nss_MAIN
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
	#bg027_普陀楽評議の間_01=true;
	#bg104_普陀楽城外郭大船方面_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_016.nss";

}

scene md04_015.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md04_014.nss"


//◆普陀楽


	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg027_普陀楽評議の間_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm34", 0, 1000, true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/resize/bg026_普陀楽山塞a_01l.jpg");
	Request("絵背景100", Smoothing);
	Zoom("絵背景100", 0, 800, 800, null, true);

	Move("絵背景100", 8000, @100, @50, null, false);

	Delete("上背景");
	FadeDelete("黒幕１",2000,true);

	Wait(500);

//おがみ：映画字幕演出

	LockVideo(true);

	SetFont("@ＭＳ 明朝", 30, #FFFFFF, #000000, HEAVY, RIGHTDOWN);
	CreateText("字幕01",30411,Center,inherit,auto,auto,"一二月一日");
	Fade("字幕01", 0, 0, null, true);
	Request("字幕01",NoLog);
	Request("字幕01",PushText);
	Rotate("字幕01", 0, @0, @0, 90, null, false);
	Move("字幕01", 0, @300, @10, null, false);
	SetBacklog("一二月一日", null, null);

	SetFont("@ＭＳ 明朝", 30, #FFFFFF, #000000, HEAVY, RIGHTDOWN);
	CreateText("字幕02",30411,Center,inherit,auto,auto,"午前八時二一分");
	Fade("字幕02", 0, 0, null, true);
	Request("字幕02",NoLog);
	Request("字幕02",PushText);
	Rotate("字幕02", 0, @0, @0, 90, null, false);
	Move("字幕02", 0, @250, @10, null, false);
	SetBacklog("午前八時二一分", null, null);

	LockVideo(false);


	Fade("字幕*", 300, 1000, null, true);
	WaitKey(3000);
	Fade("字幕*", 300, 0, null, true);

/*
　
　　　　　　　　　一二月一日
　　　　　　　　　午前八時二一分
*/

	FadeDelete("絵背景100", 1000, true);

	Wait(500);
	StR(1000, @0, @0, "cg/st/st義清_通常_私服.png");
	FadeStR(300, true);

	Delete("字幕*");

	SetFwC("cg/fw/fw義清_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【義清】
<voice name="義清" class="義清" src="voice/md04/0150010b21">
「入道様！
　敵が再び攻撃を開始したとのことです！」

{	StCL(1000, @0, @0, "cg/st/st童心_通常_私服a.png");
	FadeStCL(300, false);
	FwC("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0150020a09">
「ふ、ふっ、ふぅ。
　夜明けと共に来るかと思っておれば、随分
<RUBY text="・・・・">ゆっくり</RUBY>だのう……？」

//【童心】
<voice name="童心" class="童心" src="voice/md04/0150030a09">
「昨夜の薬が効いたかな。
　何でもやってみるものよ」

{	FwC("cg/fw/fw義清_不安.png");}
//【義清】
<voice name="義清" class="義清" src="voice/md04/0150040b21">
「……あのぅ。
　こんな質問を、どうかお許し下さい」

//【義清】
<voice name="義清" class="義清" src="voice/md04/0150050b21">
「六波羅は、勝ちますか？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0150060a09">
「……うむ……。
　そなたやそなたの姉のためにも、勝たねば
なるまいのう」

{	FwC("cg/fw/fw義清_笑い.png");}
//【義清】
<voice name="義清" class="義清" src="voice/md04/0150070b21">
「入道様」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばたばたばた
	CreateSE("走る", "se人体_足音_走る07");
	MusicStart("走る", 1000, 1000, 0, 1000, null,false);

	Wait(1500);
	SetVolume("走る", 300, 0, null);

	OnSE("se日常_建物_扉開く07",800);

	Wait(500);

	SetNwC("cg/fw/nw伝令.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／伝令】
<voice name="ｅｔｃ／伝令" class="その他男声" src="voice/md04/0150080e223">
「閣下！
　遊佐中将閣下！」

{	FwC("cg/fw/fw義清_怒り.png");}
//【義清】
<voice name="義清" class="義清" src="voice/md04/0150090b21">
「あっ、無礼者！」

{	NwC("cg/fw/nw伝令.png");}
//【ｅｔｃ／伝令】
<voice name="ｅｔｃ／伝令" class="その他男声" src="voice/md04/0150100e223">
「御容赦！
　古河よりの急報なれば！」

//【ｅｔｃ／伝令】
<voice name="ｅｔｃ／伝令" class="その他男声" src="voice/md04/0150110e223">
「古河よりの……最終連絡であります!!」

{	FwC("cg/fw/fw童心_驚き.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0150120a09">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆大船方面


	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	DeleteStA(0,true);
	OnBG(100, "bg104_普陀楽城外郭大船方面_01.jpg");
	FadeBG(0, true);


	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

	SetFwC("cg/fw/fw雷蝶_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0150130a08">
「……何ですって？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

}

..//ジャンプ指定
//次ファイル　"md04_016.nss"