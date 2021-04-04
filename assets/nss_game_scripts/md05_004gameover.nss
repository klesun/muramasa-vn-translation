//<continuation number="0">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004gameover.nss_MAIN
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
	#ev002_銀星号事件イメージ２=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene md05_004gameover.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	Delete("上背景");

..//ジャンプ指定
//前ファイル　"md05_004byoushitsu02ca.nss"
//前ファイル　"md05_004byoushitsu03caa.nss"
//前ファイル　"md05_004byoushitsu03cab.nss"
//前ファイル　"md05_004time.nss"


//●失敗
//◆フェードアウト
//◆ゲームオーバーＣＧ
	PrintBG("上背景", 30000);

	SetVolume("@mbgm*", 2000, 0, null);
	CreateSE("SE01","se特殊_その他_滅茶苦茶な戦闘_L");
	MusicStart("SE01",2000,1000,0,1000,null,true);

	CreateColorSP("フラッシュ白", 3000, "WHITE");

	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/ev/ev002_銀星号事件イメージ２.jpg");

	Delete("上背景");
	FadeDelete("フラッシュ白",1500,true);

	Wait(2000);

	SetVolume("SE*", 3000, 0, null);

	CreateColorEX("フラッシュ黒", 5000, "#000000");
	Fade("フラッシュ黒", 2000, 1000, null, true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　もう一度挑戦しますか？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆選択：挑戦する／タイトルに戻る
//◆やり直す選択ならフラグ初期化して→●探索開始

}

..//ジャンプ指定
//次ファイル　"md05_004start01.nss"



//★選択肢シーン
scene md05_004gameover.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintBG("背景０", 30000);

	CreateColorSP("フラッシュ黒", 3000, "BLACK");

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("挑戦する","あきらめる");
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
//◆挑戦する　"md05_004start01.nss"
				md05_Clearflag();
				$GameName = "md05_004start01.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆タイトルに戻る　	$GameCircle=0;
//			$GameCircle=0;
			$GameName = "mz00_000.nss";
		}
	}
}