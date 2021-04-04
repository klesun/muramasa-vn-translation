//<continuation number="570">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031daidokoro.nss_MAIN
{


		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;
	#bg080_飛行船船室Ac_01a=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene mc02_031daidokoro.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc02_031innsyoku.nss"
//前ファイル　"mc02_031innsyokuz.nss"


//●台所
	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg080_飛行船船室Ac_01a.jpg");
	SoundPlay("@mbgm21",0,1000,true);

	OnSE("se日常_建物_扉開く01", 1000);
	WaitKey(500);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

	Wait(100);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　調理設備が見事に整理され、配置されている。
　……<RUBY text="キッチン">台所</RUBY>だ。

　飛行艦は航続距離の長さが強みであるため、長期に
渡る作戦に用いられることも多い。
　こうした設備もしばしば必要になるのだろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//小分岐：香奈枝がまだいない場合のみ挿入
//ＳＥ：みし。天井が軋む

if($香奈枝合流_Flag != true){

//嶋：意味のあるＳＥであることを指すため、テキストボックス消去
	Fade("@box*", 150, 0, null, true);
	OnSE("se日常_建物_軋み01",1000);

	WaitKey(2000);

	SetFwC("cg/fw/fw景明_通常b.png");

//ムー：↓タグなかったから追加しておいた。

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011a]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da9999a00">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011b]
　咄嗟に身構え、天井を見上げる。
　
　……気のせいか？

　今確かに、物音と気配を感じたのだが。
　しかし考えてみれば、天井裏に敵兵が潜むというの
も妙な話だ。

　場所柄、鼠が走っただけなのかもしれない。
　……引っ掛かりは覚えるものの、ぐずぐず逡巡して
時間を浪費するよりは、行動した方が良さそうである。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

}

//ここまで

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]

　さて、ここで俺のとるべき行動は――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆選択：冷蔵庫を開ける／コンロに火を入れる／擂粉木を取る／移動する


}

..//ジャンプ指定
//◆冷蔵庫を開ける　"mc02_031daidokoroa.nss"
//◆コンロに火を入れる　"mc02_031daidokorob.nss"
//◆擂粉木を取る　"mc02_031daidokoroc.nss"
//◆移動する　"mc02_031daidokoroz.nss"

//★選択肢シーン
scene mc02_031daidokoro.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	OnBG(100,"bg080_飛行船船室Ac_01a.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);

//■選択肢
	SetChoice04("冷蔵庫を開ける","コンロに火を入れる","擂粉木を取る","移動する");
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
			ChoiceA04();
//◆冷蔵庫を開ける　"mc02_031daidokoroa.nss"
				$GameName = "mc02_031daidokoroa.nss";
		}
		case @選択肢２
		{
			ChoiceB04();
//◆コンロに火を入れる　"mc02_031daidokorob.nss"
				$GameName = "mc02_031daidokorob.nss";
		}
		case @選択肢３
		{
			ChoiceC04();
//◆擂粉木を取る　"mc02_031daidokoroc.nss"
				$GameName = "mc02_031daidokoroc.nss";
		}
		case @選択肢４
		{
			ChoiceD04();
//◆移動する　"mc02_031daidokoroz.nss"
				$GameName = "mc02_031daidokoroz.nss";
		}
	}
}


