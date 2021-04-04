//<continuation number="140">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_013.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/mb04_013.nss","MasamuneComes",true);
	Conquest("nss/mb04_013.nss","MasamuneComesSET",true);
	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼イベントＣＧ
	#bg002_空a_02=true;
	#bg201_旋回演出背景市街地_02=true;
	#bg041_片瀬海岸_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb04_014.nss";

}

scene mb04_013.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb04_012vs.nss"

//◆夕空
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#FFFFFF");
	OnBG(100,"bg002_空a_02.jpg");
	FadeBG(0,true);
	Delete("上背景");
	CreateTextureSP("絵背景100", 100, 0, -1000, "cg/bg/bg201_旋回演出背景市街地_02.jpg");

	CreateSE("SE01L","se戦闘_動作_空走行02_L");
	MusicStart("SE01L",2000,500,0,1000,null,false);

	Move("絵背景100", 100000, @0, -1500, null, false);


	FadeDelete("絵暗転", 2000, true);

	Wait(1000);

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【光】
<voice name="光" class="光" src="voice/mb04/0130010a14">
《ふ……ふふ……》


//【光】
<voice name="光" class="光" src="voice/mb04/0130020a14">
《楽しかった……》


//【光】
<voice name="光" class="光" src="voice/mb04/0130030a14">
《……また……》


//【光】
<voice name="光" class="光" src="voice/mb04/0130040a14">
《……どこかで……
　……会おう》


//【光】
<voice name="光" class="光" src="voice/mb04/0130050a14">
《…………景明…………》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE02","se戦闘_動作_空突進08");
	MusicStart("SE02",0,300,0,1000,null,false);
	Wait(2500);

//◆海に沈む音。どぼーん。遠い。
	CreateSE("SE01","se人体_動作_水中飛び込み02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(1500);

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0130060a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆ウェイト
	SetVolume("SE*", 2500, 0, null);
	WaitKey(2500);

//◆海岸・夕
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg041_片瀬海岸_02.jpg");
	FadeBG(0,true);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg041_片瀬海岸_02.jpg");

	FadeDelete("上背景", 1500, true);
	WaitKey(1000);
	FadeDelete("絵暗転", 1500, true);

	CreateSE("SE01","se戦闘_動作_鎧_着地01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(800);
	Shake("絵背景100", 500, 0, 5, 0, 0, 1000, Dxl2, false);


	Wait(800);

	SoundPlay("@mbgm32",0,1000,true);

	StR(1000, @0, @0,"cg/st/3d村正標準_立ち_通常.png");
	FadeStR(500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　村正を再び装甲し、着陸する。
　……銀星号は、海中に没したようだった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0130070a01">
《……最期を……確認する？》


{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0130080a00">
「いや……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　その必要があるとは思えなかった。
　それに、悟るところもあった。

　今は麻痺したようになっている自分の心が……
　その事実の最終確認を済ませた時には、崩れ去るの
だろうと。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆がく。膝を突く
	CreateSE("SE01","se人体_足音_鎧歩く03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("@StR*", 300, 4, 0, 0, 0, 1000, Dxl2, false);
	Move("@StR*", 300, @10, @40, Dxl2, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0130090a01">
《御堂！》


{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0130100a00">
「……大事無い」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　銀星号の一打を浴びた衝撃は、字義通り骨の髄まで
染み渡っている。
　熱量も、枯渇寸前だ。

　それでも今、<RUBY text="くずお">頽</RUBY>れて眠る事は許されなかった。

　まだ、倒れてはならなかった。
　心も、体も。

　二年前からの戦いには終止符が打たれた。
　しかし、俺にはあと一つ、為すべき事が残っている。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　――それで……いいんですよね……？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードイン
	FadeDelete("絵色黒", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　答えられなかった問いがあった。
　あれをそのままにはしておけない。

　俺は彼女に従い、協力する事を約束した。
　俺には彼女のために力を尽くす責任がある。

　彼女の求めに応えなくてはならない。

　彼女が己の理非を問うたなら、俺はこの身を賭して
答えを返さねばならない。

　それが……
　俺の最後の責務。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(500,true);

//◆ひゅごーん。すちゃ。騎航と着陸のＳＥ
	MasamuneComes();

	Wait(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　背後に現れた気配は、振り返って顔を確かめるまで
もなく、激情で総身を<RUBY text="や">灼</RUBY>いていた。
　余程に無理な騎航を重ねてきたのか。息遣いは荒く、
心の動悸も聴こえてくるようだった。

　彼女はそれを無理に抑え込んだらしい。
　息を呑み下し。そうして――しかし、言葉は無い。

　ただ万の言葉より雄弁な沈黙が、俺の背を<RUBY text="あぶ">焙</RUBY>った。
　
　彼女は悟っている。
　俺が何を遂げたのか、既に。

　……ならば応えよう。
　寝物語の、あの問い掛けに。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	Delete("@プロセス正宗飛来");

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0130110a00">
「一条」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0130120a00">
「邪しきものへの、お前の怒りは正しい。
　悪しきものへの、お前の憎悪は正しい」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/0130130a00">
「お前は正しい」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0130140a00">
「だが……
　<RUBY text="・・・・・・">お前の戦いは</RUBY>、決して正しくはない」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆一度シーン切り
	ClearWaitAll(2000, 0);

}

..//ジャンプ指定
//次ファイル　"mb04_014.nss"



.//プロセス用======================================================

..//正宗が遠方より騎航し着地する
function MasamuneComes()
{
	CreateProcess("プロセス正宗飛来", 5000, 0, 0, "MasamuneComesSET");
	SetAlias("プロセス正宗飛来","プロセス正宗飛来");
	Request("プロセス正宗飛来", Start);
	Request("プロセス鼓動", Disused);
}

function MasamuneComesSET()
{
	CreateSound("SEP01", SE, "sound/se/se戦闘_動作_空落下02");
	CreateSound("SEP02", SE, "sound/se/se戦闘_動作_鎧_着地01");
	SetVolume("SEP01", 0, 0, null);
	SetVolume("SEP02", 0, 0, null);
	SetAlias("SEP01", "SEP01");
	SetAlias("SEP02", "SEP02");

	Request("SEP01", "Play");
	SetVolume("SEP01", 1000, 1000, null);
	Request("SEP01", Disused);

	Wait(1000);
	SetVolume("SEP01", 1000, 0, null);
	Wait(1000);
	Delete("SEP01");

	Wait(300);

	Request("SEP02", "Play");
	SetVolume("SEP02", 0, 1000, null);
	Request("SEP02", Disused);

	WaitPlay("SEP02", null);
	WaitPlay("SEP*", null);
}