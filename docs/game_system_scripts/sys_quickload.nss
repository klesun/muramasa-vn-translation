$Revision: $

//=============================================================================//
//■クイックロード■
//=============================================================================//
chapter main
{
	if(ExistSave(9998)&&!$SYSTEM_load_lock){
		//アイコンを抹消するコマンド
		$SYSTEM_text_icon_disable=true;

		if(!$Title_Quick){
			CreateTexture("BACK", 1000000, 0, 0, VIDEO);
		}

		CreateColor("BLACK",1112000,center,middle,1024,600,BLACK);
		Fade("BLACK", 0, 0, null, true);
		Fade("BLACK", 300, 1000, null, true);

		$SYSTEM_menu_enable=false;
		$SYSTEM_menu_load_enable=false;

		//★：ゲームスピード
		if($Title_Quick){
			#SYSTEM_play_speed = #play_speed_plus2;
		}

		DeleteSaveFile(9999);

		#InitCV=false;
		#PreSaveFlag=false;
		#START_TIME=Time();
		Save(0);

		Load(9998);
	}
}

