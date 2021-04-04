

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

scene mc01_011vsb.nss_MAIN
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

scene mc01_011vsb.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_011vs.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}

//●戦域離脱
	PrintBG("上背景", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	CreateTextureSP("絵演背景", 100, Center, InBottom, "cg/bg/resize/bg002_空a_01.jpg");
	Move("絵演背景", 0, @0, @200, Dxl2, false);
	Delete("上背景");

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/011vs0230a00">
「村正。方針変更。
　戦域を離脱する」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/011vs0240a01">
《……諒解》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　俺が急ぐ理由をまだ知らない村正は不平感を<RUBY text="にじ">滲</RUBY>ませ
ていたが、それでも反論はせず従った。
　敵への戦意より、その不気味さへの忌避感が優った
のかもしれない。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆軌道変えて離脱
	CreateSE("SE01","se戦闘_動作_空上昇01");
	CreateSE("SEL01","se戦闘_動作_空走行02_L");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 20000, "#000000");
	Zoom("絵演背景", 300, 1500, 1500, Dxl2, false);
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Delete("絵演背景");
	CreateTextureSP("絵空背景", 100, 100, -1200, "cg/bg/bg201_旋回演出背景市街地_01.jpg");
	Request("絵空背景", Smoothing);
	//SetBlur("絵空背景", true, 2, 500, 60, false);
	Move("絵空背景", 650, @0, @300, Dxl2, false);

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

	MyTr_Count(0,402);
	CP_SpeedChange(0,482,null,false);

	CP_PowerChange(0,870,null,false);

	CP_HighChange(0,1287,null,false);
	CP_AziChange(0,281,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMove("@絵空背景", 0, -10, Dxl2, false);

	FrameShake();

	MusicStart("SEL01",2000,1000,0,1500,null,true);
	DrawDelete("絵色黒", 150, 100, "circle_01_00_1", true);

//あきゅん「ＣＰ：上昇しながら針路をとる演出」
	MyTr_Count(400,482);
	CP_SpeedChange(400,588,null,false);

	CP_PowerChange(400,800,null,false);

	CP_HighChange(400,1513,null,false);

	CP_AziChange(400000,261,DxlAuto,false);
	CP_AltChange(400,0,null,false);

	CP_RollBarMove2(5150,-3,null,false);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/011vs0250a00">
「追ってくるか？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/011vs0260a01">
《……ええ。
　しかもかなり速い》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/011vs0270a01">
《このままだとすぐに追いつかれる……
　どうするの？》


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/011vs0280a00">
「方針の変更はない。
　撤退を続行する」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/011vs0290a01">
《あの怪物に尻を<RUBY text="かじ">齧</RUBY>らせるつもりなの？》


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/011vs0300a00">
「……尻傷は武者の恥辱か」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　逃げようとして後ろから襲われる以外に、そんな傷
を武者が負う状況はまず有り得ないためだ。
　尻の傷は最大の不名誉の刻印であり、切腹をもって
<RUBY text="そそ">雪</RUBY>ぐべき恥とさえされている。

　だが今回、その心配は要るまい。
　敵の速度は相当らしいが、それでも斧が届くところ
まで近付かれる前に目的地へ着ける。

　……などと考えている間に。<k>
　建朝寺が見え
</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＳＥ：ボーディーホーン発射
	CreateSE("SE02","se戦闘_攻撃_高速徹甲弾発射01");
	MusicStart("SE02",0,800,0,1000,null,false);

	$残時間=RemainTime("SE02")/2;
	WaitKey($残時間);

	SetVolume("SE*", 100, 0, null);
	SetVolume("@mbgm*", 100, 0, null);

//◆村正
//◆砲弾直撃。ずがーん。散華。
	CreateSE("SE01","se戦闘_攻撃_鎧攻撃命中03");
	CreateSE("SE01a","se戦闘_破壊_鎧03");

	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE01a",0,1000,0,1000,null,false);

//あきゅん「ＣＰ：被弾演出開始」
	MyLife_Count(300,31);
	CP_IHPChange(300,1,null,false);

	MyTr_Count(300,51);
	CP_SpeedChange2(1500,142,Dxl2,false);

	CP_HighChange2(1500,1519,Dxl2,false);
	CP_AltChange(1500,20,Dxl2,false);
	Move("絵演空背景", 1500, @0, @-60, Dxl2, false);

	FrameShakeDelete();
	Shake("@CP_Frame*", 1500, 0, 50, 0, 0, 1000, Dxl2, false);
	Shake("絵演空背景", 1500, 8, 16, 0, 0, 1000, Dxl2, false);

	WaitKey(1000);

	CreateSE("SE02","se戦闘_衝撃_鎧散華");
	MusicStart("SE02",0,1000,0,1000,null,false);

	CreateColorEXadd("絵色白", 30000, "#FFFFFF");
	Fade("絵色白", 300, 1000, Axl2, true);

//◆以下笑い声、全部重ねる。
//◆テキスト無し。

	WaitKey(1000);

	CreateColorEX("絵色黒", 30000, "#000000");
	Fade("絵色黒", 5000, 1000, null, false);

	CreateVOICE("小夏","mc01/011vs0301");
	MusicStart("小夏",0,1000,0,1000,null,false);

	$残時間=RemainTime("小夏");
	WaitKey($残時間);

	CreateColorEX("絵色黒弐", 30010, "#000000");
	Fade("絵色黒弐", 2000, 1000, null, true);

	SetVolume("小夏", 2500, 0, null);

	WaitPlay("小夏", null);

	ClearWaitAll(0, 2000);


/*

	SetFwC("cg/fw/fw小夏_憎悪.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc01/011vs0310b33">
《あーっはっはっはっはっはっはっはっ！
　ふふふふ、あははははははははははは！》

{	NwC("cg/fw/nwその他.png");}
//【ボーディ】
<voice name="ボーディ" class="ボーディ" src="voice/mc01/011vs0320b07">
《ひゃはははははははははははははは！
　ひあーっはっはっはっはっはっはっは！》

{	NwC("cg/fw/nwその他.png");}
//【ライター】
<voice name="ライター" class="ライター" src="voice/mc01/011vs0330b09">
《きひひひひひひひひひひひひっ！
　けぇーへへへへへへへへへへへへへへ！》

{	NwC("cg/fw/nwその他.png");}
//【レフター】
<voice name="レフター" class="レフター" src="voice/mc01/011vs0340b12">
《ぐひゃひゃひゃひゃひゃひゃ！
　ぐふっ、ぐふっ、ぐふふふふふふふふっ》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

*/


//◆ゲームオーバー

..//ジャンプ指定
//次ファイル

}


