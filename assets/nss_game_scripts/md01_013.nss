//<continuation number="1230">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_013.nss_MAIN
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
	#bg011_拘置所内_01a=true;
	#ev001_銀星号事件イメージ１=true;
	#ev139_統を殺害_a=true;
	#ev101_プロローグ_c=true;
	#ev106_雄飛と見下ろす村正_d=true;
	#ev112_一条をお姫様だっこする村正=true;
	#ev117_レースの情景_a=true;
	#ev123_大剣を持つガーゲット少佐=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_014.nss";

}

scene md01_013.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_012.nss"

//◆ばたん。
//◆監獄背景＋村正ＳＴ
	PrintBG("上背景", 30000);
	OnBG(100,"bg011_拘置所内_01a.jpg");
	CreateSE("SE01","se日常_建物_扉開く07");
	FadeBG(0,true);
	Delete("上背景");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SoundPlay("@mbgm22",0,1000,true);

	WaitKey(1500);

	StR(1000, @30, @200,"cg/st/3d村正蜘蛛_俯瞰.png");
	CreateSE("SE01","se人体_足音_鎧歩く04");
	MusicStart("SE01",0,1000,0,1200,null,false);
	Move("@StR*", 300, @-30, @0, null, false);
	FadeStR(300,false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130010a01">
《や、やっぱりいやらしいことする気だった
のね！》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130020a00">
「お前まで真に受けるな。
　他の弁明が咄嗟に思いつかなかっただけだ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130030a01">
《本当かしら。
　じゃあ、どういうつもりだったのよ？》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130040a00">
「お前があちらこちら汚れているから拭いて
やろうと思った」

{	SetVolume("@mbgm*", 100, 0, null);
	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130050a01">
《…………》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130060a01">
《あ……そう……》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――

//◆ＥＶ再び
	DeleteStA(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　落ち着いた村正を抱え直して、再び拭きにかかる。
　暴れたせいで、汚れが少し広がったように見えた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm26",0,1000,true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130070a01">
《……けどそんなこと、これまで一度だって
しなかったじゃないの》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130080a00">
「無用の事だと思っていたからな」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130090a01">
《ええ。
　放っておいても、勝手に落ちるもの》

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130100a00">
「だが、考えを変えた。
　いや……変えようと思っている」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130110a01">
《？
　どういうこと？》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130120a00">
「武者としての姿勢を……変えるべきなので
はないかと。
　そう考えている……」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130130a00">
「銀星号を破るために」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130140a01">
《……》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130150a00">
「今のままでは、俺達は勝てない」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130160a01">
《…………》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130170a00">
「これは現実だ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130180a01">
《……かもしれない》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130190a00">
「心甲一致と云う」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　古来、武者が目指すべきとされている境地を示す語
だ。意味の詳細は受け手次第で千変するが、つまりは
仕手の指示から劒冑の反応が起こるまでの<RUBY text="タイムラグ">余白</RUBY>を最小
化するのが目的という点では共通する。

　<RUBY text="あた">能</RUBY>うなら<RUBY text="ゼロ">零</RUBY>に。
　未だ嘗てその極峰まで至った者はいない、とされて
いる。だが俺は知っていた――かの敵騎こそは極峰の
至近距離にいるのだと。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130200a00">
「銀星号は成し得ているようだ。
　如何なる理由でか……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130210a01">
《…………》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130220a00">
「あれに比べれば、俺達の即応性は余りにも
大きく劣る。
　だから、いつも……<RUBY text="・・・・・・・・">気付いた瞬間には</RUBY>墜と
されている」

//【景明】
<voice name="景明" class="景明" src="voice/md01/0130230a00">
「この劣勢を挽回しない限り、幾度戦っても
結果は変わるまい」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130240a01">
《言われなくても。
　その問題なら、前から検討してた》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130250a01">
《制御系統の整備で改善が図れるはずなの。
　あと、関節部の――》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130260a00">
「お前だけの努力で、解決することではない
だろう」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130270a01">
《……それは》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130280a00">
「心甲一致は、仕手と劒冑の課題だ」

//【景明】
<voice name="景明" class="景明" src="voice/md01/0130290a00">
「両者の<RUBY text="・・">間合</RUBY>がどう在るかという評価だ……。
　遠ければ適わず、近ければ適う」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130300a01">
《……》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130310a00">
「だから」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130320a00">
「お前が余計な自我を立てず、道具に徹すれ
ば良い。
　後は俺が、お前を扱い切る」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130330a01">
《――――》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130340a01">
《逆でしょう。
　貴方が私の、手足に徹すればいいのよ》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　――そうだ。
　こう、言い合ってきた。

　これまではずっと。
　そうして……銀星号に敗退を続けた。

　ここまでにしなくてはならない。
　銀星号を、あの災厄を一刻も早く止める事が至上の
命題なのだから。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130350a00">
「村正」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130360a01">
《……何度繰り返しても同じよ。
　この会話は》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130370a01">
《貴方が退けないなら、私だって同じ――》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130380a00">
「ああ。
　だから、俺の方から折れることにする」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130390a01">
《え？》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130400a00">
「頼む」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_動作_抱く02");
	MusicStart("SE01",0,1000,0,800,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　俺は、我が劒冑に頭を下げた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130410a00">
「お前が銀星号との戦いを、決して人任せに
できないのはわかった。
　もう二度と、道具になれとは言わん」

//【景明】
<voice name="景明" class="景明" src="voice/md01/0130420a00">
「村正。俺はお前の意思を認める」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130430a01">
《……御堂》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130440a00">
「お前にも認めて欲しいのだ。
　俺もこの戦いを人手に預けることはできん。
光は俺が止めなくてはならない……」

//【景明】
<voice name="景明" class="景明" src="voice/md01/0130450a00">
「頼む、村正。
　俺の意思を認めてくれ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130460a01">
《…………》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130470a00">
「それだけが望みだ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　それだけで、何かは変わる筈だった。

　罪と責任を分かち合うのではなく。
　むしろその逆――分かち合えない、譲れないという
事を、相互に認め合う。

　俺は俺の意思と責任において戦い、罪を負う。
　村正も村正の意思と責任において戦う。

　互いの意思を侵さず、尊重する。

　より早く、そうしているべきだったのだ。
　互いに相手をねじ伏せようと不毛な努力を重ねる間
に。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130480a01">
《……意味のないことよ》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130490a00">
「ある、と思う。
　おそらくは必要な事なのだ」

{	FwC("cg/fw/fw景明囚人_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130500a00">
「俺とお前が共に戦うために」

{//◆ちょっと動揺
	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130510a01">
《こ……これまでだって一緒に戦ってきたで
しょう》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130520a00">
「いや、単に<RUBY text="・・・">並んで</RUBY>戦っていただけだ。
　これまでは」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130530a00">
「俺はお前を認めていなかったし、お前とて
そうだった。
　その問題を有耶無耶にしたまま、騙し騙し、
装甲してきたのだ」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130540a00">
「倒すべき敵が共通であったから、それでも
どうにか武者の格好はついた……。
　しかし、銀星号に勝つ事は叶わずにいる」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130550a01">
《…………》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130560a00">
「勝たねばならない」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130570a00">
「勝つためだ、村正。
　俺のことをどう思おうが構わん。あくまで
手足と思いたいならそれでもいい……だが、
その手足にも譲れぬ意思があると認めてくれ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130580a00">
「頼む」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　繰り返し、願う。
　……<RUBY text="メタルエコー">金打声</RUBY>は戸惑う風の沈黙のみを、しばし伝えて
きた。

　やはりこれは、遅過ぎた、虫の良い話というものか。
　武者ならば半身とも恃むべき劒冑をろくろく顧みな
かった二年間の無為が、今更ながらに悔やまれる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130590a01">
《……どうして急に、そんなことを言うの》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130600a00">
「知ったからだ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130610a01">
《え……》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130620a00">
「青江の陰義は俺の昔を<RUBY text="ゆめ">幻夢</RUBY>に見せたが……
　その幻夢に、お前の過去も混ざっていた」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130630a01">
《!!》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130640a00">
「済まないことをしたと思う。
　勝手に人の心底を覗くが如きは、俺として
も本意ではない」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130650a00">
「しかし、お前の戦う理由……
　譲れぬ理由が、それでわかった」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130660a01">
《……》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130670a00">
「お前たち村正一門が妖甲などではなかった
ことも」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　善悪相殺。
　呪いと見えてその実、和平への真摯な願いであった
戒律。

　それが養母の命を奪ったと思えば恨みも湧く。
　が、やはり筋違いの怨恨であった。村正が恐ろしい
何かを背負っていると感付きつつ、深く思慮せず解き
放ってしまったのは、誰でもない俺なのだから。

　そうして、この世には突き詰めて善も悪もないのだ
という信念について思いを致せば――<k>必ずしも完全な
同意はできない。

　そこまで思い切れない部分がある。

　しかし理解は及んだ。
　南北朝というまさしく泥沼の抗争期においてはその
究極論をもって挑むほかに、戦乱を治める希望が全く
見出せなかったのだろう。

　あの情景を見た今ならば、善悪相殺の四文字に託さ
れた想いの深さが知れる。
　
　その想いが招いた、凄惨な末路への無念も。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130680a00">
「村正……俺がお前でも、自分の手で決着を
つけようと望んだだろう。
　そう思う」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130690a00">
「だから俺はお前の意思を認める」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130700a01">
《――――》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130710a00">
「お前も認めてはくれないか。
　俺の、」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130720a01">
《駄目よ》

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ＥＶ消し、立ち絵表示に戻り

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130730a00">
「……村正」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130740a01">
《私の考えは変わらない》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130750a00">
「考えを変えよとは云わぬ。
　ただ、認めて欲しいのだ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130760a01">
《認めない……》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130770a00">
「…………」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130780a00">
「だが村正。
　俺達は勝たねばなるまい」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130790a00">
「<RUBY text="つよ">剛</RUBY>くならねばなるまい」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130800a01">
《ええ。
　心甲一致は私も必要だと思う》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130810a01">
《だから貴方は、私の意志に従うべきよ。
　自分の意思を眠らせて》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130820a00">
「……それはできん」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　俺に課せられた責務は、人に委ねられないものだ。
　村正の負う責務もまた、そうであるように。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130830a01">
《そう。
　でもね》

{	SetVolume("@mbgm*", 1000, 0, null);}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130840a01">
《貴方の希望なんて、もう関係ない》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130850a00">
「何……？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130860a01">
《これだけはしたくなかった》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130870a01">
《けれどもう仕方ない。
　貴方がそんなことまで言い出すのなら……
仕方ない》

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆村正帯電
	CreateSE("SE01","se特殊_電撃_放電01");
	MusicStart("SE01",0,1000,0,800,null,false);
	CreateColorSPadd("絵フラッシュ白", 5000, "#FFFFFF");
	Wait(10);
	FadeDelete("絵フラッシュ白", 600, false);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130880a00">
「……ッ!?」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130890a01">
《御堂。私はね……
　一つだけ、<RUBY text="かかさま">二世</RUBY>にも<RUBY text="じじさま">始祖</RUBY>にもできないこと
ができる》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130900a01">
《それは私が、二世村正を制するという特定
目的のもとで鍛造されたからこそ可能なこと。
　目的遂行のためならば――》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130910a01">
《<RUBY text="・・・・・・・・・・・・・・">己の仕手に対しても力を揮える</RUBY>》

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

//◆ばちばち。
	CreateSE("SEL01","se特殊_電撃_帯電02");
	MusicStart("SEL01",0,1000,0,1000,null,true);
	CreateColorSPadd("絵フラッシュ白", 5000, "#FFFFFF");
	Wait(10);
	FadeDelete("絵フラッシュ白", 600, false);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130920a00">
「村正……」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130930a00">
「お前は、真逆」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130940a01">
《私の過去を見たなら、知っているでしょう。
　私にもこの<RUBY text="わざ">能</RUBY>はあるの》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130950a01">
《人の心を侵すことは、私にだってできる!!》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

	SetVolume("SEL*", 300, 1, null);

//◆フラッシュバック。銀星号の精神汚染
	OnSE("se擬音_回想_フラッシュバック01",1000);
	CreateColorEXadd("絵白転", 10000, "#FFFFFF");
	Fade("絵白転", 600, 1000, null, true);

	CreateTextureSP("絵回想", 8000, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");
	CreateColorEXmul("絵回想幕", 8100, "#847000");
	Fade("絵回想幕", 0, 400, null, true);

	Fade("絵白転", 300, 100, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　
　
　　　　　　　　　　<RUBY text="メンタル・ペスティリエンス">精神汚染　</RUBY>

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	Fade("絵白転", 400, 1000, null, true);
	Delete("絵回想*");

	SetVolume("SEL*", 1500, 1000, null);

	FadeDelete("絵白転", 600, true);
	SoundPlay("@mbgm04",0,1000,true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130960a00">
「……止せ！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130970a01">
《…………》

{	FwC("cg/fw/fw景明囚人_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130980a00">
「それは、帝に禁じられたのだろうが!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　そう。あの過去夢で、精神干渉の力は勅命をもって
厳に封じられていた。
　中世の人間が帝室を重んじること、現代人の比では
ないだろう。あの命令は絶対のものだった……筈だが。

　果たして村正は――少なくとも表面上――何ら動揺
を示さなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130990a01">
《遠い……昔のことよ》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0131000a00">
「……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0131010a01">
《……あの時代から色褪せずに残っているの
は、私の甲鉄と使命だけ。
　邪魔になった貴方の意思を潰すくらいの事、
造作もないのよ》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SEL*", 100, 0, null);

//◆汚染波発散。うぃーん。
	CreateSE("SE01","se特殊_陰義_発動04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	CreateTextureSPmul("絵演", 4000, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");
	WaitKey(100);
	FadeDelete("絵フラ", 600, false);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0131020a00">
「く……!?」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0131030a01">
《そう。
　簡単なことなのよ……！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆うよーん。視界歪む？
	CreateSE("SE01","se特殊_陰義_発動04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	CreateTextureSPmul("絵演波紋", 1000, Center, Middle, "cg/bg/bg011_拘置所内_01a.jpg");
	Zoom("絵演波紋", 0, 1500, 1500, null, true);
	DrawEffect("絵演波紋", 0, "Ripple", 400, 400, null);
	WaitKey(100);
	FadeDelete("絵フラ", 600, false);
	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0131040a01">
　　　　　　〝従いなさい〟

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　我がものならぬ思念が、心中に芽生える。
　これは……村正の？

　精神汚染とはこういうものか。
　これは――まずい。抗う術がない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se特殊_陰義_発動04");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0131050a01">
　　　　　　〝従いなさい〟

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　この波は<RUBY text="・・">内側</RUBY>から俺を食い荒らそうとする。
　どうにも排除する方法がない！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0131060a01">
　　　　〝貴方の心はいらない〟

　
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0131070a01">
　　　　〝私には……必要ない〟

　
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0131080a01">
　　　　　　〝だから……〟

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フラッシュバック。出会いからの色々
//あきゅん「演出：回想内容は後で考える」
	OnSE("se擬音_回想_フラッシュバック01",1000);
	CreateColorEXadd("絵白転", 10000, "#FFFFFF");
	Fade("絵白転", 600, 1000, null, true);

	Delete("絵演波紋");

//あきゅん「演出：出会い」
	CreateTextureSP("絵回想", 8000, Center, Middle, "cg/ev/ev139_統を殺害_a.jpg");

	CreateColorEXmul("絵回想幕", 8100, "#847000");
	Fade("絵回想幕", 0, 400, null, true);

	Fade("絵白転", 200, 100, null, true);
	WaitKey(100);
	Fade("絵白転", 200, 1000, null, true);

//あきゅん「演出：プロローグ」
	CreateTextureSP("絵回想", 8000, Center, Middle, "cg/ev/ev101_プロローグ_c.jpg");
	Fade("絵白転", 200, 100, null, true);
	WaitKey(100);
	Fade("絵白転", 200, 1000, null, true);

//あきゅん「演出：雄飛殺し」
	CreateTextureSP("絵回想", 8000, Center, Middle, "cg/ev/ev106_雄飛と見下ろす村正_d.jpg");
	Fade("絵白転", 200, 100, null, true);
	WaitKey(100);
	Fade("絵白転", 200, 1000, null, true);

//あきゅん「演出：適当に２話から」
	CreateTextureSP("絵回想", 8000, Center, Middle, "cg/ev/ev112_一条をお姫様だっこする村正.jpg");
	Fade("絵白転", 200, 100, null, true);
	WaitKey(100);
	Fade("絵白転", 200, 1000, null, true);

//あきゅん「演出：適当に３話から」
	CreateTextureSP("絵回想", 8000, Center, Middle, "cg/ev/ev117_レースの情景_a.jpg");
	Fade("絵白転", 200, 100, null, true);
	WaitKey(100);
	Fade("絵白転", 200, 1000, null, true);

//あきゅん「演出：適当に４話から」
	CreateTextureSP("絵回想", 8000, Center, Middle, "cg/ev/ev123_大剣を持つガーゲット少佐.jpg");
	Fade("絵白転", 200, 100, null, true);
	WaitKey(100);
	Fade("絵白転", 200, 1000, null, true);

	CreateColorSP("絵色黒", 5000, "#000000");
	Delete("絵回想*");
	FadeDelete("絵白転", 600, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0131090a01">
　　〝……だから…………消す…………〟

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆景明立ち絵アップ？
//◆ジジ……。なんか齟齬っぽい音
//◆びきゃーん。なんか力が弾けたっぽい音。フラッシュ。
//◆獄室
	CreateSE("SE01","se特殊_ノイズ01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵フラッシュ白", 5000, "#FFFFFF");
	Wait(10);

	CreateMask("絵覆", 6000, 0, 0, "cg/data/noize_01_00_0.png", false);
	Zoom("絵覆", 0, 1100, 1100, null, true);

	SetAlias("絵覆","絵覆");
	CreateTextureSP("絵覆/絵演景明", 5110, 212, -96, "cg/st/resize/st景明_通常_私服l.png");
	CreateTextureEX("絵演景明", 5100, 212, -96, "cg/st/resize/st景明_通常_私服l.png");
	Fade("絵演景明", 0, 300, null, true);
	FadeFR2("絵覆/絵演景明",0,1000,400,30,@0,30,Dxl2, false);
	FadeFR2("絵演景明",0,300,400,-30,@0,35,Dxl2, false);

	FadeDelete("絵フラッシュ白", 100, true);

	Wait(300);

	Move("絵覆/絵演景明", 1000, 212, @0, DxlAuto, false);
	Move("絵演景明", 1000, 212, @0, DxlAuto, true);

	Fade("絵覆/絵演景明", 300, 0, null, false);
	Fade("絵演景明", 300, 1000, null, true);

	Wait(300);

	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵フラッシュ白", 5000, "#FFFFFF");

	Delete("絵覆");
	Delete("絵演景明");
	Delete("絵色黒");
	Delete("絵演*");

	Wait(30);

	FadeDelete("絵フラッシュ白", 1000, true);

	SetFwC("cg/fw/fw景明囚人_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0131100a00">
「――――――――」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0131110a00">
「……あぁ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　俺は――<k>
　
　　　　　　　　　　　<RUBY text="・・">俺だ</RUBY>。

　湊斗景明だ。他の何者でもない。
　……自我を保っている。

　だが、何故？
　あの力に屈服を余儀なくされたと思ったのだが……。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm32",0,1000,true);

	StR(1000, @-30, @200,"cg/st/3d村正蜘蛛_俯瞰.png");
	CreateSE("SE01","se人体_足音_鎧歩く04");
	MusicStart("SE01",0,1000,0,1200,null,false);
	Move("@StR*", 300, @30, @0, null, false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0131120a01">
《……っ……》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0131130a01">
《どうして……私は！》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0131140a00">
「村正……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0131150a01">
《もう……もういいっ！
　貴方なんていらない！》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0131160a01">
《貴方がいなくたって――》

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆村正飛ぶ
	CreateSE("SE01","se人体_足音_鎧歩く04");

	DeleteStA(300,false);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0131170a00">
「何処へ行く！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0131180a01">
《何処でもいいでしょう。
　もう、貴方とはこれきり》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0131190a01">
《私は別の仕手を探す……》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0131200a00">
「何だと？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0131210a01">
《さようなら》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//◆去る
	CreateSE("SE01","se人体_動作_跳躍01");

	CreateColorSaddP("絵色白", 5000, "#FFFFFF");
	MusicStart("SE01",0,1000,0,1000,null,false);

	DeleteStA(0,true);
	FadeDelete("絵色白", 1000, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　瞬時にして消え去る劒冑。
　一切の痕跡を残さず――あたかも最初から存在しな
かったかのように。

　足音さえ、俺の耳には届かなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0131220a00">
「――――」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0131230a00">
（追わねば）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　全ての理屈を抜きにして、俺はそう結論した。
　今、村正と離れたままでいてはいけない。<RUBY text="・・・・">とにかく</RUBY>
追わなくてはならない！

　追わねば、俺はきっと生涯悔いる。

　だが……
　どうしたものか。

　拘置囚の身に自由はない。
　署長に連絡し、釈放の手続きを踏んで貰うにも時間
が掛かる。

　最短でも数時間必要だ。
　…………間に合うか!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md01_014.nss"