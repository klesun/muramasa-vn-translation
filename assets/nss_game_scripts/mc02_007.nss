//<continuation number="880">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_007.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc02_008.nss";

}

scene mc02_007.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc02_002.nss"

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");
	OnBG(100,"bg030_ＧＨＱ監禁部屋_01.jpg");
	FadeBG(0,true);

	SoundPlay("@mbgm35",0,1000,true);
	StR(1000, @0, @0, "cg/st/st香奈枝_通常_制服c.png");
	StL(1000, @0, @0, "cg/st/stさよ_通常_私服.png");

	FadeStL(0, false);
	FadeStR(0, false);
	Delete("上背景");
	FadeDelete("黒幕１",1000,true);

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070010a03">
「すーはぁー、すーはぁー」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070020a00">
「要らぬ心労を掛けてしまったようで……
　申し訳ありません」


{	FwC("cg/fw/fw香奈枝_凹む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070030a03">
「いえ……。
　かなりのハートブレイクショットではあり
ましたけど」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0070040a04">
「なんか豪快に負けましたなお嬢さま。
　人間衝撃力勝負とかそんなものに」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070050a03">
「そうねー。ペナルティエリアの反則でＰＫ
貰ってさあ一点と思った所に<RUBY text="サード">三塁手</RUBY>の隠し球、
ランナーアウト、試合終了。採点の結果二対
一で判定負けって感じではあったかしら」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0070060a04">
「次からはお嬢さまも量子論に基づいて壁を
すり抜けつつ登場するくらいの芸をなさらな
くてはいけませんな」


{	FwC("cg/fw/fw香奈枝_凹む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070070a03">
「生き難い世の中ね……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStR(300, false);
	DeleteStL(300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　進駐軍大尉大鳥香奈枝。彼女の侍従永倉さよ。
　待つ、という程のこともなく現れた来訪者は、その
二名だった。

　ここがＧＨＱの施設であるのなら、二人がいること
には何の不審もない。
　が――<RUBY text="・・・・・">何のために</RUBY>やって来たのか、それは現状では
全く謎の彼方だった。

　とにかく、事を一から順に訊いてみるほかにない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	StR(1000, @0, @0, "cg/st/st香奈枝_通常_制服c.png");
	FadeStR(300, false);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070080a00">
「大尉殿」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070090a03">
「はい？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070100a00">
「まず、自分から質問をしても宜しいか」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070110a03">
「どうぞ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　快諾を得て、短く思考を巡らす。
　最優先事項は……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070120a00">
「舞殿宮殿下は如何されましたか？」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070130a03">
「建朝寺からは無事に脱出されたようです。
　御遺体は見つかりませんでしたし……」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070140a03">
「今頃はどこかに潜伏して様子を窺っておら
れるのではないかしら」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070150a00">
「……そうですか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　軽く息をつく。
　何にせよ、それは吉報だった。

　親王の身は依然、安全とは程遠いのだろうが……
　あの政治的生存術に長けた御人の事だ。危地を切り
抜けて生き延びたからには、生き延び続けられる方法
を必ず探り出すだろう。

　この件に関しては、最早俺が心配したところでどう
にもなるまい。
　となれば次は、俺自身の事だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070160a00">
「自分はどうしてここに……
　いえ。まず、ここは何処でしょうか」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070170a03">
「横浜です」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　返答は端的で、やや婉曲で、しかしやはり自明瞭然
だった。

　横浜。
　
　――――進駐軍総司令部。

　ＧＨＱの本部施設に、俺はいるようだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070180a00">
「では……
　何故自分は、その横浜に？」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070190a00">
「建朝寺で……倒れていたと思うのですが」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070200a03">
「ええ。
　それをさよが拾って、車でここまでお連れ
したのです。ね？」


{	StL(1000, @0, @0, "cg/st/stさよ_通常_私服.png");
	FadeStL(300, false);
	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0070210a04">
「は」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070220a00">
「それは――」

//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070230a00">
「…………」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070240a00">
「お手数を掛けまして」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0070250a04">
「いえいえ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　果たして礼を言う筋合いなのかどうか。
　少し迷った末、一応は言っておく。

　内心を読んだのか、老女の<RUBY text="いらえ">答</RUBY>は肩をすくめるような
響きだった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070260a00">
（……そうか……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　一度質問を切り、情報を整理する。

　親王と敵対し、建朝寺を襲ったのはＧＨＱで……
　内部にいた香奈枝嬢はその情報を掴み、俺に教えた
……？

　襲撃が行われた時、彼女らも付近にいて……
　気絶した俺を発見。回収して、横浜基地へ運送した
……と、いう事なのか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070270a00">
「村正……
　自分の劒冑は？」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0070280a04">
「無論、一緒にお連れしました。
　今は別室でお休みでございますよ」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070290a03">
「残念ながら、会わせて差し上げるわけには
参りませんが」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070300a00">
「……とは。
　何故でしょうか」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070310a00">
「会わせられない、とは」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　明答続きの流れがここで途切れて、ぽっかりと間が
空いた。

　香奈枝嬢の表情は、失言を突かれて返答に詰まった
人間のそれではない。
　この間を楽しみ、味わっている、そんな顔だった。

　実際、返答の必要はない。
　彼女は既に明らかにしてみせたのだ。俺と彼女の、
立場関係を。

　劒冑との接触が許されないのは何故か。
　
　――武装させてはならないからだ。

　彼女がどうして俺の武装を危惧するのか。
　
　――彼女と俺とが敵対しているからだ。

　つまり。

　如何なる事情によってか、親王とＧＨＱの間に対立
が生じ。
　そしてその時、彼女はＧＨＱの立場で行動した。

　彼女のこれまでの言動、また江ノ島で俺もろともに
抹殺されかかっていた事を思えば、その理由は単純な
所属問題に帰すものでもないのだろうが……
　いずれにせよそうなった。

　必然、親王の恩を蒙る俺とも対立する。
　これと彼女が建朝寺襲撃を予報したこととは、矛盾
するようで必ずしもそうでない。まとめて一掃する為
にそうしただけなのかもしれないからだ。

　全て説明がつく。
　あとわからないのは……親王とＧＨＱの対立の理由
と。

　もう一つ。
　<RUBY text="・・・・・・・・・・・・・">なぜ俺がいま生きているのか</RUBY>。

　生かされているのか。
　殺されず、横浜に拘禁されているのか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070320a00">
「大鳥大尉殿」

{	StR(1000, @0, @0, "cg/st/st香奈枝_通常_制服c.png");
	FadeStR(300, false);
	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070330a03">
「はい♪」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070340a00">
「現在、自分が生存を許されている理由は何
でしょうか」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070350a03">
「心臓が動いているからではありませんの？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　微笑むＧＨＱ大尉。
　その微笑が嘲笑と呼ばれる類のものである事は明白
だった――彼女は全く、隠そうともしていない。

　驚くべき事でもなかったので、構わず続ける。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070360a00">
「停止させる事は容易かった筈です」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070370a03">
「そうかしら？」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070380a00">
「自分のこめかみに銃口を押し当て、引き金
に掛けた指へ百グラム程の力を与えるだけで」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　ほんの一時間前まで意識を手放していたのだ。
　もっとずっと雑な殺し方でも、俺には抵抗する<RUBY text="すべ">術</RUBY>は
なかった。

　くつくつ、と小鼓に似た小気味良い<RUBY text="なり">鳴</RUBY>。
　咽喉の奥だけで、香奈枝嬢は笑声を立てていた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070390a03">
「そうですね……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070400a00">
「…………」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070410a03">
「けれどわたくしにも、色々都合というもの
がありますの」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070420a00">
「宜しければお聞かせ願いたい」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070430a03">
「よろしくってよ？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　笑み。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070440a03">
「まず一つには、景明さまを生かして連れて
来てほしいと頼まれていたこと」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070450a00">
「……？
　頼まれた？」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070460a00">
「ＧＨＱの中の人間に、ですか？」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070470a03">
「ええ」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070480a00">
「……何方でしょう」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　まるで心当たりがなかった。
　進駐軍内には助命の手配りをしてくれるような朋友
はおろか、単なる知人すらいない。大鳥主従を除いて。

　ついでに言えば、道端で持病の発作に苦しんでいた
見知らぬ英国人を助けた覚えもない。
　安否を気遣われる理由など、想像の範疇外である。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070490a03">
「ウォルフ教授と呼ばれている方です。
　<RUBY text="ＮＲＳ">天然資源局</RUBY>で顧問をしていらっしゃる……
ご存知ありません？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070500a00">
「いえ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　記憶の端にも引っ掛からない名だ。
　ウォルフ――<RUBY text="ウォルフ">狼</RUBY>？　<RUBY text="ドイツ">独逸</RUBY>語……？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070510a03">
「お知り合いではないんですの？
　……あの方、どうして景明さまの身を気遣
われたのかしら」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0070520a04">
「学者という人種はいささか常人の理解から
はみ出した部分を往々にしてお持ちですので。
　ま、湊斗さまに関する報告の中に何か教授
の興味を刺激する部分でもあったのでは？」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070530a03">
「なのかしらね？
　性的興味とかでなければ良いのですけど」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070540a00">
「それは自分も死に物狂いで困ります」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070550a03">
「いずれ教授とは面会の場が設けられるはず
ですから、真実はそのとき<RUBY text="じか">直</RUBY>にお確かめなさ
いまし。
　……それはそれとして……」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070560a03">
「理由はもう一つ。
　こちらがわたくしの個人的事情」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070570a00">
「……は」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　笑み。
　
　
　それを見る。

　それが形作るものを見る。

　単一の意。
　単一の情。
　単一の――――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070580a00">
（あぁ）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　心に深く、深く頷く。

　これまでは疑惑でしかなかったものを、確信の域へ
押し上げる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetVolume("@mbgm*", 1000, 0, null);
	DeleteStL(300, false);


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070590a00">
（俺はこの人に<RUBY text="にく">悪</RUBY>まれている）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　
　　　　　　　　　　　悪意。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070600a03">
「景明さま。
　あなたを易々と死なせたくはなかったから」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　
　　　　　あたかも山陰の湧水のように。
　　　　　冷たく豊かで、透き通る悪意。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆柱時計。ごーんごーんと四回。終了待つ。


	CreateSE("時計", "se日常_機械_柱時計鳴る_4回");
	MusicStart("時計", 0, 1000, 0, 1000, null,false);

	WaitKey(10000);

	SetVolume("時計", 1000, 0, null, false);

	SoundPlay("@mbgm18",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　四時を知らせる鐘の音を聴いて、俺は初めて室内に
時計があることに気付いた。
　西洋式の座敷牢以外の何でもないと思われるこの小
部屋には不釣合いな、まずまず立派な柱時計だ。

　こんな所にそんなものを設置した人間の意図を想う。
　窓が無く昼夜の区別もつかない部屋には時計くらい
良い物を置くべきだという配慮か。室全体の貧相さを
際立たせて収容者を追い詰める謀略か。

　処刑までの残り時間を正確に教えてしっかり覚悟を
決めさせようという悪意<RUBY text="したた">滴</RUBY>る親切か。
　それとも単に余り物をここへ回しただけか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070610a03">
「……早朝なのか夕方なのか、お悩み？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070620a00">
「それも、些か」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070630a03">
「早朝です。
　景明さまがお目覚めになったと聞いてすぐ
に来てしまいましたけれど……考えてみれば
非常識でしたね」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0070640a04">
「このさよめが迂闊でございました。
　湊斗さま、無礼をお許しくださいませ」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070650a00">
「謝罪など御無用に。
　すぐに来て頂けたことは有難く思っており
ます」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　ろくろく事情がわからぬまま放置されずに済んだの
だから。

　しかし、早朝四時……。
　建朝寺境内で倒れてから丸一日は経っているような
気がしていたが、その実まだ半日にも満たなかったの
か。

　いや、一日半が過ぎているのかもしれないが。
　……体の重さを踏まえれば、そちらの方が可能性は
ありそうだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070660a00">
「大尉殿」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070670a03">
「はい、景明さま」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070680a00">
「初めてお会いしたのは、あの村……
　今はもう存在しない、あの小さな村の」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070690a03">
「ええ……。
　あの山の上」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070700a00">
「あれからまだ然程の時は流れておりません。
　つい昨日の事とも思える程」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070710a03">
「でも、その間に色々とありました。
　悪代官を相手に立ち回ったり、<RUBY text="アーマーレース">装甲競技</RUBY>を
巡る陰謀に介入したり、江ノ島に潜り込んで
でっかい変なのと戦ったり……」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070720a00">
「はい」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0070730a04">
「どれ一つとっても四百字詰原稿用紙三百枚
くらいなら埋められそうな事件でございまし
たなァ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　色々あった。本当に多事多端であった。
　それは全くその通りだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070740a00">
「しかし、大尉……。
　自分にはわからないのです」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070750a00">
「<RUBY text="・・・・">気付けば</RUBY>、貴方は自分に悪意を抱いておら
れた」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070760a03">
「…………」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070770a00">
「自分は短い交際の中で<RUBY text="いつ">何時</RUBY>、如何なる理由
により貴方の悪意を得たのでしょう。
　考えてみても、その謎は解けないのです」

//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070780a00">
「いえ……
　そもそも、理由はあるのでしょうか？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　人が人を嫌悪するのに、いちいち理由というほどの
理由など必要ではない。
　虫が好かない。肌が合わない。<RUBY text="・・・・・・">ただ何となく</RUBY>。それ
で充分、人間は他者に悪意を向けられる。

　自分が人に好かれやすい<RUBY text="たち">性質</RUBY>だなどとは酒席の冗談
にも言えない事だ。
　俺への悪意に何の理由もなかったからとて、不思議
がるには値すまい。<k>が――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070790a03">
「理由ならありましてよ……」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070800a00">
「……」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070810a03">
「とてもわかりやすくて。
　とても単純な、理由」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070820a00">
「それを自分が知らないのは、やはり途轍も
ない失態なのでしょうか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　何か……恐るべき無自覚を俺が犯しているのなら、
謝らなくてはならないだろう。
　謝って済む事なのかどうかは別として。

　しかし香奈枝嬢は機嫌を損じた様子もなく、優美に
首を振ってみせた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070830a03">
「いいえ、どうかお気になさらないで。
　景明さまが理解しておられないのはとても
自然なことなのです」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070840a00">
「お聞かせ願えるでしょうか」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070850a03">
「もちろん」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　長髪の令嬢は笑みを広げた。
　その含有成分――悪意ごと。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070860a03">
「そうするためにお助けしたのですもの。
　是非にも聞いて頂きます……」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0070870a03">
「少々、長い話になってしまいますけど」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0070880a00">
「お構いなく。
　幸い、今の自分は暇を持て余す身です」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　真顔で言う。
　……ぷっと軽く吹き出してから、大鳥香奈枝大尉は
話し始めた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 1000);

}

..//ジャンプ指定
//次ファイル　"mc02_008.nss"