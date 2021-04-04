//<continuation number="690">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_011b.nss_MAIN
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
	#bg037_競技場ガレージa_01=true;
	#bg036_競技場通路_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene ma03_011b.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_011.nss"

//●一条の様子を見に行く

//◆通路
	SoundPlay("@mbgm16",0,1000,true);

	PrintBG("上背景", 25000);
	OnBG(100,"bg037_競技場ガレージa_01.jpg");
	FadeBG(0,true);
	Delete("上背景");

	SetVolume("@mbgm*", 1500, 0, null);

	CreateColorSP("絵暗転", 1000, "#000000");
	DrawTransition("絵暗転", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	WaitPlay("@mbgm*", null);
	Wait(1000);

	OnBG(100,"bg036_競技場通路_01.jpg");
	FadeBG(0,true);

	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　一条はこの辺りで調査を行っている筈だが……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//◆ボイス無し
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0010a02">
「――――！」

//◆ボイス無し
{	NwC("cg/fw/nw整備員.png");}
//【ｅｔｃ／整備員】
<voice name="ｅｔｃ／整備員" class="その他男声" src="voice/ma03/011b0020e140">
「――――！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　……気のせいだろうか。
　耳に遠く響く喧騒が、何か良からぬ事態を示唆して
いるように思えてならない。

　俺は小走りに駆けて、声のする方角へ向かった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆転換

	CreateColorSP("絵暗転", 15000, "#000000");
	DrawTransition("絵暗転", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	StR(1000, @0, @0,"cg/st/st一条_通常_制服b.png");
	FadeStR(0,true);

	WaitKey(500);

	DrawDelete("絵暗転", 500, 1000, "blind_01_00_1", true);

	SoundPlay("@mbgm17",0,1000,true);

	SetFwC("cg/fw/fw一条_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0030a02">
「謝れっつってんだろ！」

{	NwC("cg/fw/nw整備員.png");}
//【ｅｔｃ／整備員】
<voice name="ｅｔｃ／整備員" class="その他男声" src="voice/ma03/011b0040e140">
「ふざけんな！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　果たして、一条はいた。
　どこかのチームのガレージの前。整備士らしき大男
と対峙し、険悪な形相を交換し合っている。

　そして一条の背後には、尻餅をついた男の子。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw整備員.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ｅｔｃ／整備員】
<voice name="ｅｔｃ／整備員" class="その他男声" src="voice/ma03/011b0050e140">
「ここは関係者以外立ち入り禁止だ！　そこ
にそう書いてあんだろうがッ！
　勝手に入り込んできたその餓鬼が悪いんだ
よ!!」

{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0060a02">
「だからって襟首掴んで放り投げていいって
決まりがあるかよ！
　大の大人が子供苛めて喜んでんじゃねぇ!!」

{	NwC("cg/fw/nw整備員.png");}
//【ｅｔｃ／整備員】
<voice name="ｅｔｃ／整備員" class="その他男声" src="voice/ma03/011b0070e140">
「んだとォ――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　……事情の説明を求めるまでもないようだった。
　状況は極めて明快だ。

　俺は足も止めず、そのまま二人の間に割って入った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0080a02">
「湊斗さん!?」

{	NwC("cg/fw/nw整備員.png");}
//【ｅｔｃ／整備員】
<voice name="ｅｔｃ／整備員" class="その他男声" src="voice/ma03/011b0090e140">
「なんだてめェ」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0100a00">
「申し訳ありません。
　この者は自分の身内です」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0110a02">
「湊斗さんっ、こいつは――」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0120a00">
「黙れ」

{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0130a02">
「……っ」

{	NwC("cg/fw/nw整備員.png");}
//【ｅｔｃ／整備員】
<voice name="ｅｔｃ／整備員" class="その他男声" src="voice/ma03/011b0140e140">
「身内ぃ？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0150a00">
「はい。
　この者の非礼は、自分が――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばき。殴打
	CreateSE("SE01","se戦闘_攻撃_殴る02");
	MusicStart("SE01",0,1000,0,1250,null,false);

	CreateColorSP("絵白転", 5000, "#FFFFFF");
	WaitKey(10);
	Delete("絵白転");

	CreatePlainSP("絵板写", 1000);
	FadeFR2("絵板写",0,1000,300,0,0,30,DxlAuto, true);
	Delete("絵板写");

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0160a00">
「……ッッ」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0170a02">
「――の野郎ォッ!!」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0180a00">
「黙れと言った」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	OnSE("se人体_動作_抱く01",1000);
	DeleteStA(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　飛び出しかける一条の腕をつかみ、後ろへ除ける。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw整備員.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【ｅｔｃ／整備員】
<voice name="ｅｔｃ／整備員" class="その他男声" src="voice/ma03/011b0190e140">
「こっちゃあ忙しいんだよ！
　下らねえことで騒ぎやがって！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆どが。
	DeleteStA(0,true);
	CreateSE("SE01","se戦闘_攻撃_殴る02");
	MusicStart("SE01",0,1000,0,750,null,false);

	CreateColorSP("絵白転", 5000, "#FFFFFF");
	WaitKey(10);
	Delete("絵白転");

	CreatePlainSP("絵板写", 1000);
	FadeFR2("絵板写",0,1000,300,0,0,30,DxlAuto, true);
	Delete("絵板写");

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0200a00">
「ご迷惑をお掛けしました」

{	FwC("cg/fw/fw一条_怒りc.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0210a02">
「……ッ……！」

{	NwC("cg/fw/nw整備員.png");}
//【ｅｔｃ／整備員】
<voice name="ｅｔｃ／整備員" class="その他男声" src="voice/ma03/011b0220e140">
「とっとと消えろッ！　ボケが！」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0230a00">
「はい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　頭を下げるこちらにぺっ、と唾を吐き捨てて大男が
ガレージへ戻ってゆく。
　手巾で頬についた汚れを拭い、俺は向き直った。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0240a00">
「行くぞ」

{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0250a02">
「…………」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0260a00">
「大丈夫ですか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　子供の方に尋ねる。
　彼は立ち上がると、こちらをきっと睨みつけて言い
放った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw男の子.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【ｅｔｃ／男の子】
<voice name="ｅｔｃ／男の子" class="その他男声" src="voice/ma03/011b0270e200">
「いくじなしっ」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0280a00">
「……」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0290a02">
「おい、このガキ――」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0300a00">
「止せ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170a]
　一条の方を向いてぺこりと頭を下げると、男の子は
廊下を走り去っていった。
　シャツの背にプリントされたチームロゴが遠ざかる
――<k>大男の作業着にあったのと同じロゴだった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

	CreateSE("SEL01","se人体_足音_歩く03_L");//ダミー注意
	MusicStart("SEL01",0,1000,0,1250,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170b]
　……騒ぎを起こしてしまった以上、この近辺で調査
を続けることは望ましくない。
　俺は子供と正反対の、広場へと続く方角へ向かって
歩き出した。少し遅れて、一条が追ってくる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0310a02">
「……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0320a00">
「……」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0330a02">
「……あの」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0340a00">
「何だ」

{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0350a02">
「…………。
　あたしは、間違ってるんでしょうか」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0360a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 300, 0, null);

}


//◆選択：間違っている／間違ってはいない


..//ジャンプ指定
//◆間違っている　"ma03_011ba.nss"
//◆間違ってはいない　"ma03_011bb.nss"


//★選択肢シーン
scene ma03_011b.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義

	SoundPlay("@mbgm17",0,1000,true);

	PrintGO("背景０", 30000);
	OnBG(100,"bg036_競技場通路_01.jpg");
	FadeBG(0,true);
	FadeDelete("背景０", 0, true);

//■選択肢
	SetChoice02("間違っている","間違ってはいない");
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
//間違っている　"ma03_011ba.nss"
				$GameName = "ma03_011ba.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//間違ってはいない　"ma03_011bb.nss"
				$GameName = "ma03_011bb.nss";
		}
	}
}

