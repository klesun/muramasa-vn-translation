//<continuation number="350">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_009.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/md05_009.nss","SetKenkiEX",true);
	Conquest("nss/md05_009.nss","SetKenki",true);
	Conquest("nss/md05_009.nss","FadeKenki",true);
	Conquest("nss/md05_009.nss","GoKenki",true);
	

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
	#bg202_旋回演出背景山a_02=true;
	#bg002_空a_02=true;
	#bg202_旋回演出背景山_02=true;
	#ev001_銀星号事件イメージ１=true;
	#ev228_白銀の軍団_c=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md05_010vs.nss";

}

scene md05_009.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md05_008vs.nss"


//◆正宗とバロウズ
	PrintBG("上背景", 30000);
	CreateColorSP("黒", 15000, "BLACK");

	SoundPlay("@msong04_inst",0,1000,true);

	OnBG(100, "bg001_空a_02.jpg");
	FadeBG(0, true);

//	Move("@OnBG*", 0, @0, @-2600, null, true);

	FadeDelete("上背景", 1000, true);


//	StC(1000, @0, @300, "cg/st/3d村正標準_騎航_通常3b.png");
//	FadeStC(0, true);



//	StCL(1100, @0, @0, "cg/st/3dバロウズ_立ち_抜刀.png");
//	FadeStCL(0, false);
//	StR(1000, @0, @0, "cg/st/3d正宗_立ち_抜刀.png");
//	FadeStR(0, true);


	CloudZoomSet(2500);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@1024,@-100,null,true);


	CreateCamera("カメラ１", Center, Middle, 500);
	SetAlias("カメラ１","カメラ１");



	CreateTextureEX("カメラ１/やられ役01a", 500, @200, @-200, "cg/st/3d正宗_騎航_通常.png");
	CreateTextureEX("カメラ１/やられ役02a", 350, @400, @-0, "cg/st/3dバロウズ_騎航_通常.png");

	Fade("カメラ１/やられ役01a", 0, 1000, null, false);
	Fade("カメラ１/やられ役02a", 0, 1000, null, false);

	Zoom("カメラ１/やられ役01*", 0, 600, 600, null, false);
	Zoom("カメラ１/やられ役02*", 0, 500, 500, null, false);

	Move("カメラ１/やられ役01*", 0, 41, -158, null, true);
	Move("カメラ１/やられ役02*", 0, -268, 0, null, true);

	Request("カメラ１/やられ役0*", Smoothing);

	OnSE("se戦闘_動作_空突進03", 1000);
	OnSE("se戦闘_動作_空突進06", 1000);
	CreateSE("停滞", "se戦闘_動作_空走行02_L");
	MusicStart("停滞", 0, 700, 0, 1000, null,true);


$ループムーブナット名 = "@カメラ１/やられ役01*";
$ループムーブタイム = 25000;

$ループムーブナット名２ = "@カメラ１/やられ役02*";
$ループムーブタイム２ = 20000;

	CreateProcess("プロセス１", 150, 0, 0, "FlyMoving");
	CreateProcess("プロセス２", 150, 0, 0, "FlyMoving2");
	SetAlias("プロセス１","プロセス１");
	SetAlias("プロセス２","プロセス２");

	Request("プロセス１", Start);
	Request("プロセス２", Start);

	MoveCamera("@カメラ１", 0, 500, 50, @0, null, true);


	DrawTransition("黒", 300, 1000, 0, 100, null, "cg/data/slide_01_02_1.png", false);
	MoveCamera("@カメラ１", 1500, 100, 200, @300, Dxl1, true);
	Delete("黒");

	SetBlur("カメラ１/やられ役01a", true, 1, 500, 100, false);


//	Zoom("@StC*", 1000, 100, 100, AxlAuto, false);
//	Move("@StC*", 1000, @200, @-200, null, false);

//	DeleteStC(1000,true);




	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md05/0090010a03">
《……面倒な方ですこと》

{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md05/0090020a02">
《あれが湊斗さんだ》

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md05/0090030a03">
《もう少し気楽に生きればよろしいのにね》

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md05/0090040a02">
《……かもな》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆敵騎群
	SetBlur("カメラ１/やられ役0*", false, 1, 500, 100, false);

	MoveCamera("@カメラ１", 300, 1500, 50, @0, null, false);

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_03_1.png", true);

	CloudZoomVertex(0,@-2048,@-100,null,true);


	DeleteStA(0,true);

//	Delete("カメラ*");
//	Request("プロセス*", Stop);
//	Delete("プロセス*");

//	OnBG(100, "bg002_空a_02.jpg");
//	FadeBG(0, true);



	CreateTextureSP("八剣01", 3000, @1200, @-200, "cg/st/3d八剣姫_騎航_通常.png");
	CreateTextureSP("八剣02", 2500, @1100, @-300, "cg/st/3d八剣姫_騎航_通常.png");
	CreateTextureSP("八剣03", 2000, @1050, @-450, "cg/st/3d八剣姫_騎航_通常.png");
	CreateTextureSP("八剣04", 1500, @1150, @-150, "cg/st/3d八剣姫_騎航_通常.png");
	Rotate("八剣*", 0, @0, @180, @0, null,true);

	Zoom("八剣02", 0, 500, 500, null, true);
	Zoom("八剣03", 0, 300, 300, null, true);
	Zoom("八剣04", 0, 250, 250, null, true);

	DrawTransition("黒幕１", 200, 1000, 0, 100, null, "cg/data/slide_01_03_0.png", true);
	Delete("黒幕１");

	OnSE("se戦闘_動作_空突進02", 1000);

	Move("八剣01", 300, @-900, @0, Dxl2, true);




	SetFwC("cg/fw/fw猫の爪_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【八剣姫Ｄ】
<voice name="八剣姫Ｄ" class="その他女声" src="voice/md05/0090050c03">
《いっちゃう、いっちゃう》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_動作_空突進02", 1000);

	Move("八剣02", 300, @-1250, @0, Dxl2, true);

	SetFwC("cg/fw/fw尾を噛むもの_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【八剣姫Ｅ】
<voice name="八剣姫Ｅ" class="その他女声" src="voice/md05/0090060c04">
《にがさない！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_動作_空突進02", 1000);

	Move("八剣03", 150, @-1000, @0, Dxl2, true);


	SetFwC("cg/fw/fw肉を剥ぐもの_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【八剣姫Ｆ】
<voice name="八剣姫Ｆ" class="その他女声" src="voice/md05/0090070c05">
《おいかける！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_動作_空突進02", 1000);

	Move("八剣04", 150, @-1400, @0, Dxl2, true);

	SetFwC("cg/fw/fw死を唄うもの_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【八剣姫Ｇ】
<voice name="八剣姫Ｇ" class="その他女声" src="voice/md05/0090080c06">
《つかまえる！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

/*

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Delete("八剣*");

	StR(1000, @-1100, @300, "cg/st/3d正宗_騎航_戦闘a.png");
	FadeStR(0, true);


	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

	OnSE("se戦闘_動作_空突進01", 1000);


	Move("@StR*", 300, @1900, @0, null, false);

*/

	Move("八剣01", 300, @1600, @0, Axl2, false);
	Move("八剣02", 300, @1300, @0, Axl2, false);
	Move("八剣03", 300, @1100, @0, Axl2, false);
	Move("八剣04", 300, @1000, @0, Axl2, false);

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	CloudZoomVertex(0,@2048,@0,null,true);

	MoveCamera("@カメラ１", 300, 100, 200, @0, Dxl1, true);
	DrawTransition("黒幕１", 200, 1000, 0, 100, null, "cg/data/slide_01_03_1.png", true);
	Delete("黒幕１");
	Delete("八剣*");

	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
//【一条】
<voice name="一条" class="一条" src="voice/md05/0090090a02">
《うるせえ。
　相手は、あたしだ》

{	FwC("cg/fw/fw一条_戦闘.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md05/0090100a02">
《一騎も通さねえよ!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CloudZoomDelete(200,false);

	OnSE("se戦闘_動作_空突進03",1000);

	MoveCamera("@カメラ１", 300, -1000, 200, @0, Axl1, true);

	OnSE("se戦闘_動作_空突進02",1000);

	SetVolume("停滞", 2000, 0, null);
	Request("プロセス*", Stop);
	Delete("@カメラ１*");
	Delete("プロセス*");

	SetFwC("cg/fw/fw嵐を導くもの_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
//【八剣姫Ａ】
<voice name="八剣姫Ａ" class="その他女声" src="voice/md05/0090110c00">
《……じゃま？》


{	FwC("cg/fw/fw炎の骨_通常.png");}
//【八剣姫Ｂ】
<voice name="八剣姫Ｂ" class="その他女声" src="voice/md05/0090120c01">
《じゃまっ！》


{	FwC("cg/fw/fw星の角_通常.png");}
//【八剣姫Ｃ】
<voice name="八剣姫Ｃ" class="その他女声" src="voice/md05/0090130c02">
《どうしよう》


{	FwC("cg/fw/fw猫の爪_通常.png");}
//【八剣姫Ｄ】
<voice name="八剣姫Ｄ" class="その他女声" src="voice/md05/0090140c03">
《どうする？》


{	FwC("cg/fw/fw尾を噛むもの_通常.png");}
//【八剣姫Ｅ】
<voice name="八剣姫Ｅ" class="その他女声" src="voice/md05/0090150c04">
《こうする？》


{	FwC("cg/fw/fw肉を剥ぐもの_通常.png");}
//【八剣姫Ｆ】
<voice name="八剣姫Ｆ" class="その他女声" src="voice/md05/0090160c05">
《うん》


{	FwC("cg/fw/fw死を唄うもの_通常.png");}
//【八剣姫Ｇ】
<voice name="八剣姫Ｇ" class="その他女声" src="voice/md05/0090170c06">
《そうしよう》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆剣姫Ａ


	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_03_1.png", true);
	DeleteStC(0,true);
	CloudZoomDelete(0,false);

	OnBG(100, "bg002_空a_02.jpg");

	CloudZoomSet(2500);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@-1024,@-100,null,true);


	FadeBG(0, true);
	CreateTextureSP("空", 110, @0, @0, "cg/bg/resize/bg001_空a_02.jpg");


	LoadImage("旋回イメージ", "cg/bg/bg204_横旋回背景_02.jpg");
	SetAlias("旋回イメージ", "旋回イメージ");
	LoadImage("背景イメージ１", "cg/bg/resize/bg002_空a_02.jpg");
	SetAlias("背景イメージ１", "背景イメージ１");
	LoadImage("背景イメージ２", "cg/bg/bg202_旋回演出背景山_02.jpg");
	SetAlias("背景イメージ２", "背景イメージ２");

	LoadImage("イメージ１", "cg/st/3d八剣姫_騎航_通常.png");
	SetAlias("イメージ１", "イメージ１");
	LoadImage("イメージ２", "cg/st/3d八剣姫_騎航_通常2.png");
	SetAlias("イメージ２", "イメージ２");
	LoadImage("イメージ３", "cg/st/3d八剣姫_騎航_通常3.png");
	SetAlias("イメージ３", "イメージ３");



	CreateTextureEX("背景３", 1000, 0, Middle, "旋回イメージ");
	CreateTextureEX("背景４", 1000, 0, Middle, "旋回イメージ");
	//SetVertex("背景３", Center, 200);
	//SetVertex("背景４", Center, 200);
	Zoom("背景３", 0, 3000, 3000, Dxl2, true);
	Zoom("背景４", 0, 3000, 3000, Dxl2, true);
	SetKenkiEX();
	SetKenki("Ａ");
	SetKenki("Ｂ");
	MoveFTP1stop();
	MoveFTP2stop();
	MoveFTP3stop();

/*
	CreateTextureSP("八剣", 2000, @-900, @-250, "cg/st/3d八剣姫_騎航_通常.png");
	Request("八剣", Smoothing);
	Zoom("八剣", 0, 1500, 1500, null, false);

	Shake("八剣", 1000000, 1, 1, 0, 0, 1000, Dxl3, false);
*/
	Rotate("敵機*", 0, @0, @180, @0, null,true);

	DrawTransition("黒幕１", 200, 1000, 0, 100, null, "cg/data/slide_01_03_0.png", true);
	Delete("黒幕１");

//	Move("八剣", 1000, @900, @50, Dxl2, false);
	OnSE("se戦闘_動作_空突進08",1000);
	FadeKenki("Ａ");


	SetFwR("cg/fw/fw嵐を導くもの_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【八剣姫Ａ】
<voice name="八剣姫Ａ" class="その他女声" src="voice/md05/0090180c00">
《やきこがす！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

/*
	CreateColorSPadd("黒幕１", 25000, "WHITE");
	OnSE("se戦闘_動作_空突進02", 1000);

	Move("八剣", 100, @1900, @0, null, false);


	DrawDelete("黒幕１", 300, 100, "slide_05_00_1", true);


//◆剣姫Ｂ

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/beam_02_00_0.png", true);

	Delete("八剣");


	CreateTextureSP("八剣", 2000, @500, @-450, "cg/st/3d八剣姫_騎航_通常.png");
	Request("八剣", Smoothing);

	Rotate("八剣", 0, @-30, @, @180, null, true);
	Zoom("八剣", 0, 1500, 1500, null, false);

	Shake("八剣", 1000000, 1, 1, 0, 0, 1000, Dxl3, false);


	DrawTransition("黒幕１", 200, 1000, 0, 100, null, "cg/data/beam_02_00_1.png", true);
	Delete("黒幕１");

	Move("八剣", 1000, @-250, @450, Dxl2, false);

*/

	SetKenki("Ｃ");
	OnSE("se戦闘_動作_空突進02",1000);
	GoKenki("Ａ");
	FadeKenki("Ｂ");


	SetFwL("cg/fw/fw炎の骨_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【八剣姫Ｂ】
<voice name="八剣姫Ｂ" class="その他女声" src="voice/md05/0090190c01">
《つらぬく！》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――
/*
	CreateColorSPadd("黒幕１", 25000, "WHITE");
	OnSE("se戦闘_動作_空突進02", 1000);

	Move("八剣", 100, @1900, @500, null, false);


	DrawDelete("黒幕１", 300, 100, "slide_07_00_1", true);

//◆剣姫Ｃ

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/beam_04_00_0.png", true);

	Delete("八剣");


	CreateTextureSP("八剣", 2000, @900, @250, "cg/st/3d八剣姫_騎航_通常.png");
	Request("八剣", Smoothing);

	Rotate("八剣", 0, @0, @0, @270, null, true);
	Zoom("八剣", 0, 1500, 1500, null, false);

	Shake("八剣", 1000000, 1, 1, 0, 0, 1000, Dxl3, false);


	DrawTransition("黒幕１", 200, 1000, 0, 100, null, "cg/data/beam_04_00_1.png", true);
	Delete("黒幕１");

	Move("八剣", 1000, @-700, @-350, Dxl2, false);
*/

//◆剣姫Ｃ
	SetKenki("Ｄ");
	OnSE("se戦闘_動作_空突進02",1000);
	GoKenki("Ｂ");
	FadeKenki("Ｃ");

	SetFwL("cg/fw/fw星の角_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【八剣姫Ｃ】
<voice name="八剣姫Ｃ" class="その他女声" src="voice/md05/0090200c02">
《ひきさく！》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

/*
	CreateColorSPadd("黒幕１", 25000, "WHITE");
	OnSE("se戦闘_動作_空突進02", 1000);

	Move("八剣", 100, @1900, @0, null, false);


	DrawDelete("黒幕１", 300, 100, "slide_08_00_1", true);

//◆剣姫Ｄ

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/crow_02_00_0.png", true);

	Delete("八剣");


	CreateTextureSP("八剣", 2000, @-900, @-450, "cg/st/3d八剣姫_騎航_通常.png");
	Request("八剣", Smoothing);

	Rotate("八剣", 0, @0, @0, @50, null, true);
	Zoom("八剣", 0, 1500, 1500, null, false);

	Shake("八剣", 1000000, 1, 1, 0, 0, 1000, Dxl3, false);


	DrawTransition("黒幕１", 200, 1000, 0, 100, null, "cg/data/crow_02_00_1.png", true);
	Delete("黒幕１");

	Move("八剣", 1000, @500, @150, Dxl2, false);

*/

//◆剣姫Ｄ
	SetKenki("Ｅ");
	OnSE("se戦闘_動作_空突進02",1000);
	GoKenki("Ｃ");
	FadeKenki("Ｄ");

	SetFwR("cg/fw/fw猫の爪_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【八剣姫Ｄ】
<voice name="八剣姫Ｄ" class="その他女声" src="voice/md05/0090210c03">
《ちぎる！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

/*
	CreateColorSPadd("黒幕１", 25000, "WHITE");
	OnSE("se戦闘_動作_空突進02", 1000);

	Move("八剣", 100, @1900, @0, null, false);


	DrawDelete("黒幕１", 300, 100, "slide_08_00_1", true);

//◆剣姫Ｅ

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Delete("八剣");


	CreateTextureSP("八剣", 2000, @0, @-800, "cg/st/3d八剣姫_騎航_通常.png");
	Request("八剣", Smoothing);

	Zoom("八剣", 0, 1500, 1500, null, false);
	Rotate("八剣", 0, @0, @0, @90, null, true);

	Shake("八剣", 1000000, 1, 1, 0, 0, 1000, Dxl3, false);


	DrawTransition("黒幕１", 200, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("黒幕１");

	Move("八剣", 1000, @0, @450, Dxl2, false);


*/

//◆剣姫Ｅ
	SetKenki("Ｆ");
	OnSE("se戦闘_動作_空突進02",1000);
	GoKenki("Ｄ");
	FadeKenki("Ｅ");

	SetFwC("cg/fw/fw尾を噛むもの_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【八剣姫Ｅ】
<voice name="八剣姫Ｅ" class="その他女声" src="voice/md05/0090220c04">
《はぎとる！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

/*
	CreateColorSPadd("黒幕１", 25000, "WHITE");
	OnSE("se戦闘_動作_空突進02", 1000);

	Move("八剣", 100, @0, @5000, null, false);


	DrawDelete("黒幕１", 300, 100, "slide_06_00_1", true);

//◆剣姫Ｆ

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Delete("八剣");


	CreateTextureSP("八剣", 2000, @0, @700, "cg/st/3d八剣姫_騎航_通常.png");
	Request("八剣", Smoothing);

	Zoom("八剣", 0, 1500, 1500, null, false);
	Rotate("八剣", 0, @0, @0, @-90, null, true);


	Shake("八剣", 1000000, 1, 1, 0, 0, 1000, Dxl3, false);


	DrawTransition("黒幕１", 200, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("黒幕１");

	Move("八剣", 1000, @0, @-800, Dxl2, false);

*/

//◆剣姫Ｆ
	SetKenki("Ｇ");
	OnSE("se戦闘_動作_空突進02",1000);
	GoKenki("Ｅ");
	FadeKenki("Ｆ");

	SetFwC("cg/fw/fw肉を剥ぐもの_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【八剣姫Ｆ】
<voice name="八剣姫Ｆ" class="その他女声" src="voice/md05/0090230c05">
《ねむれ！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

/*
	CreateColorSPadd("黒幕１", 25000, "WHITE");
	OnSE("se戦闘_動作_空突進02", 1000);

	Move("八剣", 100, @0, @-5000, null, false);


	DrawDelete("黒幕１", 300, 100, "slide_06_00_1", true);

//◆剣姫Ｇ

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Delete("八剣");


	CreateTextureSP("八剣", 2000, @-900, @300, "cg/st/3d八剣姫_騎航_通常.png");
	Request("八剣", Smoothing);


	Zoom("八剣", 0, 1500, 1500, null, false);
	Rotate("八剣", 0, @0, @0, @-60, null, true);


	Shake("八剣", 1000000, 1, 1, 0, 0, 1000, Dxl3, false);


	DrawTransition("黒幕１", 200, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("黒幕１");

	Move("八剣", 1000, @700, @-450, Dxl2, false);


*/

//◆剣姫Ｇ
	GoKenki("Ｆ");
	OnSE("se戦闘_動作_空突進02",1000);
	FadeKenki("Ｇ");

	SetFwR("cg/fw/fw死を唄うもの_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【八剣姫Ｇ】
<voice name="八剣姫Ｇ" class="その他女声" src="voice/md05/0090240c06">
《ふきとべ！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

/*
	CreateColorSPadd("黒幕１", 25000, "WHITE");
	OnSE("se戦闘_動作_空突進02", 1000);

	Move("八剣", 100, @5000, @-5000, null, false);


	DrawDelete("黒幕１", 300, 100, "slide_07_00_1", true);


	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	Delete("八剣");





	DrawTransition("黒幕１", 200, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);
	Delete("黒幕１");


*/

/*
//◆剣姫Ｈ
	OnSE("se特殊_陰義_発動04", 1000);

	CreateTextureSPover("ジ・エンド", 1200, @0, @0, "cg/ev/ev001_銀星号事件イメージ１.jpg");
	DrawTransition("ジ・エンド", 3000, 0, 1000, 100, null, "cg/data/noize_01_00_0.png", false);

	CreateTextureEX("八剣EX", 1300, Center, InBottom, "cg/st/resize/3d境界線_立ち_通常_ex.png");
	Move("八剣EX", 0, @0, @1200, null, true);
	Move("八剣EX", 5000, @0, @-500, DxlAuto, false);
	Fade("八剣EX", 5000, 1000, null, false);

*/

	CreateTextureEX("上背景", 1000, 0, 0, "cg/bg/bg001_空a_02.jpg");

	OnSE("se戦闘_動作_空突進01",1000);
	OnSE("se戦闘_動作_空突進02",1000);
	OnSE("se戦闘_動作_空突進03",1000);

	Move("敵機Ａ", 800, @-2000, @0, Axl1, false);
	Move("敵機Ｂ", 700, @-2000, @0, Axl1, false);
	Move("敵機Ｃ", 600, @-2000, @0, Axl1, false);
	Move("敵機Ｄ", 500, @-2000, @0, Axl1, false);
	Move("敵機Ｅ", 400, @-2000, @0, Axl1, false);
	Move("敵機Ｆ", 300, @-2000, @0, Axl1, false);
	Move("敵機Ｇ", 200, @-2000, @0, Axl1, false);

	Fade("上背景", 1000, 1000, null, true);
	SCR1stop();

	MoveFRP1stop();
	MoveFRP2stop();
	MoveFRP3stop();
	MoveFRP4stop();
	MoveFRP5stop();
	MoveFRP6stop();
	MoveFRP7stop();

//◆剣姫Ｈ
	CreateTextureSP("背景１", 2000, Center, 0, "背景イメージ２");

	CreateTextureSP("敵機０", 2000, -100, 700, "cg/st/resize/3d境界線_立ち_通常_ex.png");
	Zoom("敵機０", 0, 300, 300, Dxl2, true);
	CreateTextureSP("敵機１", 2000, 0, -100, "イメージ２");
	Zoom("敵機１", 0, 100, 100, Dxl2, true);
	CreateTextureSP("敵機２", 2000, -100, -100, "イメージ２");
	Zoom("敵機２", 0, 300, 300, Dxl2, true);
	CreateTextureSP("敵機３", 2000, 50, -100, "イメージ２");
	Zoom("敵機３", 0, 600, 600, Dxl2, true);
	CreateTextureSP("敵機４", 2000, -150, -100, "イメージ２");
	Zoom("敵機４", 0, 1000, 1000, Dxl2, true);

	CreateSE("サウンド２","se戦闘_動作_空突進01");
	CreateSE("サウンド３","se戦闘_動作_空突進01");
	CreateSE("サウンド４","se戦闘_動作_空突進01");
	CreateSE("サウンド５","se戦闘_動作_空突進01");

	Delete("上背景");
//	WaitKey();

	CloudZoomDelete(500,false);
	SetVolume("サウンド１", 0, 800, NULL);
	Move("背景１", 700, @0, @-1000, Dxl1, false);

	Zoom("敵機１", 700, 2000, 2000, Axl1, false);
	Zoom("敵機２", 700, 2000, 2000, Axl1, false);
	Zoom("敵機３", 700, 2000, 2000, Axl1, false);
	Zoom("敵機４", 700, 2000, 2000, Axl1, false);

	MusicStart("サウンド２",0,1000,0,1000,null,false);
	Move("敵機４", 150, @-2000, @-300, Axl1, false);
	Wait(150);
	MusicStart("サウンド３",0,1000,0,1000,null,false);
	Move("敵機３", 150, @2000, @-400, Axl1, false);
	Wait(150);
	Zoom("敵機０", 500, 300, 300, Dxl2, false);
	MusicStart("サウンド４",0,1000,0,1000,null,false);
	Move("敵機０", 500, -221, -444, Dxl2, false);
	Move("敵機２", 150, @-1600, @-500, Axl1, false);
	Wait(150);
	MusicStart("サウンド５",0,1000,0,1000,null,false);
	Move("敵機１", 150, @1600, @-600, Axl1, false);
//	WaitKey();
	Wait(350);

	CreateSE("サウンド６","se戦闘_動作_空突進01");
	SetVolume("サウンド１", 1000, 0, NULL);
	MusicStart("サウンド６",0,1000,0,1000,null,false);

	Move("背景１", 300, @0, -100, Dxl2, false);
	Move("敵機０", 300, -221, -144, Dxl2, false);
	Zoom("背景１", 300, 1500, 1500, Dxl2, false);
	Zoom("敵機０", 300, 1000, 1000, Dxl2, true);


	SetFwR("cg/fw/fw境界線_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【八剣姫Ｈ】
<voice name="八剣姫Ｈ" class="その他女声" src="voice/md05/0090250c07">
《私が決める。私が定める。
　生と死を分かち狭間に立つ》

//【八剣姫Ｈ】
<voice name="八剣姫Ｈ" class="その他女声" src="voice/md05/0090260c07">
《<RUBY text="ディス・イズ・ジ・エンド">ここが境界線だ</RUBY>!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆八騎集結
/*
	CreateColorSP("白幕１", 25000, "WHITE");
	DrawTransition("白幕１", 100, 0, 1000, 100, null, "cg/data/circle_02_00_0.png", true);
	Delete("ジ・エンド");
	Delete("＠OnBG*");
	Delete("うおぉん");
	DeleteStC(0,true);

	CreateTextureSP("八剣姫", 15000, @0, @0, "cg/ev/ev228_白銀の軍団_c.jpg");


	DrawTransition("白幕１", 300, 1000, 0, 100, null, "cg/data/circle_02_00_1.png", true);
	Delete("白幕１");
*/

	CreateTextureEX("イベント１", 2000, 0, 0, "cg/ev/resize/evex001_八剣姫突撃.jpg");
	SetVertex("イベント１", 512, 50);
	Zoom("イベント１", 0, 3000, 3000, Dxl2, true);
	SetBlur("イベント１", true, 2, 500, 100, false);

	OnSE("se戦闘_バロウズ_ボーガン構え01",1000);


	Fade("イベント１", 500, 1000, null, false);
	Zoom("イベント１", 1000, 1000, 1000, Dxl2, true);

	Delete("敵機１");
	Delete("敵機２");
	Delete("敵機３");
	Delete("敵機４");
	Delete("敵機０");
	Delete("背景１");

/*
//下準備
	Move("敵機Ａ", 0, @-3000, @0, Axl1, false);
	Move("敵機Ｂ", 0, @-3000, @0, Axl1, false);
	Move("敵機Ｃ", 0, @-3000, @0, Axl1, false);
	Move("敵機Ｄ", 0, @-3000, @0, Axl1, false);
	Move("敵機Ｅ", 0, @-3000, @0, Axl1, false);
	Move("敵機Ｆ", 0, @-3000, @0, Axl1, false);
	Move("敵機Ｇ", 0, @-3000, @0, Axl1, true);

	Move("背景３", 0, 0, @0, Axl1, true);
	Move("背景４", 0, 0, @0, Axl1, true);

	CreateColorEX("色１", 10000, "#FFFFFF");
	Request("色１", AddRender);

	CreateTextureEX("背景１", 1000, 0, 0, "cg/bg/bg002_空a_02.jpg");
	SetVertex("背景１", 1000, 200);
	CreateTextureEX("自機１", 1000, 0, 0, "cg/st/3d村正最終_騎突_通常.png");
	Zoom("自機１", 0, 100, 100, Dxl2, true);
	SetBlur("自機１", true, 1, 500, 50, false);

	LoadImage("敵機イメージ０", "cg/st/resize/3d八剣姫_騎航_通常3_l.png");
	SetAlias("敵機イメージ０", "敵機イメージ０");

	CreateTextureEX("敵機１", 2000, -575, 500, "敵機イメージ０");
	CreateTextureEX("敵機２", 2000, -775, 600, "敵機イメージ０");
	CreateTextureEX("敵機３", 2000, -275, 700, "敵機イメージ０");
	Rotate("敵機３", 0, @0, @180, @0, null, true);

	SetBlur("敵機１", true, 1, 500, 50, false);


*/


	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md05/0090270a03">
《……今更ですけど。
　もしかしたらこの八騎、ヤバいんじゃない
かなーとか思ってましてよ》

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md05/0090280a02">
《特に最後のやつな。
　なんかあいつ、江ノ島で見た銀星号と同じ
か……下手するとそれ以上って気がする》

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md05/0090290a03">
《どうしましょうね》

{	FwC("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md05/0090300a02">
《どうもこうもあるか。
　上等だ》

{	FwC("cg/fw/fw一条_戦闘.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md05/0090310a02">
《あたしと正宗で<RUBY text="・・・">食って</RUBY>やる》

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md05/0090320a03">
《まあ素敵。
　恐怖とか感じられない心の病気のひとって
こんなにも頼もしいものなんですのね！》

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md05/0090330a02">
《言ってろよ。
　怖いなら帰れ》

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md05/0090340a03">
《いいえ。
　わたくし、恐怖のあまり失禁しそうになり
ながら戦うのってわりと趣味ですから》

{	FwC("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md05/0090350a02">
《……てめぇが病気だろ！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1500, 0, null);
	SetVolume("停滞", 1500, 0, null);

	SetVolume("@m*", 3000, 0, null);

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md05_010vs.nss"


function SetKenkiEX()
{
	CreateTextureSP("敵機Ａ", 1000, -34, -122, "イメージ１");
	Move("敵機Ａ", 0, @-500, @1000, Dxl1, true);
	MoveFRP1("@敵機Ａ",20000,3,3);
	CreateTextureSP("敵機Ｂ", 1000, -196, -440, "イメージ１");
	Move("敵機Ｂ", 0, @-500, @1000, Dxl1, false);
	MoveFRP2("@敵機Ｂ",20000,4,4);
	CreateTextureSP("敵機Ｃ", 1000, -213, -267, "イメージ１");
	Move("敵機Ｃ", 0, @-1500, @0, Dxl1, false);
	MoveFRP3("@敵機Ｃ",20000,6,6);
	CreateTextureSP("敵機Ｄ", 1000, -182, -37, "イメージ１");
	Move("敵機Ｄ", 0, @-1000, @-500, Dxl1, false);
	MoveFRP4("@敵機Ｄ",20000,8,8);
	CreateTextureSP("敵機Ｅ", 1000, -152, -384, "イメージ１");
	Move("敵機Ｅ", 0, @-1100, @500, Dxl1, false);
	MoveFRP5("@敵機Ｅ",20000,10,10);
	CreateTextureSP("敵機Ｆ", 1000, -229, -61, "イメージ１");
	Move("敵機Ｆ", 0, @-1000, @-1000, Dxl1, false);
	MoveFRP6("@敵機Ｆ",20000,12,12);
	CreateTextureSP("敵機Ｇ", 1000, -455, -245, "イメージ１");
	Move("敵機Ｇ", 0, @-1000, @600, Dxl1, false);
	MoveFRP7("@敵機Ｇ",20000,15,15);
	$KenkiOff=true;
}

function SetKenki($敵機)
{
	if(!$KenkiOff){
		if($敵機=="Ａ"){
			CreateTextureSP("敵機Ａ", 1000, -34, -122, "イメージ１");
			Move("敵機Ａ", 0, @-500, @1000, Dxl1, true);
			MoveFRP1("@敵機Ａ",20000,3,3);
		}else if($敵機=="Ｂ"){
			CreateTextureSP("敵機Ｂ", 1000, -196, -440, "イメージ１");
			Move("敵機Ｂ", 0, @-500, @1000, Dxl1, false);
			MoveFRP2("@敵機Ｂ",20000,4,4);
		}else if($敵機=="Ｃ"){
			CreateTextureSP("敵機Ｃ", 1000, 213, -267, "イメージ１");
			Move("敵機Ｃ", 0, @-1500, @0, Dxl1, false);
			MoveFRP3("@敵機Ｃ",20000,6,6);
		}else if($敵機=="Ｄ"){
			CreateTextureSP("敵機Ｄ", 1000, 182, -37, "イメージ１");
			Move("敵機Ｄ", 0, @-1000, @-500, Dxl1, false);
			MoveFRP4("@敵機Ｄ",20000,8,8);
		}else if($敵機=="Ｅ"){
			CreateTextureSP("敵機Ｅ", 1000, 152, -384, "イメージ１");
			Move("敵機Ｅ", 0, @-1100, @500, Dxl1, false);
			MoveFRP5("@敵機Ｅ",20000,10,10);
		}else if($敵機=="Ｆ"){
			CreateTextureSP("敵機Ｆ", 1000, -229, -61, "イメージ１");
			Move("敵機Ｆ", 0, @-1000, @-1000, Dxl1, false);
			MoveFRP6("@敵機Ｆ",20000,12,12);
		}else if($敵機=="Ｇ"){
			CreateTextureSP("敵機Ｇ", 1000, -455, -245, "イメージ１");
			Move("敵機Ｇ", 0, @-1000, @600, Dxl1, false);
			MoveFRP7("@敵機Ｇ",20000,15,15);
		}
	}
}

function FadeKenki($敵機)
{
	$Kenki移動速度=800;
	$Kenki拡大速度=600;

	if($敵機=="Ａ"){
		Move("敵機Ａ", $Kenki移動速度, -104, -207, Dxl2, false);
	}else if($敵機=="Ｂ"){
		Move("敵機Ｂ", $Kenki移動速度, -84, -237, Dxl2, false);
		Zoom("敵機Ａ", $Kenki拡大速度, 800, 800, Dxl1, false);
		Zoom("背景３", $Kenki拡大速度, 2000, 2000, Dxl2, false);
		Zoom("背景４", $Kenki拡大速度, 2000, 2000, Dxl2, false);
	}else if($敵機=="Ｃ"){
		Move("敵機Ｃ", $Kenki移動速度, -50, -237, Dxl2, false);
		Zoom("敵機Ａ", $Kenki拡大速度, 500, 500, Dxl1, false);
		Zoom("敵機Ｂ", $Kenki拡大速度, 800, 800, Dxl1, false);
		Zoom("背景３", $Kenki拡大速度, 1800, 1800, Dxl2, false);
		Zoom("背景４", $Kenki拡大速度, 1800, 1800, Dxl2, false);
	}else if($敵機=="Ｄ"){
		Move("敵機Ｄ", $Kenki移動速度, -26, -207, Dxl2, false);
		Zoom("敵機Ａ", $Kenki拡大速度, 400, 400, Dxl1, false);
		Zoom("敵機Ｂ", $Kenki拡大速度, 500, 500, Dxl1, false);
		Zoom("敵機Ｃ", $Kenki拡大速度, 800, 800, Dxl1, false);
		Zoom("背景３", $Kenki拡大速度, 1600, 1600, Dxl2, false);
		Zoom("背景４", $Kenki拡大速度, 1600, 1600, Dxl2, false);
	}else if($敵機=="Ｅ"){
		Move("敵機Ｅ", $Kenki移動速度, -74, -217, Dxl2, false);
		Zoom("敵機Ａ", $Kenki拡大速度, 300, 300, Dxl1, false);
		Zoom("敵機Ｂ", $Kenki拡大速度, 400, 400, Dxl1, false);
		Zoom("敵機Ｃ", $Kenki拡大速度, 500, 500, Dxl1, false);
		Zoom("敵機Ｄ", $Kenki拡大速度, 800, 800, Dxl1, false);
		Zoom("背景３", $Kenki拡大速度, 1400, 1400, Dxl2, false);
		Zoom("背景４", $Kenki拡大速度, 1400, 1400, Dxl2, false);
	}else if($敵機=="Ｆ"){
		Move("敵機Ｆ", $Kenki移動速度, -104, -227, Dxl2, false);
		Zoom("敵機Ａ", $Kenki拡大速度, 200, 200, Dxl1, false);
		Zoom("敵機Ｂ", $Kenki拡大速度, 300, 300, Dxl1, false);
		Zoom("敵機Ｃ", $Kenki拡大速度, 400, 400, Dxl1, false);
		Zoom("敵機Ｄ", $Kenki拡大速度, 500, 500, Dxl1, false);
		Zoom("敵機Ｅ", $Kenki拡大速度, 800, 800, Dxl1, false);
		Zoom("背景３", $Kenki拡大速度, 1200, 1200, Dxl2, false);
		Zoom("背景４", $Kenki拡大速度, 1200, 1200, Dxl2, false);
	}else if($敵機=="Ｇ"){
		Move("敵機Ｇ", $Kenki移動速度, -455, -245, Dxl2, false);
		Zoom("敵機Ａ", $Kenki拡大速度, 100, 100, Dxl1, false);
		Zoom("敵機Ｂ", $Kenki拡大速度, 200, 200, Dxl1, false);
		Zoom("敵機Ｃ", $Kenki拡大速度, 300, 300, Dxl1, false);
		Zoom("敵機Ｄ", $Kenki拡大速度, 400, 400, Dxl1, false);
		Zoom("敵機Ｅ", $Kenki拡大速度, 500, 500, Dxl1, false);
		Zoom("敵機Ｆ", $Kenki拡大速度, 800, 800, Dxl1, false);
		Zoom("背景３", $Kenki拡大速度, 1000, 1000, Dxl2, false);
		Zoom("背景４", $Kenki拡大速度, 1000, 1000, Dxl2, false);
	}
}

function GoKenki($敵機)
{
	if($敵機=="Ａ"){
		//Zoom("敵機Ａ", $Kenki拡大速度, 100, 100, Dxl1, false);
		Move("敵機Ａ", $Kenki拡大速度, -50, -30, Dxl1, false);
	}else if($敵機=="Ｂ"){
		//Zoom("敵機Ｂ", $Kenki拡大速度, 200, 200, Dxl1, false);
		Move("敵機Ｂ", $Kenki拡大速度, -196, -440, Dxl1, false);
	}else if($敵機=="Ｃ"){
		//Zoom("敵機Ｃ", $Kenki拡大速度, 300, 300, Dxl1, false);
		Move("敵機Ｃ", $Kenki拡大速度, 213, -267, Dxl1, false);
	}else if($敵機=="Ｄ"){
		//Zoom("敵機Ｄ", $Kenki拡大速度, 400, 400, Dxl1, false);
		Move("敵機Ｄ", $Kenki拡大速度, 182, -37, Dxl1, false);
	}else if($敵機=="Ｅ"){
		//Zoom("敵機Ｅ", $Kenki拡大速度, 500, 500, Dxl1, false);
		Move("敵機Ｅ", $Kenki拡大速度, 152, -384, Dxl1, false);
	}else if($敵機=="Ｆ"){
		//Zoom("敵機Ｆ", $Kenki拡大速度, 800, 800, Dxl1, false);
		Move("敵機Ｆ", $Kenki拡大速度, -229, -61, Dxl1, false);
	}else if($敵機=="Ｇ"){
		//Zoom("敵機Ｇ", $Kenki拡大速度, 1000, 1000, Dxl1, false);
		Move("敵機Ｇ", $Kenki拡大速度, -455, -245, Dxl1, false);
	}
}

