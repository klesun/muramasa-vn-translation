//<continuation number="190">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;

		Reset();
	}

}

scene mc04_045vs.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/mc04_045vs.nss","TurboBlur2",true);
	
//コックピット用Ｓｅｔ
//あきゅん「ＣＰ："mc04_043vs"から引継ぎ」
//	CP_AllSet("村正");

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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	Cockpit_AllFade0();

	$GameName = "mc04_046vs.nss";

}

scene mc04_045vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc04_044vs.nss"

//◆景明サイド
	PrintBG("上背景", 30000);

	CreateSE("SE10","se戦闘_動作_空突進05");
	MusicStart("SE10",2000,1000,0,1000,null,true);


	CreateColorSP("黒幕１", 18000, "BLACK");
	CreateTextureSP("絵背景50", 100, Center, -400, "cg/bg/bg202_旋回演出背景山_01.jpg");
	Request("絵背景50", Smoothing);

	CreateTextureEX("絵狸", 100, Center, middle, "cg/st/3dバロウズ_騎突_戦闘.png");
	Request("絵狸", Smoothing);
	Zoom("絵狸", 0, 50, 50, null, true);
	SetBlur("絵狸", true, 1, 300, 100, false);
	Move("@絵狸", 0, @0, @-50, null, true);

	Delete("上背景");


	Cockpit_AllFade2();

	CP_HighChangeA();
	CP_AltChangeA();
	CP_SpeedChangeA();
	FrameShake();

	MyLife_Count(0,189);
	MyTr_Count(0,160);
	CP_PowerChange(50,270,null,true);
	CP_IHPChange(0,3,null,false);

	CP_EHPChange(0,6,null,true);
	CP_EnemyFade(0,10,220,300);

	CP_LockOnFade(0,"off",false);

	CP_HighChange(0,453,null,false);
	CP_SpeedChange(0,440,null,false);
	CP_AziChange(0,-189,nul,false);

	SetVolume("SE10", 3000, 300, null);
	SetFrequency("SE10", 3000, 900, null);

	OnSE("se戦闘_動作_空突進01",1000);

	Move("@絵狸", 1000, @0, @30, Dxl1, false);
	Fade("@絵狸", 300, 1000, null, false);

	DrawDelete("黒幕１", 200, 100, "slide_02_01_1", false);
	Move("絵背景50", 1000, @0, @100, Dxl2, true);

	SoundPlay("@mbgm12",0,1000,true);

//	BGMoveAuto("@絵背景50",1);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/045vs0010a00">
「吉野御流合戦礼法……〝迅雷〟が崩し」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 21000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);


	Cockpit_AllFade0();
	Delete("@絵狸*");
	SetVolume("SE10", 2000, 0, null);

	CloudZoomSet(15000);
	CloudZoomVertex(0,@600,@250,null,false);
	Request("絵Cloud*", AddRender);


	CreateTextureSP("絵EV100", 1999, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_c.jpg");
	CreateTextureSP("絵EV200", 2000, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_d.jpg");
	CreateTextureSPadd("絵背景効果線", 17500, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_e.jpg");
	$効果ナット名 = @絵背景効果線;
	CreateProcess("プロセス１", 150, 0, 0, "TurboBlur2");
	SetAlias("プロセス１","プロセス１");


	CloudZoomStartB(1000,800,800,1000,1000);
	Request("プロセス１", Start);
	Shake_Loop("@絵EV200","shake01");
	RailgunFlash();

	CreateSE("SE01","se特殊_電撃_帯電01");
	MusicStart("SE01",300,500,0,1000,null,true);
	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);

	Fade("絵背景200", 500, 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　<RUBY text="のろい">呪詛</RUBY>の<RUBY text="うた">詩</RUBY>を<RUBY text="しょうよう">唱謡</RUBY>する。
　それは鍵だ。生命略奪行為の封印を解き放つ鍵。

　殺す。

　敵を、殺す。

　<RUBY text="ひとのみち">倫理</RUBY>は見限って捨てた。
　もう要らない。もう邪魔だ。それはもう余計な物で
しかない。

　村正の戒律も、今や恐れるに値しない。
　あの騎士を斬った後で大鳥大尉に刃を向ける始末と
なろうが、別に構わない。

　彼女は必ず、俺を返り討ってくれるから。

　……揺るぎない信頼がある。
　大鳥香奈枝の復讐と殺意は絶対の信を置くに足りる。

　彼女は正真の<RUBY text="ロード">君主</RUBY>。
　法の執行者だ。罪人を赦しはしない。決して。

　俺は彼女を信じる。
　信じて――――この仇敵を殺す!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆最終準備
	CreateSE("SE01","se特殊_電撃_帯電02");
	CreateTextureEXadd("絵EV300", 2100, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_d.jpg");
	CreateColorEXadd("絵色100", 18000, "WHITE");

	MusicStart("SE01",300,500,0,1000,null,true);
	Fade("絵EV300", 0, 1000, null, true);
	Fade("絵色100", 200, 1000, null, false);
	Fade("絵EV300", 200, 0, null, true);
	Fade("絵EV300", 50, 1000, null, true);
	FadeDelete("絵色100", 1000, false);
	Wait(700);
	Fade("絵EV300", 700, 0, null, true);
	Delete("絵EV300");

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/045vs0020a00">
「<RUBY text="レールガン">電磁抜刀</RUBY>」


//【景明】
<voice name="景明" class="景明" src="voice/mc04/045vs0030a00">
「<RUBY text="マガツ">禍</RUBY>」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　命を、
　呪う。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆レールガン
//◆ずばぎゃー。
	CreateColorEXadd("絵色100", 18000, "WHITE");
	CreateTextureEX("絵背景300", 17000, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_c.jpg");
	Request("絵背景300", AddRender);
	Zoom("絵背景300", 0, 1050, 1050, null, true);

	CreateSE("SE02","se特殊_電撃_放電01");
	CreateSE("SE03","se戦闘_攻撃_鎧攻撃命中03");
	CreateSE("SE04","se戦闘_破壊_鎧03");
	CreateSE("SE05","se戦闘_破壊_鎧05");

	SetVolume("SE01", 2000, 0, null);
	MusicStart("SE02",0,1000,0,1000,null,false);
	FadeF4("絵背景300", 1000, 1000, 3000, 0, 0, Axl3, false);
	Wait(2000);
	Fade("絵色100", 1000, 1000, null, true);

	Delete("絵EV*");
	Delete("絵背景200");
	Delete("絵背景300");
	Delete("絵背景効果線");
	RG_FlashDelete();
	Request("プロセス１", Stop);
	Delete("プロセス１");
	Request("プロセス２", Stop);
	Delete("プロセス２");
	CloudZoomDelete(0,true);

	CreateColorSPadd("絵色白下敷き", 17500, "WHITE");
	Fade("絵色100", 1000, 0, null, false);

	MovieSESet(17550,"mv電磁抜刀_禍","se特殊_mv用_電磁抜刀_禍");
	MovieSEStart(1500);
	Delete("絵色100");
	SetVolume("@mbgm*", 1000, 0, null);

	MusicStart("SE03",0,1000,0,1000,null,false);
	MusicStart("SE04",0,1000,0,1000,null,false);
	MusicStart("SE05",0,1000,0,1000,null,false);

	Cockpit_AllFade2();
	CP_EnemyFade0();
	CP_HighChange(0,453,null,false);
	CP_SpeedChange(0,440,null,false);
	CP_AziChange(0,-189,nul,false);
	CP_PowerChange(10,202,null,true);

	Wait(3000);
	SetVolume("SE*", 2000, 0, null);

	CreateSE("SE10","se戦闘_動作_空突進05");
	MusicStart("SE10",2000,300,0,1000,null,true);


	FadeDelete("絵色白下敷き", 2000, false);
	Move("@絵背景50", 3000, @0, @-150, Dxl2, true);
	BGMoveAuto("@絵背景50",1);

//◆村正

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/045vs0040a00">
「村正！」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/045vs0050a01">
《――あ――っ》


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/045vs0060a00">
「敵情は……どうだ!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ピー。サーチ音
	CreateSE("SE01","se特殊_コックピット_探索01");
	CreateSE("SE02","se特殊_コックピット_探索02");

	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(1000);

	CP_EnemyFade(300,3,200,250);
	MusicStart("SE02",0,1000,0,1000,null,false);

	Wait(500);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/045vs0070a01">
《……まだっ！
　墜ちてない、飛んでる――》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/045vs0080a01">
《交戦能力残存の様子！》


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/045vs0090a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　何という畏ろしき眼か。

　電磁抜刀の光迅すらも<RUBY text="み">視</RUBY>たのか。
　そして、致命傷だけは防いだと……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm13",0,1000,true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/045vs0100a01">
《けれど被害は甚大。
　あのままなら、もう放っておいても》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/045vs0110a00">
「墜ちる、か？
　……馬鹿な」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/045vs0120a00">
「そんな相手ではない」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/045vs0130a01">
《え？》


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/045vs0140a00">
「あの敵騎は俺を殺すまで、自騎の<RUBY text="はいぼく">墜落</RUBY>など
<RUBY text="・・・・">認めない</RUBY>」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　いや。
　それも違う。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/045vs0150a00">
「例え墜落がもはや不可避であろうと……
　最期の瞬間まで、俺を狙うぞ」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/045vs0160a01">
《……》


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/045vs0170a00">
「だから――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　今、為すべきは。
　……追撃あるのみ！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆追撃。しかし
//◆がくんと不穏な挙動
	BGMoveDelete();

	CreateSE("SE01","se戦闘_衝撃_鎧転倒01");
	OnSE("se戦闘_動作_空突進03",1000);
	EffectZoomadd(10000, 1000, 100, "cg/ef/ef003_汎用移動.jpg", false);


	CreateSurfaceEX("絵Suf",1000,2000,"@絵背景50");
	Fade("絵Suf", 0, 1000, null, false);

	SetVolume("SE10", 1000, 500, null);
	SetFrequency("SE10", 3000, 900, null);

	Rotate("絵Suf", 1500, @0, @0, 20, AxlDxl,false);
	Move("絵背景50", 1500, @0, @200, AxlDxl, false);
	CP_RollBarMove2(1500,-20,AxlDxl,false);
	Zoom("@絵背景50", 1400, 1100, 1100, null, true);


	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("絵背景*", 1500, 20, 0, 0, 0, 1000, Dxl3, false);
	Shake("@CP_Frame*", 2000, 20, 0, 0, 0, 1000, Dxl2, false);

	CP_RollBarMove2(500,@30,AxlDxl,false);
	Rotate("絵Suf", 500, @0, @0, @-30, AxlDxl,false);
	Move("@絵背景50", 500, @-5, @-158, Dxl2, true);
	CP_RollBarMove2(2000,@-30,AxlDxl,false);
	Rotate("絵Suf", 2000, @0, @0, @30, AxlDxl,false);
	Move("@絵背景50", 6000, -152, -688, AxlDxl, false);


	Wait(1000);


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/045vs0180a01">
《御堂！》


{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/045vs0190a00">
「ぐっ……おぉ！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆姿勢回復。
	CreateSE("SE01","se戦闘_衝撃_鎧転倒01");
	SetVolume("SE10", 1000, 500, null);
	SetFrequency("SE10", 1000, 1000, null);
	CP_RollBarMove2(1500,0,AxlDxl,false);
	Rotate("絵Suf", 1500, @0, @0, 0, AxlDxl,false);
	Move("@絵背景50", 1500, @0, -388, AxlDxl, true);


//◆また崩れ。
	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("絵背景*", 1500, 20, 0, 0, 0, 1000, Dxl3, false);
	Shake("@CP_Frame*", 2000, 20, 0, 0, 0, 1000, Dxl2, false);
	SetVolume("SE10", 1000, 800, null);
	SetFrequency("SE10", 3000, 700, null);
	CP_RollBarMove2(3000,-50,AxlDxl,false);
	Rotate("絵Suf", 3000, @0, @0, @50, AxlDxl,false);
	Move("@絵背景50", 3000, @0, @-1088, AxlDxl, false);

	Wait(2000);
	SetVolume("SE*", 1000, 0, null);
	ClearFadeAll(1000, true);

	Cockpit_AllFade0();

	//CP_AllDelete();

}

..//ジャンプ指定
//次ファイル　"mc04_046vs.nss"

function TurboBlur2()
{

	while(1){
	Shake("$効果ナット名", 500, 5, 2, 0, 0, 1000, Dxl2, false);
	Zoom("$効果ナット名", 0, 1000, 1000, null, true);
	Zoom("$効果ナット名", 500, 1050, 1050, Dxl2, false);
	Fade("$効果ナット名", 50, 1000, null, true);
	Fade("$効果ナット名", 450, 0, null, true);

	Wait(500);
	Shake("$効果ナット名", 500, 5, 2, 0, 0, 1000, Dxl2, false);
	Zoom("$効果ナット名", 0, 1000, 1000, null, true);
	Zoom("$効果ナット名", 200, 1020, 1020, Dxl2, false);
	Fade("$効果ナット名", 50, 1000, null, true);
	Fade("$効果ナット名", 150, 0, null, true);
	Shake("$効果ナット名", 500, 5, 2, 0, 0, 1000, Dxl2, false);
	Zoom("$効果ナット名", 0, 1000, 1000, null, true);
	Zoom("$効果ナット名", 800, 1050, 1050, Dxl2, false);
	Fade("$効果ナット名", 50, 500, null, true);
	Fade("$効果ナット名", 750, 0, null, true);

	Wait(600);
	Shake("$効果ナット名", 500, 5, 2, 0, 0, 1000, Dxl2, false);
	Zoom("$効果ナット名", 0, 1000, 1000, null, true);
	Zoom("$効果ナット名", 500, 1050, 1050, Dxl2, false);
	Fade("$効果ナット名", 50, 800, null, true);
	Fade("$効果ナット名", 450, 0, null, true);

	Wait(400);
	Zoom("$効果ナット名", 0, 1000, 1000, null, true);
	Zoom("$効果ナット名", 150, 1020, 1020, Dxl2, false);
	Fade("$効果ナット名", 0, 1000, null, true);
	Fade("$効果ナット名", 150, 0, null, true);
	Shake("$効果ナット名", 500, 5, 2, 0, 0, 1000, Dxl2, false);
	Zoom("$効果ナット名", 0, 1000, 1000, null, true);
	Zoom("$効果ナット名", 150, 1020, 1020, Dxl2, false);
	Fade("$効果ナット名", 0, 500, null, true);
	Fade("$効果ナット名", 150, 0, null, true);
	Shake("$効果ナット名", 500, 5, 2, 0, 0, 1000, Dxl2, false);
	Zoom("$効果ナット名", 0, 1000, 1000, null, true);
	Zoom("$効果ナット名", 150, 1020, 1020, Dxl2, false);
	Fade("$効果ナット名", 0, 800, null, true);
	Fade("$効果ナット名", 150, 0, null, true);

	Wait(400);

	}

}