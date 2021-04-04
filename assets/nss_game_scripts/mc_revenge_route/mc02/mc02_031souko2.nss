
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031souko2.nss_MAIN
{

	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

//嶋：デバッグフラグ
//	$香奈枝合流_Flag=true;
//	$倉庫２一回目_Flag=true;
//	$兵士気絶_Flag=false;


.//嶋：ルート判定
//香奈枝がいる場合
	if($香奈枝合流_Flag==true){
//倉庫２に入ったことがない場合
		if(!$倉庫２一回目_Flag){
			call_scene @->mc02_031souko2_k.nss;
			$souko2_k = true;//香奈枝合流フラグのみルート
			$souko2_ks = false;//香奈枝合流+倉庫２一回目ルート
			$souko2_ksk = false;//香奈枝合流+倉庫２一回目+兵士完全気絶ルート
			$souko2_No = false;//フラグなしルート
			$倉庫２一回目_Flag = true;
//倉庫２に入ったことがある場合
		}else{
			if(!$兵士気絶_Flag){
//兵士が気絶していない場合
				call_scene @->mc02_031souko2_ks.nss;
				$souko2_k = false;//香奈枝合流フラグのみルート
				$souko2_ks = true;//香奈枝合流+倉庫２一回目ルート
				$souko2_ksk = false;//香奈枝合流+倉庫２一回目+兵士完全気絶ルート
				$souko2_No = false;//フラグなしルート
			}else{
//兵士が気絶している場合
				call_scene @->mc02_031souko2_ksk.nss;
				$souko2_k = false;//香奈枝合流フラグのみルート
				$souko2_ks = false;//香奈枝合流+倉庫２一回目ルート
				$souko2_ksk = true;//香奈枝合流+倉庫２一回目+兵士完全気絶ルート
				$souko2_No = false;//フラグなしルート
			}
		}
//香奈枝合流なし
	}else{
		call_scene @->mc02_031souko2_No.nss;
			$souko2_k = false;//香奈枝合流フラグのみルート
			$souko2_ks = false;//香奈枝合流+倉庫２一回目ルート
			$souko2_ksk = false;//香奈枝合流+倉庫２一回目+兵士完全気絶ルート
			$souko2_No = true;//フラグなしルート
	}


//次ポイント確認用
	if($souko2_No==true){
		$SelectGameName="@->"+$GameName+"_SELECT1";
		call_scene $SelectGameName;
//嶋：フラグ初期化
			$souko2_k = false;//香奈枝合流フラグのみルート
			$souko2_ks = false;//香奈枝合流+倉庫２一回目ルート
			$souko2_ksk = false;//香奈枝合流+倉庫２一回目+兵士完全気絶ルート
			$souko2_No = false;//フラグなしルート
			$Next_GameName = $GameName;
			$GameName = "mc02_031time.nss"
	}else if($souko2_k==true){
		$SelectGameName="@->"+$GameName+"_SELECT2";
		call_scene $SelectGameName;
//嶋：フラグ初期化
			$souko2_k = false;//香奈枝合流フラグのみルート
			$souko2_ks = false;//香奈枝合流+倉庫２一回目ルート
			$souko2_ksk = false;//香奈枝合流+倉庫２一回目+兵士完全気絶ルート
			$souko2_No = false;//フラグなしルート
//			$倉庫２一回目_Flag = true;
	}else if($souko2_ks==true){
		$SelectGameName="@->"+$GameName+"_SELECT2";
		call_scene $SelectGameName;
//嶋：フラグ初期化
			$souko2_k = false;//香奈枝合流フラグのみルート
			$souko2_ks = false;//香奈枝合流+倉庫２一回目ルート
			$souko2_ksk = false;//香奈枝合流+倉庫２一回目+兵士完全気絶ルート
			$souko2_No = false;//フラグなしルート
	}else if($souko2_ksk==true){
		//◆フラグ分岐：仮入れ
		$GameName = "mc02_031rouka2.nss";
//嶋：フラグ初期化
			$souko2_k = false;//香奈枝合流フラグのみルート
			$souko2_ks = false;//香奈枝合流+倉庫２一回目ルート
			$souko2_ksk = false;//香奈枝合流+倉庫２一回目+兵士完全気絶ルート
			$souko2_No = false;//フラグなしルート
			$Next_GameName = $GameName;
			$GameName = "mc02_031time.nss"
	}


}

scene mc02_031souko2.nss
{

..//ジャンプ指定
//前ファイル　"mc02_031start.nss"
//前ファイル　"mc02_031souko2.nss"

//●倉庫２
//◆香奈枝同行、兵士ＫＯフラグにて分岐します

/*
//香奈枝がいる場合
	if($香奈枝合流_Flag==true){
//倉庫２に入ったことがない場合
		if(!$倉庫２一回目_Flag){
			call_scene @->mc02_031souko2_k.nss;
//倉庫２に入ったことがある場合
		}else{
			if(!$兵士気絶_Flag){
//兵士が気絶していない場合
				call_scene @->mc02_031souko2_ks.nss;
			}else{
//兵士が気絶している場合
				call_scene @->mc02_031souko2_ksk.nss;
			}
		}

//香奈枝合流なし
	}else{
		call_scene @->mc02_031souko2_No.nss;
	}
*/

}

//――――――――――――――――――――――――――――――
.//◆※香奈枝いない
//◆香奈枝合流_Flagが無い場合
..//No_Flag mc02_031souko2_No.nss
scene mc02_031souko2_No.nss
{

	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg081_飛行船船室Bb_01b.jpg");
	OnSE("se日常_建物_扉開く01", 1000);
	DrawDelete("上背景", 500, 1000, "blind_01_00_1", true);
	WaitKey(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　ここも倉庫だ。
　最初の場所と比べると、机や<RUBY text="カート">台車</RUBY>など<RUBY text="かさば">嵩張</RUBY>るものが
多い。

　隠れ場所とするには格好かもしれないが、とりあえ
ず今の俺には無用だ。
　次の行動に移ろう。

　船尾方向の扉をくぐれば、最初の倉庫へ戻ることに
なる。
　それが嫌なら、船首に向かって左側にある扉を通る
しかない。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆選択：船尾方向の扉へ／左の扉へ
//●船尾→●倉庫１
//●左へ→●廊下２


..//ジャンプ指定
//●船尾→●倉庫１　"mc02_031souko1.nss"
//●左へ→●廊下２　"mc02_031rouka2.nss"

}



//――――――――――――――――――――――――――――――
.//◆※香奈枝いる・初回
//◆香奈枝合流_Flagがあり、かつ倉庫２一回目_Flagが無い場合
..//mc02_031souko2_k.nss
scene mc02_031souko2_k.nss
{

	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	CreateColorSP("絵色100", 1500, "Black");
	SoundPlay("@mbgm21",0,1000,true);
	OnBG(100,"bg082_飛行船廊下_01a.jpg");
	FadeBG(0,true);
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　扉を開けようとした俺を、永倉侍従がそっと制した。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵色100", 500, true);

	StL(1000, @-60, @0, "cg/st/stさよ_通常_私服.png");
	Move("@StL*", 300, @60, @0, DxlAuto, false);
	FadeStCL(300, false);

	SetFwC("cg/fw/fwさよ_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031so0060a04">
（お待ちを）

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031so0070a00">
（……何か？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStL(300, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　囁き声に、同等の声量で応える。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031so0080a04">
（中に誰かおりまする。
　……武装した兵士ですな……）

//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031so0090a04">
（何かを探している様子）

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031so0100a00">
（……隠れている人間がいないか？）

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031so0110a04">
（まぁ左様かと）

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031so0120a03">
（どうしましょうね？）

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031so0130a00">
（わざわざ衝突することもありません。
　ここは後に回し、別の場所を調べましょう）

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031so0140a04">
（――とも参りませぬようで）

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031so0150a00">
（侍従殿？）

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031so0160a04">
（来ますぞ）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　来る？
　
　――捜査を終え、部屋から出ようとしているのか！

　今から隠れても間に合うまい。
　先手を打って部屋に飛び込み、制圧するしかない。

　騒ぐ余裕を与え、仲間を呼び寄せられては面倒な事
になる。
　一撃で無力化しなくてはならないが――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031so0170a03">
「――」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031so0180a04">
「――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　皆が同じ結論に達していることは<RUBY text="アイコンタクト">視線通話</RUBY>で知れた。
　後は、誰が実行するかだ。戸口の広さは二人以上が
同時に飛び込むのを許しそうにない。

　決めよう。
　突入するのは……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆フラグ調整
..//◆$倉庫２一回目_Flag = true;
	$倉庫２一回目_Flag = true;

//◆選択：景明／香奈枝／さよ


..//ジャンプ指定
//◆景明　"mc02_031souko2a.nss"
//◆香奈枝　"mc02_031souko2b.nss"
//◆さよ　"mc02_031souko2c.nss"


}


//――――――――――――――――――――――――――――――
.//◆※香奈枝いる・二回目以降、兵士ＫＯ前
//◆香奈枝合流_Flagと倉庫２一回目_Flagがあり、かつ兵士気絶_Flagがない場合
..//mc02_031souko2_ks.nss
scene mc02_031souko2_ks.nss
{

	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	CreateColorSP("絵色100", 1500, "Black");
	SoundPlay("@mbgm21",0,1000,true);
	OnBG(100,"bg082_飛行船廊下_01a.jpg");
	FadeBG(0,true);
	Delete("上背景");

	SetFwC("cg/fw/fwさよ_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090a]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031so0190a04">
（湊斗さま）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵色100", 500, true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090b]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031so0200a00">
（……まさか、また？）

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031so0210a04">
（はい。
　先刻の者が目覚めたのか、それとも新たに
別の兵が来たのかはわかりませぬが……）

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031so0220a00">
（…………）

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031so0230a03">
（どうなさいますの？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　扉の向こうから、足音がこちらへ近付いてくる――
やはり隠れる暇は無さそうだ。
　とすれば、制圧あるのみだが。

　さて、今度は誰が？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆→同じ選択

..//ジャンプ指定
//◆景明　"mc02_031souko2a.nss"
//◆香奈枝　"mc02_031souko2b.nss"
//◆さよ　"mc02_031souko2c.nss"


}




//――――――――――――――――――――――――――――――
.//◆※兵士完全ＫＯの場合
//◆兵士気絶_Flagがある場合、たぶん最優先処理
..//mc02_031souko2_ksk.nss
scene mc02_031souko2_ksk.nss
{

	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);

	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg081_飛行船船室Bb_01b.jpg");

	DrawDelete("上背景", 500, 1000, "blind_01_00_1", true);

	Wait(300);

//◆倉庫２

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text010]
　……部屋は先刻見た時と何も変わらない。
　床に倒れ伏した兵士もそのままだ。

　俺達は廊下へ戻った。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆→●廊下２
..//ジャンプ指定
//次ファイル　"mc02_031rouka2.nss"

}


//------------------------------------------------------------//
//No_Flag
.//SELECT1
scene mc02_031souko2.nss_SELECT1
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	OnBG(100,"bg081_飛行船船室Bb_01b.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);

	mc02_SelectIcon(6);
//■選択肢
	SetChoice02("船尾","左へ");
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
//●船尾→●倉庫１　"mc02_031souko1.nss"
				$GameName = "mc02_031souko1.nss";
//移動確認用フラグ
				$廊下移動 = false;
				$倉庫２移動 = true;
		}
		case @選択肢２
		{
			ChoiceB02();
			mc02_SelectIcon_Delete();
//●左へ→●廊下２　"mc02_031rouka2.nss"
				$GameName = "mc02_031rouka2.nss";
		}
	}
}

//------------------------------------------------------------//
//k
.//SELECT2
scene mc02_031souko2.nss_SELECT2
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

//■選択肢
	SetChoice03("景明","香奈枝","さよ");
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
//◆景明　"mc02_031souko2a.nss"
				$GameName = "mc02_031souko2a.nss";
		}
		case @選択肢２
		{
			ChoiceB03();
//◆香奈枝　"mc02_031souko2b.nss"
				$GameName = "mc02_031souko2b.nss";
		}
		case @選択肢３
		{
			ChoiceC03();
//◆さよ　"mc02_031souko2c.nss"
				$GameName = "mc02_031souko2c.nss";
		}
	}

}


