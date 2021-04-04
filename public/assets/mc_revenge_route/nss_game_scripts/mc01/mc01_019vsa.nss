
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

scene mc01_019vsa.nss_MAIN
{

	

	CP_AllSet("村正");


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

	//◆フラグ分岐：デバッグのため選択肢にしてあります
	//◆"mc01_010vscb.nss"にて見切りフラグがある場合　"mc01_019vsaa.nss"
	//次ファイル　"mc01_019vsab.nss"
	//$GameName = "mc00_001.nss";

//	$SelectGameName="@->"+$GameName+"_SELECT";
//	call_scene $SelectGameName;

	if($mc01_010vscb_奇襲見切り==true){$GameName = "mc01_019vsaa.nss";}
	else{$GameName = "mc01_019vsab.nss";}

}

scene mc01_019vsa.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_019vs.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}
	//$mc01_010vscb_奇襲見切り=true;
	//$First_Battle_Damage = 1;

//●上段
//◆村正上段
	SoundPlay("@mbgm10",0,1000,true);

	PrintBG("上背景", 30000);
	CreateSE("SE01","se戦闘_動作_空突進01");
	CreateColorSP("絵色黒", 20000, "#000000");

	CreateTextureSP("絵背景", 100, InRight, Middle, "cg/bg/bg204_横旋回背景_01.jpg");
	Move("絵背景", 80000, 0, @0, null, false);

	CreateTextureSP("絵演村正", 1000, Center, Middle, "cg/st/3d村正標準_騎航_戦闘a.png");
	Shake("絵演村正", 2160000, 2, 1, 0, 0, 1000, null, false);
	Zoom("絵演村正", 0, 5000, 5000, null, true);
	Move("絵演村正", 0, @500, @1152, null, true);
	SetBlur("絵演村正", true, 2, 400, 60, true);

	$SYSTEM_effect_rain_dencity = 16;
	$SYSTEM_effect_rain_speed = 128;
	CreateEffect("絵効果線", 19990, Center, Middle, 288, 512, "Rain");
	SetAlias("絵効果線","絵効果線");
	Rotate("絵効果線", 0, @0, @0, @-90, null,true);
	Zoom("絵効果線", 0, 2000, 2000, null, true);
	Move("絵効果線", 0, @400, @0, null, true);

/*
	CreateTextureSP("絵演村正", 1000, OutRight, Middle, "cg/st/3d村正標準_騎航_戦闘b.png");
//	Move("絵演村正", 0, @588, @-85, null, true);
	Move("絵演村正", 0, @0, @-85, null, true);
	Shake("絵演村正", 2160000, 2, 1, 0, 0, 1000, null, false);
	Move("絵演村正", 7500, @-800, @0, DxlAuto, false);
*/


	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("上背景", 150, 100, "slide_01_03_1", true);

	//Move("絵演村正", 600, @-500, @-1152, null, false);
	BezierMove("絵演村正", 600, (@0,@0){@-1800,@-400}{@-1200,@-800}(@-200,@-1300), null, false);
	Zoom("絵演村正", 600, 1000, 1000, null, false);

	DrawDelete("絵色黒", 150, 100, "slide_01_03_1", true);

	Wait(950);

	CreateSE("SE00","se戦闘_動作_空上昇01");
	MusicStart("SE00",0,1000,0,1000,null,false);
	CreateColorEXadd("絵色白", 20000, "#FFFFFF");
	Fade("絵色白", 150, 1000, null, false);
	Move("絵演村正", 300, @-1500, @0, Dxl2, true);

	Fade("絵色白", 600, 0, null, false);
	DrawDelete("絵色白", 1200, 1000, "slide_05_00_1", false);

	Wait(600);

	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵効果線");
	Delete("絵演村正");
	Delete("絵色白");
	Delete("絵背景");

//◆敵、斧撃
	CreateSE("SE02","se戦闘_攻撃_斧振る01");
	MusicStart("SE02",0,1000,0,1500,null,false);
	SL_rightdown2(20010,@120, @120,2000);
	SL_rightdownfade2(10);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　間合に踏み込む刹那、母衣を打って<RUBY text="あし">速力</RUBY>をわずかに
鈍らせ、対手の機を外す。
　そして、

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆袈裟一閃
	CreateColorSP("絵色黒", 5000, "#000000");
	CreateSE("SE01","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_leftdown2(20010,@0, @0,1500);
	SL_leftdownfade2(10);

//◆ガキーン
	CreateSE("SE02a","se戦闘_攻撃_剣戟弾く02");
	MusicStart("SE02a",0,1000,0,850,null,false);

	CreateColorSP("絵色白", 30000, "#FFFFFF");
	Delete("絵色黒");

	CreateTextureSP("絵空背景", 100, Center, Middle, "cg/bg/resize/bg201_旋回演出背景市街地a_01.jpg");
	CreateTextureSPadd("絵空背景覆", 110, Center, Middle, "cg/bg/resize/bg201_旋回演出背景市街地a_01.jpg");


//あきゅん「ＣＰ：必須定義まとめ」
	Cockpit_AllFade2();

//あきゅん「ＣＰ：ダメージフラグでライフ調整」
	$合体戦ライフ基本値 = 612;
	if($First_Battle_Damage >= 1){
		$合体戦ライフ調整値 = $合体戦ライフ基本値 - ($First_Battle_Damage*218);
	}else{
		$合体戦ライフ調整値 = $合体戦ライフ基本値 ;
	}

	MyLife_Count(0,$合体戦ライフ調整値);

//あきゅん「ＣＰ：ダメージフラグで生命値調整」
	$合体戦生命基本値 = 9;
	if($First_Battle_Damage >= 1){
		$合体戦生命調整値 = $合体戦生命基本値 - ($First_Battle_Damage*3);
	}else{
		$合体戦生命調整値 = $合体戦生命基本値 ;
	}

	CP_IHPChange(0,$合体戦生命調整値,null,false);

	MyTr_Count(0,439);
	CP_SpeedChange(0,517,null,false);

	CP_PowerChange(0,710,null,false);

	CP_HighChange(0,1728,null,false);
	CP_AziChange(0,94,null,false);
	CP_AltChange(0,1,null,false);
	CP_AltChangeA();

	CP_RollBarMove2(0,0,null,true);

	FadeDelete("絵空背景覆", 1500, false);
	Shake("絵空背景*", 1000, 0, 30, 0, 0, 1000, Dxl3, false);
	Shake("@CP_Frame*", 1500, 0, 60, 0, 0, 1000, Dxl2, false);
	FadeDelete("絵色白", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　……岩を叩くに似る、硬く重い手応え。
　しかし着実に損傷を積み重ねてはいる。

　このまま続けてゆけば――

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆奇襲。ガーン。
	CreateSE("SE01","se戦闘_攻撃_斧振る01");
	MusicStart("SE01",0,1000,0,1500,null,false);

//あきゅん「ＣＰ：被弾演出」
	CreateColorSPmul("絵色血", 17000, "#CC0000");
	DrawTransition("絵色血", 0, 0, 175, 500, null, "cg/data/circle_01_00_1.png", true);
	FadeDelete("絵色血", 300, false);

	CreateSE("SE01a","se戦闘_衝撃_衝突01");
	CreateSE("SE01aa","se戦闘_攻撃_鎧攻撃命中03");

	$合体戦ライフ減少値 = $合体戦ライフ調整値 - 218;
	MyLife_Count(300,$合体戦ライフ減少値);

	$合体戦生命減少値 = $合体戦生命調整値 - 3;
	CP_IHPChange(300,$合体戦生命減少値,null,false);

	CP_SpeedChange(300,382,null,false);
	MyTr_Count(300,359);

	CP_PowerChange(300,690,null,false);

	CP_HighChange(2000,1688,null,false);
	CP_AziChange(300,89,null,false);

	CP_AltChange(300,-1,null,false);

	Shake("絵空背景*", 1000, 60, 0, 0, 0, 1000, Dxl3, false);
	Shake("@CP_Frame*", 1500, 60, 0, 0, 0, 1000, Dxl2, false);

	MusicStart("SE01a",0,1000,0,1500,null,false);
	MusicStart("SE01aa",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/019vs0010a01">
《……またっ！》


{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/019vs0020a00">
「不覚……ッ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色黒", 30000, "#000000");
	Fade("絵色黒", 300, 1000, Dxl2, true);
	Cockpit_AllFade0();

}

..//ジャンプ指定
//◆"mc01_010vscb.nss"にて見切りフラグがある場合　"mc01_019vsaa.nss"
//次ファイル　"mc01_019vsab.nss"

//★選択肢シーン
scene mc01_019vsa.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	OnBG(100,"bg006_雄飛の部屋_01.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("見切りフラグあり","通常");
	select
	{
		//カーソル用
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @選択肢１
		{
			ChoiceA02();
//◆"mc01_010vscb.nss"にて見切りフラグがある場合　"mc01_019vsaa.nss"
				$GameName = "mc01_019vsaa.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//次ファイル　"mc01_019vsab.nss"
				$GameName = "mc01_019vsab.nss";
		}
	}
}