
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

scene mc01_011vsa.nss_MAIN
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
	#ev922_ガッタイダーボーディホーン準備_a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	Cockpit_AllFade0();

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene mc01_011vsa.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_011vs.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}

//●戦闘続行
	PrintBG("上背景", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	CreateTextureSP("絵演背景", 100, Center, InBottom, "cg/bg/resize/bg002_空a_01.jpg");
	Move("絵演背景", 0, @0, @200, Dxl2, false);
	Delete("上背景");

	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 20000, "#000000");
	Zoom("絵演背景", 300, 1500, 1500, Dxl2, false);
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Delete("絵演背景");
	CreateTextureSP("絵背景50", 1000, Center, Middle, "cg/bg/resize/bg201_旋回演出背景市街地a_01.jpg");
	CreateTextureSP("絵背景100", 500, Center, -5000, "cg/bg/bg201_旋回演出背景市街地_01.jpg");
	Move("絵背景50", 0, @0, @-206, AxlDxl, false);
	SetBlur("絵背景*", true, 2, 500, 50, false);
	Shake("絵背景*", 2160000, 0, 2, 0, 0, 1000, null, false);

//◆反転終え、敵との相対へ

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
	Wait(16);

	CP_SpeedChange(0,482,null,false);

	CP_PowerChange(0,870,null,false);

	CP_HighChange(0,1287,null,false);
	CP_AziChange(0,281,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMove("@絵空背景", 0, -10, Dxl2, false);

	FrameShake();

	DrawDelete("絵色黒", 150, 100, "circle_01_00_1", false);

//あきゅん「ＣＰ：下降ロール開始」
	OnSE("se戦闘_動作_空突進01",1000);
	Delete("上背景");
	DrawDelete("絵暗転", 150, 100, "slide_02_01_1", false);

//あきゅん「ＣＰ：下降ロール①ロールしてひっくり返る」
	Move("@絵背景50", 1500, @0, @+200, null, false);
	CP_RollBarMove("@絵背景50",3000,180,Dxl1,true);
	Delete("@絵背景50");

//あきゅん「ＣＰ：下降ロール②ピッチアップして下降」
	MyTr_Count(300,450);
	CP_SpeedChange(3000,612,null,false);
	CP_HighChange(3000,632,Axl2,false);

	CP_AltChange(3000,-90,Axl2,false);

	Move("絵背景100", 4500, @0, -500, Axl2, false);

	Wait(3000);

//あきゅん「ＣＰ：下降ロール③体勢を戻して地面と水平に」
	CP_RollBarMove2(0,0,null,true);

	MyTr_Count(300,511);
	CP_SpeedChange(2000,388,null,false);
	CP_HighChange(2000,715,null,false);

	CP_AltChange(3000,0,null,false);
	CP_AziChange(1000,101,null,false);

	Wait(1000);

//あきゅん「ＣＰ：上昇ロール④上昇準備」
	MyTr_Count(300,441);
	CP_SpeedChange2(2000,411,null,false);
	CP_HighChange2(2000,842,null,false);

	CP_AltChange(2000,7,null,false);

	OnSE("se戦闘_動作_空上昇01",1000);
	Move("絵背景100", 2000, @0, 800, Dxl1, false);
	Zoom("絵背景100", 2000, 1500, 1500, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……いや、安直な選択はすまい。

　親王らの置かれる状況がわからないとはつまり、今
現在は全く安全である可能性も有るという事だ。
　そこにわざわざあんな危険な代物を引き連れて参上
するなど、平地に波を起こすの極地というものだろう。

　香奈枝嬢が言った通りの危地にあるのだとしても、
敵に追われつつ駆けつけるのではやはり救援にも何に
もなるまい。
　当初の方針を変えず、まずこの敵を制するべきだ。

　と――結論して。
　
　また焦りが募る。

　そう、まずあの武者をどうにかせねば。
　できるだけ……できるだけ早く。

　急がねば、何もかも手遅れになる……！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆近付く
	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,500,0,1000,null,false);
	CreateTextureEX("絵演合体", 1100, Center, Middle, "cg/st/3dガッタイダー_騎突_戦闘a.png");
	Move("絵演合体", 0, @-330, @0, null, true);
	Request("絵演合体", Smoothing);
	Zoom("絵演合体", 0, 150, 150, null, true);
	Move("絵演合体", 300, @30, @0, null, false);
	Fade("絵演合体", 300, 1000, null, true);

	OnSE("se特殊_コックピット_ロックオン",1000);
	CockPit_LockSet(@-300,@0);
	CP_LockOnFade(300,"on",false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/011vs0010a01">
《…………？
　御堂》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/011vs0020a01">
《<RUBY text="むこう">敵騎</RUBY>が……》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/011vs0030a00">
「ん？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　……何だ？
　腹部の甲鉄を開いて…………

　何かを突き出した。
　棒状の――――？

　俺は視覚を強化してみた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ガッタイダー。ボーディーホーン準備状態
//◆腹部が縦に割れて、大砲がウィーンと出てきている

//あきゅん「ＣＰ：視覚強化(ズーム)演出」
	CreateSE("SE01","se特殊_コックピット_起動音01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateEffect("絵演効果", 2100, 120, 205, 200, 150, "KitanoBlue");
	SetAlias("絵演効果","絵窓/絵演効果");
	Fade("絵演効果", 0, 0, null, true);
	Zoom("絵演効果", 0, 0, 0, null, true);

	Fade("絵演効果", 500, 900, null, false);
	Zoom("絵演効果", 500, 2000, 2000, Dxl2, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/011vs0040a01">
《あれは……》


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/011vs0050a00">
「……砲だ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵ＥＶ", 18000, Center, Middle, "cg/ev/ev922_ガッタイダーボーディホーン準備_a.jpg");
	Fade("絵ＥＶ", 1000, 1000, null, true);

	Wait(1000);
	Cockpit_AllFade0();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　砲門である。
　戦車砲に良く似ていた。いや、そのものに見えた。

　敵はどういう<RUBY text="つもり">意図</RUBY>だろうか。
　通常の火砲、しかも連発の利かないものなど、武者
に対しておよそ戦果を挙げ得る兵器ではない。

　武者の機動力があれば回避するのはさして難事でも
ないし、直撃を受けても甲鉄強度で威力をほぼ殺せる
からだ。
　牽制が<RUBY text="せいぜい">精々</RUBY>。それも連射可能という前提で。

　あの砲はどう見ても単発である。また、特に変哲も
ない。
　江ノ島の巨大兵器が搭載していたような、奇々怪々
の性能を誇る魔砲だとは思われなかった。

　だとすると……何故。
　敵はあたかも<RUBY text="・・・">決め球</RUBY>のように、この局面で取り出し
てきたのか。

　何か――あったろうか。
　通常の砲で、武者に打撃を与える方法が……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/011vs0060a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆選択：無い。このまま突撃！／有る。ここは退避！

}

..//ジャンプ指定
//◆無い。このまま突撃！　"mc01_011vsaa.nss"
//◆有る。ここは退避！　"mc01_011vsab.nss"

//★選択肢シーン
scene mc01_011vsa.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	Cockpit_AllFade0();
	CreateTextureSP("絵ＥＶ", 18000, Center, Middle, "cg/ev/ev922_ガッタイダーボーディホーン準備_a.jpg");
	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("無い。このまま突撃！","有る。ここは退避！");
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
//◆無い。このまま突撃！　"mc01_011vsaa.nss"
				$GameName = "mc01_011vsaa.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆有る。ここは退避！　"mc01_011vsab.nss"
				$GameName = "mc01_011vsab.nss";
		}
	}
}