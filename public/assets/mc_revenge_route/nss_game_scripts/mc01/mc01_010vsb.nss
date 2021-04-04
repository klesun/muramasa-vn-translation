
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

scene mc01_010vsb.nss_MAIN
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
	#bg001_空a_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$First_Battle_Damage = $First_Battle_Damage+1;

	$PreGameName = $GameName;

	//◆フラグ分岐：デバッグのため選択肢にしてあります
	//次ファイル　"mc01_011vs.nss"
	//◆ダメージフラグが２に達した場合　"mc01_010vsz.nss"
	//$GameName = "mc01_011vs.nss";
//	$SelectGameName="@->"+$GameName+"_SELECT";
//	call_scene $SelectGameName;

	Cockpit_AllFade0();

	if($First_Battle_Damage >= 2){
		$GameName = "mc01_010vsz.nss";
	}else{
		$GameName = "mc01_011vs.nss";
	}

}

scene mc01_010vsb.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_010vs.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}

//●防御失敗
	PrintBG("上背景", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	CreateTextureSP("絵演", 18000, Center, -40, "cg/ev/ev946_村正ＶＳガッタイダー_a.jpg");
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010a]
　もう一度、様子を見よう。
　そしてできるなら、謎の攻撃手段の正体を突き止め
たい。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵演村正", 17100, Center, Middle, "cg/st/3d村正標準_騎航_戦闘a.png");
	CreateTextureSP("絵背景", 17000, InRight, Middle, "cg/bg/resize/bg002_空a_01.jpg");

	Request("絵背景", Smoothing);
	Request("絵演村正", Smoothing);
	Move("絵演村正", 0, @-160, @120, null, true);
	Zoom("絵演村正", 0, 1300, 1300, null, true);

	CreateSE("SE01","se戦闘_動作_空突進02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Shake("絵演村正", 2160000, 1, 1, 0, 0, 1000, null, false);
	Zoom("絵背景", 0, 1500, 1500, null, true);
	Move("絵背景", 60000, 0, @0, null, false);

	Move("絵演村正", 300, @60, @0, DxlAuto, false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("絵演", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010b]
　俺はさっきと同じように敵騎へ向かい、斬り合いの
間に入る瞬間、方向を転じようと試みた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE02","se戦闘_動作_空突進01");
	CreateTextureSP("絵下演背景", 100, Center, Middle, "cg/bg/bg001_空a_01.jpg");
	CreateTextureSP("絵下演合体", 110, Center, Middle, "cg/st/3dガッタイダー_騎突_戦闘a.png");
	Request("絵下演合体", Smoothing);
	Zoom("絵下演合体", 0, 1500, 1500, null, true);
	SetBlur("絵下演合体", true, 2, 500, 60, false);
	Move("絵下演合体", 150, @0, @60, Dxl2, false);
	MusicStart("SE02",0,1000,0,1000,null,false);
	Delete("絵背景*");
	Delete("絵演*");

	SetFwR("cg/fw/fwガッタイダー_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc01/010vs0050b33">
《濃厚でクリーミィな味なのぉー！》


{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/010vs0060a00">
「――ッ!?」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

//◆斧撃
	CreateSE("SE03","se戦闘_攻撃_斧振る01");
	CreateColorSP("絵色黒", 20000, "#000000");
	MusicStart("SE03",0,1000,0,1500,null,false);
	SL_down2(20010,@0, @150,2000);
	SL_downfade2(10);

//◆ずがーん
	CreateSE("SE04","se戦闘_攻撃_鎧_打撃02");
	CreateSE("SE04a","se戦闘_攻撃_鎧攻撃命中03");
	PrintGO("上背景", 30000);
	CreateColorSPadd("絵色白", 20000, "#FFFFFF");
	CreateTextureSP("絵演空背景", 100, Center, -1100, "cg/bg/bg201_旋回演出背景市街地_01.jpg");
	Request("絵演空背景", Smoothing);
	Delete("上背景");
	MusicStart("SE04",0,1000,0,1000,null,false);
	MusicStart("SE04a",0,1000,0,1000,null,false);

//あきゅん「ＣＰ：初期値定義」
	Cockpit_AllFade2();

//あきゅん「ＣＰ：ダメージフラグでライフ調整」
	$合体戦ライフ基本値 = 612;
	if($First_Battle_Damage >= 1){
		$合体戦ライフ調整値 = $合体戦ライフ基本値 - ($First_Battle_Damage*218);
	}else{
		$合体戦ライフ調整値 = $合体戦ライフ基本値;
	}

	$合体戦生命基本値 = 9;
	if($First_Battle_Damage >= 1){
		$合体戦生命調整値 = $合体戦生命基本値 - ($First_Battle_Damage*3);
	}else{
		$合体戦生命調整値 = $合体戦生命基本値 ;
	}

	//SetFont("ＭＳ 明朝", 18, FFFFFF, 000000, MEDIUM, RIGHTDOWN);
	//CreateText("Dt1", 15000, 50, 20, 700, 500, $合体戦ライフ調整値);Wait(32);

	MyLife_Count(0,$合体戦ライフ調整値);
	CP_IHPChange(0,$合体戦生命調整値,null,false);

	CP_SpeedChange(0,550,null,false);
	MyTr_Count(0,475);

	CP_PowerChange(0,880,null,false);

	CP_HighChange(0,1633,null,false);
	CP_AziChange(0,260,null,false);

	CP_AltChange(0,0,null,false);
	//CP_AltChangeA();

	CP_RollBarMove2(0,60,null,true);

//あきゅん「ＣＰ：被弾演出開始」
	$合体戦ライフ減少値 = $合体戦ライフ調整値 - 218;
	$合体戦生命減少値 = $合体戦生命調整値 - 3;

	MyLife_Count(300,$合体戦ライフ減少値);
	CP_IHPChange(300,$合体戦生命減少値,null,false);

	MyTr_Count(300,140);
	CP_SpeedChange2(1500,226,Dxl2,false);

	CP_HighChange2(1500,1444,Dxl2,false);
	CP_AltChange(1500,10,Dxl2,false);
	Move("絵演空背景", 1500, @0, @-60, Dxl2, false);

	Shake("@CP_Frame*", 1500, 0, 30, 0, 0, 1000, Dxl2, false);
	Shake("絵演空背景", 1500, 8, 16, 0, 0, 1000, Dxl2, false);

	CP_RollBarMove("@絵演空背景*", 0, 5, null, false);

	FadeDelete("絵色白", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　……俺は自分の失策を呪った。
　対敵は俺の回避行動を捕捉し、追って攻撃を加えて
きたのだ。

　そうされて、不思議がるべきでもない。
　同じ行動を二度続けてやれば、見切られて当たり前
だ……！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_空突進02");
	CreateSE("SEL01","se戦闘_動作_空走行01_L");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SEL01",0,1000,0,1250,null,true);

//あきゅん「ＣＰ：上昇方向に軌道修正」
	MyTr_Count(300,330);
	CP_PowerChange(2000,870,null,false);
	CP_SpeedChange(2000,387,Axl1,false);

	Move("@絵演空背景*", 2000, @0, @200, DxlAuto, false);
	CP_HighChange(2000,1527,DxlAuto,false);
	CP_AltChange(2000,20,DxlAuto,false);
	FrameShake();

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/010vs0070a01">
《左肩部に被撃……
　損害、中破！》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/010vs0080a00">
「……くっ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　とにかく、態勢を立て直さねば……。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SEL*", 100, 0, null);

//あきゅん「ＣＰ：奥方面に出力アップ」
	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	MyTr_Count(300,390);
	CP_SpeedChange(450,420,Axl1,false);

	CreatePlainSP("絵板写", 1000);
	SetBlur("絵板写", true, 2, 500, 60, false);
	Zoom("絵板写", 800, 2000, 2000, Dxl2, false);

	CP_HighChange(450,1611,DxlAuto,false);
	CP_AltChange(450,28,DxlAuto,false);
	CP_RollBarMove("@絵板写", 800, 180, AxlDxl, false);

	WaitKey(300);

	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	WaitPlay("SE*", null);
	Cockpit_AllFade0();

//◆ダメージ＋１


}

..//ジャンプ指定
//次ファイル　"mc01_011vs.nss"
//◆ダメージフラグが２に達した場合　"mc01_010vsz.nss"

//★選択肢シーン
scene mc01_010vsb.nss_SELECT
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
	SetChoice02("通常","ダメージフラグ２の時");
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
//次ファイル　"mc01_011vs.nss"
				$GameName = "mc01_011vs.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆ダメージフラグが２に達した場合　"mc01_010vsz.nss"
				$GameName = "mc01_010vsz.nss";
		}
	}
}