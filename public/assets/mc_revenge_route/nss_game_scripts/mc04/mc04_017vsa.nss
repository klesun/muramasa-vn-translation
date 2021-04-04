
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_017vsa.nss_MAIN
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

}

scene mc04_017vsa.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc04_017vs.nss"

//●視覚
	PrintBG("上背景", 30000);

	SoundPlay("@mbgm13",0,1000,true);
	CreateTextureSP("絵背景08EX", 5800, @0, @0, "cg/ev/ev186_村正ＶＳ銘伏_k.jpg");

	Delete("上背景");

	CreateTextureEX("絵演", 6000, -1730, InBottom, "cg/ev/resize/ev186_村正ＶＳ銘伏_klm.jpg");
	Fade("絵演", 600, 1000, Dxl2, false);
	Move("絵演", 6000, @0, -750, DxlAuto, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……何処を見る？

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	WaitAction("@絵演", null);

//◆選択：上／下／左／右
//◆各方向にフラグを仕込んで、次のファイルでそれに対応した動きをさせます。

}

..//ジャンプ指定
//◆下　"mc04_017vsaa.nss"
//◆下以外　"mc04_017vsab.nss"

//★選択肢シーン
scene mc04_017vsa.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	SoundPlay("@mbgm13",0,1000,true);
	CreateTextureSP("絵演", 6000, -1730, -750, "cg/ev/resize/ev186_村正ＶＳ銘伏_klm.jpg");

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice04("上","下","左","右");
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
			ChoiceA04();
//◆上　"mc04_017vsab.nss"
				$mc04_017vsa = 上;
				$GameName = "mc04_017vsab.nss";
		}
		case @選択肢２
		{
			ChoiceB04();
//◆下　"mc04_017vsaa.nss"
				$GameName = "mc04_017vsaa.nss";
		}
		case @選択肢３
		{
			ChoiceC04();
//◆左　"mc04_017vsab.nss"
				$mc04_017vsa = 左;
				$GameName = "mc04_017vsab.nss";
		}
		case @選択肢４
		{
			ChoiceD04();
//◆右　"mc04_017vsab.nss"
				$mc04_017vsa = 右;
				$GameName = "mc04_017vsab.nss";
		}
	}
}