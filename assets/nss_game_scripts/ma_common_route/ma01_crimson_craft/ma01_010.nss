//<continuation number="940">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_010.nss_MAIN
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
	#bg009_鎌倉住宅街a_01=true;
	#bg007_若宮大路a_01=true;
	#bg015_鎌倉路地裏_01=true;
	#bg001_空a_01=true;
	#bg001_空a_02=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma01_011.nss";

}

scene ma01_010.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma01_009.nss"

	SoundPlay("@mbgm16",0,1000,true);

	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景20", 20, Center, Middle, "cg/bg/bg009_鎌倉住宅街a_01.jpg");
	CreateColorSP("暗転", 15, "#000000");
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg007_若宮大路a_01.jpg");

//◆住宅街
//◆大通り
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

	WaitKey(400);
	DrawDelete("絵背景20", 1000, 100, "blind_01_00_1", true);
	DrawDelete("暗転", 1000, 100, "blind_01_00_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　飲み屋通りからリツの家付近。そして学校。
　男はそんなルートを辿った。

　怪しい。怪しいにも程がある。
　到底、偶然とは思えない。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st忠保_通常_制服.png");
	StR(1000, @0, @0,"cg/st/st小夏_通常_制服.png");
	FadeStL(300,false);
	FadeStR(300,true);


	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100010b56">
「クロ、だよな」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100020b43">
「行動を見る限り、少なくとも無関係という
ことはなさそうだね。
　加えてひとつ……」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100030b33">
「なに？」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100040b43">
「さっき、学校前で上原先生を捕まえて話を
聞いてたじゃないか。あの人」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100050b56">
「ああ。最初は上原、嫌そうな顔してたのに
途中から急におとなしくなったんだよな」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100060b33">
「そうそう。それはわたしも気になってた」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100070b43">
「その時のことなんだけど。
　僕の見間違えでなければ……あの時、銃を
見せたんだよ。先生に」

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100080b56">
「――――」

{	FwC("cg/fw/fw小夏_驚くa.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100090b33">
「じ、銃？」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100100b43">
「拳銃だったね。懐からこう、ちらっと一瞬
だけ。
　型まではよくわからなかったなぁ」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100110b56">
「そりゃ上原もびびるよ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　一般人に無縁という点では、銃も劒冑と同様だ。
　持つ人間は軍・警察関係者、でなければ犯罪者だけ。

　つまりは。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100120b56">
「犯人確定だろ！」

{	FwC("cg/fw/fw忠保_冷徹.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100130b43">
「状況証拠としては充分かもねぇ」

{	FwC("cg/fw/fw小夏_怒りa.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100140b33">
「あの行動範囲で、おまけに銃。
　疑う余地がないじゃないの」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　その通り。
　この辺りに住むガンマニアが散歩していただけなん
じゃないかなどとは言ってみるのも馬鹿馬鹿しい。

　拉致犯人。
　少なくとも、犯人に近い関係者。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100150b56">
「あいつを……！」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100160b43">
「どうするの？」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100170b33">
「どうするわけ？」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100180b56">
「……」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100190b43">
「……」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100200b33">
「……」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100210b56">
「捕まえる」

{	FwC("cg/fw/fw小夏_驚くa.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100220b33">
「え？」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100230b43">
「本気かい？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　半分がた、やけくそになっているのは否めない。
　だがここで見過ごす選択はなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100240b56">
「ヤツが六波羅の武者だとしても……
　今は非武装だ。どうにかなる」

{	FwC("cg/fw/fw小夏_怯え.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100250b33">
「非武装って。あんた。銃持ってんのよ？」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100260b43">
「そりゃ劔冑に比べれば豆鉄砲みたいなもん
だけどねえ。僕らにとってはどっちも大して
変わらない殺人兵器だよ？」

{	FwC("cg/fw/fw雄飛_笑顔b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100270b56">
「当たらなければ大丈夫！」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100280b33">
「当たったら？」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100290b56">
「根性で耐えて前へ進む」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100300b43">
「……なんか似たようなこと言って騎馬軍団
を全滅させた人が昔いなかったかなぁ」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100310b33">
「せめて作戦とかないの？」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100320b56">
「おれがあいつの前に立って気を引く。
　その間に忠保、おまえが後ろから殴れ」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100330b43">
「神算鬼謀だね」

{	FwC("cg/fw/fw雄飛_笑顔b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100340b56">
「ありがとう」

{	FwC("cg/fw/fw小夏_呆れ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100350b33">
「皮肉が通じない……」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100360b43">
「いけいけモードに入っちゃったみたいだね。
　リツへの心配と敵を見つけた興奮と六波羅
への恐怖の裏返しとが混ざり合った結果じゃ
ないかなと分析してみたりするけど」

{	FwC("cg/fw/fw小夏_怒りb.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100370b33">
「どうするのよ？」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100380b43">
「乗ってみてもいいんじゃないかな」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100390b33">
「本気？」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100400b43">
「見てよ。あの人、米屋の裏の路地に入ろう
としてる。
　あそこなら回り込むのは簡単だ……雄飛の
作戦通りにやれると思うよ」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100410b33">
「でも……」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100420b43">
「捕まえれば、得られるものは大きい。
　うまく尋問する必要があるけれどね」

{	FwC("cg/fw/fw忠保_笑顔a.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100430b43">
「ま、どうにかなるんじゃないかな？
　リツの居所がわかる可能性もある」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100440b33">
「……」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100450b56">
「忠保。いいか？」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100460b43">
「オーケー。
　屑鉄工場で鉄パイプか何か拾ってから回り
込む。雄飛はドブ川が曲がる辺りで仕掛けて」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100470b56">
「わかった」

{	FwC("cg/fw/fw小夏_怒りa.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100480b33">
「……雄飛！
　怪我しないでよ!?」

{	FwC("cg/fw/fw雄飛_笑顔b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100490b56">
「おう！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStR(300,false);
	DeleteStL(300,true);

	SetVolume("@mbgm*", 1000, 0, null);

	CreateColorEX("暗転", 10000, "#000000");
	Fade("暗転", 1000, 1000, null, true);

	Delete("絵背景*");

//◆路地裏
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg015_鎌倉路地裏_01.jpg");
	FadeDelete("暗転", 1000, true);

	SoundPlay("@mbgm35",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　自分が酷く背伸びした、無謀な試みをしようとして
いるのはわかっていた。
　緊張で手の中が汗ばむ。

　おれの作戦は無茶苦茶だ。
　不意を打てば、拳銃は無力化できるかもしれないに
しても……重要な問題を考慮していない。

　武者自身の戦闘力。
　たとえ劔冑を身につけていなくとも、武者は武芸の
練達者だ。民間人が戦えるような相手じゃあない。

　前を歩く男は控えめに言っても人並み以上に<RUBY text="たくま">逞</RUBY>しい
体の持ち主だった。余程に修練を積んでいるのだろう、
立ち居振る舞いが悠然としている。
　仮に軍の武者ではないとしても、只者とは思えない。

　無謀な挑戦だった。
　だがそれでも、勝負にはなる。

　敵が一人で、劔冑がないなら、戦いにはなる。

　――無力に泣かなくて済む。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_沈むa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100500b56">
（あ、くそ）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　卑しい考えがよぎっちまった。

　今、今だけは、勝算のある勝負ができる。
　この機会を浅ましくあがいてつかみたい。
　だって、うまくすれば、

　――結局、六波羅には勝てないにしても。
　一度だけ、小さな勝利を得られる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100510b56">
（それで満足しようってのか……馬鹿が！）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　下らない考えを脳裏から追い払う。
　忠保が指示した場所は近い。

　何も考えるな。
　とにかくあの男を捕まえる。
　その先のことは……後で考えればいい。

　――ドブ川の曲がり。
　おれは迷いを振り捨てて、飛び出した。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st景明_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw雄飛_怒りa.png");

	SetVolume("@mbgm*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140a]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100520b56">
「おい！　そこの――<RUBY text="くらぐら">暗々</RUBY>とした悪党ッ！」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0100530a00">
「はい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　男が足を止める。
　こちらへ振り返る。

　正面から、向き合う形になった。
　
　男がおれを見る。
　おれが男を見る。

　静かな、<RUBY text="め">眸</RUBY>をしていた。

　思わず足が止まる。
　もたついて、たたらを踏む。

　忠保は驚くほどの素早さで背後に駆け寄っていた。
　足音を聞いてか、男が再びそちらを向く。

　言葉を掛けなければ。
　そう思ったが、声が出ない。

　男は忠保を真っ直ぐに見ている。
　しかし忠保は、迷わなかった。

　鉄パイプが空を指す。
　男はそれを見ている。

{	OnSE("se戦闘_攻撃_振る02",1000);}
　重く風を切りながら、鉄パイプが走る。
　男はそれを見ている。

　鉄パイプが額に触れる。
　男はそれを見ている――

　最後まで見ていた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆青空
//◆どご。鈍い打撃音

	PrintBG("上背景", 30000);
	CreateColorSPadd("白転", 10000, "#FFFFFF");
	CreateTextureSP("絵背景10", 1500, Center, Middle, "cg/bg/bg001_空a_01.jpg");
	OnSE("se戦闘_攻撃_殴る01",1000);
	Delete("上背景");

	Wait(2000);

	FadeDelete("白転", 2000, true);

	Wait(1000);

	StL(1000, @0, @0,"cg/st/st忠保_通常_制服.png");
	StR(1000, @0, @0,"cg/st/st小夏_通常_制服.png");
	FadeStL(0,true);
	FadeStR(0,true);

	CreateTextureSP("絵背景20", 20, Center, Middle, "cg/bg/bg015_鎌倉路地裏_01.jpg");

	SoundPlay("@mbgm22",1000,1000,true);
	FadeDelete("絵背景10", 1000, true);

	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100540b56">
「……」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100550b43">
「……」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100560b33">
「……おめでとうって言っていいわけ？
　この状況……」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100570b56">
「いや……どうかなぁ……」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100580b43">
「まさか一発で倒せるとは思わなかったねぇ」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100590b33">
「六波羅の人間にしては……ちょっと、その。
　あんまりにも、あんまりなんじゃない？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　そこらの学生の一撃で倒される暴虐の支配者。
　……駄目だ。あかん。世界が揺らぎそう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100600b56">
「い、いや。まぁ、六波羅ったってピンキリ
だろうし。大半は武者でも何でもない普通の
兵士なわけだし。こういうことも」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100610b43">
「そうそう。たまたまこの人は六波羅百万騎
の百万番めだったんじゃないかなぁ」

{	FwC("cg/fw/fw雄飛_快活.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100620b56">
「おお、それなんかすげえ確率だな忠保！」

{	FwC("cg/fw/fw忠保_笑顔b.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100630b43">
「うん。なんだか宝くじでも買いたくなって
きたねぇ」

{	FwC("cg/fw/fw小夏_呆れ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100640b33">
「わかった。ＯＫ。わたしがはっきり言って
あげる。
　ねえ、この人――」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100650b56">
「そろそろ日が暮れるなー」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100660b43">
「焼き芋でも買って帰ろうか」

{	FwC("cg/fw/fw小夏_怒りb.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100670b33">
「――ただの通行人だったんじゃないの？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆ＳＥ：ガーン。
	OnSE("se擬音_コミカル_ガーン01",1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0189]
　………………。
　言っちまいやがった。この女。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_怯えb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100680b56">
「いや、いやっ、でも！　悪党って呼んだら
はいって答えたよ、この男！」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100690b33">
「それは単に声かけられたから返事しただけ
じゃないのかしら……」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100700b43">
「そう思うなら止めて欲しかったなぁ。下手
をすると僕ら三人、ひたすら無意味に傷害罪
なんだけど」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100710b56">
「実行犯はおまえだ」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100720b33">
「一人だけ実刑ね。お別れね。さようならー
元気でねー。あなたのこと、きっと忘れない」

{	FwC("cg/fw/fw忠保_笑顔b.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100730b43">
「アハッ。大丈夫。僕たちはずっと一緒さ！
　だって、教唆犯と実行犯の罪は同等だもの」

{	FwC("cg/fw/fw雄飛_沈むb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100740b56">
「……」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100750b33">
「……」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100760b43">
「……」

{	FwC("cg/fw/fw雄飛_快活.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100770b56">
「そ、そうだ、拳銃！
　忠保、こいつ拳銃持ってたんだろ!?　なら
まっとうな人間のわけがないっ！」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100780b43">
「ああ、そうだったね。
　確認してみよう。確かコートの下に……」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ガチャッ
	OnSE("se戦闘_銃器_構える01",1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100790b43">
「…………」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100800b56">
「忠保？」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100810b33">
「銃……あったの？」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100820b43">
「……うん。
　銃は、あるよ」

{	FwC("cg/fw/fw雄飛_笑顔b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100830b56">
「良しっ！
　何がいいのかはともかくとして良しっ！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　これで犯罪者にはならなくて済む。
　たぶん。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100840b43">
「…………」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100850b33">
「忠保？」

{	FwC("cg/fw/fw忠保_困惑.png");
	SetVolume("@mbgm*", 1000, 0, null);
}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100860b43">
「ええと……銃は……あるんだけどね。
　その……<RUBY text="グリップ">握り</RUBY>に、旭の紋章がついてるんだ」

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100870b56">
「は？」

{	FwC("cg/fw/fw小夏_驚くa.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100880b33">
「旭？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　それって。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100890b43">
「警察局の紋章だね」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100900b33">
「……………………」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100910b56">
「…………………………………………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景100", 10000, Center, Middle, "cg/bg/bg001_空a_01.jpg");
	Fade("絵背景100", 1000, 1000, null, true);

//◆夕空
	CreateTextureEX("絵背景110", 10010, Center, Middle, "cg/bg/bg001_空a_02.jpg");
	Fade("絵背景110", 8000, 1000, null, false);

//	SoundPlay("@mbgm31",0,1000,true);

	SetComic(@0,@0,16);
	SetFwC("cg/fw/fw雄飛_驚くb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0100920b56">
「ぎゃああああああああああああああああ!!
　ててってってっ手当て手当て手当ておをっ」

{	SetComic(@0,@0,5);
	FwC("cg/fw/fw小夏_驚くb.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0100930b33">
「あわわわわわわ……
　わたししーらない！　ほんとしーらない！」

{	SetComic(@0,@0,11);
	FwC("cg/fw/fw忠保_笑顔b.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0100940b43">
「いやあどーしたもんだろうねぇこの始末。
　はっはっはっはっはっはっはっ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　大混乱だった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ブラックアウト
	ClearWaitAll(2000,4000);


}

..//ジャンプ指定
//次ファイル　"ma01_011.nss"


