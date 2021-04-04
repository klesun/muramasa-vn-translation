//<continuation number="930">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_020.nss_MAIN
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
	#bg098_堀越御所内廊下_03=true;
	#bg097_堀越御所内景明の部屋_03a=true;
	#bg064_普陀楽城内道_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_021.nss";

}

scene md02_020.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md02_019.nss"


//◆昼→夜
//◆通路

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	CreateTextureSP("絵背景10", 4000, @0, @0, "cg/bg/bg098_堀越御所内廊下_02.jpg");

	SoundPlay("@mbgm26", 0, 1000, true);
	Delete("上背景");
	FadeDelete("黒幕１",1500,true);
	CreateTextureSP("BG", 3000, @0, @0, "cg/bg/bg098_堀越御所内廊下_03.jpg");
	WaitKey(1500);

	FadeDelete("絵背景*",1500,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　夜。
　まだ早い内に、俺はあてがわれた部屋へ引き取った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(3100, @0, @0,"cg/st/st村正_通常_私服.png");

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200010a00">
「今日は少しばかり疲労した」

{	FadeStL(300,false);
	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0200020a01">
「あれこれとあったしね」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　そう言う村正も、心なしか気怠げだ。

　別荘地で療養しているのではない。敵地の真ん中に
いると考える方がむしろ事実に近いだろう。
　そう思えば、この程度の気苦労はまだしも軽いもの
なのかもしれないが――どう思おうと目蓋は下がる。

　理論武装で疲労を克服できるほど俺は器用に出来て
いないようだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0200030a01">
「休んだ方がいいんじゃない？
　また変なのが来る前に」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200040a00">
「そうしよう」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　変なのというのが特定の誰かを指しているのか、不
特定の多数を指しているのか、追及する気は全く起き
なかった。
　部屋へ入る。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
//◆部屋
	Delete("BG");
	DeleteStL(0,true);
	OnBG(100, "bg097_堀越御所内景明の部屋_03a.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　そして即座、違和感に足を止めた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	StR(1000, @0, @0,"cg/st/st村正_通常_私服.png");
	FadeStR(300,true);
	SetVolume("@mbgm*", 1000, 0, null);
	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0200050a01">
「どうしたの？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200060a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　不審に思うべき点は何も無い。

　調度の配置は朝と同じ。掃除をされた形跡はあるが、
それは無論それだけの事である。
　部屋を空けている間に誰かがやってくれたのだろう。

　不審な点は無い。

　記憶と変わらぬ部屋の様相。
　俺と村正が立てるのみの物音。
　ほのかに漂う草花の香り。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200070a00">
「草花の香り」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0200080a01">
「……？
　そこの花瓶に生けてある花でしょう？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200090a00">
「それもある」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0200100a01">
「も？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200110a00">
「あと一種。
　これは、軍にいた頃に嗅いだものだ」

//【景明】
<voice name="景明" class="景明" src="voice/md02/0200120a00">
「同じ隊の、会津出身の上等兵が良く使って
いた……自家製の薬。
　植物から作る、血止めの膏薬」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200130a00">
「その匂いだ」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0200140a01">
「……」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200150a00">
「村正。
　熱源探査」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0200160a01">
「……諒解」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);
	WaitKey(1500);

//◆ぴー。

	OnSE("se日常_機械_PCリセット音", 1000);
	WaitKey(300);
	SetFwC("cg/fw/fw村正_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0200170a01">
「!!
　そこの棚の裏っ！」

{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200180b26">
「ちぃ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆飛び出す黒瀬
//◆景明と対峙
	OnSE("se日常_建物_スライド開く02", 1000);

	StL(1000, @-120, @120, "cg/st/st黒瀬_通常_私服.png");
	StR(1000, @0, @0,"cg/st/st景明_通常_私服.png");
	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/ef/ef002_汎用移動.jpg");
	Rotate("絵背景100", 0, @0, @180, @0, null,true);

	Wait(300);

	OnSE("se人体_動作_跳躍02", 1000);
	Fade("絵背景100", 50, 1000, null, true);

	FadeDelete("絵背景100", 300, false);
	FadeStL(150, false);
	FadeStR(300, false);

	Move("@StL*", 200, @120, @-120, Axl3, true);
	Move("@StL*", 70, @0, @10, null, true);
	OnSE("se人体_動作_一歩", 1000);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　如何にしてそんな狭い空間に身を潜めていたのか。
　村正が叫び、俺が跳躍するのとほぼ同瞬、そこから
大きな影が飛び出した。

　全身を黒装束で包んだ人物だ。
　顔面もほぼ隠しているが、身ごなしから若くそして
鍛錬を積んだ男だと窺い知れる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm35",0,1000,true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200190a00">
「……<RUBY text="ここ">公方府</RUBY>の人間ではない、か？」

{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200200b26">
「……」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0200210a01">
「まぁ、それはわざわざ確認しなくてもいい
でしょうね。
　状況的に」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200220a00">
「そうだろうか」

{	FwC("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0200230a01">
「え？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200240a00">
「掃除夫の方が念入りな仕事の最中だったと
いう万一の可能性は」

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0200250a01">
「無理よ。
　この格好で掃除夫ってどういう衝撃の展開
なの」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200260a00">
「埃対策」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0200270a01">
「無理よ！」

{	FwC("cg/fw/fw黒瀬_怒り.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200280b26">
「嬲るか、下郎どもが……！」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0200290a01">
「怒ってるじゃないの」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200300a00">
「何故だろう。
　掃除夫に間違われたからといって、怒りを
覚える必要はないと思うのだが」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0200310a01">
「そういう問題じゃないし。
　ていうか御堂、貴方まさか本気で掃除夫だ
と思ってたわけ？」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200320a00">
「無茶を言うな。どう見ても単に不審人物だ。
　村正、冗談は時と場合を選べ」

//◆コミカル怒り
{	FwC("cg/fw/fw村正_怒りb.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0200330a01">
「……」

{	FwC("cg/fw/fw黒瀬_瞑目.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200340b26">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　どうしてか、俺は孤立してしまった気がした。
　正面と背後から同質同量の怒りが迫っているように
感じられてならない。

　とりあえず、正面に意識を集中する。
　一見して断定できるのは、重武装ではないという事
だ。銃砲も大剣も黒衣の下には潜ませてあるまい。体
の線から自明である。

　といって、危険性が些かでも揺らぐ事はないが。
　室内である点に思慮を致せば、隠し持てる程の小型
兵装の方が有用であり、つまり俺にとっては脅威。

　男に充分な業と殺意があれば、軌跡も見せぬ一閃で
俺の首を<RUBY text="か">掻</RUBY>くだろう。
　そしてそのどちらかでも不足していると判断すべき
根拠は、今のところ皆無である。

　男はどう見ても武人。
　それが、侵入者として<RUBY text="ここ">公方府</RUBY>にいるなら――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw黒瀬_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200350b26">
「この期に及んで命冥加は願わん。
　望み通り、死に華一つ咲かせてくれるわ」

{	FwC("cg/fw/fw黒瀬_怒り.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200360b26">
「だが、冥土の土産は高くつくぞ！」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200370a00">
「無益です」

{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200380b26">
「無益なものか。
　貴様ら<RUBY text="やまいぬ">六波羅</RUBY>を幾匹かでも道連れにすれば、
それだけ世の民が過ごしやすくなる！」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200390a00">
「繰り返しますが無益です。
　貴方の敵が六波羅なら、ここで戦う意味は
全く存在しません」

{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200400b26">
「……何？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200410a00">
「動かれぬよう。
　せっかく塞いだ傷口が開きます」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200420a00">
「察するところ相当の深傷。
　顔色を見るに血液の喪失量も甚だしい……
出血が再び始まれば生命を脅かすことは確実
です」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200430a00">
「騒ぎとなり、人を集めてしまうのも不都合
でしょう。
　どうか進退は慎重に」

{	FwC("cg/fw/fw黒瀬_瞑目.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200440b26">
「…………」

{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200450b26">
「貴様は何者だ」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200460a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw黒瀬_瞑目.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200470b26">
「答える気は無いか……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200480a00">
「いえ。
　失礼、返答を探すのに少々迷いました」

{
	FwC("cg/fw/fw景明_通常b.png");
}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200490a00">
「自分は湊斗景明と申します。
　故あって堀越公方のもとに身を置いている
……居候のようなものです」

{	FwC("cg/fw/fw黒瀬_驚き.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200500b26">
「……居候？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200510a00">
「としか、言いようのない立場です」

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0200520a01">
「……本当にそうね……」

{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200530b26">
「六波羅にも堀越公方にも仕えてはおらぬ、
と？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200540a00">
「寝食の恩義はあります。
　しかし、主従の間柄ではありません」

{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200550b26">
「……」

{	FwC("cg/fw/fw黒瀬_怒り.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200560b26">
「俺をどうする気だ」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200570a00">
「貴方は今日の午前中、ここで何かの騒動を
起こし、追われていた人物ですね」

{	FwC("cg/fw/fw黒瀬_瞑目.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200580b26">
「……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200590a00">
「外へ逃げたと見せ掛けて内部に潜み、深夜
を待っていた……？」

{	FwC("cg/fw/fw黒瀬_瞑目.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200600b26">
「……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200610a00">
「成程。
　屋敷を脱しても堀越の軍管区。闇雲に逃走
するよりその方が確実か」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　実のところは、捕縛に熱意のなかった足利茶々丸の
様子からして、格別の細工を弄さずとも逃げる見込み
はあったのだろうが。
　そんな揚げ足取りをわざわざ口にする必要はない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200620a00">
「公方府などへ忍び込んで、その目的が単に
物盗りという事はないでしょう。
　貴方は何の為に参られたのですか？」

{	FwC("cg/fw/fw黒瀬_瞑目.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200630b26">
「……」

{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200640b26">
「物盗りだ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200650a00">
「そうですか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　正直な答が返ってくるとは、最初から思っていない。

　十中八九、倒幕派の志士であろう。
　……どうするべきか。

　敵対するのは全く無益である。既に自分の口で言明
した通り。
　といって、加勢する筋ではない。

　中立の選択は――この状況に用意されていなかった。
　部屋に留めるなら味方、追い出すなら敵対であろう。
事実上の。

　寝食の義理を思えば、明白な非友好的意図を持って
侵入した者に幾らかでも手を貸すのは気が引ける。
　しかし現状況、俺が手を貸さねば彼の進退が窮まる
のは確実であり、その結果彼が死ぬのも確実である。

　彼は幕府に敵意を持ち、この堀越の将兵とも干戈を
交えたのだろうが、非戦闘員にまで刃を振るったわけ
ではない。
　そんな形跡は全く無かった。

　彼を死地へ蹴り出す気にはとてもなれない。
　だが、彼を匿った結果――機会を得た彼が逃亡する
代わり公方府に対する破壊行動へ踏み切るような事が、
万一にでもあったなら。

　そこで生じる被害に、俺の責任なしとは言えまい。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw黒瀬_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200660b26">
「……」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0200670a01">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　思いのほか、長考してしまっていた。
　二者二様の眼差しが、俺の言葉を待っている。

　しかし結論は出た。
　
　――つまるところ、<RUBY text="・・・・・・">そうさせない</RUBY>ことで、双方への
筋を通す以外にないか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0, "cg/st/st黒瀬_通常_私服.png");
	FadeStL(300, false);

	StR(1000, @0, @0, "cg/st/st村正_通常_私服.png");

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200680a00">
「動けますか？」

{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200690b26">
「……ああ」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200700a00">
「村正。
　お前が先導してくれ」

{	FadeStR(300, false);
	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0200710a01">
「わかった。
　先行して安全を確保、<RUBY text="れんらく">金打声</RUBY>を送ればいい
のね」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆村正、去る
	DeleteStR(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　相棒に説明は要らなかった。
　俺の意図を汲んで、村正が素早く部屋を出てゆく。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw黒瀬_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200720b26">
「……どうするつもりだ」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200730a00">
「しばらくお待ち下さい」

{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200740b26">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆屋敷の外。bg064？

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	DeleteStA(0,true);
//◆部屋
	Delete("@OnBG*");
	OnBG(100, "bg064_普陀楽城内道_03.jpg");
	FadeBG(0, true);
	WaitKey(1500);

	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　脱出は容易だった。
　このような折、劒冑の探査機能は実に有用である。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StR(900, @0, @0,"cg/st/st村正_通常_私服.png");
	StL(1000, @0, @0, "cg/st/st黒瀬_通常_私服.png");
	FadeStL(300, false);
	FadeStR(300,false);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200750a00">
「夜とはいえ、誰もが寝静まるにはまだ早い
時間です。
　気をつけてお行き下さい」

{	FwC("cg/fw/fw黒瀬_瞑目.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200760b26">
「……うむ……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200770a00">
「では」

{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200780b26">
「…………待たれよ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200790a00">
「はい」

{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200800b26">
「失礼だが、今一度名を聞かせて頂けまいか」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200810a00">
「湊斗景明です。
　こちらは村正」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0200820a01">
「……」

{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200830b26">
「某は……<RUBY text="くろのせ">黒瀬</RUBY>と呼ばれている」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200840a00">
「黒瀬……」

{	FwC("cg/fw/fw黒瀬_瞑目.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200850b26">
「仔細あって、実の姓名は名乗れぬ。
　許されたい」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200860a00">
「察しております」

{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200870b26">
「世話になった。
　この恩義は胸に刻んでおく」

//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md02/0200880b26">
「御免」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆黒瀬、去る
//★ inc遠藤 音もなく、と地の文にあるので効果音は外しました。
	SetVolume("@mbgm*", 2000, 0, null);
	DeleteStL(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　一礼を残して、彼は駆け去った。
　音もなく、黒い姿が夜闇に溶け込んでゆく。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200890a00">
「……」

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0200900a01">
「……今日は本当に疲れる日ね」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200910a00">
「全くだな」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0200920a01">
「だから早く寝なさいって言ったのよ」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0200930a00">
「その暇もなかっただろう……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateColorEX("絵色100", 15000, "BLACK");
	Fade("絵色100", 1500, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　そんな事を言い合いながら、部屋に戻り。
　俺は早々に床へ就いた。

　意識が沈むまで、数分と掛からなかった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);
}

..//ジャンプ指定
//次ファイル　"md02_021.nss"