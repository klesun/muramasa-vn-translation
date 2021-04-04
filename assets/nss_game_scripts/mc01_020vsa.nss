
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

scene mc01_020vsa.nss_MAIN
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
	$PreGameName = $GameName;

	CP_AllDelete();

	$GameName = "mz00_000.nss";

}

scene mc01_020vsa.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_020vs.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}

//●受け止める
	PrintBG("上背景", 30000);
	SoundPlay("@mbgm08",0,1000,true);

	CreateTextureSP("絵空背景", 100, -512, Middle, "cg/bg/bg204_横旋回背景_01.jpg");
	CreateTextureSP("絵演合体立絵", 17100, -338, -502, "cg/st/3dガッタイダー_騎突_戦闘a.png");
	Request("絵演合体立絵", Smoothing);
	Zoom("絵演合体立絵", 0, 100, 100, null, true);

	Cockpit_AllFade0();
	CP_LockOnDelete();
	Request("@レンズ１", UnLock);
	Request("@レンズプロセス１", UnLock);
	Request("レンズ１", UnLock);
	Request("レンズプロセス１", UnLock);
	Delete("@レンズプロセス１");
	Delete("@レンズ*");
	Delete("レンズプロセス１");
	Delete("レンズ*");

	Zoom("絵演合体立絵*", 0, 1000, 1000, null, true);

	CreatePlainEX("絵板写", 18010);
	CreatePlainEX("絵板写二", 18020);
	Fade("絵板写", 0, 400, null, false);
	Fade("絵板写二", 0, 200, null, false);
	Zoom("絵板写", 0, 1100, 1100, Dxl2, false);
	Zoom("絵板写二", 0, 1300, 1300, Dxl2, false);

	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……そのような卑劣な武器など！
　満身の力をもって受け止め、刃先を届かせねば良い
だけの事――

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/020vs0140a00">
「……ッ!?」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　しまった！
　指が痙攣して――<k>力が、全く――――！

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//――――――――――――――――――――――――

//◆斧一閃
	CreateColorSP("絵色黒", 20010, "#000000");
	CreateSE("SE01","se戦闘_攻撃_斧振る01");
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_down2(20010,@0, @-200,2000);
	SL_downfade2(10);

//◆太刀を吹き飛ばしてずがーん。
	CreateSE("SE02","se戦闘_攻撃_剣戟弾く02");
	CreateSE("SE02a","se戦闘_衝撃_衝突01");
	CreateSE("SE02b","se戦闘_破壊_爆発01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE02a",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 22000, "#FFFFFF");
	CreateTextureSPover("絵演効果", 11000, Center, Middle, "cg/ef/ef044_火花a.jpg");
	CreateTextureEXadd("絵演効果上", 11110, Center, Middle, "cg/ef/ef044_火花a.jpg");

	CreateTextureSP("絵航空背景", 1000, Center, -576, "cg/bg/bg201_旋回演出背景市街地_01.jpg");

//あきゅん「ＣＰ：初期値定義」
	Cockpit_AllFade2();

//あきゅん「ＣＰ：ダメージフラグでライフ調整」
	$合体戦ライフ基本値 = 612;
	if($First_Battle_Damage >= 1){
		$合体戦ライフ調整値 = $合体戦ライフ基本値 - ($First_Battle_Damage*218);
	}else{
		$合体戦ライフ調整値 = $合体戦ライフ基本値 ;
	}

	$合体戦生命基本値 = 9;
	if($First_Battle_Damage >= 1){
		$合体戦生命調整値 = $合体戦生命基本値 - ($First_Battle_Damage*3);
	}else{
		$合体戦生命調整値 = $合体戦生命基本値 ;
	}

	MyLife_Count(0,$合体戦ライフ調整値);
	CP_IHPChange(0,$合体戦生命調整値,null,false);

	CP_SpeedChange(0,97,null,false);
	MyTr_Count(0,98);

	CP_PowerChange(0,666,null,false);

	CP_HighChange(0,782,null,false);
	CP_AziChange(0,251,null,false);

	CP_AltChange(0,-14,null,false);
	CP_RollBarMove2(0,0,null,true);

	Delete("絵空背景");
	Delete("絵演合体立絵");
	Delete("絵色黒");
	Delete("絵板*");

	Shake("@CP_Frame", 2000, 30, 30, 0, 0, 1000, Dxl2, false);
	MusicStart("SE02b",0,1000,0,1000,null,false);
	FadeDelete("絵色白", 500, false);
	Zoom("絵演効果", 5000, 5000, 5000, Dxl2, false);
	Shake("絵演効果上", 500, 20, 20, 0, 0, 1000, null, false);
	Zoom("絵演効果上", 500, 1500, 1500, Dxl2, false);
	Fade("絵演効果上", 250, 1000, null, true);
	Fade("絵演効果上", 250, 0, DxlAuto, true);
	FadeDelete("絵演効果", 300, true);

	Wait(250);

	WaitAction("絵色白", null);

//あきゅん「ＣＰ：ダメージを受けて落下する感じに」

	CreateSE("SE03","se戦闘_動作_空急降下01");
	MusicStart("SE03",0,1000,0,1000,null,false);

	CreateColorEXadd("絵色白", 19000, "#FFFFFF");
	Fade("絵色白", 5000, 850, null, false);

	MyLife_Count(300,30);
	CP_IHPChange(300,1,null,false);
	MyTr_Count(300,0);

	CP_SpeedChange(5000,1000,null,false);
	Move("絵航空背景", 5000, @0, @-1728, Axl2, false);
	Zoom("絵航空背景", 5000, 3000, 3000, Axl2, false);
	CP_HighChange(5000,0,Axl2,false);
	CP_AltChange(5000,-90,Dxl2,false);

	Wait(3500);

	SetVolume("SE*", 300, 0, null);
	SetVolume("@mbgm*", 300, 0, null);

//◆村正、散華
	CreateSE("SE03","se戦闘_衝撃_鎧散華");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPover("絵演上", 20100, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	CreateTextureSP("絵演", 20000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	SetVertex("絵演上", 474, 293);
	SetBlur("絵演上", true, 3, 300, 30, false);

	Cockpit_AllFade0();

	Zoom("絵演上", 500, 1100, 1100, Dxl1, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	WaitKey(250);

	Fade("絵演上", 1000, 0, null, false);
	DrawDelete("絵演上", 1000, 100, "worm_01_00_0", true);

//◆ガッタイダー
	PrintGO("上背景", 30000);
	CreateColorSP("絵色黒", 5000, "#000000");
	CreateTextureSP("絵演背景", 100, Center, Middle, "cg/bg/bg202_旋回演出背景山_01.jpg");
	CreateTextureSP("絵演合体", 1000, Center, Middle, "cg/st/3dガッタイダー_立ち_通常c.png");
	Request("絵演合体", Smoothing);
	Zoom("絵演合体", 0, 800, 800, null, true);

	Move("絵演合体", 0, @0, @-120, null, true);
	FadeDelete("上背景", 2000, true);

	CreateSE("SE01a","se戦闘_破壊_鎧01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	SetVolume("SE*", 1000, 600, null);

	CreateSE("SE02","se戦闘_動作_空急降下01");
	MusicStart("SE02",0,1000,0,1000,null,false);

	Zoom("絵演背景", 40000, 4000, 4000, null, false);
	Zoom("絵演合体", 40000, 0, 0, null, false);

	FadeDelete("絵色黒", 1000, true);

	WaitKey(1000);

	SetFwR("cg/fw/fwガッタイダー_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc01/020vs0150b33">
《あはははははははははははっ！
　やった！　あいつを殺したよっ！》

//【小夏】
<voice name="小夏" class="小夏" src="voice/mc01/020vs0160b33">
《だから――だから……
　……ねえ…………》


</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

/*
//あきゅん「演出：気まぐれに正体ちょい見せしてみる」
//あきゅん「演出：がしかし失敗したので保留」
	CreatePlainSP("絵板写", 22000);
	SetFwC("cg/fw/fw小夏_沈む.png");
	CreateStencil("@FwC04/絵演型",20000,0,0,128,"cg/fw/fw小夏_沈む.png",true);
	CreateColorSP("@FwC04/絵演型/色", 20050, "#000000");
	DrawTransition("@FwC04/絵演型/色", 0, 0, 145, 500, null, "cg/data/slide_02_00_0.png", true);

*/

	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 6000, 1000, null, false);

	SetFwR("cg/fw/fwガッタイダー_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc01/020vs0170b33">
《……よろこんで……くれ、る……？》

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,150);//――――――――――――――――――――――――

	Fade("絵色黒", 2000, 1000, null, false);

//◆ガッタイダー、墜落
	CreateSE("SE01","se戦闘_動作_空急降下01");
	MusicStart("SE01",1600,1000,0,1000,null,false);

//◆ぼーん。
	WaitPlay("SE*", null);

	Wait(1000);

	CreateSE("SE02","se戦闘_衝撃_鎧散華");
	MusicStart("SE02",0,1000,0,1000,null,false);

	CreateSE("SE02a","se戦闘_破壊_鎧01");
	MusicStart("SE02a",0,1000,0,1000,null,false);

	Wait(1000);

	ClearWaitAll(3000, 2000);

//◆ゲームオーバー

}

..//ジャンプ指定
//次ファイル