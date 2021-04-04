//<continuation number="100">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004start01.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;
	#bg047_景明故郷町a_01=true;

	$md05_到着演出=false;

	//▼ルートフラグ、選択肢、次のGameName
	if($統自分_Flag==true && $統目的_Flag == true && $本家自分_Flag==true && $本家目的_Flag == true && $首領自分_Flag==true && $首領目的_Flag == true && $村正自分_Flag==true && $村正目的_Flag == true && $光自分_Flag && $光目的_Flag){
		$PreGameName = $GameName;
		$GameName = "md05_004start02.nss";
	}else{
		$SelectGameName="@->"+$GameName+"_SELECT";
		call_scene $SelectGameName;
	}

//	$PreGameName = $GameName;
//	$SelectGameName="@->"+$GameName+"_SELECT";
//	call_scene $SelectGameName;

}

scene md05_004start01.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md05_003.nss"


//●探索開始
//◆ＢＧＭ
//◆故郷の町

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 101, "BLACK");


	OnBG(100,"bg047_景明故郷町a_01.jpg");
	FadeBG(0,true);

	CreateTextureSP("絵背景100a", 100, Center, Middle, "cg/bg/bg047_景明故郷町a_01.jpg");
	CreateTextureSP("絵背景100b", 100, Center, Middle, "cg/bg/bg047_景明故郷町a_01.jpg");
	Request("絵背景100*", Smoothing);
	SetShade("絵背景100b", HEAVY);
	Zoom("絵背景100*", 0, 1300, 1300, null, true);


	Delete("上背景");
	FadeDelete("黒",2000,false);

	Zoom("絵背景100*", 2500, 1100, 1100, Dxl1, false);
	Fade("絵背景100b", 2500, 500, Dxl1, true);

	Zoom("絵背景100*", 400, 1200, 1200, Dxl1, false);
	Fade("絵背景100b", 300, 1000, null, true);
	Wait(500);

	Zoom("絵背景100*", 2500, 1000, 1000, AxlDxl, false);
	FadeDelete("絵背景100b", 2500, true);

	FadeDelete("絵背景100*", 100, true);


	SoundPlay("@mbgm30", 0, 1000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　…………。

　……………………………………………………………。

　……………………………………………………………
………………………………………………………………
………………………………………………………………
………………………………………………………………。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト

	WaitKey(1500);


	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md05/004st0010a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　<RUBY text="・・・・">あなたは</RUBY>立ち尽くしている。

　周囲に広がるのは、見覚えのある風景……
　しかし、ここは何処だったろう？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md05/004st0020a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　そういえば、何かを探していた気がする。

　何かを……
　何を？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md05/004st0030a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　そもそも、<RUBY text="・・・">あなた</RUBY>は何だ？
　辺りの景色に覚えがあると思い、何かを探している
と思う、この人格は何者だろう？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/md05/004st0040a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　とにかく歩こう。
　何処に何があるのか、あなたは何となく、わかって
いる。

　それに……時間を潰していてはいけないのだ。
　あなたは根拠もなく信じている。急がなければなら
ない――急いで何かを見つけ出さなくてはならない、
と。

　そうしなくては<RUBY text="・・・">負ける</RUBY>。

　……急ごう。
　何かわからぬ目的を至急、遂げよう。

　何処へ行く？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆選択：大きな屋敷／町外れ／裏山
//◆※このパートは移動回数をカウントする

//◆※全ての人間に「自分の事」と「目的の事」を訊く
//◆とフラグ成立。次の段階へ
//◆フラグ成立した状態で「移動する」選択すると自動
//◆的に→●第二段階"md05_004start02.nss"

}

..//ジャンプ指定
//◆大きな屋敷　"md05_004yashiki01.nss"
//◆町外れ　"md05_004hazure01.nss"
//◆裏山　"md05_004urayama01.nss"



//★選択肢シーン
scene md05_004start01.nss_SELECT
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
	SetChoice03("大きな屋敷","町外れ","裏山");
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
//◆大きな屋敷　"md05_004yashiki01.nss"
				$Next_GameName = "md05_004yashiki01.nss";
				$GameName = "md05_004time.nss";
		}
		case @選択肢２
		{
			ChoiceB03();
//◆町外れ　"md05_004hazure01.nss"
				$Next_GameName = "md05_004hazure01.nss";
				$GameName = "md05_004time.nss";
		}
		case @選択肢３
		{
			ChoiceC03();
//◆裏山　"md05_004urayama01.nss"
				$Next_GameName = "md05_004urayama01.nss";
				$GameName = "md05_004time.nss";
		}
	}
}


