
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031rouka1.nss_MAIN
{

	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;
	#bg082_飛行船廊下_01a=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

	$Next_GameName = $GameName;
	$GameName = "mc02_031time.nss";

}

scene mc02_031rouka1.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc02_031rouka2.nss"
//前ファイル　"mc02_031sennshitsu.nss"　船室１回目のみ
//前ファイル　"mc02_031shikann.nss"



//●廊下１

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg082_飛行船廊下_01a.jpg");

	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　ここは廊下の終端だ。
　船尾方向には遮るものもなく進めるが、船首方向へ
行くなら大きな扉を引き開けねばならない。

　扉は右側にもある。
　さて……？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆選択：船首方向へ／船尾方向へ／右へ
//●船首→●船室
//●船尾→●廊下２
//●右へ→●士官室

}

..//ジャンプ指定
//●船首→●船室　"mc02_031sennshitsu.nss"
//●船尾→●廊下２　"mc02_031rouka2.nss"
//●右へ→●士官室　"mc02_031shikann.nss"

//★選択肢シーン
scene mc02_031rouka1.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	OnBG(100,"bg082_飛行船廊下_01a.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);

	mc02_SelectIcon(2);


//■選択肢
	SetChoice03("船首方向へ","船尾方向へ","右へ");
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
			mc02_SelectIcon_Delete();
//●船首→●船室　"mc02_031sennshitsu.nss"
				$GameName = "mc02_031sennshitsu.nss";
		}
		case @選択肢２
		{
			ChoiceB03();
			mc02_SelectIcon_Delete();
//●船尾→●廊下２　"mc02_031rouka2.nss"
				$GameName = "mc02_031rouka2.nss";
		}
		case @選択肢３
		{
			ChoiceC03();
			mc02_SelectIcon_Delete();
//●右へ→●士官室　"mc02_031shikann.nss"
				$GameName = "mc02_031shikann.nss";
		}
	}
}


