//<continuation number="400">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_005.nss_MAIN
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
	#bg023_弥源太の家_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb04_006.nss";

}

scene mb04_005.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb04_004bbb.nss"

//◆目覚め
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg023_弥源太の家_02.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……荒れた小屋。
　戻ってきたようだ。現実に。

　<RUBY text="・・">現実</RUBY>。
　そう。ここが現実で、今までが夢。

　…………この山寺の、仏の導きか？
　
　そんなことを思って、すぐ失笑する。

　<RUBY text="まさか">真逆</RUBY>、だった。
　夢に示された道は、仏道から遠くかけ離れている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0050010a01">
《……御堂？　起きたの？》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050020a00">
「ああ。
　どれくらい眠っていた？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0050030a01">
《ほんの数分だけれど。
　多少は疲れが取れた……って事もなさそう
ね》


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050040a00">
「だろうな」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　気分は、全く爽快ではない。
　晴れやかさとはどこまでも縁遠い。

　むしろ手足は重さを増している。
　それは今の夢が改めて直面させた、俺の罪の重さだ。

　その重さを、しかし――厭わない。
　これは俺の背負うべきものなのだと自覚する。

　この重さが、俺に教える。
　これは湊斗景明が意思を貫徹する為に、重ねてきた
罪なのだと。

　意思。

　他人の命を略奪してでも、果たさねばならぬのだと、
決意した目的があった。
　それはまだ、遂げていない。

　遂げねばならぬ。
　一度、人の命を靴底に潰して行く道程へ踏み出した
以上は、断じて最後までゆかねばならぬ。

　他人の生命を踏みしめてゆく道は、決して引き返せ
ない道。
　殺した者を生き返らせてやれないのなら、決して。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050050a00">
「村正。
　行くぞ」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0050060a01">
《え？
　……まだ寝てるけど、その娘》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050070a00">
「いい」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0050080a01">
《御堂……？》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050090a00">
「一条は置いてゆく」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm14",2000,1000,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　道は既に、分かたれた。
　
　そう理解する。

　俺に俺の引き返せぬ道があるように。
　一条にも一条の、引き返せぬ道がある。

　これからの<RUBY text="おれ">村正</RUBY>を、一条は決して受け入れられない
だろう。
　俺が最早、<RUBY text="いちじょう">正宗</RUBY>を受け入れられないのと同じように。

　俺の迷妄が一時、両者の道を<RUBY text="よ">縒</RUBY>り合わせた。
　しかしそれも、今は無い。

　道は分かたれている。
　俺と一条は、異なる道を行く。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0050100a01">
《……それでいいの？》


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050110a00">
「…………」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0050120a01">
《<RUBY text="わたしたち">村正</RUBY>が銀星号を殺せば……
　御堂、貴方はその後で》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050130a00">
「俺が善いと思う者。
　尊いと、思う者」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050140a00">
「綾弥一条をも殺すことになる」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0050150a01">
《……ええ》


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050160a00">
「恐ろしいな。
　<RUBY text="おぞ">鈍</RUBY>ましいな」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0050170a01">
《…………》


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050180a00">
「だが。
　人を殺すという事は、<RUBY text="・・">常に</RUBY>こういう事なの
だな」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　力をこめて、吐き捨てる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050190a00">
「<RUBY text="おまえ">村正</RUBY>だけが特別なのではない。
　村正は真実を拡張しているに過ぎない。己
の使い手をその醜悪さから逃避させない為に」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0050200a01">
《――――》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050210a00">
「悪を殺さば、返す刃で善をも断つ。
　善悪相殺」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050220a00">
「それは遍く武器、全ての刃が背負う呪いだ。
　何故なら一つの命は善と悪を共に宿す」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050230a00">
「誰かの敵は誰かの味方。
　誰かの悪は誰かの善。
　刃が生命を奪うとき、必ず善と悪は諸共に
断たれている」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050240a00">
「例外は無い。
　悪だけを斬る武器、悪だけを殺す殺人など
無い」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　だから、きっと。
　
　――この世のあらゆる武器が呪われし<RUBY text="ムラマサ">村正</RUBY>なのだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0050250a01">
《御堂》


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050260a00">
「憎む敵と共に、傍らの友をも殺す……。
　それを厭うのなら、そもそも敵を殺しては
ならない。そうするに足る覚悟が無いという
事だから」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050270a00">
「<RUBY text="ほか">村正以外</RUBY>の武器に持ち替えて殺すなど論外。
　<RUBY text="・・・・・・・・・・・・・・・・・・・">敵は殺すが味方は失わないなど卑怯なのだ</RUBY>。
味方を死なせたくないと思うなら、敵も殺す
べきではないのだ」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050280a00">
「敵の死も味方の死も等価値。
　差をつけてはならない。つけられない……
それは利己的な視野狭窄でしかない」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050290a00">
「敵は悪にして善なのだから。
　敵の悪だけ、罪だけを見て殺す事は、殺人
を為しながらその醜悪さを覆い隠す、卑劣な
欺瞞に他ならない」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050300a00">
「この一刀をもって、善と悪を諸共に断つ。
　その覚悟をせねばならないのだ。誰が誰を
殺すときも――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　善悪両断。
　闘争の真実。

　武というものの本質。
　分け隔てなく、ただ、<RUBY text="・・・・・・・・・">殺すばかりのちから</RUBY>。

　そう見極めた。
　
　だから――――一条。

　俺は二度と、戦い殺す者の正義を信じない。
　お前と一緒には、行けないのだ。

　俺はお前を、
　裏切ることにする。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050310a00">
「行くぞ、村正。
　銀星号を討つ」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0050320a01">
《……》


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050330a00">
「正義でも何でもない。
　単なる醜悪な殺人だ」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050340a00">
「それでも……やると決めた。
　あれを止めると決めた」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050350a00">
「村正」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0050360a01">
《……はい》


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050370a00">
「お前の全ての力を俺にくれ」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0050380a01">
《捧げます。全ての力を。
　私の、<RUBY text="あるじ">御堂</RUBY>》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆装甲アクション
	OnSE("se人体_動作_一歩",1000);


	StC(1000, @0, @0,"cg/st/st景明_装甲_私服a1.png");
	FadeStC(500,true);

	SetFwR("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050390a00">
「鬼に逢うては鬼を斬る。
　仏に逢うては仏を斬る」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,150);//――――――――――――――――――――――――

	CreatePlainSP("絵板写", 5000);
	StC(1000, @0, @0,"cg/st/st景明_装甲_私服b1.png");
	FadeStC(0,true);
	FadeDelete("絵板写", 300, false);

	SetFwR("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0050400a00">
「ツルギの<RUBY text="ことわり">理</RUBY>――ここに在り!!」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,150);//――――――――――――――――――――――――

//◆村正
	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	StC(1000, @0, @0,"cg/st/3d村正標準_立ち_通常.png");
	FadeStC(0,true);
	FadeDelete("絵フラ", 1000, true);

	WaitPlay("SE*", null);

//◆飛翔
	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);

	WaitPlay("SE*", null);

	CreateColorEX("絵色黒", 10000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);
	WaitKey(2000);

}

..//ジャンプ指定
//次ファイル　"mb04_006.nss"