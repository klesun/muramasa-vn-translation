//<continuation number="1640">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_017.nss_MAIN
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
	#bg025_山脈と森a_01=true;
	#bg004_鄙びた村a_01=true;
	#bg021_村長応接間_01=true;
	#bg002_空a_01=true;

	#ev943_村正ＶＳ月山=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma02_018.nss";

}

scene ma02_017.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_016.nss"

//◆お山と森（山は外すか）
	PrintBG("上背景", 30000);
	OnBG(100,"bg025_山脈と森a_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);

	SoundPlay("@mbgm16",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　山の中腹にある蝦夷一家の家屋から、樹海を見渡す。

　肉眼には殊更、注意を引くものはない。まさしく海
のように広がる木々の緑があるばかりだ。
　
　が、

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0170010a01">
《まずい……かもしれない》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170020a00">
「……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0170030a01">
《どうも〝卵〟の危険度が高まっているよう
な……嫌な感じがする。
　孵化が近いのかも……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　村正の声は常よりもやや固い。
　今朝の話、道具と呼ばれたことが影響しているのか。

　であるなら、それで良いが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170040a00">
「今日中にも、か？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0170050a01">
《……そこまで切迫してはいないけれど。
　明日のうちには……もしかすると……》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170060a00">
「……ぬぅ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　思わず、唸りが洩れる。
　事態に余裕があるなどとは元々見込んでいなかった
が、予想以上に、状況は厳しいのかもしれない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0170070a01">
《少し様子を見てくる》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170080a00">
「ああ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　音もなく、村正が森へ向かう。
　影に溶け込む姿を見送りながら、俺は思案した。

　単純な探索は論外だ。
　既に昨日とは状況が違う。敵がいつまでも同じ場所
に留まっているわけがない。

　あてもなく探すにはこの山林は広過ぎる。

　やはり、策が必要だ。
　この樹海のどこかに潜伏しているのであろう敵を、
燻し出す方法……。

　容易ではない。
　何しろ敵は今、時間を稼ぐことを目的としている。
これはおそらく確かだ。雪車町一蔵を使ってＧＨＱに
工作し、香奈枝を排除する、他に活路はないのだから。

　大鳥巡察官が村にいる間は代官らは手出しできない。
彼女に危害を加えればＧＨＱという生命線を失う。
　だが彼女がいなくなれば後は好き放題だ。

　村側としては、巡察官がいる間に代官を排除できな
ければ未来はない。彼女が去れば代官は勢力を回復し、
抗うことは難しくなり。仮に反抗に成功したとしても
それは一揆、村による幕府への反逆となってしまう。

　つまりは破滅。
　しかし今ならば、大鳥巡察官が代官排除の全責任を
請け負ってくれる。今だけが村にとっては勝機。
　俺にとってはまた事情が違うが、結論は同じだ。

　こちらにとっては今こそが勝機。
　代官らにとっては今は雌伏の時。
　
　……この<RUBY text="ルール">理</RUBY>、敵は完全に理解しているだろう。

　それをどうやって引っ張り出せる……？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);

	SetFwC("cg/fw/fw弥源太_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0170090b55">
「……御堂」


{	SoundPlay("@mbgm26",0,1000,true);
	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170100a00">
「これは、弥源太老。
　お疲れ様です」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0170110b55">
「御堂もな。
　様子を見ておったのか」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170120a00">
「は。
　炊事の煙でも上がりはせぬかと」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0170130b55">
「ふふ、そううまくはゆくまい。
　それにそんなものが見えたとしても、妻女
山はもぬけの空……で、あろうさ。奴らにも
知恵はある」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170140a00">
「全くもって」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0170150b55">
「劔冑は家の中か」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170160a00">
「いえ。
　御老と入れ違いで、森へ様子見に」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0170170b55">
「……そうか。
　つかぬことを尋ねるが、御堂」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170180a00">
「はい」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0170190b55">
「あの劔冑とは結縁して長いのかな」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170200a00">
「<RUBY text="さほど">然程</RUBY>には。
　今より二年前になります」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0170210b55">
「……ほう。まだ二年？
　では<RUBY text="いくさ">戦</RUBY>の経験も相応の……？」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170220a00">
「どうでしょう。
　平穏無事な二年ではありませんでしたから」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0170230b55">
「<RUBY text="ばかず">装甲戦闘回数</RUBY>は如何ほどになろうかな」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170240a00">
「一九回になります」


{	FwC("cg/fw/fw弥源太_沈思.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0170250b55">
「…………何処の古参兵だ、なれは。
　さぞ慌しい二年間であったのだろうな」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170260a00">
「そうですね……。
　光陰、矢の如くに」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0170270b55">
「しかし、それだけ装甲を重ねているにして
は……御堂、なれはあまり劔冑のことを信頼
しておらぬようだな？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170280a00">
「……？　とは？
　ご主旨が今ひとつ把握できません」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0170290b55">
「昨日の話によれば、代官に与する乱破者と、
もう一騎の伏兵に不覚を取らされたとか」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170300a00">
「はい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　昨夜のうちに、墜落へ至った顛末のあらましは説明
していた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw弥源太_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0170310b55">
「さわりしか聞いておらん癖にこんなことを
言うのも何だがな。
　御堂の敗因は、劔冑との間の齟齬にあるの
ではあるまいか？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170320a00">
「……齟齬」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0170330b55">
「昨日からなれとあの赤い劔冑を見ておると、
どうも……な。
　どこか、うまく噛み合っておらぬ気がする
のだ」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170340a00">
「……そうですか。
　そうかもしれません」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　今朝、考えの食い違いが明らかになったばかりだ。
　弥源太老は慧眼というべきだろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170350a00">
「しかしご案じなく。
　心当たりは確かにありますが、既に解決を
済ませています」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0170360b55">
「と言うと？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170370a00">
「余計な考えを抱いて刃を鈍らせるなと言い
含めました。
　己を道具と自覚しろと」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0170380b55">
「…………。
　それでは、いかぬであろう」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170390a00">
「そうでしょうか」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0170400b55">
「劔冑は道具……それは、事実。
　しかし<RUBY text="こころ">魂</RUBY>を持つ道具であることを忘れては
ならんのではないか？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170410a00">
「関係ありません」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0170420b55">
「……御堂」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170430a00">
「こころがあろうがなかろうが、道具は道具。
　仕手は道具を使い、使うことによる責任の
一切を負う。いかに使うか考え、決め、行い、
結果を受け止める。これは全て使い手の役割」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170440a00">
「道具はただ、使われるだけです」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0170450b55">
「…………。
　どうあっても、そうでなくては……ならぬ
のかな」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170460a00">
「なりませぬ」


{	FwC("cg/fw/fw弥源太_沈思.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0170470b55">
「……。
　わかった。これ以上は言うまい」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170480a00">
「ご忠告には感謝致します。
　礼を失した応答、どうかお許し下さい」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0170490b55">
「いや、この爺こそ出過ぎたことを申した。
　口うるさい年寄りの小言と思うて聞き捨て
にしてくれ」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170500a00">
「何条もって、そのような事」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0170510b55">
「この先はもう少し有益な話をしよう。
　御堂、代官どもに対する良い手立ては何ぞ
思いついたかな？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170520a00">
「なかなか。
　格別、名案と呼べるものは浮かびません」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0170530b55">
「そうか……。
　では一つ、うての思案を聞いてくれるか」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170540a00">
「は。是非とも」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0170550b55">
「うむ。簡単に言えば、だ。
　うてが考えるところ、彼奴らを釣れる餌は
ひとつ――――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	SetVolume("SE*", 1500, 0, null);
	SetVolume("OnSE*", 1500, 0, null);
	SetVolume("@mbgm*", 1500, 0, null);

	CreateColorEX("絵暗転", 15000, "#000000");
	Fade("絵暗転", 1000, 1000, null, true);

	WaitPlay("@mbgm*", null);
	WaitKey(500);

//◆村
//◆村長宅

	CreateTextureSP("絵背景100", 110, Center, Middle, "cg/bg/bg004_鄙びた村a_01.jpg");

	FadeDelete("絵暗転", 1000, true);

	WaitKey(500);

	OnBG(100,"bg021_村長応接間_01.jpg");
	FadeBG(0,true);

	CreateSE("SE01","se日常_建物_スライド開く01");
	MusicStart("SE01",0,1000,0,750,null,false);
	DrawDelete("絵背景100", 1000, 100, "blind_01_00_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0129]
　村長の案内で香奈枝の居室を訪問すると、丁度立て
込んでいたところらしく、騒がしい物音に耳朶を打た
れた。
　どうも間が悪かったようだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm23",0,1000,true);

	StL(1000, @0, @0,"cg/st/stさよ_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fwさよ_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170560a04">
「これはこれは、湊斗さま。
　ようこそいらっしゃいました」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170570a00">
「どうやらお忙しいご様子。
　出直した方が良くありましょうか？」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170580a04">
「そのようなことはございません。
　ささ、どうぞこちらへ。すぐに茶をお淹れ
します。村長殿も宜しければご一緒に」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170590a00">
「どうかお構いなく。
　では、失礼して」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　勧められた席に腰を下ろす。
　そうして見回せば、騒々しい理由はすぐに判明した。

　香奈枝が何かの器具を手に、大きな箱のようなもの
と向き合っている。新聞紙を続けざまに引き裂くよう
な音はそこから発していた。
　無線機だ。

　そして、騒音はよく聞いてみれば――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170600a04">
「湊斗さまは、英語にはご堪能ですか？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170610a00">
「人並みよりも多少、という程度でしょう。
　自分の生地は<RUBY text="ネーデルラント">鳴滝市国</RUBY>ですので、いささか
は」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170620a04">
「……まあ！
　それは……意外でございました。てっきり、
生粋の大和の方とばかり」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170630a00">
「<RUBY text="ネオ・ブリテン">新大陸</RUBY>の血が四分の一ほど流れているだけ
ですし……それに生地で過ごしたのはほんの
数年ですから。
　そう思われるのもご無理はありません」


//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170640a00">
「この会話も、ほとんど聞き取ることはでき
ませんね。流暢過ぎます……断片的に単語を
拾う程度が、関の山」


{	SetVolume("@mbgm*", 2000, 0, null);
	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170650a04">
「さようでございますか。
　では憚りながら、このさよが通訳など」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0170660a00">
「は……？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆以降、ボイスは全てさよ
//◆英会話らしくテキストボックスを横書きに？

	SoundPlay("@mbgm34",0,1000,true);

	SetFwH("cg/fw/fwさよ_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//◆コブデン口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170670a04">
「……正確に報告しろ、大鳥中尉。
　貴官の行動は<RUBY text="ザ・ラックランド">欠地王</RUBY>の事跡に倣う意味不明
ぶりだ。私には到底理解し難い。納得のいく
説明を求める」

{	FwH("cg/fw/fwさよ_回顧.png");}
//◆香奈枝口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170680a04">
「あら、どうしたことでしょう。わたくしは
<RUBY text="ライオンズハート">獅子心王</RUBY>の戦いのように単純明快な振舞いを
しているつもりでしたのに。
　説明なんて一言で済んでしまいましてよ？」

{	FwH("cg/fw/fwさよ_警戒.png");}
//◆コブデン口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170690a04">
「言ってみろ」


{	FwH("cg/fw/fwさよ_笑顔.png");}
//◆香奈枝口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170700a04">
「悪代官がいたので退治しました」


{	FwH("cg/fw/fwさよ_警戒.png");}
//◆コブデン口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170710a04">
「私は<RUBY text="ジャパニーズジョーク">大和式の冗句</RUBY>には詳しくないのだがね」


{	FwH("cg/fw/fwさよ_通常a.png");}
//◆香奈枝口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170720a04">
「まあ。それはいけません、コブデン中佐！
　仮にも民政局の重鎮たるお方として、現地
の風俗にも詳しくなくては――及ばずながら、
わたくしがご教授いたしましょう」


//あきゅん「演出：Ｓｉｒ　Ｃｏｏｌ！の全角スペースはあるとバグっちゃう」
{	FwH("cg/fw/fwさよ_笑顔.png");}
//◆香奈枝口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170730a04">
「隣の家に<RUBY text="サークル">垣根</RUBY>が出来たってねぇ。
　<RUBY text="Ｈｅｙ，">へぇ、</RUBY><RUBY text="Ｓｉｒ　Ｃｏｏｌ！">かっこいー！</RUBY>
　……さ、まずこの面白さを理解するところ
からどうぞ」

{	FwH("cg/fw/fwさよ_警戒.png");}
//◆コブデン口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170740a04">
「…………好意は有難いが、どうやら私には
一生掛けても無理のようだ。諦めよう。
　それで？　私はこのまま延々と、限りある
勤務時間を貴官一人に提供し続けるのか？」


{	FwH("cg/fw/fwさよ_照れ.png");}
//◆香奈枝口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170750a04">
「あら、これはわたくしとしたことが。
　お忙しい中佐にお手間を取らせて申しわけ
ありませんでした。これにて失礼いたします。
それでは、また――」

{	FwH("cg/fw/fwさよ_警戒.png");}
//◆コブデン口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170760a04">
「報告を済ませろ！」


{	FwH("cg/fw/fwさよ_笑顔.png");}
//◆香奈枝口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170770a04">
「悪代官が」

{	FwH("cg/fw/fwさよ_警戒.png");}
//◆香奈枝口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170780a04">
「それはもういい！
　最初から、わかるように話せ」


{	FwH("cg/fw/fwさよ_通常a.png");}
//◆香奈枝口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170790a04">
「むかしむかしあるところに、おじいさんと
おばあさんがおりました。
　おじいさんは山へ芝刈りに、おばあさんは
川へ洗濯に……」

{	FwH("cg/fw/fwさよ_警戒.png");}
//◆コブデン口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170800a04">
「何の話だ」


{	FwH("cg/fw/fwさよ_通常a.png");}
//◆香奈枝口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170810a04">
「今回の事件を最初から、聞き手が飽きない
よう脚色を交えて物語仕立てにしつつお話し
しているつもりなのですけれど。
　この後、桃から武者が産まれる超展開へ」

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//――――――――――――――――――――――――

	SetFwH("cg/fw/fwさよ_老兵.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0166a]
//◆コブデン口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170820a04">
「……<RUBY text="ＯＫ，ＯＫ．Ｎｏ　ｔｈａｎｋ　ｙｏｕ．">わかった、わかった。もう結構だ。</RUBY>
　貴官に適切な報告をする能力がないという
のであれば仕方ない。私の把握している情報
のみを頼りに判断を下すとしよう」


{	FwH("cg/fw/fwさよ_通常a.png");}
//◆香奈枝口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170830a04">
「最初からそうなさっていればよろしいのに。
　<RUBY text="ジェントリ">英国騎士</RUBY>は本当に素敵な方々。ちゃんと、
<RUBY text="・・・・・">無駄な手間</RUBY>を踏んで下さいますもの」


{	FwH("cg/fw/fwさよ_警戒.png");}
//◆コブデン口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170840a04">
「ああ……身体的あるいは知的に劣悪な者と
言えど厭いはしない。むしろ保護する。
　<RUBY text="ノブレス・オブリージュ">貴顕の義務</RUBY>のうちだ。貴官は感謝した方が
いい」


{	FwH("cg/fw/fwさよ_笑顔.png");}
//◆香奈枝口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170850a04">
「それはもう、心から！
　わたくしより身体的あるいは知的に優秀な
お方に感謝を。ところで中佐？　重さに耐え
かねて壊れた椅子の修理はもう済みまして？」


{	FwH("cg/fw/fwさよ_警戒.png");}
//◆コブデン口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170860a04">
「……造りが雑で壊れた椅子の修理なら、な。
今は快適にしている。気遣いは不要だ。
　そんなことより貴官の話をしようか」


{	FwH("cg/fw/fwさよ_照れ.png");}
//◆香奈枝口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170870a04">
「あら、何やらこの胸に響いてしまうお言葉。
　ペニンシュラの一室でも予約して下さった
のかしら？」

{	FwH("cg/fw/fwさよ_警戒.png");}
//◆コブデン口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170880a04">
「生憎とそこまで手が回らなくてな。
　営倉で我慢して頂こうか？」


{	FwH("cg/fw/fwさよ_照れ.png");}
//◆香奈枝口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170890a04">
「他でもない中佐のお誘いとあれば。
　けれど困りました。営倉といえば軍務上の
失態を犯さなくては入れない桃源郷」


{	FwH("cg/fw/fwさよ_通常b.png");}
//◆香奈枝口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170900a04">
「巡察官任務を果たしているだけのわたくし
にその資格がありますかしら？」


{	FwH("cg/fw/fwさよ_警戒.png");}
//◆コブデン口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170910a04">
「よもやＧＨＱの方針を理解していないとは
言うまい？
　六波羅幕府の政治には不干渉。貴官の行動
はこの方針に対する明確な違背だ」


{	FwH("cg/fw/fwさよ_笑顔.png");}
//◆香奈枝口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170920a04">
「方針なら勿論、理解していましてよ。
　<RUBY text="・・・・・・・・・・・・・・・">大和国民の平安を確保するために</RUBY>、<RUBY text="・・・">幕府を</RUBY>
<RUBY text="・・・・・・・・・・">信頼して一切を委ねる</RUBY>。
　そういう方針でしょう？」

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//―――――――――――――――――――――――――――――

	SetFwH("cg/fw/fwさよ_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0167a]
//◆コブデン口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170930a04">
「…………」


{	FwH("cg/fw/fwさよ_笑顔.png");}
//◆香奈枝口調の通訳。
//嶋：修正（いるの）【090930】
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170940a04">
「その方針に異論なんてありませんとも。
　幕府も人の組織。誤りを犯すことも<RUBY text="・・・">偶には</RUBY>
あるでしょうけれど、そんな場合のために、
わたくしたちが監督しているんですもの！」


{	FwH("cg/fw/fwさよ_涙.png");}
//◆香奈枝口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170950a04">
「この巡察官制度がそう。
　統治状況を実際に見て回り、もし間違いが
あれば正す。なんて素晴らしいんでしょう！
　わたくし、この任務を誇りに思います」


{	FwH("cg/fw/fwさよ_警戒.png");}
//◆コブデン口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170960a04">
「……ッ……」


{	FwH("cg/fw/fwさよ_通常a.png");}
//◆香奈枝口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170970a04">
「中佐？　いかがなさいまして？
　わたくしの言ったことに何か間違いでも？」


{	FwH("cg/fw/fwさよ_警戒.png");}
//◆コブデン口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170980a04">
「……これ以上の会話は無駄のようだ。
　大鳥中尉。貴官の巡察任務の中止を命ずる」


{	FwH("cg/fw/fwさよ_回顧.png");}
//◆香奈枝口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0170990a04">
「あらら？
　それはいったい、いかなる理由でしょう」

{	FwH("cg/fw/fwさよ_老兵.png");}
//◆コブデン口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0171000a04">
「説明する義務は私にはない。
　命令だ、大鳥中尉。これより直ちに司令部
へ出頭――」

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//―――――――――――――――――――――――――――――

	SetFwH("cg/fw/fwさよ_回顧.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0168a]
//◆香奈枝口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0171010a04">
「あら？　もしもし？　もしもーし。
　どうしたのかしらー、急に通信状況が悪く
なりました。中佐のお言葉がさっぱり聞こえ
ません」

{	FwH("cg/fw/fwさよ_警戒.png");}
//◆コブデン口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0171020a04">
「中尉！」


{	FwH("cg/fw/fwさよ_回顧.png");}
//◆香奈枝口調の通訳。
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0171030a04">
「あらあら大変どうしましょう」

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,0);//―――――――――――――――――――――――――――――

//◆ズキューン。銃声
	OnSE("se戦闘_銃器_跳弾01",1000);
	SetVolume("@mbgm*", 100, 0, null);
	CreateColorSP("絵色白", 10000, "#FFFFFF");
	Wait(200);
	FadeDelete("絵色白", 200, true);

	Wait(1000);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0178]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0171040a00">
「…………」


{	NwC("cg/fw/nw村長.png");}
//【ｅｔｃ／村長】
<voice name="ｅｔｃ／村長" class="その他男声" src="voice/ma02/0171050e160">
「…………」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0171060a03">
「さよ、大変。無線が壊れてしまったみたい。
　これでは司令部の指示を受け取れません」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0171070a04">
「何というアクシデントでございましょう。
　しかし仕方がございません。ここは非常の
措置として、お嬢さまご自身の判断で行動を
決められませ」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0171080a03">
「そうするしかないのかしら。
　ああ、困ったこと」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　窓を開けて、銃口からたなびく煙を外へ流しながら
悲痛な声で慨嘆する大鳥中尉。
　その後ろで、大穴を開けられた無線機が何やら火花
を散らしていたりする。

　……………………。
　無茶苦茶だ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st香奈枝_通常_制服c.png");
	FadeStR(300,true);

	SoundPlay("@mbgm18",0,1000,true);

	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0171090a03">
「あら、景明さまっ。
　いらっしゃいまし」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0171100a00">
「……お邪魔しております」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0171110a03">
「お聞きでしたのなら話は早いです。
　こういう事情で、わたくしはこれから独自
の判断で行動することになりました」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0171120a00">
「具体的には？」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0171130a03">
「巡察官は原則として司令部との連絡手段を
確保していることが必須です。
　まずは無線の修復を試み、それが不可能と
なれば帰投しなくてはなりません」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0171140a03">
「今日一日は無線の修理に費やしましょう。
　そして明日、一日掛けて――女は何をする
にも準備に時間がいるものですし、それに道
にも迷うかもしれませんから――本部に帰還」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0171150a03">
「わたくしの報告を受けて、後任の巡察官が
翌朝出発。昼過ぎには村へ到着してわたくし
の取った措置の撤回を宣言します。
　……もっともこれは中佐が暢気だった場合」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0171160a03">
「中佐がすぐにも行動を起こしている場合は
……民政局内でわたくしの解任を通し、代理
を任命して送り出すまで……一日、として。
　明日の夜には後任が着く可能性もあります」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0171170a00">
「……つまり。
　時間の余裕は最大で明後日の昼まで。最小
で明日の夜までしか無い、ということですね」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0171180a00">
「それまでに代官を討つ必要があると」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0171190a03">
「そういうことです」


{	NwC("cg/fw/nw村長.png");}
//【ｅｔｃ／村長】
<voice name="ｅｔｃ／村長" class="その他男声" src="voice/ma02/0171200e160">
「それは……」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0171210a04">
「ううむ。
　難しいことになって参りましたねぇ」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0171220a03">
「ええ……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0171230a00">
「……諒解しました。
　であれば、自分も話を急ぎましょう」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0171240a04">
「と申されますと？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0171250a00">
「先程、弥源太老人より良いお知恵を拝借し
ました。
　ついては中尉殿、村長殿、お二方のご協力
を仰ぎたく、こうしてまかり越しました次第」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0171260a03">
「まぁ、そうでしたの。
　勿論、協力は惜しみませんとも。わたくし
はいったい何をしたらよろしいのかしら？」


{	NwC("cg/fw/nw村長.png");}
//【ｅｔｃ／村長】
<voice name="ｅｔｃ／村長" class="その他男声" src="voice/ma02/0171270e160">
「私も、無論……
　この村を救って頂けるのであれば……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0171280a00">
「はい。
　ではご説明します」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);

//◆空
	CreateTextureEX("絵背景100", 5000, Center, Middle, "cg/bg/bg002_空a_01.jpg");
	Fade("絵背景100", 1000, 1000, null, true);

	DeleteStA(0,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0199]
　―――――――――――――――――――――――
――――――――――――――――――――――――
――――――――――――――――――――――――
――――――――――――――――――――――――。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitPlay("@mbgm*", null);

//◆村長宅
	FadeDelete("絵背景100", 1000, true);

	SoundPlay("@mbgm24",0,1000,true);

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0171290a03">
「坑道を埋め戻す……？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0171300a00">
「はい」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0171310a04">
「しかし、埋めたところで」


{	NwC("cg/fw/nw村長.png");}
//【ｅｔｃ／村長】
<voice name="ｅｔｃ／村長" class="その他男声" src="voice/ma02/0171320e160">
「代官が権力を取り戻せば、また掘らされる
だけなのでは？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　その疑問は当然だった。
　俺自身、口にしたことだ。

　弥源太老人の考えを中継する。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0171330a00">
「代官は何故、専門の業者に作業を委託しな
かったのでしょうか」


{	NwC("cg/fw/nw村長.png");}
//【ｅｔｃ／村長】
<voice name="ｅｔｃ／村長" class="その他男声" src="voice/ma02/0171340e160">
「はっ？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0171350a00">
「その方が掘削は遥かに早く、正確に進んだ
筈です。……にも拘わらず何故、代官として
村に赴任し、村人を徴用するなどという面倒
な方法を選んだのでしょう」


{	NwC("cg/fw/nw村長.png");}
//【ｅｔｃ／村長】
<voice name="ｅｔｃ／村長" class="その他男声" src="voice/ma02/0171360e160">
「それは……
　業者に頼めば費用が嵩むからでは？」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0171370a03">
「……あっ」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0171380a00">
「おそらく、その通りです。
　ということはつまり、こういうことになり
ます――代官には資金的な余裕がさほどない
のです」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0171390a00">
「代官のこの村での行動を見る限り、巨大な
財力の支援を受けているようには窺えません。
　彼の資金は大半、無理な借金を重ねて調達
したものなのではありますまいか？」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0171400a04">
「……なるほど！
　見えてまいりましたよ」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0171410a00">
「掘削作業は予定の工程を終えるまで後少し
という進捗状況であったとか。ここで坑道を
埋め戻してしまえばどうなるでしょう。
　作業は一からやり直し」


//【景明】
<voice name="景明" class="景明" src="voice/ma02/0171420a00">
「当然、掛かる費用は予定の倍。例え人件費
がほぼゼロであっても相当な額になる筈です。
　加えてＧＨＱとのパイプを維持するのにも
定期的な資金投入が必要と考えられます」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0171430a03">
「……それだけの資金を、きっと代官は都合
できない……。
　そういうことですのね？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0171440a00">
「はい。
　となれば――我々が坑道で埋め戻し作業を
開始した場合」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0171450a04">
「代官殿は作業を阻止するために現れざるを
得ない。
　……お見事な策でございます、湊斗さま！」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0171460a00">
「すべては弥源太老のお考え。
　自分は伝言役に過ぎません」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0171470a04">
「いや、それにしても……。
　お嬢さまのお考えは如何でありましょうや。
さよは必竟の良策と考えまするが」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0171480a03">
「わたくしも同感です。
　弥源太さまにはお礼を申し上げなくては」


{	NwC("cg/fw/nw村長.png");}
//【ｅｔｃ／村長】
<voice name="ｅｔｃ／村長" class="その他男声" src="voice/ma02/0171490e160">
「まことに……。
　それで、私どもがすべき協力とは？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0171500a00">
「村長殿には無論、村の方々への行動指示を
お願いします。頑健な男性を選んで埋め戻し
作業にあたらせて下さい。
　時間がありません。すぐにも手配を」


{	NwC("cg/fw/nw村長.png");}
//【ｅｔｃ／村長】
<voice name="ｅｔｃ／村長" class="その他男声" src="voice/ma02/0171510e160">
「は、はい！」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0171520a00">
「代官らが現れたら、迷わず逃げること。
　作業員にはこれを徹底させて下さい」


//【景明】
<voice name="景明" class="景明" src="voice/ma02/0171530a00">
「敵襲には自分が即応するようにしますが、
間違っても抗戦したり留まったりなどしない
ように」


{	NwC("cg/fw/nw村長.png");}
//【ｅｔｃ／村長】
<voice name="ｅｔｃ／村長" class="その他男声" src="voice/ma02/0171540e160">
「わかりました」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0171550a03">
「わたくしは何を？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0171560a00">
「砲、爆弾の類をお持ちではないでしょうか。
　無ければその銃でも構いません」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0171570a03">
「どうお使いになりますの？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0171580a00">
「地道に手作業で埋め戻すだけでは、代官を
焦らせることはできません。潜伏中の代官が
気付かないというのも有り得ることです。
　そこで火器を使用します」


//【景明】
<voice name="景明" class="景明" src="voice/ma02/0171590a00">
「爆音によって代官の注意を引きつけ、我々
が坑道を爆破しようとしていると教えます。
　実際には無理でも、少なくとも代官がその
危惧を抱くよう、なるたけ派手に」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0171600a03">
「なるほど。なるほど。
　飲み込みましてよ。お任せくださいませ」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0171610a00">
「宜しくお願いします」


{	NwC("cg/fw/nw村長.png");}
//【ｅｔｃ／村長】
<voice name="ｅｔｃ／村長" class="その他男声" src="voice/ma02/0171620e160">
「……これで……
　これでやっと……」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0171630a04">
「はい、村長殿。
　これでもう――」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0171640a00">
（これで……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　……残る問題は、<RUBY text="・・・・">後ひとつ</RUBY>だけだ。
　
　おそらくこの場で一人だけ、違うことを俺は胸の内
で呟いた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ブラックアウト
//◆風魔小太郎＋月山

	SetVolume("SE*", 2500, 0, null);
	SetVolume("OnSE*", 2500, 0, null);
	SetVolume("@mbgm*", 2500, 0, null);

	CreateColorEX("絵暗転", 15000, "#000000");
	Fade("絵暗転", 2000, 1000, null, true);

	CreateTextureEX("絵演", 15100, Center, Middle, "cg/ev/ev943_村正ＶＳ月山.jpg");
	Fade("絵演", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　最後の問題。
　――あれをどう打ち破る？


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);


}

..//ジャンプ指定
//次ファイル　"ma02_018.nss"