
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;

		Reset();
	}

}

scene mc01_021vsaa.nss_MAIN
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

scene mc01_021vsaa.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_021vsa.nss"

//◆"mc01_021vsa.nss"の選択肢に合わせた演出を小分岐する
//●上段or下段
//◆村正上段or下段
//嶋：フラグ名記載
//$nc01_021vsaa_上段=true;
//$nc01_021vsaa_下段=true;
	SoundPlay("@mbgm08",0,1000,true);

	PrintBG("上背景", 30000);
	CreateSE("SE01","se戦闘_動作_空突進01");
	CreateTextureSP("絵演背景", 100, InRight, Middle, "cg/bg/bg204_横旋回背景_01.jpg");

	if($mc01_021vsaa_上段==true){
	CreateTextureSP("絵演立絵", 1000, Center, Middle, "cg/st/3d村正標準_騎航_戦闘a.png");
	}else if($mc01_021vsaa_下段==true){
	CreateTextureSP("絵演立絵", 1000, Center, Middle, "cg/st/3d村正標準_騎航_戦闘b.png");
	}else{
	CreateTextureSP("絵演立絵", 1000, Center, Middle, "cg/st/3dアベンジ_騎航_通常.png");
	}

	Move("絵演立絵", 0, @376, @-50, null, true);

	MusicStart("SE01",0,1000,0,750,null,false);
	Move("絵演立絵", 300, @-60, @0, Dxl2, false);
	FadeDelete("上背景", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　そして……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆選択：敵の刃を払いつつ斬る〝打潮〟／打つと見せて躱す〝虎眼〟

}

..//ジャンプ指定
//◆敵の刃を払いつつ斬る〝打潮〟　"mc01_021vsaaa.nss"
//◆打つと見せて躱す〝虎眼〟　"mc01_021vsaab.nss"

//★選択肢シーン
scene mc01_021vsaa.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm08",0,1000,true);

	CreateTextureSP("絵演背景", 100, InRight, Middle, "cg/bg/bg204_横旋回背景_01.jpg");
	if($mc01_021vsaa_上段==true){
	CreateTextureSP("絵演立絵", 1000, Center, Middle, "cg/st/3d村正標準_騎航_戦闘a.png");
	}else if($mc01_021vsaa_下段==true){
	CreateTextureSP("絵演立絵", 1000, Center, Middle, "cg/st/3d村正標準_騎航_戦闘b.png");
	}else{
	CreateTextureSP("絵演立絵", 1000, Center, Middle, "cg/st/3dアベンジ_騎航_通常.png");
	}
	Move("絵演立絵", 0, @316, @-50, null, true);
	Delete("背景０");

//■選択肢
	SetChoice02("敵の刃を払いつつ斬る〝打潮〟","打つと見せて躱す〝虎眼〟");
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
//◆敵の刃を払いつつ斬る〝打潮〟　"mc01_021vsaaa.nss"
				$GameName = "mc01_021vsaaa.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆打つと見せて躱す〝虎眼〟　"mc01_021vsaab.nss"
				$GameName = "mc01_021vsaab.nss";
		}
	}
}

