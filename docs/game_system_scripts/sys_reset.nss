//"nss/function.nss"【いらない？】

//=============================================================================//
//■リセット確認■
//=============================================================================//
chapter main
{
	Wait(16);

	//★タイトルからの場合
	if($Title_Config||$Title_Load){
		return;
	}

	//★定義「ストレージ番号取得」
	//FlagCheck();

	//★前提変数
	$SYSTEM_menu_reset_enable=true;

	//★超速からの変遷用
	$SYSTEM_keydown_esc=false;
	$SYSTEM_buttondown_close=false;

	//■定義「ビデオ設置」
	if(!$SYSTEM_menu_config_enable&&!$SYSTEM_menu_save_enable&&!$SYSTEM_menu_load_enable&&!$SYSTEM_menu_enable&&!$SYSTEM_backlog_enable&&!$LOCAL_hmode_enable){
		if(!$InDialog){
			CreateTexture("video", 1010000, center, middle, "VIDEO");
		}
	}

	//★尋ねない
	if(#no_ask){
		CreateColor("BLACK",1112000,center,middle,1024,600,BLACK);
		Fade("BLACK",0,0,null,true);
		Fade("BLACK",300,1000,null,true);

		ClearScore(LOCAL);
		$Logo=true;
		//$PressKey=true;
		$SYSTEM_low_thread_priority=false;
		$SYSTEM_save_lock=false;
		$SYSTEM_load_lock=false;
		$SYSTEM_text_auto=false;
		Reset();
	}

	//■定義「メッセージウインドウ作成」
	CreateName("MSGWND");

	//▲画像ロード
	LoadImage("MSGWND/IMG_yes_on","cg/sys/dialog/003-承認.png");
	LoadImage("MSGWND/IMG_yes_over","cg/sys/dialog/002-承認.png");
	LoadImage("MSGWND/IMG_yes_off","cg/sys/dialog/001-承認.png");

	LoadImage("MSGWND/IMG_no_on","cg/sys/dialog/003-否認.png");
	LoadImage("MSGWND/IMG_no_over","cg/sys/dialog/002-否認.png");
	LoadImage("MSGWND/IMG_no_off","cg/sys/dialog/001-否認.png");

	//■定義「背景」
	if(!$InDialog){
		CreateColor("MSGWND/MSG_bak", 1010000, Center, Middle, 1024, 576, BLACK);
	}

	//■定義「選択肢」
	//box
	CreateTexture("MSGWND/MSG_msg",1010000,Center,Middle,"cg/sys/dialog/タイトルへ戻りますか.png");
	Request("MSGWND/MSG_msg", Smoothing);
	//YES
	CreateChoice("MSGWND/MSG_yes");
	CreateTexture("MSGWND/MSG_yes/MouseUsual/img",1012000,515,397,"MSGWND/IMG_yes_off");
	CreateTexture("MSGWND/MSG_yes/MouseOver/img",1011000,515,397,"MSGWND/IMG_yes_over");
	CreateTexture("MSGWND/MSG_yes/MouseClick/img",1011000,515,397,"MSGWND/IMG_yes_on");
	//NO
	CreateChoice("MSGWND/MSG_no");
	CreateTexture("MSGWND/MSG_no/MouseUsual/img",1012000,471,397,"MSGWND/IMG_no_off");
	CreateTexture("MSGWND/MSG_no/MouseOver/img",1011000,471,397,"MSGWND/IMG_no_over");
	CreateTexture("MSGWND/MSG_no/MouseClick/img",1011000,471,397,"MSGWND/IMG_no_on");

	SetVertex("MSGWND/MSG_yes/*/*", 0, Middle);
	SetVertex("MSGWND/MSG_no/*/*", 28, Middle);

	//▲セットフォーカス
	SetNextFocus("MSGWND/MSG_yes/MouseUsual/img","MSGWND/MSG_no/MouseUsual/img",LEFT);
	SetNextFocus("MSGWND/MSG_yes/MouseUsual/img","MSGWND/MSG_no/MouseUsual/img",RIGHT);
	SetNextFocus("MSGWND/MSG_yes/MouseUsual/img","MSGWND/MSG_no/MouseUsual/img",DOWN);
	SetNextFocus("MSGWND/MSG_yes/MouseUsual/img","MSGWND/MSG_no/MouseUsual/img",UP);
	SetNextFocus("MSGWND/MSG_no/MouseUsual/img","MSGWND/MSG_yes/MouseUsual/img",LEFT);
	SetNextFocus("MSGWND/MSG_no/MouseUsual/img","MSGWND/MSG_yes/MouseUsual/img",RIGHT);
	SetNextFocus("MSGWND/MSG_no/MouseUsual/img","MSGWND/MSG_yes/MouseUsual/img",DOWN);
	SetNextFocus("MSGWND/MSG_no/MouseUsual/img","MSGWND/MSG_yes/MouseUsual/img",UP);

	//●最終準備
	Fade("MSGWND/MSG_*",0,0,null,false);
	Fade("MSGWND/MSG_*/*/*",0,0,null,false);
	Zoom("MSGWND/MSG_msg", 0, 0, 1000, null, false);
	Zoom("MSGWND/MSG_*/*/*", 0, 0, 1000, null, false);

	//★描画開始
	Zoom("MSGWND/MSG_msg",150,1000,1000, Dxl1, false);
	Zoom("MSGWND/MSG_*/*/*",150,1000,1000, Dxl1, false);
	Fade("MSGWND/MSG_msg",150,1000,null,false);
	Fade("MSGWND/MSG_*/MouseUsual/*",150,1000,null,false);
	Fade("MSGWND/MSG_bak",150,800,null,false);
	WaitAction("MSGWND/MSG_*",null);

	//★選択肢開始
	if($SYSTEM_XBOX360_change_user_state){DialogChangeState();}
	$SYSTEM_r_button_down=false;$SYSTEM_XBOX360_button_b_down=false;
	select{
		if($SYSTEM_XBOX360_change_user_state){DialogChangeState();}
		if($SYSTEM_keydown_t||$SYSTEM_r_button_down||$SYSTEM_XBOX360_button_b_down){break;}

		case MSGWND/MSG_yes{
			//所定の動作
			CreateColor("BLACK",1112000,center,middle,1024,600,BLACK);
			Fade("BLACK",0,0,null,true);
			Fade("BLACK",300,1000,null,true);

			ClearScore(LOCAL);
			$Logo=true;
			$PressKey=true;
			$SYSTEM_low_thread_priority=false;
			$SYSTEM_save_lock=false;
			$SYSTEM_load_lock=false;
			$SYSTEM_text_auto=false;
			Reset();
		}case MSGWND/MSG_no{
		}

		//★キーダウン系
		if($SYSTEM_keydown_f){
			if(!#SYSTEM_window_full_lock){
				#SYSTEM_window_full=!#SYSTEM_window_full;
				#SYSTEM_window_full_lock=false;
				Wait(300);
				$SYSTEM_keydown_f=false;
			}
		}else if($SYSTEM_keydown_esc||$SYSTEM_buttondown_close){
			Zoom("MSGWND/MSG_msg", 150, 0, 1000, null, false);
			Zoom("MSGWND/MSG_*/*/*", 150, 0, 1000, null, false);
			Fade("MSGWND/MSG_msg",150,0,null,false);
			Fade("MSGWND/MSG_*/*/*",150,0,null,false);
			WaitAction("MSGWND/MSG_*/*/*",null);
			
			$InDialog=true;
			call_chapter nss/sys_close.nss;
			$InDialog=false;

			Zoom("MSGWND/MSG_msg",150,1000,1000, Dxl1, false);
			Zoom("MSGWND/MSG_*/*/*",150,1000,1000, Dxl1, false);
			Fade("MSGWND/MSG_msg",150,1000,null,false);
			Fade("MSGWND/MSG_*/MouseUsual/*",150,1000,null,false);
			WaitAction("MSGWND/MSG_*/*/*",null);
		}
	}
	$SYSTEM_r_button_down=false;$SYSTEM_XBOX360_button_b_down=false;
	$SYSTEM_menu_reset_enable=false;

	Zoom("MSGWND/MSG_msg",150,0,1000, Dxl1, false);
	Zoom("MSGWND/MSG_*/*/*",150,0,1000, Dxl1, false);
	Fade("MSGWND/MSG_*",150,0,null,false);
	Fade("MSGWND/MSG_*/*/*",150,0,null,false);
	WaitAction("MSGWND/MSG_*",null);

	Delete("MSGWND");

	$SYSTEM_mousewheel_up=false;
	$SYSTEM_mousewheel_down=false;
}
