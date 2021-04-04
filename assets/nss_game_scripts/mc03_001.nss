//<continuation number="300">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_001.nss_MAIN
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
	#bg053_永倉家の庭_01=true;
	#bg063_永倉邸廊下_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_永倉翁=true;

	$PreGameName = $GameName;

	$GameName = "mc03_002.nss";

}

scene mc03_001.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc02_036.nss"

//◆永倉邸
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");
	OnBG(100, "bg053_永倉家の庭_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm30", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒幕１", 3000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　今年の会津は冬の訪れが遅い。

　暦の上では既に冬季である。
　しかし、例年通りならば霜月の中頃には降り始める
雪が、師走に入ってもまだ一度たりと草木を白く染め
ていない。珍しいことだと、家主は語っていた。

　不運なのかもしれない。そう思う。
　北国の景色は、やはり白雪の彩りを得て映えるもの
であろうから。

　屋敷内の庭園も名族大鳥家の<RUBY text="れんし">連枝</RUBY>たるを示す見事な
ものではあったものの、何処か画竜点睛を欠く趣きは
否めない。

　雪雲は、会津の<RUBY text="くにざかい">國境</RUBY>で足踏みしている。
　天の風向のためか海の潮流のためか。

　それとも地を這う人の発する血生臭い<RUBY text="いきれ">熱</RUBY>のためか。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆庭に面した廊下
	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	Delete("@OnBG*");
	OnBG(100,"bg063_永倉邸廊下_01.jpg");
	FadeBG(0,true);
	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　白からぬ冬は、気温の下がり方も緩やかだ。
　生地は南、育ちとて北ではないこの身体も、凍えて
<RUBY text="こたつ">炬燵</RUBY>に入ったまま動けなくなるのはまだしばらく先の
話であろうと思える。

　その間に、
　
　
　――――何を為さんか。

　それは、俺一人の了見で決すべき事ではなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw永倉翁_通常b.png");

	#voice_on_永倉翁=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0010010b17">
「御客人」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆永倉翁

//■相談：景明は表示させないほうがいいでしょうか inc櫻井
//あきゅん「相談回答：そうですね、ここは景明視点で進みましょう」
//■07/08 翁の立ち位置等を変更いたしました。 inc櫻井
	StR(1000, @0, @0, "cg/st/st永倉翁_通常_私服.png");
	FadeStR(300, true);

	SetFwC("cg/fw/fw永倉翁_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0010020b17">
「昼餉は済まされましたのかな」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0010030a00">
「これは永倉翁。
　昼なら先程、充分に」


{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0010040a00">
「あの柿の<RUBY text="ひたしもの">浸物</RUBY>は絶品でした。
　どうか厨房の<RUBY text="かた">方</RUBY>に感謝をお伝え下さい」


{	FwC("cg/fw/fw永倉翁_通常b.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0010050b17">
「ふほっ。伝えましょうぞ。
　今年は<RUBY text="みしらず">身不知</RUBY>柿の出来が良うございまして
のう。板前も腕の振るい甲斐があるようです」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　機嫌良くそう言って、老人は白い歯を見せた。
　まさに好々爺という風情である。

　軍隊に追われる者を平然と匿う豪胆さは、その何処
からも窺えない。
　万一にも敵に回したなら、厄介では済まぬ<RUBY text="じん">仁</RUBY>に違い
なかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0010060a00">
「あれが名高い献上柿。
　帝の御相伴に与れるとは光栄の至りです」


{	FwC("cg/fw/fw永倉翁_沈思.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0010070b17">
「気に入って頂けたなら、晩にはまた趣向を
変えて出してくれるよう言っておきましょう
かの。
　して御客人」


{	FwC("cg/fw/fw永倉翁_通常a.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0010080b17">
「どちらに参られますのかな。
　もしや香奈枝様のお部屋へ？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0010090a00">
「は。そのつもりでした。
　差し支えなくば、見舞いをお許し願いたく」


{	FwC("cg/fw/fw永倉翁_沈思.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0010100b17">
「……そうだの。もうよろしかろう。
　しかし、少々時間をつぶしてからになさり
ませい」


{	FwC("cg/fw/fw永倉翁_通常a.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0010110b17">
「香奈枝様はまだ、昼餉を終えられておらぬ
と思いますでの」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0010120a00">
「そうですか。……確かに。
　では、お勧めの通りに致します」


{	FwC("cg/fw/fw永倉翁_苦味.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0010130b17">
「何度も追い払った挙句にまた待ちぼうけを
食わせて、申し訳ございませぬ」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0010140a00">
「とんでもない。
　相手に迷惑を掛ける見舞いなど見舞いでは
ありません。いちいちご忠告を下されたこと、
有難く思っております」


{	FwC("cg/fw/fw永倉翁_通常a.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0010150b17">
「いやいやいや。
　そのように言われては恐縮……」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0010160a00">
「御庭を歩かせて頂くことにしましょう。
　食事を急ぎ過ぎたのか、いささか胃の心地
が悪いので、腹ごなしも兼ねて」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw永倉翁_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0010170b17">
「……むふぅ。
　そういえば、随分とお早い」


//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0010180b17">
「ご家風ですかな？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0010190a00">
「……いえ。別段。
　普段はこのような事はなく……今とて殊更
迅速な完食を心掛けたわけではないのですが」


{	FwC("cg/fw/fw永倉翁_通常a.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0010200b17">
「では無意識に。
　戦場の心得が顕れましたのかな？」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0010210a00">
「…………」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0010220a00">
「そうかもしれません」


{	FwC("cg/fw/fw永倉翁_沈思.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0010230b17">
「いつ何時、敵に襲われるか知れぬとあらば、
食事にのんびり時間を掛けるなど自殺行為も
同然ですからのう。
　箸が早まるのは当たり前」


{	FwC("cg/fw/fw永倉翁_通常b.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0010240b17">
「しかし、ご案じ召されるな。
　当家が進駐軍の奴輩に取り巻かれるような
事は……当面、まずございますまいからの」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0010250a00">
「翁、それは」


{	FwC("cg/fw/fw永倉翁_通常b.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0010260b17">
「先刻、物見が戻って参りましてな。
　國境の要路は、獅子吼めの手勢で蟻の這い
出る隙間もなく固められているとの事」


{	FwC("cg/fw/fw永倉翁_通常a.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0010270b17">
「大軍を起こさねば、突破は叶いますまいて」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0010280a00">
「…………」


{	FwC("cg/fw/fw永倉翁_沈思.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0010290b17">
「無論のこと、そうした事態は遠からず<RUBY text="しゅったい">出来</RUBY>
致しましょうがの。
　今しばらくは、ご懸念に及ばず」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0010300a00">
「は」


</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

	DeleteStR(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　永倉老人の言葉は否応なく、俺にこれまでの経過を
振り返らせた。
　そうだ――いずれ、進駐軍はこの会津へ雪崩込んで
来る。

　そんな情勢になってしまっているのだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);
}

..//ジャンプ指定
//次ファイル　"mc03_002.nss"