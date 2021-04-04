
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

scene mc01_011vsabb.nss_MAIN
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
	#bg202_旋回演出背景山a_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	Cockpit_AllFade0();

	$GameName = "mc01_012vs.nss";

}

scene mc01_011vsabb.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_011vsab.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}

//●上
	PrintBG("上背景", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	CreateTextureSP("絵背景", 100, Center, -576, "cg/bg/bg201_旋回演出背景市街地_01.jpg");
	Delete("上背景");

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/011vs0160a00">
「上だ！
　敵の背面方向を取る！」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/011vs0170a00">
「構造的にそちらへは撃てない筈だ！」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/011vs0180a01">
《諒解！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_空上昇01");
	CreateSE("SEL01","se戦闘_動作_空走行02_L");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

//◆そーする。
	CreateTextureSP("絵背景", 100, Center, InBottom, "cg/bg/bg202_旋回演出背景山a_01.jpg");
	SetBlur("絵背景", true, 3, 500, 50, false);


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

	CP_RollBarMove2(0,0,null,true);

	FrameShake();

	MusicStart("SEL01",2000,1000,0,1500,null,true);
	DrawDelete("絵色黒", 150, 100, "slide_02_01_1", false);

//あきゅん「ＣＰ：ピッチ上げて上昇上昇」
	MyTr_Count(300,470);
	CP_SpeedChange(3000,537,null,false);

	CP_AltChange(10000,52,null,false);
	CP_HighChange(150000,1847,null,false);

	Move("絵背景", 150000, @0, -576, Dxl2, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　<RUBY text="ピッチ">兜角</RUBY>を引き上げ、上へ――上へ。
　敵が砲口を向けようのない、その背面へ。

　村正は機動性能の全てを駆使して俺の要望に応える。
　だが――わかる。敵もまた兜角を上げて、俺を射界
に収めようと追ってきている。

　逃れられるか――――!?

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	SetVolume("SEL*", 100, 1, null);

//◆逃げー。
//◆ボーディーホーン発射
	CreateSE("SE02","se戦闘_攻撃_高速徹甲弾発射01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 17100, Center, Middle, "cg/ev/ev922_ガッタイダーボーディホーン準備_a.jpg");
	CreateTextureSP("絵演", 17000, Center, Middle, "cg/ev/ev922_ガッタイダーボーディホーン準備_a.jpg");

	CreateTextureSPadd("絵演効果", 18000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	Zoom("絵演効果", 300, 2000, 2000, AxlDxl, false);
	Fade("絵演効果", 300, 0, null, false);
	DrawDelete("絵演効果", 300, 100, "circle_01_00_1", false);

	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演上", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	WaitKey(600);

//◆当たらず。ちょっと掠めた？
	CreateSE("SE03","se戦闘_攻撃_鎧かする01");
	CreateSE("SE03a","se戦闘_攻撃_剣戟弾く02");

	MusicStart("SE03",0,1000,0,1000,null,false);
	MusicStart("SE03a",0,1000,0,1500,null,false);

	CreateColorSPadd("絵色白", 20000, "#FFFFFF");
	Fade("絵色白", 300, 1000, Axl2, true);

	WaitKey(1000);

	Delete("絵演");
	Cockpit_AllFade0();

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg002_空a_01.jpg");

	SetVolume("SEL*", 4000, 1000, null);
	FadeDelete("絵色白", 2000, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/011vs0190a01">
《な、なんかすごいの来た……！
　でも、外れたっ！》


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/011vs0200a00">
「良し……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　……どうにか虎口を逃れたか。
　危ういところだった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


..//ジャンプ指定
//次ファイル　"mc01_012vs.nss"

}



