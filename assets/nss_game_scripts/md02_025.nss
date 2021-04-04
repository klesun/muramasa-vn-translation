//<continuation number="260">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_025.nss_MAIN
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
	#bg008_教室_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_026.nss";

}

scene md02_025.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md02_024.nss"


//◆教室

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	OnBG(100, "bg008_教室_01.jpg");
	FadeBG(0, true);
	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	SoundPlay("@mbgm29", 0, 1000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　悲しむべき事件はあったが、常と同じく時間は進み、
昼休みとなった。
　級友達が三々五々、昼食をとるため動き始める。

　俺は弁当を持ってきていないので、食堂へ向かうか、
売店で買うかしなければならない。
　
　今日はどうするか……。

</PRE>
	SetTextEXH();
	TypeBeginHI();//―――――――――――――――――――――――――――――

	SetNwH("cg/fw/ny美人の同級生.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//◆顔ＣＧ使わずネームＣＧ「美人の同級生」
//【ｅｔｃ／ヒロインＥ】
<voice name="ｅｔｃ／ヒロインＥ" class="その他女声" src="voice/md02/0250010e015">
「ねえ、湊斗君」

{	FwH("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0250020a00">
「はい」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆スピカ？
	StC(1000, @0,@0,"cg/rec/stRec_スピカ戸惑い.png");
	FadeStC(300,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　呼ばれて振り返ると、一人の女子学生が奇妙に所在
なげな様子で佇んでいた。
　学内では知らぬ者のいない、財閥令嬢にして理事長
の娘、文化祭のミス・コンテスト優勝者である。

　その手には何故か、弁当箱を二つ抱えていた。

</PRE>
	SetTextEXH();
	TypeBeginHI();//―――――――――――――――――――――――――――――

	SetFwH("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0250030a00">
「何か」

{	NwH("cg/fw/ny美人の同級生.png");}
//【ｅｔｃ／ヒロインＥ】
<voice name="ｅｔｃ／ヒロインＥ" class="その他女声" src="voice/md02/0250040e015">
「お昼は……これから？」

{	FwH("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0250050a00">
「そうです」

{	StC(1000, @0,@0,"cg/rec/stRec_スピカ通常.png");
	FadeStC(300,false);
	NwH("cg/fw/ny美人の同級生.png");}
//【ｅｔｃ／ヒロインＥ】
<voice name="ｅｔｃ／ヒロインＥ" class="その他女声" src="voice/md02/0250060e015">
「お弁当じゃないのよ、ね？
　湊斗君は」

{	FwH("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0250070a00">
「はい。
　食堂か売店です」

{	StC(1000, @0,@0,"cg/rec/stRec_スピカ笑顔.png");
	FadeStC(300,false);
	NwH("cg/fw/ny美人の同級生.png");}
//【ｅｔｃ／ヒロインＥ】
<voice name="ｅｔｃ／ヒロインＥ" class="その他女声" src="voice/md02/0250080e015">
「そ、そう。
　良かった……」

{	FwH("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0250090a00">
「はい？」

{	SetVolume("@mbgm*", 1000, 0, null);
	StC(1000, @0,@0,"cg/rec/stRec_スピカ呆れ２.png");
	FadeStC(300,false);
	NwH("cg/fw/ny美人の同級生.png");}
//【ｅｔｃ／ヒロインＥ】
<voice name="ｅｔｃ／ヒロインＥ" class="その他女声" src="voice/md02/0250100e015">
「コホン」

{	StC(1000, @0,@0,"cg/rec/stRec_スピカツン.png");
	FadeStC(300,false);
	SoundPlay("@mbgm28", 0, 1000, true);}
//【ｅｔｃ／ヒロインＥ】
<voice name="ｅｔｃ／ヒロインＥ" class="その他女声" src="voice/md02/0250110e015">
「あ、あのね……
　よ、よ、良かったら、これ食べない？」

{	FwH("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0250120a00">
「……？
　その弁当を？」

{	StC(1000, @0,@0,"cg/rec/stRec_スピカ怒る.png");
	NwH("cg/fw/ny美人の同級生.png");}
//【ｅｔｃ／ヒロインＥ】
<voice name="ｅｔｃ／ヒロインＥ" class="その他女声" src="voice/md02/0250130e015">
「う、うん……。
{	FadeStC(300,false);}
　あっ、違うのよ!?　そうじゃなくて！」

{	FwH("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0250140a00">
「何がですか」

{	NwH("cg/fw/ny美人の同級生.png");}
//【ｅｔｃ／ヒロインＥ】
<voice name="ｅｔｃ／ヒロインＥ" class="その他女声" src="voice/md02/0250150e015">
「これはね、本当は部活の友達に作ってきた
んだけどっ！
　そっ、その子が、今日は休んじゃってっ」

{	StC(1000, @0,@0,"cg/rec/stRec_スピカ呆れ.png");
	FadeStC(300,false);}
//【ｅｔｃ／ヒロインＥ】
<voice name="ｅｔｃ／ヒロインＥ" class="その他女声" src="voice/md02/0250160e015">
「捨てるのももったいないし……
　そしたらたまたま湊斗君がいたから、もし
良ければ食べてもらおうかなって」

{	StC(1000, @0,@0,"cg/rec/stRec_スピカ怒る.png");
	FadeStC(300,false);}
//【ｅｔｃ／ヒロインＥ】
<voice name="ｅｔｃ／ヒロインＥ" class="その他女声" src="voice/md02/0250170e015">
「それだけなの！」

{	FwH("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0250180a00">
「成程。
　事情は諒解致しました」

{	StC(1000, @0,@0,"cg/rec/stRec_スピカ戸惑い.png");
	FadeStC(300,false);
	NwH("cg/fw/ny美人の同級生.png");}
//【ｅｔｃ／ヒロインＥ】
<voice name="ｅｔｃ／ヒロインＥ" class="その他女声" src="voice/md02/0250190e015">
「……食べてくれる？」

{	FwH("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0250200a00">
「有難く頂きます」

{	StC(1000, @0,@0,"cg/rec/stRec_スピカ通常.png");
	FadeStC(300,false);
	NwH("cg/fw/ny美人の同級生.png");}
//【ｅｔｃ／ヒロインＥ】
<voice name="ｅｔｃ／ヒロインＥ" class="その他女声" src="voice/md02/0250210e015">
「そ、そう。
　じゃあ……どうぞ」

{	StC(1000, @0,@0,"cg/rec/stRec_スピカ主張.png");
	FadeStC(300,false);}
//【ｅｔｃ／ヒロインＥ】
<voice name="ｅｔｃ／ヒロインＥ" class="その他女声" src="voice/md02/0250220e015">
「あっ、でも勘違いしないでよねっ！
　別にあなたのためにつくったんじゃないん
だから！」

{	FwH("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0250230a00">
「……？　はい。
　それは無論」

{	StC(1000, @0,@0,"cg/rec/stRec_スピカツン.png");
	FadeStC(300,false);
	NwH("cg/fw/ny美人の同級生.png");}
//【ｅｔｃ／ヒロインＥ】
<voice name="ｅｔｃ／ヒロインＥ" class="その他女声" src="voice/md02/0250240e015">
「ほ……本当なんだからね！
　本当に……違うんだから……」

{	FwH("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0250250a00">
「わかりました」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

	DeleteStC(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　何故か何度も念を押して、彼女は離れていった。
　余程、俺のためにつくったとは思われたくなかった
らしい。

　嫌われているのだろうか？
　それでも弁当を渡す相手に、持参の昼食がないよう
だからと俺を選んでくれたのなら、実に出来た人物だ
と言わざるを得ない。

　学内の人望が高いのも頷ける。

　弁当箱を開いてみると、メッセージカードが入って
いた。
　内容はほんの一言。

　
　　　　　　　　　『好きです』

</PRE>
	SetTextEXH();
	TypeBeginHI();//―――――――――――――――――――――――――――――

	SetFwH("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0250260a00">
「…………」

</PRE>
	SetTextEXH();
	TypeBeginHIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　成程。
　俺は全てを理解した。

　これは本来、彼女の想い人へ贈られるはずだった物
なのだ。
　勘違いするなと何度も念を押されたのは当然である。

　万事諒解した俺は、その手紙が自分宛てであるなど
という勘違いを決してしなかった。
　大切な弁当を俺などにくれた彼女の心遣いに対して
感謝だけしておく。

　弁当の中身は、明らかに手作りであり、そして俺の
好物ばかりだった。
　まるで彼女が俺のために好みを調べて用意したかの
ようにも思える。

　勿論、単なる偶然だ。

　俺は勘違いしなかった。
　決してしなかった。

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500,1500);

}

..//ジャンプ指定
//次ファイル　"md02_026.nss"