
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031start.nss_MAIN
{

	mc02_FlagDef();
	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;
	#bg081_飛行船船室Bc_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

	$Next_GameName = $GameName;
	$GameName = "mc02_031time.nss"

}

scene mc02_031start.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"mc02_030.nss"



//●探索開始
//◆※ここ、戒厳聖都のような簡単なマップを用意する？

	PrintBG("上背景", 30000);

	CreateColorSP("絵色100", 10000, "Black");

	Delete("上背景");


	CreateSE("トンデマス", "se戦闘_動作_空走行02_L");
	MusicStart("トンデマス",0,500,0,1000,Dxl3,true);
	WaitKey(1500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　
　　　　　　　　　午前七時五二分

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆船内・倉庫１


	SetVolume("トンデマス", 1500, 0, null);
	SoundPlay("@mbgm21",0,1000,true);
	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/bg/bg081_飛行船船室Bc_01.jpg");
	FadeDelete("絵色100", 1000,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　通常、飛行艦への着艦は専用の<RUBY text="エントランス">進入口</RUBY>を介して行う。
　壁を破っての突入など自殺行為も良い所であったが
――これが悪運というものか、辛くも成功した。

　しかしここでもたもたしていれば、振り払った二騎
の護衛が戻って来る。彼らの腕なら、俺の開けた穴を
狙っての着艦も可能だろう。
　今のうちに奥へ踏み込まなくてはならない。

　異変を察して駆けつけてきた艦内の兵員と挟み撃ち
にされるようなことになれば、俺の進退もここまでだ。
　それはそれで大鳥大尉への支援にはなろうが。爆弾
の始末という主目的を任せきりにするのはやはり下策。

　敵を引き付けつつ俺も爆弾を探す方が、より有効な
用兵である。
　
　さて――

　ここは倉庫のようだ。掃除用具やら灯油の缶やらが
見当たるが、爆弾の類は無い。
　惨状を呈しているのは元からのことではなく、俺が
壁を破った時に生じた気流の仕業だろう。

　出入口は船首方向に一つ、そして船首に向かって左
の方角にも一つある。
　
　どちらから出るべきか？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆選択：船首方向／左方向
//●船首方向→●倉庫２
//●左方向→●廊下３

//◆毎回移動の度に"mc02_031time.nss"で時間＆移動演出が入ります。
//◆移動の前には目的予定地のフラグを入手し、移動が完了する度に
//◆目的地フラグを解放します。

..//ジャンプ指定
//●船首方向→●倉庫２　"mc02_031souko2.nss"
//●左方向→●廊下３　"mc02_031rouka3.nss"


}

//★選択肢シーン
scene mc02_031start.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	OnBG(100,"bg081_飛行船船室Bc_01.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);

	mc02_SelectIcon(9);
//■選択肢
	SetChoice02("船首方向","左方向");
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
			mc02_SelectIcon_Delete();
//●船首方向→●倉庫２　"mc02_031souko2.nss"
				$GameName = "mc02_031souko2.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
			mc02_SelectIcon_Delete();
//●左方向→●廊下３　"mc02_031rouka3.nss"
				$GameName = "mc02_031rouka3.nss";
		}
	}
}

