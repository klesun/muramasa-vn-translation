
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_017vsb.nss_MAIN
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

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;


	call_scene @->mc04_017vsb_over.nss;

	$GameName = "mz00_000.nss";

}

scene mc04_017vsb.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc04_017vs.nss"

//●聴覚
	PrintBG("上背景", 30000);

	SoundPlay("@mbgm13",0,1000,true);
	CreateTextureSP("絵背景08EX", 5800, @0, @0, "cg/ev/ev186_村正ＶＳ銘伏_k.jpg");

	Delete("上背景");

//◆フェードアウト。闇。
	SetVolume("@mbgm*", 2000, 0, null);

	CreateColorEX("闇", 6000, "BLACK");
	Fade("闇", 3000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……何を聴く？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆選択：敵の足音／敵の呼吸／風の流れ

//◆どれ選んでも関係なく
//◆ウェイトしばらく


}


scene mc04_017vsb_over.nss
{

	Wait(1500);

//◆ひゅん、ずしゃー。斬られた。
	CreateSE("SE01","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE01",0,1000,0,1200,null,false);
	SL_rightdown2(6100,@0, @0,1500);
	SL_rightdownfade2(10);

	Wait(500);

	OnSE("se戦闘_攻撃_刀刺さる05", 1000);

	CreateColorSP("赤", 16000, "#990000");
	DrawTransition("赤", 150, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);

	FadeDelete("赤",2000,true);

	ClearWaitAll(1500, 0);

//◆死んだ。
//◆ゲームオーバー

..//ジャンプ指定
//次ファイル


}



//=========================================================
//★選択肢シーン
scene mc04_017vsb.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	CreateTextureSP("絵背景08EX", 5800, @0, @0, "cg/ev/ev186_村正ＶＳ銘伏_k.jpg");

	FadeDelete("背景０", 0, true);

//■選択肢
	SetChoice03("敵の足音","敵の呼吸","風の流れ");
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

		case @選択肢１{ChoiceA03();}
		case @選択肢２{ChoiceB03();}
		case @選択肢３{ChoiceC03();}
	}
}


