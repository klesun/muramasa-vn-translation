//<continuation number="10">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_028.nss_MAIN
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
	#ev106_雄飛と見下ろす村正_d=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene md05_028.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md05_027a.nss"
//前ファイル　"md05_027b.nss"

	PrintBG("上背景", 30000);

	CreateTextureSP("絵巨大光", 1000, Center, Middle, "cg/ev/ev253_飢餓虚空の内側.jpg");
	SoundPlay("@mbgm15", 0, 1000, true);

	Delete("上背景");

//◆合流

	SetFwR("cg/fw/fw光_瞋恚.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【光】
<voice name="光" class="光" src="voice/md05/0280010a14">
《次いで一つ。
　おまえはおれの所業を<RUBY text="なじ">詰</RUBY>るか？》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　俺は……
　お前の殺戮を――

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆回想フラッシュ：銀星号の殺戮と村正の殺戮


	EfRecoIn1(18000,600);

	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/ev/ev002_銀星号事件イメージ２.jpg");


	EfRecoIn2(300);

	WaitKey(1000);

	EfRecoIn1(18000,600);

	Delete("絵回想*");

	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/ev/ev106_雄飛と見下ろす村正_d.jpg");


	EfRecoIn2(300);

	WaitKey(1000);

	EfRecoOut1(300);
	Delete("絵回想*");

	EfRecoOut2(600,true);

//◆選択：肯定／否定

}

..//ジャンプ指定
//◆肯定　"md05_028a.nss"
//◆否定　"md05_028b.nss"



//★選択肢シーン
scene md05_028.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm15", 0, 1000, true);

	CreateTextureSP("巨大光", 1000, Center, Middle, "cg/ev/ev253_飢餓虚空の内側.jpg");

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("肯定","否定");
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
//◆肯定　"md05_028a.nss"
				$GameName = "md05_028a.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆否定　"md05_028b.nss"
				$GameName = "md05_028b.nss";
		}
	}
}