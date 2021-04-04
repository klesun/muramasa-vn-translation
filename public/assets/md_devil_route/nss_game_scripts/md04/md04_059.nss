//<continuation number="20">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_059.nss_MAIN
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
	#bg063_普陀楽城内廊下_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_060.nss";

}

scene md04_059.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md04_058.nss"


//◆城内、村正

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");


	OnBG(101, "bg063_普陀楽城内廊下_02.jpg");
	FadeBG(1000, true);

	SoundPlay("@mbgm01", 0, 1000, true);


	Delete("上背景");
	FadeDelete("黒幕１",1000,true);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0590010a00">
「……あの渦は！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0590020a01">
《八幡宮で見せた――》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　輝く球体に襲われた銀星号が、
　あの黒い渦を創り出す……！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆黒渦と鍛造雷弾、接触

	CreateColorSP("黒幕", 25000, "BLACK");
	DrawTransition("黒幕", 200, 0, 1000, 100, null, "cg/data/slide_01_02_1.png", true);


	CreateTextureSP("魔王星", 1200, 0, 0, "cg/ef/ef037_飢餓虚空魔王星c.jpg");
	CreateTextureSPadd("魔王星効果", 1200, 0, 0, "cg/ef/ef037_飢餓虚空魔王星c.jpg");

	SetBlur("魔王星", true, 3, 500, 100, false);
	Zoom("魔王星*", 0, 2000, 2000, null, true);

	OnSE("se戦闘_衝撃_衝突01", 1000);

	EffectZoomadd(17000, 500, 100, "cg/ef/ef037_飢餓虚空魔王星c.jpg", false);
	FadeF4("魔王星効果", 200, 1000, 5000, 0, 0, Dxl2, false);

	Zoom("魔王星*", 3000, 1100, 1100, Dxl1, false);

	DrawTransition("黒幕", 200, 1000, 0, 100, null, "cg/data/slide_01_02_0.png", true);
	Delete("黒幕");

	Wait(2000);

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md04_060.nss"