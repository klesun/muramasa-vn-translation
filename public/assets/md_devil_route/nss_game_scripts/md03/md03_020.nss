//<continuation number="110">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_020.nss_MAIN
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
	#bg077_建朝寺得月楼前_01=true;
	#bg026_普陀楽山塞a_02=true;
	#bg027_普陀楽評議の間_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md03_021.nss";

}

scene md03_020.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md03_019.nss"


//◆bg077
//◆厩衆

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");


	OnBG(100, "bg077_建朝寺得月楼前_01.jpg");
	FadeBG(0, true);
	StR(1000, @0, @0, "cg/st/3d厩衆_立ち_通常.png");
	FadeStR(0, false);


	Delete("上背景");
	FadeDelete("黒",1500,true);

	SetNwC("cg/fw/nw厩衆Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／厩衆Ａ】
<voice name="ｅｔｃ／厩衆Ａ" class="その他男声" src="voice/md03/0200010e023">
「………………………………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ひゅいんと去る


	OnSE("se人体_動作_跳躍01", 1000);

	Zoom("@StR*", 150, 0, 3000, null, false);
	DeleteStR(150,true);

//◆普陀楽・夕
//◆評議の間

	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Delete("@OnBG*");

	CreateTextureSP("a", 200, @0, @0, "cg/bg/bg026_普陀楽山塞a_02.jpg");

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

	WaitKey(1000);

	CreateTextureEX("b", 200, @0, @0, "cg/bg/bg027_普陀楽評議の間_02.jpg");
	Fade("b", 1000, 1000, null, true);

	SoundPlay("@mbgm20", 0, 1000, true);

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【童心】
<voice name="童心" class="童心" src="voice/md03/0200020a09">
「会場設営は予定通りに済むようだの、湊斗
中佐」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0200030a00">
「はっ。
　トラブルのため、若干の予算超過を生じさ
せてしまいましたが……」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0200040a06">
「その程度は構わん。
　良くやった」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0200050a00">
「有難うございます。閣下」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0200060a07">
「フフフ。あても鼻が高いっすよ」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0200070a08">
「何もしてないくせに……」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0200080a09">
「まあまあ、良いではござらんか」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆すっ。障子戸が開く

	OnSE("se日常_建物_スライド開く01", 1000);


	StR(900, @50, @0, "cg/st/st常闇斎_通常_私服.png");
	Move("@StR*", 300, @-50, @0, null, false);
	FadeStR(300, true);


	SetFwC("cg/fw/fw常闇斎_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md03/0200090b37">
「堀越中将様」

{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0200100a07">
「ん？
　どした、常闇」

{	FwC("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md03/0200110b37">
「少々お耳を」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

}

..//ジャンプ指定
//次ファイル　"md03_021.nss"