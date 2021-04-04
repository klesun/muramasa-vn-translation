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

scene md05_029.nss_MAIN
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

scene md05_029.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md05_028a.nss"
//前ファイル　"md05_028b.nss"

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm15", 0, 1000, true);

	CreateTextureSP("絵巨大光", 1000, Center, Middle, "cg/ev/ev253_飢餓虚空の内側.jpg");

	Delete("上背景");


//◆合流
	SetFwR("cg/fw/fw光_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【光】
<voice name="光" class="光" src="voice/md05/0290010a14">
《更に一つ。
　その冷たい鉄の塊は、おまえを何があろう
とも守り通してくれるか……？》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　……守る？
　これが……俺を……？

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵巨大光",1000,true);

//◆蜘蛛シルエット？
	CreateColorSP("絵色黒", 2000, "#000000");
	CreateStencil("絵マスク１",1200,center,InBottom,128,"cg/st/3d村正蜘蛛_俯瞰.png",false);
	SetAlias("絵マスク１","絵マスク１");
	CreateColor("絵マスク１/色１", 1200, 0, 0, 1024, 576, "White");
	Fade("絵マスク１/色１", 0, 500, null, false);
	SetShade("絵マスク１", HEAVY);
	Fade("絵色黒", 100, 0, null, true);

	WaitKey(1000);
	
	FadeDelete("絵マスク１/色１", 1000, true);

//	Fade("絵色黒", 2000, 1000, null, true);

//◆選択：肯定／否定

}

..//ジャンプ指定
//◆肯定　"md05_029a.nss"
//◆否定　"md05_029b.nss"



//★選択肢シーン
scene md05_029.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm15", 0, 1000, true);

	CreateTextureSP("絵巨大光", 1000, Center, Middle, "cg/ev/ev253_飢餓虚空の内側.jpg");

	FadeDelete("背景０", 1000, true);


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
//◆肯定　"md05_029a.nss"
				$GameName = "md05_029a.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆否定　"md05_029b.nss"
				$GameName = "md05_029b.nss";
		}
	}
}