//<continuation number="750">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_011a.nss_MAIN
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
	#bg037_競技場ガレージa_01=true;


	//▼ルートフラグ、選択肢、次のGameName

	$茶々丸遭遇 = true;
	if($ma03_011_routeFlag == true){$ma03_011_routeFlag=false;}
	else{$Others_Flag++;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma03_012.nss";

}

scene ma03_011a.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_011.nss"

//●この場に留まる

	SoundPlay("@mbgm16",0,1000,true);

	PrintBG("上背景", 30000);
	OnBG(100,"bg037_競技場ガレージa_01.jpg");
	FadeBG(0,true);
	StR(1000, @+50, @0,"cg/st/st景明_通常_私服.png");

	Delete("上背景");
	Move("@StR*", 300, @+30, @0, null, false);
	FadeStR(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　邪魔にならないよう壁際に退避して、タムラの人々
の作業を見守る。
　一つ一つの挙措に熱意が感じられた。欠伸をしつつ
手を動かしている者など一人もいない。

　今回の大和ＧＰ――戦後初の国内統一選手権で勝利
を収めれば、間違いなく大和における装甲競技の歴史
上に不朽の名を刻むことになる。
　決して風化しない金字塔だ。

　それを思えばこの意気込みもむしろ当然と思える。
　
　だが――錯覚であろうか。

　タムラチームを包む熱気には、かすかに<RUBY text="・">負</RUBY>の匂いが
ある。
　前方に輝く栄光だけを見ているのではない。同時に、
後方から迫る肉食獣の影に怯えているような――

　どこか、そんな気配があった。
　この大会に敗れたら解散、というような話でも持ち
上がっているのだろうか？　聞いたこともないが……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);
	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0010a07">
「うむうむ。
　いい感じに切羽詰まってんねー」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0020a00">
「……？」

{	NwC("cg/fw/nwその他.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0030a07">
「あんたもそう思ってんじゃない？
　違う？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　傍らから、唐突な声。
　振り向いて、最初に目に入ったのは、稀有な光沢を
放つ髪だった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆茶々丸・変装。野球帽？

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	DeleteStR(0,true);

	StL(1000, @0, @0,"cg/st/st茶々丸_通常_変装.png");
	FadeStL(0,true);

	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);


	SoundPlay("@mbgm22",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　小柄な人影がそこにある。皇路操と<RUBY text="どっこい">互角</RUBY>だろう。
　判別の難しい身なりをしていた。レーサーには見え
ない。サポートスタッフとも思えない。ただの観客と
いうにも納得し難い部分がある。

　無論、面識はない。
　言葉を探すうち、その少年は再び唇を動かしていた。

　化粧によらない、薄紅色の唇。
　――その一瞬、奇妙に魅かれた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st景明_通常_私服.png");

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0040a07">
「理由は知ってる？」

{	FadeStR(300,false);
	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0050a00">
「とは」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0060a07">
「張り詰めてる理由さ。
　月桂冠が欲しいだけじゃないんだな、この
タムラの皆さんは」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0070a00">
「……」

{	NwC("cg/fw/nwスタッフ.png");}
//【ｅｔｃ／スタッフ】
<voice name="ｅｔｃ／スタッフ" class="その他男声" src="voice/ma03/011a0080e010">
「あ、あのぉ……
　チーフを呼んで参りましょうか？　今少し、
席を外してるんですが」

{	FwC("cg/fw/fw茶々丸変装_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0090a07">
「あー、いいよ別に。気にせんといて。
　ちょっと覗きに来ただけだからさ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　恐る恐るといった風情で尋ねてきたスタッフを邪険
に追い払う。
　スタッフの態度と、その視線の先を追って見て、俺
もようやく気付くことができた。

　来賓章だ。
　つまりこの少年は、主催者に招かれて貴賓席に座る
身分。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0100a00">
「……ポリスチーム関係の湊斗景明です。
　卒爾ながら、貴方はどちらの方ですか？」

{	FwC("cg/fw/fw茶々丸変装_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0110a07">
「そーだなー。
　地球皇帝とでも名乗っておこうか」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0120a00">
「諒解しました。
　地球皇帝陛下」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆茶々丸・手前アップ
	Move("@StL*", 150, @-300, @0, Dxl1, false);
	DeleteStL(150,true);

	CreateTextureEX("絵st100", 1500, -500, 0, "cg/st/resize/st茶々丸_通常_変装_ex.png");
	Move("絵st100", 200, -169, @0, Dxl1, false);
	Fade("絵st100", 150, 1000, null, true);

	SetFwR("cg/fw/fw茶々丸変装_歯噛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0130a07">
「突っ込み無しは予測済みだったのであては
めげたりしないのであった」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	Move("絵st100", 200, -300, @0, Dxl1, false);
	FadeDelete("絵st100", 150, true);

//◆戻る
	StL(1000, @-100, @0,"cg/st/st茶々丸_通常_変装.png");
	Move("@StL*", 300, @+100, @0, Dxl1, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw茶々丸変装_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0140a07">
「すいません、今の無しで。
　ワタクシはこういう者です」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　ポケットから名刺を取り出して寄越す少年。
　失礼のないように受け取って、そこに記された文字
列を読み取る。

　　　　　　<RUBY text="コンクリートサバンナ">灰色の荒野</RUBY>を駆け抜ける風
　
　　　　　　　　<RUBY text="ダンガンライガー">弾丸雷虎</RUBY>・見参!!　

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0150a00">
「……申し訳ありません。
　何処から何処までがお名前ですか」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0160a07">
「ダンガンライガーです。
　ライガーと呼んでください」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0170a00">
「灰色の荒野を駆け抜ける風というのは」

{	FwC("cg/fw/fw茶々丸変装_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0180a07">
「職業です」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0190a00">
「成程」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　……何をする職なのだろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0200a07">
「で、どうよ。お兄さん。
　この連中のことどう思ってる？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0210a00">
「確かに、奇妙な空気の存在は感じます。
　しかしわかりません。今のタムラに、何か
<RUBY text="ネガティブ">否定的</RUBY>な要素があるのでしょうか」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0220a07">
「あるんだー、これが。
　勝ちたい理由のほかに、負けられない理由
ってのがあったりする」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0230a00">
「それは、お尋ねしても宜しい事でしょうか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　無用の詮索は非礼にあたる。
　だが俺がここにいる目的を思えば、水を向けざるを
得ない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸変装_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0240a07">
「でなけりゃ話しかけないよ。
　なにね。このヒトたちはピュアにレースを
戦いたいってこと」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0250a00">
「……？」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0260a07">
「<RUBY text="・">金</RUBY>の話をコース上にまで持ち込みたくない
のさ。レースで走る騎体を用意するのに金が
掛かるのはしゃあない。けれど、グリッドに
並んでからゴールするまでは忘れていたい」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0270a07">
「お客さんにも忘れてほしい」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0280a00">
「…………。
　<RUBY text="・・・・・・">そういう動き</RUBY>があるのですか？」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0290a07">
「そりゃもうアリアリ。
　金に飢えた連中がこんなうまそーな食材を
見逃すわけないっしょ？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0300a00">
「確かに。
　<RUBY text="アーマーレース">装甲競技</RUBY>は今現在の大和で最も人気のある
スポーツの一つ……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0310a00">
「もしも、<RUBY text="・・・">賭博化</RUBY>に成功すれば莫大な利益が
見込めるでしょう」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0320a07">
「そういうことですね」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0330a00">
「タムラは反対派という事ですか」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0340a07">
「あとニチモー、ユーゲン、メーカーサイド
ではそんなもんかな。<RUBY text="プライベーター">個人チーム</RUBY>にはタムラ
側が多いね」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0350a00">
「推進派は」

{	FwC("cg/fw/fw茶々丸変装_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0360a07">
「ぶっちゃけそれ以外全部。
　中心は翔京だな。もう運営委員会の名簿も
できてるらしいよ？　もちろん半数は自社の
人間」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0370a00">
「ヨコタンもそちらの側なのでしょうか」

{	FwC("cg/fw/fw茶々丸変装_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0380a07">
「最初はトップが渋ってたけど、結局折れた。
　まー、仕方ないんでない？　翔京には刃向
かえても、そのバックには尻込みするでしょ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0390a00">
「……<RUBY text="バック">背景</RUBY>」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0400a07">
「翔京の社長の姉の亭主は、大和ＧＰ主催者
サマに仕える侍大将」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0410a00">
「主催者……
　小弓公方、今川雷蝶中将ですか」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0420a07">
「いち企業の身で逆らうには、ちょっと荷が
勝ち過ぎると思わん？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0430a00">
「異論はありません」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
〝公方〟とは六波羅の軍司令官、もしくはその隷下の
司令部を指す。
　正しくは前者を管領と云い、後者を公方府と云うが。

　公方は下総古河、下総小弓、伊豆堀越、会津篠川の
関東四点に設置され、それぞれに枢要である周辺地域
一帯において軍政両権を掌握する。
　彼らの上には幕府の長たる<RUBY text="りくえたいしょうりょう">六衛大将領</RUBY>が在るのみだ。

　これと格式上は同等の存在として京都の室町探題、
九州の大宰府、陸奥の鎮守府があるが、いずれも公方
府ほどの実権力は備えていない。
　関東四公方は別格の存在であるといえる。

　つまりは六波羅幕府の首脳。垢じみた表現を用いて
四天王などとも称される最高幹部だ。
　翔京がこれと繋がっているのなら、その鼻息はさぞ
荒いことだろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0440a00">
「むしろ、タムラはよくも抵抗していられる
ものですね」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0450a07">
「レースを愛してるんだろ。
　競馬みたいにはしたくないんでない？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0460a00">
「成程。
　既に前例がありましたか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　大和においては完全に賭博化した競馬。
　純粋にスポーツとして楽しむには、余りにも<RUBY text="・・・">生臭い</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0470a00">
「その点を思うと、自分としてもタムラ側に
心情が寄ります」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0480a07">
「あても同感。競馬は競馬で好きだけどね。
　装甲競技をそうしちまうのは無粋だってば、
絶対」

{	FwC("cg/fw/fw茶々丸変装_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0490a07">
「……それをあのカニカマ野郎は。
　耽美派気取ってやがるわりに、身の回りの
ゴミには無頓着なんだよな」

{	FwC("cg/fw/fw茶々丸変装_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0500a07">
「ち、いい迷惑だってーの」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0510a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　誰のことだろうか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0520a07">
「まっ、それでも諦めたもんじゃない。
　話がどう転ぶかはまだわからんし」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0530a00">
「六波羅が背後にいても、ですか？」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0540a07">
「ギャンブル化を推進してる連中はそれで大
儲けするのが目的なんだろ？　なら、御上の
ご威光だけじゃ足りないね。
　もう一つ必要なものがある」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0550a00">
「……ご尤も。
　馬券を売り出しても、買う人間がいなくて
は意味を持ちません」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0560a07">
「そーさ。客層の支持が要る。
　客が賭博化にそっぽ向いたらおしまいだ」

{	FwC("cg/fw/fw茶々丸変装_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0570a07">
「六波羅がついてたって関係ねぇ。
　まさか無理矢理チケット買わせるわけにも
いかんだろし………いや、やってもいいけど
それなら普通に徴税した方が早いしなー」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0580a00">
「その点について、推進派はどのような画策
をしているのでしょう」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0590a07">
「絶対的な人気をゲットする。
　その人気に物を言わせて客を取り込む」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　<RUBY text="ゆー、しー">わかる</RUBY>？とこちらの顔を覗く少年。
　頷いて、俺は端的に答えた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0600a00">
「初代国内統一王者。
　第一回大和ＧＰ優勝の栄冠」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0610a07">
「ま、それが最高のカリスマだよな。
　かくして翔京は借金こさえて資金を集めて、
アプティマの最終構想を突貫工事で完成まで
漕ぎ着けて、投入してきたっつーわけだ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0620a00">
「絶対に負けられない勝負、と」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0630a07">
「タムラ側にとってもね。
　客の支持を得られれば勝ちってのは反対派
にだって言えるこったから」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　謎は氷解した。
　それで、ここタムラワークスのガレージ内には一種
異様な緊張の雲が垂れ込めていたのだ。

　この戦いに敗れれば、スポーツとしての装甲競技は
失われる。
　その覚悟を皆が共有しているのだろう。

　俺は未だパーツ磨きを続けている皇路操を見やった。
　幾度見直しても、小さな身体だ。

　彼女はあの小さな背に、父の夢と、レースを愛する
人々の想いとを乗せて<RUBY text="はし">騎航</RUBY>る。
　それが重荷でないとは到底思えない。

　だが彼女の冴えた相貌に、怯えや惑い、疲労すら、
見つけることはできなかった。
　ひたむきな何かだけがある。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0640a00">
（大した少女だ）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　その感慨はごく自然に、俺の胸を占めた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆アナザー好感度＋
//$Another_Flag = $Another_Flag++;
	$ma03_011_routeFlag = true;
	$Others_Flag++;

	judgment_of_count();


	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0650a07">
「さてっと。あてはそろそろ行くわ。
　くだらない用事がつかえてるし」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0660a00">
「お仕事ですか」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0670a07">
「仕事っちゃ仕事かな。
　糞つまらん<RUBY text="ぱーちー">宴会</RUBY>に顔を出すだけなんだけど
ねー」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0680a00">
「お疲れ様です」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　やはりそれなりに身分ある人間のようだ。
　スポンサー企業の令息、その辺りか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸変装_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0690a07">
「じゃ、お兄さん。まーた」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0700a00">
「はい。
　面白いお話を聞かせて頂いた事、感謝致し
ます」

{	FwC("cg/fw/fw茶々丸変装_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0710a07">
「なんの。
　……あ、お兄さん。ちょい、こっち」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0720a00">
「？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　小声になって、少年が手招きする。
　俺は誘われるまま、背を丸めて顔を寄せた。

　瞬間。
　鼻腔をついた肌の香りが、俺に<RUBY text="・・">誤解</RUBY>を直感させ――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ブラックアウト
//◆ＳＥ：口付け
//◆復帰
	CreateColorEX("絵暗転", 5000, "#000000");
	Fade("絵暗転", 300, 1000, null, true);

	DeleteStA(0,true);

	CreateTextureSP("絵背景100", 1500, Center, Middle, "cg/bg/bg037_競技場ガレージa_01.jpg");
	Zoom("絵背景100", 0, 1500, 1500, null, true);
	SetShade("絵背景100", HEAVY);

	CreateTextureEX("絵st100", 1500, -169, 0, "cg/st/resize/st茶々丸_通常_変装_ex.png");
	Fade("絵st100", 0, 1000, null, true);

	CreateVOICE("茶々丸","ma03/011a0735a07");
	MusicStart("茶々丸",0,1000,0,1000,null,false);

	MusicStart("茶々丸",0,1000,0,1000,null,false);

	$残時間=RemainTime("茶々丸");
	WaitKey($残時間);

	SetVolume("茶々丸", 500, 0, null);

	DrawDelete("絵暗転", 300, 100, "circle_02_00_1", true);

	SetFwR("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011a0730a00">
「――――！」

{	FwR("cg/fw/fw茶々丸変装_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0740a07">
「湊斗景明。
　黄金の夜明けを導くもの」

{	FwR("cg/fw/fw茶々丸変装_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/011a0750a07">
「あなたの存在に愛と感謝を。
　……こんなに優しい声の<RUBY text="ひと">男性</RUBY>だったなんて、
嬉しい」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 15000);

	CreateTextureSP("絵背景100", 1500, Center, Middle, "cg/bg/bg037_競技場ガレージa_01.jpg");

	FadeDelete("上背景", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　そんなことを囁いて。
　体を離すと、<RUBY text="・・">少女</RUBY>はまたねー、と手を振って去って
いった。

　現れた時と同様の唐突さで消えてしまう。
　後には中腰のまま呆然とする俺だけが残された。

　……思えば、そもそも。
　彼女はどうして、俺にあのような話をしたのだろう。

　何故あのように親しげだったのだろう？
　過去に面識はないと思うのだが……。

　首を傾げるべき点は多かったが、ここで思い悩んで
いてもどうにもなりそうにない。
　俺は皇路親子に挨拶をして、ガレージを出た。

　時間は有限だ。
　他の場所も見て回らなくてはならない。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//フラグ発生
//$この場に留まる = true;

	ClearWaitAll(1000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma03_012.nss"