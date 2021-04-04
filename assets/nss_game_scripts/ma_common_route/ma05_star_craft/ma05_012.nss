//<continuation number="2490">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma05_012.nss_MAIN
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
	#bg050_湊斗家門前_01 = true;
	#bg033_湊斗家一室_03a = true;
	#bg033_湊斗家一室_01 = true;
	#bg033_湊斗家一室_02 = true;
	#bg053_湊斗家の庭_02 = true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma05_013.nss";

}

scene ma05_012.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma05_011.nss"


//◆湊斗家前
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg050_湊斗家門前_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm30",0,1000,true);

	StL(1000, @0, @0,"cg/st/st統_通常_私服.png");
	FadeStL(300,true);

	SetNwC("cg/fw/nw薬屋.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／薬屋】
<voice name="ｅｔｃ／薬屋" class="その他男声" src="voice/ma05/0120010e282">
「では、統様……
　こちらが包帯。それに金創薬になります」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0120020b46">
「はい、どうも。
　さっき買い置きをぜんぶ使い切っちゃった
もんでさー。これで助かるよ」

{	NwC("cg/fw/nw薬屋.png");}
//【ｅｔｃ／薬屋】
<voice name="ｅｔｃ／薬屋" class="その他男声" src="voice/ma05/0120030e282">
「……は。
　しかし、そのぅ……」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0120040b46">
「ん〜？」

{	NwC("cg/fw/nw薬屋.png");}
//【ｅｔｃ／薬屋】
<voice name="ｅｔｃ／薬屋" class="その他男声" src="voice/ma05/0120050e282">
「……よろしいので？」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0120060b46">
「いいんだよ」

{	NwC("cg/fw/nw薬屋.png");}
//【ｅｔｃ／薬屋】
<voice name="ｅｔｃ／薬屋" class="その他男声" src="voice/ma05/0120070e282">
「……はぁ」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0120080b46">
「あー、でも、とりあえず他言無用でねー」

{	NwC("cg/fw/nw薬屋.png");}
//【ｅｔｃ／薬屋】
<voice name="ｅｔｃ／薬屋" class="その他男声" src="voice/ma05/0120090e282">
「はい……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆客間。bg033a？
	PrintGO("上背景", 25000);
	CreateColorSP("絵黒", 2000, "#000000");
	OnBG(100,"bg033_湊斗家一室_03a.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);
	FadeDelete("絵黒", 1000, true);

	SetNwC("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//◆寝
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120100a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト
	WaitKey(1000);

	SetFwC("cg/fw/fw首領_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120110b31">
「…………」

//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120120b31">
「……」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120130b31">
「……もし……」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120140a00">
「……――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト少し
	WaitKey(400);

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120150a00">
「気付かれましたか」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120160b31">
「……」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120170a00">
「動かれない方が宜しい。
　傷に障ります」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120180b31">
「……」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120190a00">
「……」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120200b31">
「……この手当ては……」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120210a00">
「はい。
　自分が」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120220b31">
「……」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120230a00">
「……」

{	FwC("cg/fw/fw首領_照れ.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120240b31">
「……肌を……
　…………その……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120250a00">
「…………失礼」

//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120260a00">
「何分、処置は急を要していたものですから」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120270b31">
「……」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120280a00">
「……」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120290b31">
「…………」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120300a00">
「……席を外した方が宜しいでしょうか」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120310b31">
「……ずっと、そこに？」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120320a00">
「応急の処置は致しましたが、何分にも医療
は専門外。いつどのような容態の変化がある
とも知れず。……といって、貴方のご都合を
思うと軽々しく医者も呼べず」

//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120330a00">
「せめて何事かあればすぐに応じられるよう、
控えておりました」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120340b31">
「……」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120350a00">
「何か、ご所望はありますか」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120360b31">
「……いえ。別に……」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120370a00">
「そうですか。
　では、どうぞそのままお休みください」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120380b31">
「……」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120390a00">
「後程また、様子を見に参ります」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120400b31">
「……はい」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆景明去る
//あきゅん「SE：要望：スライド扉を開け閉め去っていく足音、ほぼここ専用」
	CreateSE("SE01","se日常_建物_扉開閉01");
	CreateSE("SE02","se人体_足音_木床ゆっくり歩く01_L");

	$待てい = RemainTime("SE01");

	MusicStart("SE01",0,1000,0,1000,null,false);

	WaitKey($待てい);

	SetVolume("SE01", 500, 0, null);

	MusicStart("SE02",0,1000,0,1000,null,false);

	SetVolume("SE02", 3000, 0, null);


	SetFwC("cg/fw/fw首領_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120410b31">
「…………」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120420b31">
「……負けた。
　…………負けたのね…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆家の中
	CreateColorEX("絵黒", 8500, "#000000");
	Fade("絵黒", 1000, 1000, null, true);
	OnBG(100,"bg051_湊斗家居間_01.jpg");
	FadeBG(0,true);
	WaitKey(500);
	DrawDelete("絵黒", 1000, 1000, "blind_01_00_1", true);

	StR(1000, @0, @0,"cg/st/st統_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw統_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【統】
<voice name="統" class="統" src="voice/ma05/0120430b46">
「お。
　どした？　なんかあったか」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120440a00">
「統様。
　いえ。今し方、目覚められたもので。自分
が傍にいては休むのに障ろうかと」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0120450b46">
「そっか。そいつはよかった。
　暴れ出したりしてない？」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120460a00">
「落ち着いておられます。
　状況を把握していないだけなのかもしれま
せんが……」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0120470b46">
「ま、今は刀振り回そうったって無理だろ。
　なんぼ武者でもね」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120480a00">
「劒冑も持参していませんから」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0120490b46">
「真打の劒冑は装甲されてなくても主の傷を
癒すくらいはできるっつーけど。数打じゃあ
無理か。
　幸やら不幸やら」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120500a00">
「劒冑の力を使われていたら、そもそも自分
では抗すべくもなかったでしょう」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0120510b46">
「それを思うとやっぱ幸運だな。
　こっちにとっちゃ」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0120520b46">
「……なんで向こうさんは武者のくせにわざ
わざ生身で勝負挑んできたんだ？
　よっぽどの変人なのかな」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120530a00">
「いえ。
　彼女は単に、根が武人なのです」

{	FwC("cg/fw/fw統_驚き.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0120540b46">
「うん？」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120550a00">
「<RUBY text="・・">虐殺</RUBY>を良しとしません。
　剣はあくまで、<RUBY text="・・">斗争</RUBY>の為に用いるのです」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0120560b46">
「……ふーむ。
　なんか見えたかね？　息子よ」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120570a00">
「……はい。
　見るべきものを、見たように思います」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0120580b46">
「あの娘、どうする？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120590a00">
「動かせるようになり次第、山の陣地へ送り
届けましょう。
　劒冑があれば回復も早い筈ですから、そう
して差し上げるのが最善かと」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0120600b46">
「それでいいの？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120610a00">
「はい」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0120620b46">
「うん。
　なら、そうすればいいさ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 1000);

//◆夕暮れ
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg002_空a_02.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm23",0,1000,true);

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120630a00">
「お客人。
　……お休みですか？」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120640b31">
「……いえ。
　どうぞ……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆客間
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg033_湊斗家一室_02.jpg");
	FadeBG(0,true);
	CreateSE("SE01","se日常_建物_スライド開く01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120650a00">
「お加減は如何でしょう」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120660b31">
「……悪くありません。
　痛みも……さほどには」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120670a00">
「何よりです。
　夜にはもう一度、包帯を取り替えます。汗
も拭いた方が良いでしょうから」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120680b31">
「……」

{	FwC("cg/fw/fw首領_照れ.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120690b31">
「あなたが、また……？」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120700a00">
「はっ……？」

{	FwC("cg/fw/fw首領_照れ.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120710b31">
「……」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120720a00">
「い……いえ。
　今度は、<RUBY text="はは">養母</RUBY>がおりますので」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120730b31">
「……そうですか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　何処となく、残念そうな顔に見えた。
　……いや、俺の目がおかしいだけだろうが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120740a00">
「……その。
　食事は、できますか」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120750b31">
「……今は、あまり……」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120760a00">
「無理にとは申しませんが……
　夕食は、できれば少しでも。栄養が不足し
ては治る傷も治りません」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120770b31">
「……はい。
　でも……手を使うのも、なかなか」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120780a00">
「そこは、自分が」

{	FwC("cg/fw/fw首領_微笑.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120790b31">
「……そうですか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　何処となく、嬉しそうな顔に見えた。
　……いや、俺の目が狂っているだけだろうが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120800b31">
「…………」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120810a00">
「……」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120820a00">
「貴方は……」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120830b31">
「はい？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120840a00">
「何も、訊ねようとなさらない」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120850b31">
「……」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120860a00">
「……宜しいのですか？」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120870b31">
「ええ」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120880a00">
「……」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120890b31">
「疑問に思う事は何もありません。
　何も……」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120900b31">
「<RUBY text="あたくし">私</RUBY>は敗れた。
　……理解していますから」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120910a00">
「――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　反射的に、謙遜の言葉が口をつきかける。
　<RUBY text="たまたま">偶々</RUBY>だ――実力では負けていた――もう一度やれば
どうなるか――などと。

　それこそ、勝負というものの意味と価値を愚弄し、
対戦者を侮辱する言にほかならない。
　寸でのところでそう気付き、口を噤んだのは、自分
で自分を褒めてやっても良いことだった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120920a00">
「……」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120930b31">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　誤魔化しの余地を求めて、意味もなく柱を眺める。
　そうしながら、視界の隅の<RUBY text="とこ">床</RUBY>を窺う――――<k>彼女は
俺を見ていた。

　じっ、と。
　真っ直ぐな眼差しを、俺に注いでいる。

　……視線の当たる右頬が、奇妙に熱かった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120940b31">
「……けれど……」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120950a00">
「はい」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120960b31">
「もう少し……取り乱しても良いのでしょう
ね。本当は……。
　自分でも意外……」

{	FwC("cg/fw/fw首領_微笑.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120970b31">
「力を尽くして、敗れる…………それが。
　こういうものだとは、思いませんでした」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　俺を見つめたまま、武者はそんなことを言った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0120980a00">
「……」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0120990b31">
「初めてなのです……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121000a00">
「は……」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121010b31">
「これほどまで、私情のままに闘ったことも
……そうして、敗れたことも。
　幕軍にいた頃は、終ぞなくて」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　軍人は軍命に従うものであり私戦を固く戒める。
　軍人が敗れる時は即ち荒野に骸を晒す時である。
　……なるほど、どちらも彼女が経験しているはずは
ない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121020b31">
「だから……
　あなただけです」

{	FwC("cg/fw/fw首領_微笑.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121030b31">
「……私を打ち負かしたひとは……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121040a00">
「……誠に、光栄です」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　どうにかこうにか失礼にならない言葉を掘り出し、
小声で呟く。
　自分でも驚くほど、そこには実感が篭もった。

　今朝の立合いを何度反芻してみても、この腕で勝ち
を拾えた事が信じ難い。
　どんな<RUBY text="コロポックル">幸運の小人</RUBY>が俺に味方したのやら。あるいは
前世の功徳か。どちらにしろ、心当たりは全くない。

　小声の返答を聞いていたのか、いなかったのか……。
　彼女は心持ち、布団の裾を口元へ引き上げるように
しながら続けた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_照れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121050b31">
「……それと……その。
　私が……肌を許した殿方も……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121060a00">
「……」

//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121070a00">
「……………………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　――何を言えと。
　
　今度こそ、言葉は全く見つからなかった。

　ただ本能の指示に従って行動する。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121080a00">
「食事の用意をしてきます」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121090b31">
「あっ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　撤退。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆戸が開いて閉じる。しゅー、ぱたん。
	OnSE("se日常_建物_スライド閉める02",1000);

	SetFwC("cg/fw/fw首領_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121100b31">
「……」

{	FwC("cg/fw/fw首領_微笑.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121110b31">
「……湊斗……
　………景明………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一度フェードアウト。戻り
//◆客間。統と景明
	PrintGO("上背景", 5000);
	CreateColorSP("絵黒", 4900, "#000000");
	OnBG(100,"bg033_湊斗家一室_02.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);
	WaitKey(500);
	FadeDelete("絵黒", 1000, true);

	StR(1000, @0, @0,"cg/st/st景明_通常_社員b.png");
	FadeStR(300,true);

	StCL(1100, @-60, @0,"cg/st/st統_通常_私服.png");
	Move("@StML*", 300, @60, @0, AxlDxl, false);
	FadeStCL(300,false);

	SetFwC("cg/fw/fw統_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【統】
<voice name="統" class="統" src="voice/ma05/0121120b46">
「いいかわかってるな景明。
　まず重要なのは食事の温度だ。これは必ず
熱めにしておくこと。でないとふーふーして
やる理由がなくなって本末転倒だぞ」

{	WaitAction("@StML*", null);
	Move("@StML*", 300, @600, @0, AxlDxl, false);
	FwC("cg/fw/fw統_睨む.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0121130b46">
「冷ます時にはさりげなく口をつけたりする
とポイント高い。
　あくまでさりげなくしかし必ず気付かれる
ようにやれ！　いいな。ここ難しいから」

{	WaitAction("@StML*", null);
	Move("@StML*", 300, @-600, @0, AxlDxl, false);
	FwC("cg/fw/fw統_睨む.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0121140b46">
「最終段階！　匙を伸ばして食べさせてやる。
　この時は手元を見るな！　相手の目を見ろ。
瞳と瞳で見詰め合え。大丈夫だ。こぼしたら
こぼしたでまた別の進展パターンがある」

{	Shake("@StML*", 300, 6, 0, 0, 0, 1000, Dxl2, false);
	FwC("cg/fw/fw統_怒り.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0121150b46">
「さあ、やってみろ息子よ!!」

{	FwC("cg/fw/fw景明過去_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121160a00">
「はい」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆統を外へ運び出してぺいっと捨てる景明。
//◆立ち絵を使った強引な演出で。
//◆客間に戻り

	CreateSE("SE01","se人体_動作_掴む01");
	Move("@StR*", 300, @-570, @0, Dxl2, true);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("@StML*", 300, 6, 0, 0, 0, 1000, Dxl2, false);
	WaitKey(300);
	Move("@StML*", 800, @1200, @0, Dxl1, false);
	Move("@StR*", 800, @1200, @0, Dxl1, true);
	DeleteStA(0,true);

//あきゅん「SE：要望：ぽーいと人を投げた。ギャグ音」
	CreateSE("SE02","se人体_動作_起きる02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	WaitKey(1000);

//◆テキスト無し。ボイスのみＳＥ扱いで流す
//	FwC("cg/fw/fw統_泣き.png");
//【統】
//<voice name="統" class="統" src="voice/ma05/0121190b46">
//「うっうっうっ……ぐすんぐすん。
//　息子がいじめるよぅ……」

	CreateVOICE("統","ma05/0121190b46");

	StR(1000, @30, @0,"cg/st/st景明_通常_社員b.png");
	Move("@StR*", 300, @-30, @0, DxlAuto, false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121170a00">
「<RUBY text="はは">養母</RUBY>が失礼しました」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121180b31">
「い、いえ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	MusicStart("統",0,1000,0,1000,null,false);

	Wait(500);

	SetFwC("cg/fw/fw首領_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0281]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121200b31">
「あの……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121210a00">
「お気になさらず。
　空腹の筈なので、すぐ食事をしに去ります」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121220b31">
「はぁ」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121230a00">
「では、どうぞ。
　ご安心を。既に適温です」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121240b31">
「……」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121250a00">
「……もしや、猫舌ですか？」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121260b31">
「い、いえっ。
　頂きます」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　粥を<RUBY text="すく">掬</RUBY>って差し出した匙を、首領の女性はおずおず
と口に含んだ。
　ややまごつく風ではあったものの、食べ損じて舌を
火傷しているような気色はない。

　大丈夫と見て、俺は次の一杯を掬った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121270a00">
「味にご不満などは」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121280b31">
「いえ……」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121290a00">
「申し訳ありません。
　せめてもう少し、彩りがあれば良かったの
でしょうが」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　麦と米をほぼ半々、そこに卵を一つ落としただけの
粥だ。
　味覚の面でも滋養の面でも、寂しさは禁じ得ない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121300a00">
「最近はこの町の食糧事情も思わしくなく。
　なかなか――」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121310b31">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　俺の言葉に、彼女は気まずげな様子で押し黙る。
　やはりこの貧しさには不満があったのか――<k>などと
的外れな事を三秒ばかり考えた後で、俺の鈍い頭脳は
ようやく気付いた。

　……しまった。
　これでは<RUBY text="・・・・・">当てこすり</RUBY>だ。

　食糧不足に一役買っている人間の面前でこんな話を
すれば、必然そうなる。
　だが、今のは全くの不慮だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121320a00">
「……幕府の食糧管理が未だに厳しいもので。
　都市部では緩和が始まっているそうですが、
地方が恩恵に与るのは今しばらく先でしょう」

//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121330a00">
「尤も、現状でも終戦直後に比べれば遥かに
まし。
　あれこれ言うのは贅沢かもしれません」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121340b31">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　苦しいフォローをしてみたものの、効果が上がって
いるようには見えなかった。
　遠慮することなどない粗末な粥を、首領はいかにも
食べ辛そうにしている。

　……仕方ない。
　こうなってしまった以上は、開き直るか。

　どのみち、話さずにはおかれない事柄なのだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121350a00">
「首領殿」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121360b31">
「……はい」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121370a00">
「改めてお願い致します。
　町に対する略奪行為を、どうか止めて頂き
たい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　頭を下げる。
　約束を盾に取る言い方は、あえて避けた。――その
必要もない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121380b31">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　借用書を突きつける真似に及ばずとも、彼女は自ず
と思い出して、それを考慮する。どうしてか今はそう
信じられた。であれば、言葉は控えた方が礼節に適う。
　事実、首領は沈思する様子だった。

　しかし、表情は多分に痛みを孕んでいる。
　それはきっと――約束のことを思いながらも、遵守
する方向へ考えが進んでいかないからだろう。

　それは、そうだ。
　山賊団は別に嫌がらせ目的で略奪行為に及んでいた
のではない。彼らなりに切羽詰まった事情あっての事
だ。はいやめます、とはゆくまい。

　盗賊の事情など知ったことかと、そう言ってしまえ
ば終わりではある……が、現実的に解決の方策を得る
には、彼らの立場も考慮せずには済ませられない。
　俺はしばし考えた後、再び口を開いた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121390a00">
「今、貴方がたが住まわれている山……」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121400b31">
「……？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121410a00">
「裏へ回ると、人手を失って放置されている
田畑があります。
　そこに入られては如何でしょう」

{	FwC("cg/fw/fw首領_驚き.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121420b31">
「…………」

//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121430b31">
「私達を……
　この町に迎え入れると……？」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121440a00">
「はい」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121450b31">
「……」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121460a00">
「無論、現段階では自分一人の思案です。
　しかし……山賊行為の廃止と、将来的な町
への食糧供給が約束されるのなら」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121470a00">
「貴方がたの入植、そして充分な収穫が得ら
れるまでの生活物資供与。
　これを町の人々に認めさせることは不可能
ではありません」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121480a00">
「及ばずながら、自分が尽力致します。
　養母も協力してくれることでしょう」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121490b31">
「お母様……？」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121500a00">
「先程の。
　このような言い方は何ですが、町に対して
強い影響力を持っています」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121510a00">
「我が湊斗家は平民身分、しかし皆斗本家の
祖はこの界隈を治めていた領主です。
　そのような背景がありますため」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121520b31">
「……あぁ。
　それで……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　納得した風で頷いたのは、影響力云々とは別の事柄
に対してのようだった。
　首領の左手が無意識らしき動作で傷口を押さえる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121530a00">
「いくらかの不満は出るにしろ、大勢は平和
と実益を求める方向へ傾くと思われます。
　貴方が集団をよく統率し、これまで深刻な
衝突を起こさなかった事実も有利に働きます」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121540b31">
「……」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121550a00">
「しかしまずは、貴方がたの意思が肝心。
　……どうでしょう。この提案、受け入れて
頂くわけには参りませんか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　告げるべきを告げて、口を閉ざす。
　瞬きもやめて見つめる先、首領の両瞳の中で<RUBY text="たゆた">揺蕩</RUBY>う
逡巡があった。

　功利の面のみ見れば、まず問題なかろう案だ。
　町にとっては明快至極。略奪というマイナスが田地
の復活でプラスに転ずる、こんな旨い話はない。過去
の経緯を水に流すだけの価値がある――おそらくは。

　山賊化した浪人集団にとってもそうだ。
　今の暮らしがいつまでも続けられると考えるほど、
楽天的ではないだろう。いずれ中央が安定すれば幕府
も地方の治安に目を配り始める。

　最終的には、悪しき賊徒として首を晒される末路が
待つばかりだ。
　が、武器を捨てて町に溶け込めば、そのような最期
は避けられる。

　何の問題もない。

　……だから。
　もし、それでも提案が受け入れられないなら。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_失意.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121560b31">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　その理由は――
　
　首領の表情の移ろいが、言葉に先んじて全てを伝え
ていた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121570a00">
「……首領殿……」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121580b31">
「<RUBY text="あたくし">私</RUBY>たちは武士なのです。
　湊斗景明」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　その声は、床に臥す前の彼女のものだった。
　硬く、強く、冷たい――<RUBY text="あたか">恰</RUBY>も甲鉄のように。

　甲鉄。
　……脆弱な生身を覆い隠す装甲。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121590b31">
「武士なのです」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　繰り返される一言は、弁明の響きを持たなかった。
　約定に背く恥を確かに呑みながら。

　彼女は俺に許しを乞うこともしなかった。
　恥知らずの顔を<RUBY text="・・・">作って</RUBY>いた。
　
　だから、俺は重ねる言葉を失った。

　理解する。
　彼女は武士だ。

　矜持ある武士だ。
　そして、将だ。

　多くの武士を配下とし。
　自分のみならず、彼らの矜持をも守る責務を負った
――将なのだ。

　彼女が武士を捨てられようか。
　否。

　彼女が部下に武士を捨てさせられようか。
　否。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121600a00">
「…………」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121610b31">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
　冷めてしまった粥を片付け、立ち上がる。
　背中に、声は掛からなかった――視線だけが。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆廊下
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg053_湊斗家の庭_02.jpg");
	FadeBG(0,true);
	CreateSE("SE01","se日常_建物_スライド閉める01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　後ろ手に障子を閉めて、ふと嘆息する。
　風の冷たさが、どうしてか無性に厭わしかった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆首領
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg033_湊斗家一室_02.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);
	FadeDelete("絵暗転", 1000, true);

	SetFwC("cg/fw/fw首領_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121620b31">
「……」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121630b31">
「……我ながら……
　なんて恥を知らない……」

//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121640b31">
「武士……
　これが武士というものなら」

//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121650b31">
「……本当に、くだらない……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆翌朝
	ClearWaitAll(2000, 1000);
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg051_湊斗家居間_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);
	SoundPlay("@mbgm27",0,1000,true);

	SetFwC("cg/fw/fw統_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【統】
<voice name="統" class="統" src="voice/ma05/0121660b46">
「……そうか。
　なかなかうまくはいかないか」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121670a00">
「はい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
　朝食の席。
　昨夜のやり取りを、俺は養母に報告した。

　そのせいか、味が良くわからなかった。
　何を食べても妙に苦い。

　山賊団との諍いを平和裡に収める……
　一朝一夕に片付く事ではなく、地道な努力こそ必要、
それは既に理解していた。

　だから昨夜の一件にもさまでの衝撃は受けず、俺は
あの後すぐに寝入ったのだが。
　……実の所、精神の奥ではそれなりに落胆があった
らしい。養母に説明する過程で発見してしまった。

　ついつい、首が俯き加減になる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
//【統】
<voice name="統" class="統" src="voice/ma05/0121680b46">
「焦るんじゃない、景明」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
　両手を合わせてご馳走様をしながら、養母は小さく
笑った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
//【統】
<voice name="統" class="統" src="voice/ma05/0121690b46">
「こういうことはじっくりと腰を据えてやる
もんだ。慌てたってどうにもなんない。
　富士山の頂上まで行くにはさ、一合目から
順々に登っていくしかないんだよ」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121700a00">
「わかってはいますが……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
　しかし、それでも動揺を殺しきれないあたり、まだ
<RUBY text="・・・・・・・">わかっていない</RUBY>部分があるのだろう。
　その部分は富士山の頂上へ羽根で飛んでいきたがる。
武者でもなければ、落ちるだけだというのに。

　急がば、回れ。
　俺は自分自身を戒めた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
//【統】
<voice name="統" class="統" src="voice/ma05/0121710b46">
「で、今日はどうする？」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121720a00">
「取りあえず……朝食を運びがてら首領殿の
容態を窺って参ります。
　万一にも傷が化膿などしているようなら、
医者を呼ぶなりの手を打ちませんと」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0121730b46">
「うん、そうか。
　……ところでおまえさ。首領殿首領殿って、
あの娘さんのなま――」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ばたん。光が暴れる音
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se人体_動作_瓦礫を押しのける");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121740a00">
「!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

//◆客間
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg033_湊斗家一室_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);
	FadeDelete("絵暗転", 1000, true);
	SoundPlay("@mbgm32",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
　腹を切ろう。
　……思案は結局、そこに落ち着いた。

　ゆっくりと、身体を起こす。
　この身は仮にも武者だ。彼から受けた傷は深手では
あったけれども、重要な器官までも損なったわけでは
ない。一日あればそれなりに回復する。

　切腹くらいはできるはずだ。
　今すぐにも。……やるわけにはいかないが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_失意.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121750b31">
（まずは、見つからないように抜け出さない
と……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
　ここで腹を切っては、全くもって迷惑千万。
　畳一枚を台無しにするというだけの話ではなかった。
どのような形であれ、自分がここで死ねば、山で待つ
一族郎党は町と戦端を開くほかなくなる。

　それでは何の為の自裁なのだかわからない。

　山に戻り、弟達に事情を説明してからだ。
　二度に渡る約定違背の恥辱を負い、せめてもの詫び
のために、この腹を切るのは。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_失意.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121760b31">
（武士と称するなら、ね……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
　そうせねばならない。
　昨夜、武士として彼の提案を拒んだように。

　武士として。

　武士とは何か。
　――それは民を武力で支配する存在のことだ。

　武力で治め、武力で守り、武力で奪う。
　それが武士だ。

　間違っても――
　民に<RUBY text="・・・">甘えて</RUBY>生きる者のことではない。

　昨夜、彼は言った。
　田畑を与えるから、そこで暮らせと。

　慈悲を示した。
　善意を示した。

　だから受け入れられなかった。
　民の厚意にすがるのは、武士の道ではなかったから。

　略奪を働き、民に忌まれ憎まれ蔑まれる生き方なら
受容できる。
　それは一つの武士の道だ。最も下等、最も低劣な、
しかし武士の形の範疇だ。

　山賊に身を落としても、武士ではいられる。
　だが――彼の差し伸べた手を握り返したなら、もう
武士ではない。

　武士ではいられない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121770b31">
（……だったら。
　武士なんて、やめてしまえばいい）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]
　そう思う。

　それが一番良いに決まっているのだ。
　誰にとっても――この町にとっても、自分と一族に
とっても。

　けれど、わかっていた。
　武士とは、単に一職業を意味するものではない。

　<RUBY text="・・・・">身魂の形</RUBY>だ。
　武士として生まれ育った者は、何処までも、武士で
しかいられない。

　そして――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0690]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121780b31">
「武士は<RUBY text="あらぶるもの">暴力の存在</RUBY>。
　だから……決して、人の情けなど乞うては
ならない」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0700]
　信念を呟く。
　――そう。武士にそんな資格はない。

　彼の提案が、何よりも山賊――彼らにとってはそれ
以外の何でもない――の前途を案じたすえに出てきた
ものであることは明白だ。無論それだけではなく、町
との利害の摺り合わせもあるにしても。

　町の都合のみを考えるなら、ただ出て行けと言えば
済む話なのだ。
　それがわかっているから、受け入れられなかった。

　もし、出て行けとだけ言われたなら――それはそれ
で無論受け入れられはしないが、思い悩む必要は何も
なく済んでいただろう。

　一族の頭領として、配下に対する責任を果たすため、
厚顔に約束を忘れ去り要求を突っぱねて、恥知らずと
憎まれるだけの話だった。
　結果は変わらないが、ずっと単純明快だ。

　あるいは――
　もし彼の要求が、この自分一人の身命に留まるもの
であったなら。

　……それは悩まず受け入れられたろう。
　彼は私に勝ったのだし――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121790b31">
（……そうね）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
　そこで気付いた。
　彼の提案に対する拒絶、その根底にあるもの。

　彼は私に勝ったのだ。
　だから、彼に何かを奪われるなら納得がいく。

　だが、勝利した彼に、敗北した自分が何かを施され
たりなどしては――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_失意.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0730]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121800b31">
（まるで塵芥のよう）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0740]
　それだ。
　まず第一にそれが、自分は我慢ならないのだ。

　彼の慈悲を受け取ることで……
　彼に対して、自分が全く取るにも足らない、卑小な
存在になり下がってしまうのが許せないのだ。

　<RUBY text="・・・・・">対等の敗者</RUBY>として、自分こそ彼に与えなくてはなら
ない。
　彼の勝利に報いなくてはならない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0750]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121810b31">
（彼にそう言えば……
　なら提案を受け入れてくれって、そう言う
でしょうけれど）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0760]
　あの提案で多くを受け取るのはあくまで自分と一族。
　次いでこの町だ。……彼ではない。

　余りにも虫の良すぎる――私達にとって！――あの
提案を諾々と受け入れてしまえば、自分は彼の足元に
さえ届かないちっぽけな存在であると認める事になる
だろう。

　彼が目を向けるにも値しない、記憶に留めるまでも
ない、つまらぬ代物に成り果てるだろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0770]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121820b31">
（……それが嫌だから、なんて）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0780]
　世には迷惑な女もいたものだ。
　つい本心からそう思ってしまい、苦笑する。

　やはり腹でも切る以外にないようだ。
　彼に報いなくては納得がいかず、しかし報いる何物
もなく、意固地になっている女など邪魔なだけ。

　せめてこんな自分を始末してやることが――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆光の暴れる音
	CreateSE("SE01","se人体_動作_物音立てる01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateVOICE("景明","ma05/0121830a00");
	MusicStart("景明",0,1000,0,1000,null,false);

/*=====================================
//◆ボイスのみ
	SetFwC("cg/fw/fw景明_過去.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0790a]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121830a00">
「……光っ!!」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

=============================*/

	SetFwC("cg/fw/fw首領_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0790b]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0121840b31">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆光の部屋
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg033_湊斗家一室_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);
	FadeDelete("絵暗転", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0800]
　光の発作は日没から深夜にかけて良く起こる。
　午前中、特に朝方というのは珍しい。

　そしてそのような時は決まって、常にも増して酷い
症状を示す。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0810]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121850a00">
「申し訳ありません、統様！
　足をお願いします！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0820]
　妹の、病み衰えた肉体の暴走を遂に抑えかねて、
養母に助勢を求める。
　返答はない。俺の声より先に養母は行動していた。
奇態に屈折してゆく膝を、寸でのところで捕まえる。

　安堵して胸を撫で下ろす間もなかった。
　その一瞬、俺の注意が逸れた隙をつくように、光の
首が持ち上がって――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0830]
//【統】
<voice name="統" class="統" src="voice/ma05/0121860b46">
「景明！」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121870a00">
「ッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0840]
　それは完全に致命的だ！

　間一髪、妹の頭を抱き込む事に成功する。
　両手で――可能な限り素早く、可能な限り柔らかく
――今はきっと健全な人間の小指ほどの強度すらある
まい首を支えて――

　その刹那に、枯れ枝を踏み折るかのような乾いた音
が――<k>
　
　…………聞こえなかった事を、天に感謝する。

　その瞬間が、発作の<RUBY text="ピーク">頂点</RUBY>だった。
　ゆっくりと、少しずつだが……光の狂態が穏やかに
なってゆく。

　俺の心臓の鼓動の鎮静は、ことによるとそれよりも
遅かった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0850]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121880a00">
「…………」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0121890b46">
「……まー、なんだ。
　ギリギリセーフ？」

//【統】
<voice name="統" class="統" src="voice/ma05/0121900b46">
「結果オーライ。
　えらいぞ息子よ」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121910a00">
「……早く……」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0121920b46">
「景明？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121930a00">
「……早く……しないと……」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0121940b46">
「……」

//【統】
<voice name="統" class="統" src="voice/ma05/0121950b46">
「落ち着け。
　息子」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121960a00">
「……」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0121970b46">
「急いでどうにかなることと、どうにもなん
ないことがある。
　だろ？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121980a00">
「……はい。
　わかっています……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0121990a00">
「首領殿にお願いします。
　……もう一度……何度でも。山賊をやめて
頂けるように……」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122000a00">
「それしか……
　光を治せる医者を本家に招いてもらうには、
それしかない……」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0122010b46">
「……ああ。そうしな。
　光はわたしが見ておくから」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122020a00">
「はい。
　お願いします……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆庭？
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg053_湊斗家の庭_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);
	FadeDelete("絵暗転", 1000, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0860]
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆客間
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg033_湊斗家一室_02.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 2000, true);
	WaitKey(1000);
	FadeDelete("絵暗転", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0870]
　首領の食事が済むまでの間、方策を求めて全脳機能
を駆使した。
　如何にすれば、彼女の翻意を得られるか。

　無数の小細工が思い浮かんだ。
　そして、その全てを棄却した。

　結局。
　採るべき手立ては一つきりだった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲しみ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0880]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122030a00">
「お願い致します」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0122040b31">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0890]
　枕の上にある首領より、更に低い所まで頭を下げる。
　畳の筋目がよく見えた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0900]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122050a00">
「刀を鍬に持ち替えて暮らすが如きは、武士
たる者の選べる道に<RUBY text="あら">非</RUBY>ず。
　それは重々、承りました」

//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122060a00">
「納得もしております」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0910]
　昨夜告げられた、短い返答を思い起こす。
　反駁の隙など何処にもなかった。

　だから、改めて論破しようなどとは思わない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0920]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122070a00">
「しかし。
　そこを敢えて――どうか」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0122080b31">
「……」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122090a00">
「この町の為」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0930]
　貴方がたのため、とは言えなかった。
　<RUBY text="・・・・・・・・">ためにはならない</RUBY>と、その事は既に結論を出されて
しまっている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0940]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122100a00">
「どうかお願い致します。
　山賊をやめて頂きたい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0950]
　芸も無く、ただ頼む。
　平伏して、願い上げる。

　そうするしかなかった。
　論を戦わせようにも、結論がもう出ている。

　町と彼女らの利害調整は叶わなかった。
　彼女らは利害のみで動く存在ではなかったから。

　彼女らは武士。
　武力に拠って立つもの。

　この町で彼女らが武士たらんと欲するなら、確かに、
山に陣取って賊でもやるほかにない。
　正規軍を逐われた身では、それ以外にどう仕様も。

　結論は出ている。
　だから、<RUBY text="・・">頼む</RUBY>。

　筋道の通らぬ事をそれでも通したく思うならば。
　頼む、願う。それだけが唯一途だ。

　節を曲げよと。
　武士を捨てよと。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0960]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122110a00">
「どうか……」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0122120b31">
「……話はそれで終わりですか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0970]
　初めて、首領が口を開く。
　冷たい言葉だった。

　冷たい――言葉だったが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0980]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122130a00">
（……？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0990]
　面を伏せたまま、内心で首を傾げる。
　首領の言葉は、活字的に解釈すれば冷徹であったが。

　しかしその口調は、内容に相応しい冷たさをまるで
欠いていた。
　何処か責めるような響きはあるが、冷たさとは違う。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1000]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0122140b31">
「それで終わりなのですか」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122150a00">
「は……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1010]
　同じ響きで繰り返される言葉に、戸惑いつつ応じる。
　意図がよくわからない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1020]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0122160b31">
「……他には、何も……
　言うべきことは無いのですか？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122170a00">
「……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122180a00">
「……いえ。
　何もありません」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1030]
　俺の答えに、深々とした嘆息。
　彼女は――勘違いでなければだが。心から、呆れた
ようだった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_微笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1040]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0122190b31">
「……ふふ……」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122200a00">
「……？」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0122210b31">
「湊斗景明。
　家はただの平民、と言っていましたけど」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122220a00">
「はい」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0122230b31">
「嘘つき」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122240a00">
「はっ？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1050]
　……どういう意味か。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1060]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0122250b31">
「あなたも武士です。
　<RUBY text="・・・・・・・・">だめなところだけ</RUBY>」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122260a00">
「……」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0122270b31">
「人の情けにすがるということが、どうして
もできない……
　そういう人間を傍から見ると」

//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0122280b31">
「こんなにも……やるせない。
　知らなかった。こういうものなのね……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1070]
　そんなことを独言めかして呟き、女傑は微笑した。
　あたかも、自嘲するように。

　……真意がつかめない。
　彼女は――何を言っているのだろう。

　何を、知って――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1080]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0122290b31">
「武士の<RUBY text="もとい">基</RUBY>は武力……」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122300a00">
「？」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0122310b31">
「その武力で敗れた以上……
　私も……私の兵たちも。武士を捨てるのが
筋なのかもしれません」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122320a00">
「……首領殿？」

{	FwC("cg/fw/fw首領_微笑.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0122330b31">
「湊斗景明。
　兵の説得は私が請け負います」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0122340b31">
「その代わり……
　私ども一党の受け入れについて、あなたの
確約を頂けますか」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122350a00">
「――――」

{	FwC("cg/fw/fw景明過去_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122360a00">
「は……はい。
　必ずや……自分が、責任を持ちまして」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1090]
　<RUBY text="ほとん">殆</RUBY>ど反射的に答えを返しつつ。
　頭の中身は事態の進展についてきていなかった。

　――何か、こう。
　棚から牡丹餅が落ちてきたようなのだが。

　まさか？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1100]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0122370b31">
「すみません。
　私の着物の懐に、<RUBY text="やたて">矢立</RUBY>と紙があったと思う
のですが」

{	FwC("cg/fw/fw景明過去_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122380a00">
「は……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1110]
　言われるまま、彼女の手荷物をまとめてあった場所
から要望の物を取り出して届ける。
　その紙にすらすらと、彼女は何かを書きつけた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1120]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0122390b31">
「どうぞ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122400a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1130]
　差し返された紙を受け取る。
　そこに書かれた内容は簡潔だった。

　俺の提案を受け入れる事。
　二度と略奪を行わない事。
　そして、<RUBY text="かおう">花押</RUBY>。

　……まさしく、俺が求めていたものだった。
　これこそ俺に、どうしても必要なものだった。

　これがあれば――
　光を救える!!

　……だが、どうして。<k>
　どうして、突然、

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1140]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122410a00">
「……」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0122420b31">
「……」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122430a00">
「……不覚にも、気付きませんでした。
　よもや聞かれていたとは」

{	FwC("cg/fw/fw首領_通常a.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0122440b31">
「何のことかしら」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1150]
　つん、と。
　奇妙に懐かしさを覚える口調で、首領はそっけなく
応じた。

　誓紙を丁重に、傍らへと置く。
　指を揃えて、俺はもう一度、深く礼を執った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1160]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122450a00">
「有難うございます」

//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122460a00">
「……有難うございます……！」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0122470b31">
「礼には及びません。
　私は取引に応じただけです」

//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0122480b31">
「……我が一族の帰趨。
　どうかよろしくお願いします」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0122490a00">
「はい……！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma05_013.nss"