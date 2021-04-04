
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

scene mc01_021vsaba.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	$First_Battle_Damage=$First_Battle_Damage+1;

	$PreGameName = $GameName;

	//◆フラグ分岐：デバッグのため選択肢にしてあります
	//次ファイル　"mc01_022vs.nss"
	//◆ダメージフラグが２に達した場合　"mc01_010vsz.nss"
	//$GameName = "mc00_001.nss";
	//$SelectGameName="@->"+$GameName+"_SELECT";
	//call_scene $SelectGameName;

	Cockpit_AllFade0();

	if($First_Battle_Damage >= 2){
		$GameName = "mc01_010vsz.nss";
	}else{
		$GameName = "mc01_022vs.nss";
	}


}

scene mc01_021vsaba.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_021vsab.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}
	//$First_Battle_Damage = 1;//デバッグ用

//●禽楽
	SoundPlay("@mbgm08",0,1000,true);

	PrintBG("上背景", 30000);
	CreateTextureSP("絵演背景", 100, InRight, Middle, "cg/bg/bg204_横旋回背景_01.jpg");
	CreateTextureSP("絵演立絵", 1000, Center, Middle, "cg/st/3d村正標準_騎航_戦闘d.png");
	Move("絵演立絵", 0, @226, @-50, null, true);
	Delete("上背景");

	CreateSE("SEL01a","se戦闘_動作_空走行01_L");
	CreateSE("SEL01b","se戦闘_動作_空走行02_L");
	MusicStart("SEL01a",2000,750,0,1000,null,true);
	MusicStart("SEL01b",2000,750,0,1500,null,true);

	$SYSTEM_effect_rain_dencity = 16;
	$SYSTEM_effect_rain_speed = 128;
	CreateEffect("絵効果線", 19990, Center, Middle, 288, 512, "Rain");
	Fade("絵効果線", 0, 0, null, true);
	SetAlias("絵効果線","絵効果線");
	Rotate("絵効果線", 0, @0, @0, @-90, null,true);
	Zoom("絵効果線", 0, 2000, 2000, null, true);
	Move("絵効果線", 0, @400, @0, null, true);

	DrawTransition("絵効果線", 0, 0, 600, 100, null, "cg/data/slide_01_03_1.png", true);
	Fade("絵効果線", 3000, 1000, null, false);

	Shake("絵演立絵", 600000, 2, 0, 0, 0, 1000, null, false);

	Move("絵演立絵", 6000, @-60, @0, DxlAuto, false);
	Move("絵演背景", 200000, -100, @0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　太刀打の間合。
　俺は上へも下へも逃れず、直進を続ける。

　そして<RUBY text="からだ">騎体</RUBY>と平行に構えた太刀の切先を――敵騎の
<RUBY text="カメラ">眉庇</RUBY>めがけて突き出す！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwガッタイダー_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc01/021vs0320b33">
《――!?》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　この一突が首尾良く目標を捉え決勝打になるなどと、
そんな安い期待は抱いていない。
　高速で駆ける武者に点攻撃を当てるだけでも困難で
あるのに、標的を目へ限定しては達人の手にすら余る。

　だが、構わなかった。
　吉野御流合戦礼法〝<RUBY text="とりのがく">禽楽</RUBY>〟の企図はあくまで心理的
効果にある。

　どれほど猛り狂った者でも、たとえ猛獣そのもので
あっても、突然に目を狙われては怯まずにいられない。
　誰もが持つ本能的弱点を攻めて威勢を奪う――それ
こそがこの技の狙うところだ。

　ほんの一寸でも敵の腰が引けたなら、そこに活路を
見出せる！

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_空突進01");
	CreateColorEXadd("絵色白", 19000, "#FFFFFF");

	Move("絵演立絵", 6000, @-60, @0, null, false);
	Move("絵演背景", 5000, -100, @0, AxlDxl, false);

	Wait(500);

	Fade("絵色白", 0, 1000, null, true);
	SetBlur("絵演立絵", true, 2, 500, 60, false);

	Wait(16);

	SetVolume("SE*", 100, 0, null);
	MusicStart("SE01",0,1000,0,1000,null,false);

	Fade("絵色白", 300, 0, Dxl1, false);
	DrawDelete("絵色白", 600, 100, "slide_05_00_1", false);

	Move("絵演立絵", 300, @-2000, @0, Dxl2, false);
	Move("絵演背景", 4000, -100, @0, Dxl3, false);

	$残時間=RemainTime("SE01");
	WaitKey($残時間);

	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

//◆刺突ＶＳ斧撃
	SL_down2(20100,@0, @-10,2000);

	CreateSE("SE02","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE02",0,1000,0,2000,null,false);
	CreateTextureSPadd("絵演上", 20010, Center, Middle, "cg/ef/ef017_汎用正面軌道.jpg");
	CreateTextureSP("絵演", 20000, Center, Middle, "cg/ef/ef017_汎用正面軌道.jpg");
	SetVertex("絵演上", center, bottom);

	Zoom("絵演上", 0, 1200, 10000, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);

	Delete("絵効果線*");
	FadeDelete("絵演上", 200, false);

	CreateSE("SE02a","se戦闘_攻撃_斧振る01");
	MusicStart("SE02a",0,1000,0,1500,null,false);
	SL_downfade2(10);

//◆斧がずがーんと
	CreateSE("SE03","se戦闘_攻撃_剣戟弾く02");
	CreateSE("SE03a","se戦闘_衝撃_衝突01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	MusicStart("SE03a",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 22000, "#FFFFFF");

	Delete("絵演*");
	CreateTextureSP("絵演空演出後", 100, Center, -945, "cg/bg/bg201_旋回演出背景市街地_01.jpg");

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

	MyTr_Count(0,523);
	CP_SpeedChange2(0,515,null,false);

	CP_PowerChange(0,620,null,false);

	CP_HighChange2(0,1285,null,false);

	CP_AziChange(0,21,null,false);

	CP_AltChange(0,0,null,false);

	CP_RollBarMove2(0,0,null,true);

	Shake("@CP_Frame*", 2000, 50, 50, 0, 0, 1000, Dxl2, false);
	Shake("絵演空演出後", 2000, 0, 50, 0, 0, 1000, Dxl2, false);

	CP_PowerChange(2000,550,null,false);

	MyTr_Count(600,377);
	CP_SpeedChange2(2000,371,null,false);


	Delete("絵色黒");
	FadeDelete("絵色白", 2000, false);

	Wait(1700);

	$合体戦ライフ減少値 = $合体戦ライフ調整値 - 218;
	MyLife_Count(300,$合体戦ライフ減少値);

	$合体戦生命減少値 = $合体戦生命調整値 - 3;
	CP_IHPChange(300,$合体戦生命減少値,null,false);

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/021vs0330a00">
「ぐっ――」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/021vs0340a01">
《左肩甲鉄に直撃！
　でも……破られてはいない！》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/021vs0350a01">
《一瞬気を散らしたわね、あいつ……！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色黒", 19000, "#000000");
	Fade("絵色黒", 500, 1000, null, true);

	Cockpit_AllFade0();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　……良し。
　どうにか、凌ぎ切った……。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆ダメージ＋１

//◆これで２に達してなければ
//◆→●生存

}

..//ジャンプ指定
//次ファイル　"mc01_022vs.nss"
//◆ダメージフラグが２に達した場合　"mc01_010vsz.nss"

//★選択肢シーン
scene mc01_021vsaba.nss_SELECT
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
	SetChoice02("通常","ダメージフラグ２");
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
//次ファイル　"mc01_022vs.nss"
				$GameName = "mc01_022vs.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆ダメージフラグが２に達した場合　"mc01_010vsz.nss"
				$GameName = "mc01_010vsz.nss";
		}
	}
}


