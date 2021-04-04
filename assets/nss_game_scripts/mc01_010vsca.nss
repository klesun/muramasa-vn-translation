
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

scene mc01_010vsca.nss_MAIN
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
	$First_Battle_Damage = $First_Battle_Damage+1;

	$PreGameName = $GameName;

	//◆フラグ分岐：デバッグのため選択肢にしてあります
	//次ファイル　"mc01_011vs.nss"
	//◆ダメージフラグが２に達した場合　"mc01_010vsz.nss"
	//$GameName = "mc01_011vs.nss";

	Cockpit_AllFade0();

	if($First_Battle_Damage >= 2){
		$GameName = "mc01_010vsz.nss";
	}else{
		$GameName = "mc01_011vs.nss";
	}

}

scene mc01_010vsca.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_010vsc.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}

//●上段
//◆村正上段構え
	PrintBG("上背景", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	CreateTextureSP("絵演村正", 17100, Center, Middle, "cg/st/3d村正標準_騎航_戦闘a.png");
	CreateTextureSP("絵背景", 17000, InRight, Middle, "cg/bg/resize/bg002_空a_01.jpg");

	Request("絵背景", Smoothing);
	Request("絵演村正", Smoothing);
	Move("絵演村正", 0, @-100, @120, null, true);
	Zoom("絵演村正", 0, 1300, 1300, null, true);

	FadeDelete("上背景", 500, false);

	CreateSE("SE01","se戦闘_動作_刀構え02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Shake("絵演村正", 2160000, 1, 1, 0, 0, 1000, null, false);
	Zoom("絵背景", 0, 1500, 1500, null, true);
	Move("絵背景", 60000, 0, @0, null, false);

	Move("絵演村正", 300, @-60, @0, DxlAuto, false);
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　あくまでも武者正調の上段を貫く。
　この構えからの一撃こそ最大の打撃力を有する。故
に正調、常道なのだ。

　敵の奇手を恐れて、常道を曲げるべきではない。
　この一撃で勝負を決すれば済む話だ。

　甲鉄の隙間を狙い、一刀を叩き込む！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆近接
	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,800,null,false);
	CreateColorSP("絵黒幕", 20000, "#000000");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	CreateTextureSPadd("絵演上", 18100, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	CreateTextureSP("絵演", 18000, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	Zoom("絵演上", 0, 1300, 1300, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 1000, 0, 10, 0, 0, 1000, Dxl3, false);

	Move("絵演*", 150, -615, @0, Dxl2, false);

	DrawDelete("絵黒幕", 150, 100, "slide_01_03_1", true);

	FadeDelete("絵演上", 200, true);

	SetFwC("cg/fw/fwガッタイダー_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc01/010vs0090b33">
《ハインリッヒは物分りが良かったり》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆敵騎、急加速
	CreateSE("SE01a","se戦闘_動作_空上昇01");
	MusicStart("SE01a",0,1000,0,1200,null,false);
	CreateWindow("絵窓", 19000, 0, 144, 1024, 288, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateColorSP("絵窓/絵演色", 19010, "#336600");
	CreateTextureSPmul("絵窓/絵演背景", 19020, Center, Middle, "cg/ef/ef003_汎用移動.jpg");

	CreateTextureSP("絵窓/絵演立絵装甲", 19100, Center, Middle, "cg/st/3dガッタイダー_騎突_戦闘a.png");
	Request("絵窓/絵演立絵装甲", Smoothing);
	Zoom("絵窓/絵演立絵装甲", 0, 750, 750, null, true);

	Zoom("絵窓/絵演立絵装甲", 300, 1250, 1250, Axl2, false);
	Move("絵窓/絵演立絵装甲", 300, @0, -430, Axl2, false);
	Zoom("絵窓", 300, 1000, 1000, Dxl2, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/010vs0100a01">
《……そんな!?》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/circle_01_00_1.png", true);

	PrintGO("上背景", 30000);
	CreateTextureSPover("絵演効果", 110, Center, Middle, "cg/ef/ef001_汎用移動.jpg");
	CreateTextureSP("絵演背景", 100, Center, Middle, "cg/bg/resize/bg002_空a_01.jpg");
	Request("絵演背景", Smoothing);
	Zoom("絵演背景", 0, 3000, 1000, null, true);

	CreateTextureSP("絵演合体", 100, -660, -610, "cg/st/3dガッタイダー_騎航_戦闘a.png");
	Request("絵演合体", Smoothing);
	Rotate("絵演合体", 0, @0, @-30, @0, null,true);

	CreateTextureSP("絵演村正", 100, 170, -360, "cg/st/3d村正標準_騎航_戦闘a.png");
	Request("絵演村正", Smoothing);
	Rotate("絵演村正", 0, @0, @-10, @0, null,true);

	$村正縮小率=300;
	$合体駄調整=$村正縮小率*1.75;
	Zoom("絵演村正", 0, $村正縮小率, $村正縮小率, null, true);
	Zoom("絵演合体", 0, $合体駄調整, $合体駄調整, null, true);

	Move("絵演合体", 15000, -580, -610, Dxl2, false);
	Move("絵演村正", 15000, 90, -330, Dxl2, false);

	DrawDelete("上背景", 150, 100, "circle_01_00_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　太刀打の間合に踏み込む瞬間……
　合当理に火を入れ、更に加速した!?

　無茶な真似を！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/010vs0110a00">
「おのれ！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆斧と剣。
	CreateColorSP("絵色黒", 20010, "#000000");
	CreateSE("SE02b","se戦闘_攻撃_斧振る01");
	MusicStart("SE02b",0,1000,0,1500,null,false);
	SL_down2(20010,@0, @-200,2000);
	SL_downfade2(10);

	CreateSE("SE02c","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE02c",0,1000,0,1500,null,false);
	SL_leftdown2(20010,@0, @0,2000);
	SL_leftdownfade2(10);

//◆がちーん。
	CreateSE("SE03","se戦闘_攻撃_剣戟弾く02");
	CreateSE("SE03a","se戦闘_衝撃_衝突01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	MusicStart("SE03a",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 22000, "#FFFFFF");
	CreateTextureSP("絵演効果", 21000, Center, Middle, "cg/ef/ef044_火花a.jpg");
	CreateTextureEXadd("絵演効果上", 21110, Center, Middle, "cg/ef/ef044_火花a.jpg");

	CreateTextureSP("絵航空背景", 1000, Center, Middle, "cg/bg/resize/bg201_旋回演出背景市街地a_01.jpg");

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

	CP_SpeedChange(0,512,null,false);
	MyTr_Count(0,440);

	CP_PowerChange(0,870,null,false);

	CP_HighChange(0,1212,null,false);
	CP_AziChange(0,243,null,false);

	CP_AltChange(0,15,null,false);
	CP_RollBarMove2(0,0,null,true);

	Delete("絵演村正");
	Delete("絵演合体");
	Delete("絵演効果");
	Delete("絵演背景");
	Delete("絵色黒");

	FadeDelete("絵色白", 500, false);
	Shake("絵演効果上", 500, 20, 20, 0, 0, 1000, null, false);
	Zoom("絵演効果上", 500, 1500, 1500, Dxl2, false);
	Fade("絵演効果上", 250, 1000, null, true);
	Fade("絵演効果上", 250, 0, DxlAuto, true);
	FadeDelete("絵演効果", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　……どうにかこちらが位置は制した！
　敵騎の下へ入り、剣撃を叩き込む。

　が――
　利いてはいない！　敵騎の甲鉄の最も分厚い箇所に
当たり、弾かれただけだ。

　敵騎は全くの無傷。
　と、いうことは――――

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆隠れの一撃。
//◆がーん。
	CreateSE("SE04","se戦闘_攻撃_鎧_打撃02");
	CreateSE("SE04a","se戦闘_攻撃_鎧攻撃命中03");
	MusicStart("SE04",0,1000,0,1000,null,false);
	MusicStart("SE04a",0,1000,0,1000,null,false);

	Shake("@CP_Frame*", 1500, 0, 30, 0, 0, 1000, Dxl2, false);
	Shake("絵演空背景", 1500, 8, 16, 0, 0, 1000, Dxl2, false);

//あきゅん「ＣＰ：被弾演出開始」
	$合体戦ライフ減少値 = $合体戦ライフ調整値 - 218;
	$合体戦生命減少値 = $合体戦生命調整値 - 3;

	MyLife_Count(300,$合体戦ライフ減少値);
	CP_IHPChange(300,$合体戦生命減少値,null,false);

	MyTr_Count(300,140);
	CP_SpeedChange2(1500,226,Dxl2,false);

	CP_HighChange2(1500,1444,Dxl2,false);
	CP_AltChange(1500,10,Dxl2,false);
	Move("絵航空背景", 1500, @0, @-60, Dxl2, false);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/010vs0120a00">
「がはッッ!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　食らった……
　正体不明の一撃！

　今度は狙い澄まされた、充分な加撃だった。
　損傷は軽くない……！

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

	Move("絵航空背景", 2000, @0, @200, DxlAuto, false);
	CP_HighChange(2000,1527,DxlAuto,false);
	CP_AltChange(2000,20,DxlAuto,false);
	FrameShake();

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/010vs0130a01">
《御堂！》


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/010vs0140a00">
「心配はいい……。
　それより出所を見たか!?」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/010vs0150a01">
《いいえ……。
　でも今のでわかった。あれは<RUBY text="・・">射撃</RUBY>じゃない》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/010vs0160a01">
《何らかの<RUBY text="・・">打撃</RUBY>よ》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　確かにそうだ。
　攻撃を受けた感触で、俺にもわかる。

　だが、どのようにして？
　よもや足を器用に使って蹴りを入れてきているわけ
でもあるまいが……。

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

	Wait(1500);
	Cockpit_AllFade0();

//◆ダメージ＋１


}

..//ジャンプ指定
//次ファイル　"mc01_011vs.nss"
//◆ダメージフラグが２に達した場合　"mc01_010vsz.nss"

//★選択肢シーン
scene mc01_010vsca.nss_SELECT
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