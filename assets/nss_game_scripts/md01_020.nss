//<continuation number="200">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_020.nss_MAIN
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
	#bg007_若宮大路a_01=true;
	#bg033_署長宅景明私室_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_021.nss";

}

scene md01_020.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_019.nss"

//◆署長宅
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg007_若宮大路a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);
	SoundPlay("@mbgm23",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　牧村さんに挨拶して、署長宅の門をくぐる。
　常の事ながら、玄関は勤勉かつ優秀なる<RUBY text="かさい">家宰</RUBY>の手で
万全に清められていた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆部屋
	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100,"bg033_署長宅景明私室_01.jpg");
	FadeBG(0,true);

	DrawDelete("黒幕１", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　自分用にあてがわれている一室へ入り、腰を下ろす
や、俺はすぐ八幡宮から持参した紙を広げた。
　そうして、黙考を開始する。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0200010a00">
「………………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0200020a01">
《またしばらくはこっちの家なのね》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0200030a00">
「村正か……
　ああ、そうなる」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆蜘蛛村正
	CreateSE("SE01","se特殊_鎧_駆動音01");
	StR(1000, @30, -300,"cg/st/3d村正蜘蛛_俯瞰.png");
	Zoom("@StR*", 0, 800, 800, null, true);
	Rotate("@StR*", 0, @180, @0, @0, null,true);
	Request("@StR*", Smoothing);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StR*", 300, @-30, @30, DxlAuto, false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0200040a01">
《宮様に、何か仕事でも頼まれた？》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0200050a00">
「そんなところだ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0200060a01">
《ふぅん》

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0200070a00">
「…………。
　どう説明したものかな」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0200080a01">
《……無理に話してくれなくてもいいのよ。
　事情を知ろうと知るまいと、私のやること
は変わらない》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0200090a01">
《貴方が必要とする力をすべて用意する。
　それだけだから》

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0200100a00">
「そうか……。
　だが、やはり話しておこう」

//【景明】
<voice name="景明" class="景明" src="voice/md01/0200110a00">
「お前の知恵も借りたい」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0200120a01">
《悩むようなこと？》

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0200130a00">
「なかなか」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0200140a01">
《……何を頼まれたの？》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0200150a00">
「うむ……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0200160a00">
「回りくどく言えば」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0200170a01">
《わざわざ》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0200180a00">
「武家の棟梁にとって鶴岡八幡宮は鬼門の地、
そう語られるようにしろと。
　……<RUBY text="・・">二度</RUBY>となれば、声価も不朽だろうな」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0200190a01">
《……………………》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0200200a01">
《……それって》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 1000);

}

..//ジャンプ指定
//次ファイル　"md01_021.nss"