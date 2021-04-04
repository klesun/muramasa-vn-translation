
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

scene mc01_011vsabc.nss_MAIN
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
	#bg204_横旋回背景_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	CP_AllDelete();

	$GameName = "mz00_000.nss";

}

scene mc01_011vsabc.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_011vsab.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}

//●後方
	PrintBG("上背景", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	CreateTextureSP("絵背景", 100, Center, -576, "cg/bg/bg201_旋回演出背景市街地_01.jpg");
	Delete("上背景");

	CreateSE("SE01","se戦闘_動作_空上昇01");
	CreateSE("SEL01","se戦闘_動作_空走行02_L");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

//◆反転ー。
	CreateTextureSP("絵背景", 100, InLeft, Middle, "cg/bg/bg204_横旋回背景_01.jpg");

//あきゅん「ＣＰ：必須定義まとめ」
	Cockpit_AllFade2();

	//$First_Battle_Damage = 1;//デバッグ用

//あきゅん「ＣＰ：ダメージフラグでライフ調整」
	$合体戦ライフ基本値 = 612;
	if($First_Battle_Damage >= 1){
		$合体戦ライフ調整値 = $合体戦ライフ基本値 - ($First_Battle_Damage*218);
	}else{
		$合体戦ライフ調整値 = $合体戦ライフ基本値 ;
	}

	MyLife_Count(0,$合体戦ライフ調整値);

.//ＣＰ演出＜生命値調整＞
//あきゅん「ＣＰ：ダメージフラグで生命値調整」
	$合体戦生命基本値 = 9;
	if($First_Battle_Damage >= 1){
		$合体戦生命調整値 = $合体戦生命基本値 - ($First_Battle_Damage*3);
	}else{
		$合体戦生命調整値 = $合体戦生命基本値 ;
	}

	CP_IHPChange(0,$合体戦生命調整値,null,false);

	MyTr_Count(0,366);
	CP_SpeedChange(0,396,null,false);

	CP_PowerChange(0,790,null,false);

	CP_HighChange(0,961,null,false);
	CP_AziChange(0,101,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMove2(0,45,null,true);

	FrameShake();

	MusicStart("SEL01",2000,1000,0,1500,null,true);
	DrawDelete("絵色黒", 150, 100, "slide_01_01_0", false);

//あきゅん「ＣＰ：横旋回で敵前逃亡」
	MyTr_Count(300,451);
	CP_SpeedChange(300,537,null,false);

	Move("絵背景", 3600, -3996, @0, Dxl2, false);
	CP_AziChange(3600,-79,Dxl1,false);

	Wait(1800);

	MyTr_Count(300,457);
	CP_SpeedChange(300,550,null,false);

	Wait(200);

	CP_RollBarMove2(600,0,Dxl1,false);

	Wait(100);

	MyTr_Count(300,461);
	CP_SpeedChange(300,561,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　方向を……一八〇度変える！
　この際、敵に背中を向けようが尻を向けようが気に
してはいられない。

　とにかく一目散に――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 2000, 0, null);
	SetVolume("@mbgm*", 2000, 0, null);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/011vs0210a01">
《……御堂。
　敵の真ん前でこんなことしてたら、いい的
なんじゃぁ……》


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/011vs0220a00">
「ああ。
　たった今、俺もそう思った」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆ボーディーホーン発射ー。
	CreateSE("SE02","se戦闘_攻撃_高速徹甲弾発射01");
	MusicStart("SE02",0,800,0,1000,null,false);

	$残時間=RemainTime("SE02");
	WaitKey($残時間);

//◆直撃ずがーん。落ちた。
	CreateSE("SE01","se戦闘_攻撃_鎧攻撃命中03");
	CreateSE("SE01a","se戦闘_破壊_鎧03");

	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE01a",0,1000,0,1000,null,false);

//あきゅん「ＣＰ：被弾演出開始」
	MyLife_Count(300,31);
	CP_IHPChange(300,1,null,false);

	MyTr_Count(300,51);
	CP_SpeedChange2(1500,142,Dxl2,false);

	CP_HighChange2(1500,300,Dxl2,false);
	CP_AltChange(1500,-15,Dxl2,false);
	CP_AziChange(3600,-97,Dxl1,false);
	Move("絵演空背景", 1500, @0, @-60, Dxl2, false);

	FrameShakeDelete();
	Shake("@CP_Frame*", 1500, 0, 50, 0, 0, 1000, Dxl2, false);
	Shake("絵演空背景", 1500, 8, 16, 0, 0, 1000, Dxl2, false);

	WaitKey(1000);

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

	Cockpit_AllFade0();
	WaitKey(1000);

	ClearWaitAll(3000, 2000);


//◆ゲームオーバー

..//ジャンプ指定
//次ファイル

}


