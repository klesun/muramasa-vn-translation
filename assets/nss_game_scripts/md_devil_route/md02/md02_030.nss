//<continuation number="40">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_030.nss_MAIN
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
	#bg001_空c_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_031.nss";

}

scene md02_030.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md02_029.nss"


//◆屋根
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	OnBG(100, "bg001_空c_03.jpg");
	FadeBG(0, true);
	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	SoundPlay("@mbgm30", 0, 1000, true);
	SetFwC("cg/fw/fw光_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//	SetFwC("cg/fw/fw光_通常b.png");
//【光】
<voice name="光" class="光" src="voice/md02/0300010a14">
「ここで割り込み！」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0300020a07">
「割り込み？」

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0300030a14">
「選択肢挿入！」

{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0300040a07">
「選択肢ッ!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500,1500);

}

..//ジャンプ指定
//次ファイル　"md02_031.nss"