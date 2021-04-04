
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004urayama03c.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;
	#bg055_山賊アジト_01=true;

	$md05_到着演出=false;

	//▼ルートフラグ、選択肢、次のGameName
	$裏山終了_Flag = true;

	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene md05_004urayama03c.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md05_004urayama01.nss"

	PrintBG("上背景", 30000);

	OnBG(100,"bg055_山賊アジト_01.jpg");
	FadeBG(0,true);

	SoundPlay("@mbgm30", 0, 1000, true);
	StL(1000, @0, @0, "cg/st/st首領_通常_制服.png");
	FadeStL(0, true);

	Delete("上背景");


//●頼む

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　あなたは軍装の女に同行を願った。

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw首領_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【首領】
<voice name="首領" class="首領姉" src="voice/md05/004ur0100b31">
「……何を言っているの」

{	FwC("cg/fw/fw首領_冷笑.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/md05/004ur0110b31">
「あなたの相棒は、私ではなくてよ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　諭すようにそう言うと、女はあなたの両肩をつかみ、
くるりと半回転させた。
　そして、

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆首領消し
//◆ぱしん。はたくＳＥ

	DeleteStL(300,true);

	OnSE("se人体_動作_ビンタ01", 1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　力強く、背を叩く。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【首領】
<voice name="首領" class="首領姉" src="voice/md05/004ur0120b31">
「……今の私は残像に過ぎないけれど。
　本物の私がここにいたとしても、やっぱり
同じことをするでしょうね」

//【首領】
<voice name="首領" class="首領姉" src="voice/md05/004ur0130b31">
「過去に逃げてはだめ。
　どんなに辛くても――未来を見て、現実を
歩きなさい」

{	FwC("cg/fw/fw首領_微笑.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/md05/004ur0140b31">
「湊斗景明。
　あなたは私に勝った男でしょう？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/004ur0150a00">
「……<RUBY text="いちがをみずひ">一ヶ尾瑞陽</RUBY>……」

{	FwC("cg/fw/fw首領_微笑.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/md05/004ur0160b31">
「いってらっしゃい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　そして女は、両手で優しく、あなたの背中を押した。

　……あなたは振り返らず、山から去った。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆スタート地点（町並み）
//◆※以降、裏山は移動不可
	SoundPlay("@mbgm30", 0, 1000, true);

	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 5000, "#000000");

	OnBG(100,"bg047_景明故郷町a_01.jpg");
	FadeBG(0,true);

	DrawDelete("上背景", 1000, 1000, "blind_01_00_1", true);
	Wait(500);
	DrawDelete("絵色黒", 1000, 1000, "blind_01_00_1", true);


//◆フラグ調整
//◆$裏山終了_Flag = true;

//◆選択：大きな屋敷／町外れ

}

..//ジャンプ指定
//◆大きな屋敷　"md05_004yashiki01.nss"
//◆町外れ　"md05_004hazure01.nss"



//★選択肢シーン
scene md05_004urayama03c.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm30", 0, 1000, true);

	OnBG(100,"bg047_景明故郷町a_01.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("大きな屋敷","町外れ");
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
//◆大きな屋敷　"md05_004yashiki01.nss"
				$Next_GameName = "md05_004yashiki01.nss";
				$GameName = "md05_004time.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆町外れ　"md05_004hazure01.nss"
				$Next_GameName = "md05_004hazure01.nss";
				$GameName = "md05_004time.nss";
		}
	}
}


