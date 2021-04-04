
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_021vsa.nss_MAIN
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

scene mc01_021vsa.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_021vs.nss"

//●剣技
	SoundPlay("@mbgm08",0,1000,true);

	PrintBG("上背景", 30000);
	CreateTextureSP("絵演", 1000, Center, -90, "cg/ev/ev946_村正ＶＳガッタイダー_a.jpg");
	Delete("上背景");

	CreateTextureEX("絵演２", 1100, -300, InTop, "cg/ev/resize/ev947_村正斬撃汎用_l.jpg");
	Zoom("絵演２", 0, 750, 750, null, true);
	Move("絵演２", 0, @0, @-160, null, true);

	Move("絵演２", 3000, @0, @-80, DxlAuto, false);
	Fade("絵演２", 1000, 500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　物心つく前からこの身に仕込み、鍛え続けてきた、
吉野御流の術技……。
　死線において一命を託すは、これ以外にない。

　一つの武術流派は、それが辿った歴史の全てを――
数多の修行者が道場と戦場で獲得してきた成果の全て
を内包し、その上に成立している。
　膨大な知識の中にはこの窮地を抜ける策も必ず有る。

{	FadeDelete("絵演２", 300, false);}
　――その一手を選び出し。
　俺はまず、力の入らぬ手で太刀を構えた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitAction("絵演２", null);

//◆選択：上段／下段／八相


}

..//ジャンプ指定
//◆上段　"mc01_021vsaa.nss"
//◆下段　"mc01_021vsaa.nss"
//◆八相　"mc01_021vsab.nss"


//★選択肢シーン
scene mc01_021vsa.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm08",0,1000,true);
	CreateTextureSP("絵演", 1000, Center, -90, "cg/ev/ev946_村正ＶＳガッタイダー_a.jpg");
	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice03("上段","下段","八相");
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
			$mc01_021vsaa_上段=true;
//◆上段　"mc01_021vsaa.nss"
				$GameName = "mc01_021vsaa.nss";
		}
		case @選択肢２
		{
			ChoiceB03();
			$mc01_021vsaa_下段=true;
//◆下段　"mc01_021vsaa.nss"
				$GameName = "mc01_021vsaa.nss";
		}
		case @選択肢３
		{
			ChoiceC03();
			$mc01_021vsaa_八相=true;
//◆八相　"mc01_021vsab.nss"
				$GameName = "mc01_021vsab.nss";
		}
	}
}


