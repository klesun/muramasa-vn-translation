//<continuation number="340">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_011vs.nss_MAIN
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

scene mc01_011vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_010vsa.nss"
//前ファイル　"mc01_010vsb.nss"
//前ファイル　"mc01_010vsca.nss"
//前ファイル　"mc01_010vscb.nss"


//◆合流
//◆直進→反転機動へ
	PrintBG("上背景", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	CreateColorSP("絵色黒", 20000, "#000000");
	CreateTextureSP("絵演背景", 100, Center, InBottom, "cg/bg/resize/bg002_空a_01.jpg");
	Move("絵演背景", 650, @0, @200, Dxl2, false);
	Delete("上背景");
	DrawDelete("絵色黒", 150, 100, "slide_02_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　じわりじわりと、砂が水を吸うように、胸中へ焦り
が広がってゆくのを感じる。
　このままでは……例え最終的に勝利を収められたと
しても、取り返しのつかない結果になる。

　正体不明の敵を倒したところで、それだけでは俺に
とって何の意味も持たない。建朝寺へ向かい、親王と
署長を救出するのが目的なのだ。
　相対する敵騎はその目的の単なる障害に過ぎない。

　一秒半秒でも早く突破する必要がある。
　
　だというのに二合を経て、俺はまだ手傷らしい手傷
も相手に負わせていなかった。

　いっそ――もうこのような得体の知れぬ武者相手の
戦場など放り捨てて、建朝寺へ向かうべきか。
　そんな考えが浮かぶ。存外、捨てたものではないと
思えた。

　先に懸念したように、親王の前へ敵を誘引する結果
となるかもしれない。
　だが今はとにかく、親王たちの無事の確認を最優先
するべきではないのか？

　……どうする。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆選択：戦闘続行／戦域離脱


}

..//ジャンプ指定
//◆戦闘続行　"mc01_011vsa.nss"
//◆戦域離脱　"mc01_011vsb.nss"

//★選択肢シーン
scene mc01_011vs.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	Cockpit_AllFade0();
	CreateTextureSP("絵演背景", 100, Center, InBottom, "cg/bg/resize/bg002_空a_01.jpg");
	Move("絵演背景", 0, @0, @200, Dxl2, false);
	FadeDelete("背景０", 0, true);

//■選択肢
	SetChoice02("戦闘続行","戦域離脱");
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
//◆戦闘続行　"mc01_011vsa.nss"
				$GameName = "mc01_011vsa.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆戦域離脱　"mc01_011vsb.nss"
				$GameName = "mc01_011vsb.nss";
		}
	}
}

