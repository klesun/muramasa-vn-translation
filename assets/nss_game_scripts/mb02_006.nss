//<continuation number="320">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_006.nss_MAIN
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
	#bg033_普陀楽城宿舎_03b=true;
	#bg001_空c_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb02_007.nss";

}

scene mb02_006.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb02_005.nss"


//◆夜
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg033_普陀楽城宿舎_03b.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　深更。
　慣れた気配の接近に、<RUBY text="とこ">床</RUBY>から出て窓辺へ寄る。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm16",0,1000,true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0060010a00">
「……村正か」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0060020a01">
《ええ》


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0060030a00">
「捕捉されずには済んでいるようだな」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0060040a01">
《厳しいけれどね。
　……夜になれば少しは警備も甘くなるかも、
って期待してたのに》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0060050a00">
「変わるまい」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0060060a01">
《むしろ堅くなったくらいよ》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　だからこそ、俺も宿舎を出るのは控えた。
　夜の調査行動は昼と違い見咎められただけで致命的
に怪しまれる。何の益もない。

　<RUBY text="おんぎょう">隠形</RUBY>に優れる村正でさえ梃子摺る監視網を掻い潜り、
情報を収集するなど、似非警官には荷が勝ち過ぎる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0060070a00">
「それで……結果はどうだ」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0060080a01">
《今のところは、反応なし。
　もっとも、まだ全部を回ったわけじゃない
けれど》


//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0060090a01">
《本丸周辺にはとても近付けないし。
　あれは何なのかしらね……表の警備陣だけ
じゃない。裏にも何か結界がありそう》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0060100a00">
「そうか……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　俺が普陀楽へやってきた目的は二つ。

　一つは親王の下命。
　もう一つは――<RUBY text="ニッカリ">青江</RUBY>の遺言。

　
　　　　　　　　　《白銀の星》


　
　　　　　　　　　《かの姫は》


　
　　　　　　　　　《六波羅の》


　六波羅の――何だと言おうとしたのか。
　それは知る術とてない。死人は語ってくれない。

　だが銀星号が六波羅に関わり有りとするなら、まず
調べるべきはこの普陀楽山塞だ。
　幕府の頭脳であり心臓。

　その意味で、親王の依頼は渡りに船でもあった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0060110a01">
《御堂の方は？》


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0060120a00">
「特に気付いた点はない。
　お前のように、あれの<RUBY text="けはい">香気</RUBY>を辿れるわけで
もないしな」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0060130a01">
《そう？
　その娘の世話をするのに忙しくて、そっち
まで気がまわらなかったっていうのが本当の
ところなんじゃないの？》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　別に指を指されたわけではないが、その娘というの
が誰のことなのかは悩む余地もなかった。
　……村正の音なき声には、どうも棘がある。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0060140a00">
「今日一日を振り返れば、否定も難しいが。
　目的は忘れていない」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0060150a01">
《……なら、いいけれど》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0060160a00">
「気に食わんのか」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0060170a01">
《何が？
　その娘が？　それとも、貴方が今している
ことが？》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0060180a00">
「両方だ」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0060190a01">
《別に……
　貴方の好きにすればいい》


//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0060200a01">
《その娘に手を貸すのも、権力争いの道具に
なるのも。貴方がそう決めたならそれでいい》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0060210a00">
「なら、何が気に入らない？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0060220a01">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　返答はなかった。

　気配が離れてゆく。
　それは単に物理的な距離が離れているからだとわか
っていながら。俺には、村正の隔意を示しているよう
にも思えてならなかった。

　あの日、一条に従うと決めてからずっとこうだ。
　村正は俺から遠ざかっている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0060230a01">
《御堂》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0060240a00">
「……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0060250a01">
《正宗に気を付けなさい。
　あれは貴方を許していない》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0060260a00">
「……あぁ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　知っている。
　今――この瞬間も。俺を冷たく見据える鋼鉄の眼光
を肌に感じている。

　俺への……
　邪悪への殺意を、失っていない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0060270a01">
《その娘もよ》


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0060280a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);
	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　劒冑の気配は完全に去った。
　再び、探索を始めるのだろう。

　視線を部屋の中へ戻す。
　俺の寝床から馬一頭分ほど離れて、綺麗に布団の中
へ収まった寝姿がある。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0060290a00">
「一条」


{	NwC("cg/fw/nw一条.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0060300a02">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　呼び掛けに反応はない。

　だが、目覚めているのはわかっていた。
　<RUBY text="・・・・・・・・・">呼吸が眠っていない</RUBY>。俺の声は届いている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0060310a00">
「何故、俺を殺さなかった？」


{	NwC("cg/fw/nw一条.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0060320a02">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se自然_森_山の雰囲気01_L");
	MusicStart("SE01",1000,1000,0,750,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　応えはない。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnBG(100,"bg001_空c_03.jpg");
	FadeBG(1500,true);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0175]
　月は上天で薄く笑い、草木は風に震えている。
　酷く冷え込む夜だった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitAction("@OnBG*", null);

	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);
	Wait(2000);
//	WaitKey(2000);
	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb02_007.nss"