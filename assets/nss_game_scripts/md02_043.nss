//<continuation number="1080">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_043.nss_MAIN
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
	#ev128_病床の光_g01=true;
	#ev128_病床の光_g02=true;
	#bg053_堀越御所の庭_01=true;
	#ev901_銀星号天座失墜小彗星_c=true;
	#bg097_堀越御所内景明の部屋_01=true;
	#bg097_堀越御所内光の部屋_03a=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene md02_043.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md02_042.nss"


//◆ＣＧ：病床の光（現在バージョン）
//◆構図は過去バージョンと同じ。

//■全体的に立ち絵を表示すると微妙になってしまうシーンだと思うので立ち絵意図的に未使用 inc櫻井

	PrintBG("上背景", 30000);
	CreateColorSPadd("ホワイトイン", 5000, "WHITE");
	Delete("上背景");

	CreateTextureSP("病床", 1000, @0, @0, "cg/ev/ev128_病床の光_g02.jpg");

//おがみ：EV完成後調整＞アップスクロール演出

	CreateTextureSP("病床アップ", 1000, -380, -460, "cg/ev/resize/ev128_病床の光_g02lex.jpg");

	Move("病床アップ", 6000, -510, -180, null, false);
	FadeDelete("ホワイトイン", 3000, true);

	Wait(2800);

	FadeDelete("病床アップ", 1000, true);

	SoundPlay("@mbgm37", 0, 1000, true);


	Wait(1500);

	SetFwL("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430010a00">
「――――――――――――――――――」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　知っている。
　知らぬ筈がない。

　かつて来る日も来る日も見守り続けた光景。

　快復を夢見て、明日はこの光景が失われている事を
望んだ。
　破局を恐れて、明日もこの光景が保たれている事を
望んだ。

　二律背反の情景。
　一年の間、見続けた。

　この姿を。

　<RUBY text="・・・・・・・・">鉱毒病に冒されて</RUBY>、<RUBY text="・・・・・・・・・・・">身体と精神を病んだ光を</RUBY>！

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw村正_驚きa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0430020a01">
「こ……これって」

//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0430030a01">
「これって」

{	FwL("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430040a07">
「おめーは知らないんだっけ？
　湊斗光の病気」

{	FwL("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0430050a01">
「し、知ってる……青江の術の中で見て……
　知ってるけど！」

{	FwL("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0430060a01">
「どういうことよ!?
　これが湊斗光なら、<RUBY text="かかさま">二世</RUBY>を装甲して銀星号
になっているのは誰なの!!」

{	FwL("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430070a07">
「誰っしょね？」

{	FwL("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0430080a01">
「はぐらかさないで！」

{	FwL("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430090a07">
「はぐらかしちゃいねえ。単なる意地悪だ。
　けど、おめーもわかり切ったこと訊くなよ」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430100a07">
「ここに湊斗光がいるんだから、この湊斗光
が装甲して銀星号やってるに決まってんだろ」

{	FwL("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0430110a01">
「どうやってよ！
　できるわけないでしょう!?」

{	FwL("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0430120a01">
「こんな、植物状態の重病人が……装甲して
戦うなんて！」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　そうだ。
　できるわけがない。

　こんなのは嘘だ。
　明らかにおかしい。間違っている。

　だから嘘なのだ。
　こんな事は全部嘘だったのだ。

　――何処から？

　何処から何処までが嘘だ？

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430130a07">
「どう聞いてもデタラメな話だよなー。
　でも、ここに嘘はなんにもない」

{	FwL("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430140a07">
「真実、この湊斗光が銀星号だ」

{	FwL("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0430150a01">
「だからっ……どうやって！
　そんなことができるっていうのよ！」

{	FwL("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430160a07">
「眠る」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　預言者は一言で、正解を語り尽くした。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw村正_驚きa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0430170a01">
「……眠る、って」

{	FwL("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430180a07">
「この湊斗光が眠ると〝銀星号〟が出てくる」

{	FwL("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0430190a01">
「何よ……それ」

{	FwL("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430200a00">
「…………」

//【景明】
<voice name="景明" class="景明" src="voice/md02/0430210a00">
「二重人格……？」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　一つの肉体に二つの自我が宿る。
　そんな精神的変調が存在すると、耳にした事はある
が――

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw茶々丸_寂寥.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430220a07">
「いや、違う。
　銀星号は<RUBY text="・・">人格</RUBY>じゃない」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430230a07">
「実験して調べてみた」

{	FwL("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430240a00">
「実験？」

{	FwL("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430250a07">
「あては最初、<RUBY text="・・・・">この状態</RUBY>を見ても、御姫って
変な寝方するんだなーとしか思わなかったよ。
　湊斗光が鉱毒病で廃人になってるなんて、
初めは知らなかったしね」

{	FwL("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430260a00">
「……」

{	FwL("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430270a07">
「でもその内、段々と妙に思えてきたからさ。
　物は試しで脳波を調べてみたの」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430280a07">
「この状態と、立って動いてる時と」

{	FwL("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0430290a01">
「脳波……？」

{	FwL("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430300a07">
「てきとーにわかりやすく言えば、頭の血の
巡り具合だ。
　わりと最近の学問だけど、お兄さんは多分
知ってるよ」

{	FwL("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430310a07">
「いや……おめーら村正こそ誰よりも詳しく
知ってるはずだ。
　知らないわけねえ。知らなかったら、どう
して人の精神を書き換えられる？」

{	FwL("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0430320a01">
「…………」

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw茶々丸_寂寥.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430330a07">
「その脳波を調べてみたら、さ。
　結果は逆だったんだ」

{	FwL("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430340a00">
「逆……」

{	FwL("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430350a07">
「<RUBY text="・・・・・・・・・・・・・・・">この状態の湊斗光は覚醒していて</RUBY>、
　<RUBY text="・・・・・・・・・・・・・・・">活動する銀星号は常に眠っていた</RUBY>」

{	FwL("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430360a00">
「――――――――」

{	FwL("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430370a07">
「夢なんだよ」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430380a07">
「〝銀星号〟は湊斗光の見ている夢」

{	FwL("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430390a07">
「既に破壊された人格が、砕け散った意識の
底で見続けている夢だ」

{	FwL("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0430400a01">
「……夢……？」

{	FwL("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430410a07">
「そう」

{	FwL("cg/fw/fw村正_苦悶.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0430420a01">
「そんな――ふざけた話が」

{	FwL("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430430a07">
「心当たり、何もないか？」

{	FwL("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0430440a01">
「あるわけないでしょう……」

{	FwL("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430450a07">
「お兄さんは？」

{	FwL("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430460a00">
「…………」

{	FwL("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0430470a01">
「……御堂？」

</PRE>
	SetTextEXL();
	TypeBeginTimeLIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　あの時。
　――――昨日、光に挑んだあの時。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆回想

	EfRecoIn1(18000,300);

	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg053_堀越御所の庭_01.jpg");
	CreateTextureSP("絵回想200", 2100, 300, InBottom, "cg/st/st光_通常_私服.png");

	EfRecoIn2(600);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　俺は確かにこう思った。

　<RUBY text="・・・・・・・・">存在が希薄過ぎる</RUBY>。
　<RUBY text="・・・・・・・・・・・・">光は本当にここにいるのか</RUBY>、と。

　足利茶々丸の語る事は、その馬鹿げた直観に対する
合理の一解説だ。
　
　夢。

　夢ならば――符合する。
　<RUBY text="・・・・・・・・">存在しながら不在</RUBY>であった、あの光に。

　それ以前から感じていた、現実性の欠落……
　奇妙な隔絶感にも、説明がつく。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆戻り

	EfRecoOut1(300);

	Delete("絵回想*");

	EfRecoOut2(600,true);


	SetFwL("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430480a07">
「あるっしょ？
　言ってたもんね……御姫が目の前にいるの
に、その実在を疑ったって」

{	FwL("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430490a00">
「……しかし……
　やはり……有り得ません」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆回想：銀星号の戦闘

	EfRecoIn1(18000,600);

//■仮絵 inc櫻井
	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/ef/ef037_飢餓虚空魔王星b.jpg");
	CreateTextureEX("絵回想200", 2100, @0, @0, "cg/ev/ev901_銀星号天座失墜小彗星_c.jpg");
	Fade("絵回想200", 0, 500, null, false);

	EfRecoIn2(300);

	SetFwL("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430500a00">
「<RUBY text="・・">あれ</RUBY>を全て、眠りの中で行っていたなど！」

{	FwL("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430510a07">
「言うなりゃ、天然の無想――夢想剣だ。
　御姫が無敵なのも道理だぁね」

{	FwL("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430520a07">
「どだい、人間ってのは無駄が多く出来てる。
　その無駄を全部取っ払って、自分に必要な
ものだけを残したのがあの<RUBY text="ゆめ">銀星号</RUBY>だっていう
なら、誰も勝てるはずがない」

{	FwL("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430530a00">
「有り得ません」

{	FwL("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430540a07">
「そんな都合のいい<RUBY text="・・">奇跡</RUBY>があってたまるか、
って？」

{	FwL("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430550a00">
「…………」

{	FwL("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430560a07">
「安心してよ。
　これは奇跡なんて素敵なもんじゃない」

{	FwL("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430570a07">
「呪いに過ぎない。
　代償が支払われている」

{	FwL("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430580a00">
「……どういう意味ですか」

{	FwL("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430590a07">
「お兄さん、この容態を見てどう？
　二年前と比べて」

{	FwL("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430600a00">
「……………………」

{	FwL("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430610a00">
「衰えている……？」

{	FwL("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430620a07">
「うん。
　活動中は理不尽なパワフルぶりに騙される
けど、こうして寝てると明らかでしょ？」

{	FwL("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430630a07">
「中身はもっと酷いよ。
　最新最高の医療技術をかたっぱしから注ぎ
込んで、どうにかこうにか命を繋いでるけど
……あといくらも<RUBY text="も">保</RUBY>たない」

{	FwL("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430640a00">
「それは」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　何から来る衰退なのか。

　二年前、光の鉱毒病は治療されている。
　時すでに遅くはあったが……更なる症状悪化は阻止
できたはず。

　衰えの理由は別になくてはならない。
　
　――つまり、

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	EfRecoOut1(300);

	Delete("絵回想*");
	Delete("病床");
	OnBG(101, "bg097_堀越御所内光の部屋_03a.jpg");
	FadeBG(0, true);

	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw茶々丸_寂寥.png");

//嶋：修正（してる）【090930】
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430650a07">
「抑制のない夢の世界に根差しているからこそ、
銀星号は人外境の力を揮える……。
　けどその分の負債は、現実の湊斗光の肉体
からきっちり取り立てられてるってわけ」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430660a07">
「こうして……」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430670a00">
「…………」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430680a07">
「あての見るところ、あと二回かな。
　銀星号として動けるのは」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430690a00">
「二回……」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430700a07">
「多分ね」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430710a00">
「その後は――」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430720a07">
「無いよ」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430730a00">
「……」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430740a07">
「そこで終わり。
　銀星号も……湊斗光も」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　終わり。

　この世から、消える。
　いなくなる。

　死ぬ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0430750a01">
「…………」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430760a07">
「さて。
　どうしよう、お兄さん？」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430770a00">
「……どう、とは？」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430780a07">
「あては約束を守ったよ。
　御姫を殺すチャンスをあげた」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430790a00">
「…………」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430800a07">
「今ならそこらの子供でもやれる。
　首に手をかけて、軽く捻ればおしまいだ」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430810a07">
「さ、どうぞ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430820a00">
「……………………」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430830a00">
「馬鹿な」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　できるわけがない。

　<RUBY text="・・・・・">これは光だ</RUBY>。
　俺の家族――俺の守りたかった、救いたかったもの
だ。

　殺す？
　冗談だろう。

　逆だ。すべきは逆だ！
　手を尽くして、この衰え果てた光を助けるのが俺の
役目――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_寂寥.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430840a07">
「あと二回。
　でもその二回で、どれだけの人間が死ぬの
かな？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430850a00">
「――――――――――――――――――」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430860a07">
「〝銀星号〟は湊斗光がごく深い熟睡状態に
陥ったとき発生する現象だ。
　出現を未然に阻止する方法はない」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430870a07">
「現れたものを、力で止めるのも無理。
　……今しかない」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430880a07">
「お兄さん。
　犠牲者を出したくないなら、いま殺すしか
ないよ」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430890a00">
「…………」

{	FwC("cg/fw/fw景明_悲しみ.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430900a00">
「…………………………」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0430910a01">
「……御堂……」

//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0430920a01">
「少し……席を外して。
　私が、」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　片手を突き出して、その先の言葉を止める。
　聞きたくなかった。

　聞けば、頭蓋が割り裂けそうだった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_冷酷.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430930a07">
「すっこんでろよ。
　言っとくが、おめーにはやらせねえ」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430940a07">
「あてが機会をあげるのはお兄さんだけだ」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430950a00">
「……村正……」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0430960a01">
「…………」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430970a07">
「そっ。
　すべてはお兄さん一人の決断」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0430980a07">
「お兄さんの意思でやらなくちゃいけない。
　湊斗光を……殺害する……」

{	FwC("cg/fw/fw景明_恐怖.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0430990a00">
「……っ……」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0431000a07">
「できない？」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0431010a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　湊斗光。
　銀星号となり、殺戮を為すもの。

　湊斗光。
　俺の、守りたかったもの。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0431020a07">
「お兄さん……
　あてと坊主が言ったことを思い出して」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0431030a00">
「……？」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0431040a07">
「無我。
　湊斗景明が湊斗光の死を望まないなら……
湊斗景明を捨てるんだ」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0431050a07">
「英雄になるんだ。
　世界の意思は<RUBY text="まおう">銀星号</RUBY>の死を望んでいる」

{	SetVolume("@mbgm*", 5000, 0, null);
	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0431060a00">
「―――――――――――――――――――
――――――――――――――――――――
――――――――――――――――――――
―――――――――――――――――――」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0431070a07">
「お兄さん」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0431080a07">
「<RUBY text="おのれ">自己</RUBY>を、捨てて」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　世界に死を撒く銀星号を滅ぼすために。

　俺は――――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



//◆選択：英雄になる／……なれない

}

..//ジャンプ指定
//◆英雄になる　"md02_043a.nss"
//◆……なれない　"md02_043b.nss"



//★選択肢シーン
scene md02_043.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	OnBG(100,"bg097_堀越御所内光の部屋_03a.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("英雄になる","……なれない");
	select
	{
		//カーソル用
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @選択肢１
		{
			ChoiceA02();
//◆英雄になる　"md02_043a.nss"
				$GameName = "md02_043a.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆……なれない　"md02_043b.nss"
				$GameName = "md02_043b.nss";
		}
	}
}