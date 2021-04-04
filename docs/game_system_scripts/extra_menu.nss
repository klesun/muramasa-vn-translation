#include "nss/function.nss"
//=============================================================================//
//■EXTRA [Menu]■
//=============================================================================//
chapter main
{
	//エキストラ初期設定
	if(!$エキストラタイトル){
		$エキストラタイトル=true;

		//サウンドモード周り
		if(!#サウンド初回){
			#エキストラＢＧＭ=$TitleBGM;
			#サウンド初回=true;
		}
		SetVolume("@m*", 1000, 0, NULL);

		Request(#エキストラＢＧＭ, Play);
		SetLoop(#エキストラＢＧＭ, true);
		SetVolume(#エキストラＢＧＭ, 0, 1000, NULL);
	}

	//デバッグ用
	if(!$PLACE_title){
		$構成名 = ModuleFileName();
		SystemInit();

		Request(#エキストラＢＧＭ, Play);
		SetLoop(#エキストラＢＧＭ, true);
		SetVolume(#エキストラＢＧＭ, 0, 1000, NULL);
	}


	//■：エキストラ戻り用ウィンドウ
	CreateWindow("システムエキストラ", 10000, 0, 0, 1024, 576, false);
	SetAlias("システムエキストラ", "システムエキストラ");
	Request("システムエキストラ", Lock);

	$extExit=false;
	while(!$extExit)
	{
		//■：エキストラ定義
		ExtraSet();
		//■：エキストラ動作
		ExtraFade();
		//■：エキストラセレクト
		TitleSelect();

		//ＣＧモード連想用
		WaitAction("@システム連想プロセス", null);

		//★：結果
		//繋ぎ用背景
		CreateEffect("スクリーン", 2500, 0, 0, 1024, 576, "Plain");
		Request("スクリーン",Passive);
		SetAlias("スクリーン", "スクリーン");
		Delete("エキストラ*");

		if($ExtraSelect==1){
			call_chapter nss/extra_gallery.nss;
		}else if($ExtraSelect==2){
			call_chapter nss/extra_recollection.nss;
		}else if($ExtraSelect==3){
			call_chapter nss/extra_sound.nss;
		}else if($ExtraSelect==4){
			call_chapter nss/extra_dimension.nss;
		}
	}

	Request("@決定サウンズ", Stop);
	SetVolume("@決定サウンズ", 0, 1000, NULL);
	Request("@決定サウンズ", Play);

	//■動作「終了」
	CreateTexture("@システムタイトル/タイトル背景", 149, 0, 0, SCREEN);
}

//=============================================================================//
..//■タイトル定義■
//=============================================================================//
function ExtraSet()
{
	//★タイトルの状態
	$SYSTEM_menu_lock = true;

	$ExtraOverSE="sound2/se/se特殊_鎧_装着01";
	$ExtraClickSE="sound/se/se特殊_鎧_装着06";
	//se戦闘_動作_武装準備01
	//se戦闘_動作_刀構え02

	//■定義「背景」
	CreateTexture("エキストラ背景",999,0,0,"cg/sys/extra/main/MENU背景画像.png");
	SetAlias("エキストラ背景", "エキストラ背景");

...	//■各種定義
	Array($ExtraNutName,"画像","回想","音楽","立体","出口");
	AssocArray($ExtraNutName,"画像","回想","音楽","立体","出口");

	Array($ExtraNutName[画像],534,114,okdk,CG,Start);
	Array($ExtraNutName[回想],434,114,okdk,回想,Load);
	Array($ExtraNutName[音楽],234,114,okdk,SOUNDMOVIE,Config);
	Array($ExtraNutName[立体],134,114,true,ツルギ回転,Extra);
	Array($ExtraNutName[出口],0,438,true,メニュー退出,Exit);

	if(#ClearG){
		$ExtraNutName[画像][2]=true;
		$ExtraNutName[回想][2]=true;
		$ExtraNutName[音楽][2]=true;
	}

	$WhileCount=0;
	while(Count($ExtraNutName)>$WhileCount){
		$ExtraX=$ExtraNutName[$WhileCount][0];
		$ExtraY=$ExtraNutName[$WhileCount][1];

		$ExtraNutBase="エキストラ"+$ExtraNutName[$WhileCount];
		CreateChoice($ExtraNutBase);
		SetAlias($ExtraNutBase, $ExtraNutBase);

		$ExtraNutImage1="cg/sys/extra/main/"+$ExtraNutName[$WhileCount][3]+"-001.png";
		$ExtraNutImage2="cg/sys/extra/main/"+$ExtraNutName[$WhileCount][3]+"-002.png";
		$ExtraNutImage3="cg/sys/extra/main/"+$ExtraNutName[$WhileCount][3]+"-003.png";
	
		$ExtraNutTemp1=$ExtraNutBase+"/img";
		CreateTexture($ExtraNutTemp1, 1000, $ExtraX, $ExtraY, $ExtraNutImage1);

		if($ExtraNutName[$WhileCount][2]){
			$ExtraNutHit=$ExtraNutBase+"/MouseUsual/hit";
			CreateTexture($ExtraNutHit, 1000, $ExtraX, $ExtraY, $ExtraNutImage1);
			Request($ExtraNutHit, Erase);
			//$ExtraNutUsual=$ExtraNutBase+"/MouseUsual/nut";
			//CreateTexture($ExtraNutUsual, 1000, $ExtraX, $ExtraY, $ExtraNutImage1);
			$ExtraNutOver=$ExtraNutBase+"/MouseOver/nut";
			CreateTexture($ExtraNutOver, 1000, $ExtraX, $ExtraY, $ExtraNutImage2);
			$ExtraNutClick=$ExtraNutBase+"/MouseClick/nut";
			CreateTexture($ExtraNutClick, 1000, $ExtraX, $ExtraY, $ExtraNutImage3);
	
			$ExtraSoundOver=$ExtraNutBase+"/MouseOver/se";
			CreateSound($ExtraSoundOver, SE, $ExtraOverSE);
		}else{
			Fade($ExtraNutTemp1,0,200,null,false);
		}
		$WhileCount++;
	}

	Fade("エキストラ*/*/*",0,0,null,true);


	CreateSound("決定サウンド", SE, $ExtraClickSE);
	SetVolume("決定サウンド", 0, 1000, NULL);
}


//=============================================================================//
..//■エキストラ動作■
//=============================================================================//
function ExtraFade()
{
	//■動作「ムービー」
	if($エキストラ回想||$エキストラ画像||$エキストラ音楽||$エキストラ立体){
		Fade("エキストラ背景", 0, 1000, null, false);
		Fade("@システムエキストラ/背景", 500, 0, null, true);
		Delete("@システムエキストラ/背景");
	}else{
		Fade("エキストラ背景", 0, 1000, null, false);
		Fade("@スクリーン", 500, 0, null, true);
		Delete("@スクリーン");
	}

	$エキストラ回想=false;
	$エキストラ画像=false;
	$エキストラ音楽=false;
	$エキストラ立体=false;

	//▲セットフォーカス
	ExtraFocus();
}


//=============================================================================//
..//■セットネクストフォーカス■
//=============================================================================//
function ExtraFocus(){
	$ExtraCount=Count($ExtraNutName);

	$ExtraWhile=0;
	while($ExtraCount>$ExtraWhile){
		if($ExtraNutName[$ExtraWhile][2]){
			ExtraDocusGo();
		}
		$ExtraWhile++;
	}
}

function ExtraDocusGo()
{
	$ExtraFocusBreak=true;
	$ExtraStart=$ExtraWhile+1;
	$ExtraWhile2=0;
	while($ExtraCount>$ExtraWhile2&&$ExtraFocusBreak){
		if($ExtraStart>=$ExtraCount){
			$ExtraStart=0;
		}

		if($ExtraNutName[$ExtraStart][2]){
			$menunut="エキストラ"+$ExtraNutName[$ExtraWhile]+"/MouseUsual/hit";
			$menunut2="エキストラ"+$ExtraNutName[$ExtraStart]+"/MouseUsual/hit";
				SetNextFocus($menunut,$menunut2,DOWN);
				SetNextFocus($menunut,$menunut2,LEFT);
			$ExtraFocusBreak=false;
		}

		$ExtraStart++;
		$ExtraWhile2++;
	}


	$ExtraFocusBreak=true;
	$ExtraStart=$ExtraWhile-1;
	$ExtraWhile2=0;
	while($ExtraCount>$ExtraWhile2&&$ExtraFocusBreak){
		if($ExtraStart<0){
			$ExtraStart=$ExtraCount-1;
		}

		if($ExtraNutName[$ExtraStart][2]){
			$menunut="エキストラ"+$ExtraNutName[$ExtraWhile]+"/MouseUsual/hit";
			$menunut2="エキストラ"+$ExtraNutName[$ExtraStart]+"/MouseUsual/hit";
				SetNextFocus($menunut,$menunut2,UP);
				SetNextFocus($menunut,$menunut2,RIGHT);
			$ExtraFocusBreak=false;
		}

		$ExtraStart--;
		$ExtraWhile2++;
	}

}
//============================================================================//



//=============================================================================//
..//■セレクト■
//=============================================================================//
function TitleSelect()
{
	$ExtraSelect=false;
	$SYSTEM_r_button_down=false;
	select
	{
		case エキストラ出口{
			$extExit=true;
			$ExtraSelect=6;
			break;
		}case エキストラ画像{
			$ExtraSelect=1;
			Request("決定サウンド", Play);
			Request("決定サウンド", Disused);
		}case エキストラ回想{
			$ExtraSelect=2;
			Request("決定サウンド", Play);
			Request("決定サウンド", Disused);
		}case エキストラ音楽{
			$ExtraSelect=3;
			Request("決定サウンド", Play);
			Request("決定サウンド", Disused);
		}case エキストラ立体{
			$ExtraSelect=4;
			Request("決定サウンド", Play);
			Request("決定サウンド", Disused);
		}

		//★キーダウン系
		if($SYSTEM_keydown_f){
			if(!#SYSTEM_window_full_lock){
				#SYSTEM_window_full=!#SYSTEM_window_full;
				#SYSTEM_window_full_lock=false;
				Wait(300);
				$SYSTEM_keydown_f=false;
			}
		}

		if($SYSTEM_r_button_down){
			$extExit=true;
			$ExtraSelect=6;
			break;
		}
	}

}//============================================================================//




