
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

scene mc03_020vsba.nss_MAIN
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

scene mc03_020vsba.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc03_020vsb.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}

//$mc03_018vsb_R2Flag="東";
//$mc03_018vsb_R2Flag="西";
//$mc03_018vsb_R2Flag="南";
//$mc03_018vsb_R2Flag="北";

//●離脱失敗
//◆速度が伸びない
//◆ガタガタ揺れる。おかしな挙動
	SoundPlay("@mbgm10",0,1000,true);

	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 20000, "#000000");

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

	CP_SpeedChange(0,168,null,false);
	MyTr_Count(0,170);

	CP_HighChange(0,1218,null,false);

	CP_AziChange(0,0,null,false);
	if($mc03_018vsb_R2Flag=="東"){
		CP_AziChange(300,182,DxlAuto,false);
	}else if($mc03_018vsb_R2Flag=="西"){
		CP_AziChange(300,356,DxlAuto,false);
	}else if($mc03_018vsb_R2Flag=="南"){
		CP_AziChange(300,86,DxlAuto,false);
	}else if($mc03_018vsb_R2Flag=="北"){
		CP_AziChange(300,274,DxlAuto,false);
	}else{
		$雰囲気方位計=Random(10)+40;
		CP_AziChange(0,$雰囲気方位計,Dxl2,false);
	}

	CP_AltChange(0,-6,null,false);
	CP_AltChangeA();

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,null,true);
	FrameShake();

	CreateTextureSP("絵背景空", 100, Center, -576, "cg/bg/bg202_旋回演出背景山_01.jpg");
	SetBlur("絵背景空", true, 3, 500, 100, false);
	CreateSurfaceEX("絵効果サフ", 10000,1000,"@絵背景空");
	Fade("絵効果サフ", 0, 1000, null, true);

	Move("絵背景空", 900, @0, @-576, Dxl1, false);
	Zoom("絵効果サフ", 216000, 2000, 2000, null, false);

	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1100,null,false);

	Delete("上背景");
	DrawTransition("絵色黒", 300, 1000, 0, 100, Dxl1, "cg/data/slide_02_01_0.png", true);
	Delete("絵色黒");

	SetFrequency("SE01", 400, 600, null);

	WaitAction("絵背景空", null);
	MoveFFP1("@絵背景空",4000);

	CreateSE("SEL01a","se戦闘_動作_空走行01_L");
	CreateSE("SEL01b","se戦闘_動作_空走行02_L");
	MusicStart("SEL01a",2000,750,0,800,null,true);
	MusicStart("SEL01b",2000,750,0,1200,null,true);

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/020vs0080a00">
「……ぬう!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　しまった。
　先の一合――少ない体力を更に削って攻撃を掛けた
せいか！

　合当理に注ぐべき熱量が足りない。
　速度がまるで上がらない。

　これでは、離脱は不可能だ！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/020vs0090a01">
《御堂、後ろから――》


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/020vs0100a00">
「止むを得まい。
　村正、反転！」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/020vs0110a00">
「交戦を継続――」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆がぼーん。ボーディホーン発射音
	CreateSE("SE02","se戦闘_攻撃_高速徹甲弾発射01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 19010, Center, Middle, "cg/ev/ev922_ガッタイダーボーディホーン準備_b.jpg");
	CreateTextureSP("絵演", 19000, Center, Middle, "cg/ev/ev922_ガッタイダーボーディホーン準備_b.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演上", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

//◆食らった。ずがーんぼかーん。
	SetVolume("SEL*", 100, 0, null);
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE03","se戦闘_攻撃_鎧攻撃命中03");
	CreateSE("SE03a","se戦闘_破壊_鎧03");

	MusicStart("SE03",0,1000,0,1000,null,false);
	MusicStart("SE03a",0,1000,0,1000,null,false);

	CreateColorSPadd("絵色白", 20000, "#FFFFFF");
	Wait(12);
	Delete("絵演*");

	PrintGO("上背景", 30000);
	CreateColorSPadd("絵色白", 20000, "#FFFFFF");
	CreateTextureSP("絵演空背景", 100, Center, -1152, "cg/bg/bg202_旋回演出背景山_01.jpg");

	Delete("上背景");

//あきゅん「ＣＰ：被弾でパラメータ変動」
	Shake("@CP_Frame*", 2000, 50, 50, 0, 0, 1000, Dxl2, false);
	Shake("絵演空背景", 2000, 0, 50, 0, 0, 1000, Dxl2, false);

	FadeDelete("絵色白", 2000, false);

	Wait(1700);

	MyLife_Count(300,72);
	CP_IHPChange(300,1,null,true);

	WaitAction("@絵色白", null);

	CreateSE("SE03","se戦闘_衝撃_鎧散華");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPover("絵演上", 19910, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	CreateTextureSP("絵演", 19900, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	SetVertex("絵演上", 474, 293);
	SetBlur("絵演上", true, 3, 300, 100, false);

	Cockpit_AllFade0();

	Zoom("絵演上", 500, 1100, 1100, Dxl1, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	WaitKey(250);
	FadeDelete("絵演上", 1000, true);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　……交戦を継続、しようとしたのだが。
　どうしてか、俺にその機会は与えられなかった。

　未来永劫。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(3000, 2000);

//◆→●ゲームオーバー

..//ジャンプ指定
//次ファイル　"mc03_021vsz.nss"

}


