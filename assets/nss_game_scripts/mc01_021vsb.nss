
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_021vsb.nss_MAIN
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

scene mc01_021vsb.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_021vs.nss"

//●陰義
	SoundPlay("@mbgm08",0,1000,true);

	PrintBG("上背景", 30000);
	CreateTextureSP("絵演", 5000, Center, -90, "cg/ev/ev946_村正ＶＳガッタイダー_a.jpg");
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　尋常の仕業ではこの窮地、どうしようとてどうとも
なるまい。
　尋常ならざる業をもって立ち向かうほかにない。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_攻撃_剣戟弾く02");
	CreateWindow("絵窓", 19000, 0, 108, 1024, 360, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateColorSP("絵窓/絵演色", 19000, "#CC0000");
	CreateTextureSP("絵窓/絵演立絵装甲弐", 19100, Center, Middle, "cg/ev/resize/ev902_村正電磁抜刀レールガン_bl.jpg");
	CreateTextureSPadd("絵窓/絵演立絵装甲参", 19120, Center, Middle, "cg/ev/resize/ev902_村正電磁抜刀レールガン_bl.jpg");
	CreateTextureSP("絵窓/絵演立絵装甲", 19200, Center, Middle, "cg/ev/resize/ev902_村正電磁抜刀レールガン_al.jpg");
	Move("絵窓/絵演立絵装甲*", 0, @290, @240, null, true);
	Zoom("絵窓/絵演立絵装甲*", 0, 800, 800, null, true);

	Request("絵窓/絵演立絵装甲*", Smoothing);

	MusicStart("SE01",0,1000,0,1500,null,false);
	Move("絵窓/絵演立絵装甲*", 350, @0, @-80, Dxl2, false);
	Zoom("絵窓", 200, 1000, 1000, Dxl2, true);

	WaitAction("絵窓/絵演立絵装甲*", null);

	CreateSE("SE01a","se特殊_雰囲気_発光03");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateColorSPadd("絵窓/絵色丹田", 19200, "#FFFFFF");

	Delete("絵窓/絵演立絵装甲");
	DrawTransition("絵窓/絵演立絵装甲参", 0, 0, 400, 100, null, "cg/data/slide_03_01_1.png", true);

	FadeDelete("絵窓/絵色丹田", 1000, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　俺は<RUBY text="せいかたんでん">臍下丹田</RUBY>を中心に気息を練り、裡なる力を集め
始めた。
　
　さて――この力をどう操るか。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆選択：磁装・正極／磁装・負極／磁装・蒐窮


}

..//ジャンプ指定
//◆磁装・正極　"mc01_021vsba.nss"
//◆磁装・負極　"mc01_021vsbb.nss"
//◆磁装・蒐窮　"mc01_021vsbc.nss"

//★選択肢シーン
scene mc01_021vsb.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("選択肢板写", 30000);
	SoundPlay("@mbgm08",0,1000,true);

	CreateTextureSP("絵演", 5000, Center, -90, "cg/ev/ev946_村正ＶＳガッタイダー_a.jpg");
	CreateWindow("絵窓", 19000, 0, 108, 1024, 360, false);
	SetAlias("絵窓","絵窓");
	CreateColorSP("絵窓/絵演色", 19000, "#CC0000");
	CreateTextureSP("絵窓/絵演立絵装甲弐", 19100, Center, Middle, "cg/ev/resize/ev902_村正電磁抜刀レールガン_bl.jpg");
	CreateTextureSPadd("絵窓/絵演立絵装甲参", 19120, Center, Middle, "cg/ev/resize/ev902_村正電磁抜刀レールガン_bl.jpg");
	Move("絵窓/絵演立絵装甲*", 0, @290, @160, null, true);
	Zoom("絵窓/絵演立絵装甲*", 0, 800, 800, null, true);
	Request("絵窓/絵演立絵装甲*", Smoothing);
	DrawTransition("絵窓/絵演立絵装甲参", 0, 0, 400, 100, null, "cg/data/slide_03_01_1.png", true);

	Wait(32);

	Delete("選択肢板写");

//■選択肢
	SetChoice03("磁装・正極","磁装・負極","磁装・蒐窮");
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
			ChoiceA03();
			$mc01_021vsb_陰義使用 = true;
//◆磁装・正極　"mc01_021vsba.nss"
				$GameName = "mc01_021vsba.nss";
		}
		case @選択肢２
		{
			ChoiceB03();
			$mc01_021vsb_陰義使用 = true;
//◆磁装・負極　"mc01_021vsbb.nss"
				$GameName = "mc01_021vsbb.nss";
		}
		case @選択肢３
		{
			ChoiceC03();
			$mc01_021vsb_陰義使用 = true;
//◆磁装・蒐窮　"mc01_021vsbc.nss"
				$GameName = "mc01_021vsbc.nss";
		}
	}
}


