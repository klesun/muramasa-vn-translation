
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;

//あきゅん「ＣＰ：デバッグ用」
		$GameDebugSelect = 1;

		Reset();
	}

}

scene mc03_019vsc.nss_MAIN
{

	//CP_AllSet("村正");

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

	$GameName = "mc03_021vsz.nss";

}

scene mc03_019vsc.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc03_019vs.nss"
//前ファイル　"mc03_020vsa.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}

//●受け防御１
	SoundPlay("@mbgm10",0,1000,true);

	PrintBG("上背景", 19999);
	CreateColorSP("絵色黒", 10, "#000000");

	Fade("@box*", 0, 0, null, true);

	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵黒幕", 50000, "#000000");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("絵色黒");
	Delete("上背景");

	CreateTextureSPadd("絵演上", 3100, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	CreateTextureSP("絵演", 3000, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	Zoom("絵演上", 0, 1300, 1300, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 1000, 0, 10, 0, 0, 1000, Dxl3, false);

	Move("絵演*", 150, -615, @0, Dxl2, false);

	DrawDelete("絵黒幕", 150, 100, "slide_01_03_1", true);

	FadeDelete("絵演上", 200, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　太刀を<RUBY text="ヤグラ">櫓形</RUBY>に構え、受け止める！
　大兵剛力の鉄槌撃も、この堅守は打ち崩せまい――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/019vs0060a01">
《ちょっ！
　相手の武器がどんな代物か忘れたの!?》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

	SetVolume("@mbgm*", 300, 0, null);

//◆チェーンソー一閃
	CreateSE("SE01a","se戦闘_攻撃_チェーンソー02_L");
	MusicStart("SE01a",0,1000,0,1000,null,true);

	CreateColorSP("絵色黒地", 20000, "#000000");

	CreateTextureSPadd("絵演上上", 20120, -504, -730, "cg/ef/ef044_火花c.png");
	Zoom("絵演上上", 0, 3000, 3000, null, true);

	CreateTextureSP("絵演", 20100, Center, Middle, "cg/ef/ef012_汎用斜め軌道.jpg");
	DrawTransition("絵演", 200, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", false);
	Zoom("絵演", 0, 1200, 1200, null, true);
	Request("絵演", Smoothing);

	Fade("絵演上上", 200, 0, null, false);
	Move("絵演上上", 200, 44, -150, null, false);
	Zoom("絵演上上", 200, 1000, 1000, null, false);
	Rotate("絵演上上", 200, @0, @0, @36000, null,false);
	Shake("絵演上上", 200, 40, 10, 0, 0, 500, Dxl2, false);

	Shake("絵演", 200, 100, 0, 0, 0, 1000, null, true);

//◆太刀ごとずばーんとやられ。
	CreateColorSP("絵色白", 21000, "#FFFFFF");

	Delete("絵色黒*");
	Delete("絵演*");

	Wait(32);

//あきゅん「ＣＰ：必須定義まとめ」
	Cockpit_AllFade2();

	$装甲基礎=360;
	$装甲計算値=$装甲基礎-($mc03dmg*162);
	MyLife_Count(0,$装甲計算値);

	$体力基礎=5;
	$体力計算値=$体力基礎-($mc03dmg*2);
	CP_IHPChange(0,$体力計算値,null,false);

	$熱量基礎=300;
	$熱量計算値=$熱量基礎-($mc03kacl*250);
	CP_PowerChange(0,$熱量計算値,null,false);

	CP_SpeedChange2(0,331,null,false);
	MyTr_Count(0,256);

	CP_HighChange2(0,1304,null,false);
	CP_AziChange(0,135,null,false);
	CP_AltChange2(0,0,null,false);

	CP_RollBarMove2(0,0,null,true);

	CreateTextureSP("絵背景", 100, Center, -864, "cg/bg/bg202_旋回演出背景山_01.jpg");

	Shake("@CP_Frame", 216000, 20, 20, 0, 0, 1000, null, false);

	FadeDelete("絵色白", 200, true);

	CreateColorEXmul("絵色血", 1100, "#CC0000");
	CreatePlainSPsub("絵板写", 1000);

//あきゅん「ＣＰ：ＣＳ攻撃大を受けたので装甲消耗」
	$mc03dmg=$mc03dmg+2;
	$mc03_dmg_Frag=ture;
	$装甲基礎=360;
	$装甲計算値=$装甲基礎-($mc03dmg*162);
	MyLife_Count(300,$装甲計算値);

//あきゅん「ＣＰ：ＣＳ攻撃大を受けたので体力消耗」
	$mc03_dmg_Frag=ture;
	$体力基礎=5;
	$体力計算値=$体力基礎-($mc03dmg*2);
	CP_IHPChange(300,$体力計算値,null,false);

//あきゅん「ＣＰ：ＣＳ攻撃大を受けたので熱量消耗」
//あきゅん「ＣＰ：死ぬのでここでは０にする」
	$mc03kacl=$mc03kacl+1;
	$mc03_kacl_Frag=ture;
	//$熱量基礎=300;
	//$熱量計算値=$熱量基礎-($mc03kacl*250);
	CP_PowerChange(300,0,null,false);

	CP_SpeedChange2(300,151,null,false);

	Shake("絵背景", 1000, -20, 10, 0, 0, 1000, null, false);
	CreateSE("SE03a","se戦闘_攻撃_鎧_打撃02");
	MusicStart("SE03a",0,1000,0,1000,null,false);
	Wait(50);
	Fade("絵板写", 0, 0, null, true);

	Wait(100);

	Fade("絵板写", 0, 1000, null, true);
	Shake("絵背景", 1000, -20, 10, 0, 0, 1000, null, false);
	CreateSE("SE03b","se戦闘_攻撃_鎧_打撃02");
	MusicStart("SE03b",0,1000,0,1000,null,false);

	Wait(50);
	Fade("絵板写", 0, 0, null, true);

	Wait(100);

	Fade("絵板写", 0, 1000, null, true);

	Shake("絵背景", 1000, -20, 10, 0, 0, 1000, null, false);
	CreateSE("SE03c","se戦闘_攻撃_鎧_打撃02");
	MusicStart("SE03c",0,1000,0,1000,null,false);

	Wait(50);
	Fade("絵板写", 0, 0, null, true);

	Wait(100);

	Fade("絵板写", 0, 1000, null, true);

	Shake("絵背景", 1000, -20, 10, 0, 0, 1000, null, false);
	CreateSE("SE03d","se戦闘_攻撃_鎧_打撃02");
	MusicStart("SE03d",0,1000,0,1000,null,false);

	Wait(50);
	Fade("絵板写", 0, 0, null, true);

	Wait(100);

	Fade("絵板写", 0, 1000, null, true);

	Shake("絵背景", 1000, -20, 10, 0, 0, 1000, null, false);
	CreateSE("SE03e","se戦闘_攻撃_鎧_打撃02");
	MusicStart("SE03e",0,1000,0,1000,null,false);

	Wait(50);
	Fade("絵板写", 0, 0, null, true);

	Wait(100);

	Fade("絵板写", 0, 1000, null, true);

	Shake("絵背景", 1000, -20, 10, 0, 0, 1000, null, false);
	CreateSE("SE03f","se戦闘_攻撃_鎧_打撃02");
	MusicStart("SE03f",0,1000,0,1000,null,false);

	Wait(50);
	Fade("絵板写", 0, 0, null, true);

	Wait(100);

	Fade("絵板写", 0, 1000, null, true);

	SetVolume("SE*", 1600, 0, null);
	CreateSE("SE04","se戦闘_攻撃_鎧攻撃命中03");
	MusicStart("SE04",0,1000,0,1000,null,false);
	Shake("絵背景", 1000, -40, 20, 0, 0, 1000, null, false);
	Shake("@CP_Frame", 1000, 40, 40, 0, 0, 1000, null, false);

	Fade("絵色血", 0, 1000, null, false);
	DrawTransition("絵色血", 0, 0, 175, 500, null, "cg/data/zoom_01_00_0.png", true);
	FadeDelete("絵色血", 300, false);

	Wait(50);
	Fade("絵板写", 0, 0, null, true);

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/019vs0070a00">
「思い出した」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/019vs0080a01">
《遅いんだけどっ!?》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆散華。ガボーン。
	CreateSE("SE03","se戦闘_衝撃_鎧散華");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPover("絵演上", 20100, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	CreateTextureSP("絵演", 20000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	SetVertex("絵演上", 474, 293);
	SetBlur("絵演上", true, 3, 300, 30, false);

	Zoom("絵演上", 500, 1100, 1100, Dxl1, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	WaitKey(250);
	FadeDelete("絵演上", 1000, true);

	ClearWaitAll(3000, 2000);

//◆→●ゲームオーバー

..//ジャンプ指定
//次ファイル　"mc03_021vsz.nss"

}




