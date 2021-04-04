//<continuation number="230">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb01_010.nss_MAIN
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
	#bg015_鎌倉路地裏_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb01_011.nss";

}

scene mb01_010.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb01_009.nss"

//◆夜・鎌倉裏通り
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg015_鎌倉路地裏_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	SetNwC("cg/fw/nw老人.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／明日の爺さん】
<voice name="ｅｔｃ／明日の爺さん" class="その他男声" src="voice/mb01/0100010e278">
「か……勘弁してくだされ」


{	NwC("cg/fw/nw不良少年Ａ.png");}
//【ｅｔｃ／不良１】
<voice name="ｅｔｃ／不良１" class="その他男声" src="voice/mb01/0100020e233">
「勘弁してやるからさぁー。
　それ寄越せって。その風呂敷包み」


{	NwC("cg/fw/nw不良少年Ｂ.png");}
//【ｅｔｃ／不良２】
<voice name="ｅｔｃ／不良２" class="その他男声" src="voice/mb01/0100030e234">
「すっげえ大事そうじゃん。
　イイものっぽいね。金か？　食い物か？」


{	NwC("cg/fw/nw不良少年Ｃ.png");}
//【ｅｔｃ／不良３】
<voice name="ｅｔｃ／不良３" class="その他男声" src="voice/mb01/0100040e235">
「金がいいよなー。
　宝石とかでもいいけど」


{	NwC("cg/fw/nw老人.png");}
//【ｅｔｃ／明日の爺さん】
<voice name="ｅｔｃ／明日の爺さん" class="その他男声" src="voice/mb01/0100050e278">
「こ、これは家宝の茶碗ですじゃ……
　家族を食わせるために、質屋でお金に換え
ようと……」


{	NwC("cg/fw/nw不良少年Ａ.png");}
//【ｅｔｃ／不良１】
<voice name="ｅｔｃ／不良１" class="その他男声" src="voice/mb01/0100060e233">
「おー、そうかいそうかい。
　じゃあ渡しな。オレたちが代わりに行って
きてやるよぉ」


{	NwC("cg/fw/nw老人.png");}
//【ｅｔｃ／明日の爺さん】
<voice name="ｅｔｃ／明日の爺さん" class="その他男声" src="voice/mb01/0100070e278">
「許してくだされぇ！
　この茶碗はわしらの明日なんじゃー！」


{	NwC("cg/fw/nw不良少年Ｂ.png");}
//【ｅｔｃ／不良２】
<voice name="ｅｔｃ／不良２" class="その他男声" src="voice/mb01/0100080e234">
「いいから、とっとと――」


{	NwC("cg/fw/nw不良少年Ｃ.png");}
//【ｅｔｃ／不良３】
<voice name="ｅｔｃ／不良３" class="その他男声" src="voice/mb01/0100090e235">
「お？
　なんだよ、おまえ」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆どが。
	CreateSE("SE01","se戦闘_攻撃_殴る02");
	CreatePlainEX("絵板写", 500);
	CreateColorEX("絵色白", 5000, "#FFFFFF");

	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵色白", 0, 1000, null, true);
	Fade("絵板写", 0, 600, null, true);
	Wait(10);
	Fade("絵色白", 100, 0, null, true);
	Shake("絵板写", 300, 3, 0, 0, 0, 1000, null, false);

	SetNwC("cg/fw/nw不良少年Ｃ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／不良３】
<voice name="ｅｔｃ／不良３" class="その他男声" src="voice/mb01/0100100e235">
「げぶっ!?」


{	NwC("cg/fw/nw不良少年Ｂ.png");}
//【ｅｔｃ／不良２】
<voice name="ｅｔｃ／不良２" class="その他男声" src="voice/mb01/0100110e234">
「……はぁ？
　ちょ、おい」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆ばき
	CreateSE("SE01","se戦闘_攻撃_殴る01");

	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵色白", 0, 1000, null, true);
	Wait(10);
	Fade("絵色白", 100, 0, null, true);
	Shake("絵板写", 300, 0, 6, 0, 0, 1000, null, false);

	SetNwC("cg/fw/nw不良少年Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／不良１】
<voice name="ｅｔｃ／不良１" class="その他男声" src="voice/mb01/0100120e233">
「てっ……
　てめェ!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆どかばき
//◆ばったり。
	CreateSE("SE01","se戦闘_攻撃_殴打連撃01_L");

	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵色白", 0, 1000, null, true);
	Wait(50);
	Fade("絵色白", 100, 0, null, true);
	FadeFR2("絵板写",0,600,1000,0,0,20,DxlAuto, false);

	SetNwC("cg/fw/nw老人.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ｅｔｃ／明日の爺さん】
<voice name="ｅｔｃ／明日の爺さん" class="その他男声" src="voice/mb01/0100130e278">
「……ひっ!?
　ひぃぃぃぃぃぃぃぃぃ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆走り去る
//◆一条
	CreateSE("SE02","se人体_足音_走る03");
	MusicStart("SE02",0,1000,0,1000,null,false);

	SetVolume("SE*", 2000, 0, null);
	WaitKey(2000);

	StL(1000, @0, @0,"cg/st/st一条_通常_制服b.png");
	FadeStL(500,true);

	SetFwC("cg/fw/fw一条_正義.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0100140a02">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm17",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　何処をどう歩いたのかは覚えていない。

　気付けば一条は夜の裏通りに踏み入っていた。
　何やら目障りなモノを適当にどかしつつ、進む。

　あてはない。用事もない。
　だが、<RUBY text="ねぐら">住処</RUBY>に戻りたい気分ではなかった。

　脳漿が煮え立っている。

　――畜生。

　思う事はただ一つ。
　あの男。

　湊斗景明。

　最初はつまらない腰抜けだと思って。
　その後、劒冑を纏って戦う姿を見て。

　信じて。
　焦がれて。

　今日。
　全てが勘違いだったのだと、思い知らされた。

　――なんでだよ。

　想念は結局、その一言に凝固した。

　輝かしかったのだ。
　眩しかったのだ。

　そこに一つの光を見たから。

　彼は、答えだった。
　嘗ては解く糸口すら見えなかった問いへの。

　六波羅、銀星号……
　抗いようとてない強大な悪に、どう立ち向かうべき
なのか？

　多くの人々がそうしているように、<RUBY text="・・">妥協</RUBY>するか――
有るものはしょうがないのだ、どうしようもないもの
はどうしようもないのだ、と。
　それとも、あくまで否定するか――否定<RUBY text="・・">だけ</RUBY>するか。

　悪を認めないと口では言いつつ、手の出せない巨悪
は放置して、戦える小悪だけを選んで相手取り、満足
する。……彼に出会う前の一条がそうだった。
　決して満足はしていなかったけれども。

　その煩悶に、赤い甲鉄の武者が光をあてた。
　――戦えばいいのだ、と。

　許せないなら、戦えばいい。

　相手が強過ぎるとか、
　どうやっても勝てないとか、
　そんなことは関係がない。

　彼は、そんなことを考えなかった。
　いや、考えてはいた――<RUBY text="・・・・・・・・">戦うと決めた後で</RUBY>。

　戦わねばならないなら、戦うのだ。
　勝算などはその次だ。

　それで良いのだと、示してくれた。
　あの、六波羅の武者にも敢然と挑んだ姿が。

　……だというのに。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悔しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0100150a02">
（なんでだよ……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　考えは一周して元に戻る。
　同じ場所をぐるぐる回っている一条の足と同じよう
に。

　
　　　　　湊斗景明はただの殺人者。
　　　　　善人も悪人も選ばず殺す。

　信じられない。
　信じたくない。

　だが、疑えなかった。
　彼の自白は、虚言にしては重過ぎた。

　それが事実。
　
　……わけがわからない。

　いっそ、全部投げ出してしまいたかった。
　何もかも忘れて。どこか別の街で一から出直したい。

　そうしたところで、誰にも責められはしないだろう。

　ならば……
　それは、できるだろうか。

　綾弥一条に。
　それは、できる事だろうか。

　無理だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0100160a02">
（あたしは……綾弥<RUBY text="いちどう">一導</RUBY>の娘だ）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　父の<RUBY text="・・">腐臭</RUBY>を覚えている。
　父の<RUBY text="・・">嗤い</RUBY>を覚えている。

　綾弥一条は綾弥一導を知っている。
　その娘であることの意味を知っている。

　ならば決して、逃れられない。

　許されざる悪との戦いから。
　正義の追求から。

　――湊斗景明から。

　一条の道に光を注いでくれた男との対決から。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悔しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0100170a02">
「…………」


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0100180a02">
「……湊斗さん……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆すちゃっ。足音
	CreateSE("SE01","se人体_動作_後ずさり01");

	SetVolume("@mbgm*", 200, 0, null);
	Wait(300);
	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(300);

	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0100190a02">
「ッ!?」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st署長_通常_制服.png");
	FadeStR(500,true);


	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0125]
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0100200a11">
「こんなところにいたのか。
　随分探したよ」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0100210a02">
「あんたは確か……」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0100220a11">
「鎌倉警察署の署長だ。菊池という。
　君に、話したいことがあって来た」


{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0100230a02">
「……丁度良かった。
　あたしも、訊きたいことがあったんです」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//――――――――――――――――――――――――



	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb01_011.nss"