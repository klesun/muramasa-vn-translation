$Revision: $

//=============================================================================//
//■自動メッセージ送り■
//=============================================================================//
chapter main
{
	if(!$SYSTEM_text_auto_lock){
		$SYSTEM_text_auto=!$SYSTEM_text_auto;
		$SYSTEM_menu_enable=false;
	}
}


