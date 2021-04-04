//<continuation number="240">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_042.nss_MAIN
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
	#bg098_堀越御所内廊下_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_043.nss";

}

scene md02_042.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md02_041.nss"

//◆廊下

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	OnBG(100, "bg098_堀越御所内廊下_02.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm30", 0, 1000, true);
//	DrawDelete("上背景", 0, 100, "blind_01_00_0", true);

	Delete("上背景");
	DrawDelete("黒幕１", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　足利茶々丸は、光を殺す機会を与えると言った。

　……どういう事なのか。

　堀越公方に何らかの異能があるのはどうやら事実だ。
　そして無論、数万の兵力を意のままに動かす権力も
所有している。

　だがそのすべてを駆使して銀星号に挑もうと、討ち
果たす事は叶うまい。
　そう思う。

　なのに、
　
　……心臓が激しい動悸を訴える。

　不吉な予感に肌がぷつぷつ粟立つ。

　<RUBY text="・・・・・・・・・・・・・・">足利茶々丸は嘘を言っていない</RUBY>。
　その確信に、俺は恐怖する。

　彼女の言葉が嘘でないなら、俺は望み通り奪えると
いう事なのだ。
　
　光の命を。

　待ち望んだ瞬間が近い。

　…………だから恐れている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0420010a00">
「閣下。
　事前に教えておいて頂きたいのですが……」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0420020a07">
「ん？」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0420030a00">
「光を、どうやって……殺すと？
　寝込みを襲うつもりですか？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　今日は部屋に引き篭もっているとのことだったが、
それも朝方の話だ。
　もうとっくに起きているだろう。

　いや、まだ寝ていても同じだ。
　そんな単純な方法で殺せる相手とは到底思えない。

　だから中止するべきだ。
　中止した方がいい……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0420040a07">
「違うよ」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0420050a00">
「……」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0420060a07">
「それじゃ殺せない。
　逆だよ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0420070a00">
「逆？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0420080a07">
「うん」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0420090a00">
「……？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0420100a01">
「例によって、わけわからない」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0420110a07">
「すぐにわかる」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0420120a07">
「一目でわかるさ」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0420130a01">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 100, 1, null);
	CreateColorEX("絵色100", 1500, "BLACK");
	Fade("絵色100", 100, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//◆赤字で
　
　　　　　　　　　　引き返せ。

//◆赤字で
　
　　　　　　　引き返せ、湊斗景明。

//◆赤字で
　
　　　　　　この先はお前の行き止まり。
　　　　　　一歩たりとも進めなくなる。

</PRE>
	SetTextEXCColor("RED");
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵色100", 1000, true);
	SetVolume("@mbgm*", 2000, 1000, null);

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0420140a00">
「――――」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0420150a01">
「……御堂」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0420160a07">
「どうしたの？　お兄さん」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0420170a00">
「…………」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0420180a07">
「行くよ？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0420190a00">
「…………はい」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ガラッ。
	OnSE("se日常_建物_スライド開く04", 1000);

	SetVolume("@mbgm*", 5000, 0, null);
	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	Delete("@OnBG*");
	CreateColorSP("下敷", 90, "#000000");
	Delete("黒幕１");

//◆黒

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　その戸を、足利茶々丸は引き開けた。

　中は暗い。
　夜の海のように、茫漠と無が広がっている。

　しかしやがて目が慣れるにつれて、そこは俺にあて
がわれた部屋と<RUBY text="ほとん">殆</RUBY>ど変わりない一室だと知れた。
　そう多くない調度品。上質の畳が敷き詰められた床。

　――中央には、<RUBY text="・・・・">白い何か</RUBY>。

　既視感。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//◆赤字で
　
　　　　　　俺はこの光景を知っている。

</PRE>
	SetTextEXCColor("RED");
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0420200a00">
「……光？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//■↑窓出したまま音声流すと違和感あるのでテキストウィンドウを消す　inc櫻井

//――――――――――――――――――――――――――――――――――――――
//<PRE @box0>
//[text0100]
//◆ゆっくりとした呼吸音
//◆ボイスのみ、テキスト出さない
//{	FwC("cg/fw/fw光_通常b.png");}
//【光】
//<voice name="光" class="光" src="voice/md02/0420210a14">
//「……………………」

	Wait(500);

	CreateVOICE("光","md02/0420210a14");
	MusicStart("光",0,1000,0,1000,null,false);
	$残時間=RemainTime("光");
	WaitKey($残時間);
	SetVolume("光", 100, 0, null);

	Wait(500);

//</PRE>
//	SetTextEXC();
//	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0420220a00">
「眠っているのか？」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0420230a07">
「いいや、起きてる……」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0420240a07">
「目覚めているよ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＳＥ
	OnSE("se日常_機械_スイッチON", 1000);
	CreateColorSPadd("ホワイトアウト１", 5000, "WHITE");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　かちり、と音がして。
　全てが電灯の光明に照らし出された。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

}

..//ジャンプ指定
//次ファイル　"md02_043.nss"