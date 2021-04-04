//<continuation number="1130">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_013.nss_MAIN
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

	$GameName = "mc02_014.nss";

}

scene mc02_013.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc02_012.nss"

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);


//■顔を上げる、とのことで。
//ただこれだと微妙かもしれない。 inc櫻井

	OnBG(11, "bg079_ウォルフ教授の部屋_03.jpg");
	FadeBG(0, false);
	Delete("上背景");
	DrawTransition("黒幕１", 200, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("黒幕１");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　ふと、前触れもなく視線を感じて俺は顔を上げた。
　部屋を見渡す――誰もいない。

　論文を読み始める前と変わらぬ様相だ。
　
　……錯覚だったか。

　再び、論文に目を落とす。
　何処まで読んでいただろう。俺は文を追おうとし、

　不意にその、走り書きを発見した。
　ページの片隅に……本文とは違う乱雑な字体。

　同一人の手によるものではあるようだが。
　言語も違う。本文は英語と大和語が入り乱れている
が、その走り書きは――<RUBY text="ジャーマン">独語</RUBY>だった。

　一息に書き切ったらしき一文。
　
　Ｍｅｉｎ……Ｍａｃｈｔｈａｂａｒ……
　Ｋｒｉｓｔａｌｌｎａｃｈｔ……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130010a00">
「……<RUBY text="マハト・ハーバー">大法首</RUBY>？
　……<RUBY text="クリスタル">水晶の</RUBY>……<RUBY text="ナハト">夜</RUBY>……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　過去、妹の病の治療法を躍起に求めていた時、医術
の先進国である独逸の言語は幾らか<RUBY text="かじ">齧</RUBY>ったことがあった。
　当てにならない記憶を引っくり返して底までさらい、
どうにかこうにか意味の通るように訳してみる。

　その一文はおそらく、こう書かれていた。

　
　『我が大法首よ、水晶の夜に何があったのだ？』

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130020a00">
「…………？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　大法首――先の〝大戦〟で敗滅した<RUBY text="ダス・ドゥリッテ・ライヒ">統合独逸連邦</RUBY>の
指導者が自ら称した尊号。
　そして……水晶の夜。

　意味は通っても、理解は追いつかない。
　
　思索に没頭していた俺は、何気なく視線を動かして
<RUBY text="・・・・">その存在</RUBY>に気付いた時、思わず呻き声を上げかけた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

//◆「少女」
//◆戦国ランスの魂縛りみたいな感じか。エルフ耳（白蝦夷）
//◆ＢＧＭ：金神／魔王尊

	StC(1000, @0, @0, "cg/st/st鍛造雷弾_通常_私服.png");
	FadeStC(300, true);

	WaitKey(1500);

	SoundPlay("@mbgm02", 0, 1000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　少女だった。

　一体、いつからそこにいたのだろう。
　ほんの数十秒前、室内を見回した際にはいなかった
筈だが――いやどうか。<RUBY text="・・・・・・・・・・・・・">見ていながら見過ごしていた</RUBY>
ことも有り得る。

　そんな馬鹿げた可能性も検討せねばならないほど、
その少女には『主張』というものがなかった。
　ここにいるという主張。一個人であるという主張。
それが無い。

　人間らしき気配をろくに放散していないのだ。
　血が通い心臓が脈動しているにしては、あまりにも
無機質的に過ぎる。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130030a00">
「……貴方は？」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――


//◆ボックス消してウェイト
	WaitKey(1500);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　……反応<RUBY text="ゼロ">皆無</RUBY>。
　返答は元より、他の手段で訴えてくることもない。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130040a00">
（彫像？）

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　突拍子もない思いつきを弄ぶ。
　しかし、その考えすら一蹴はしかねた。少女の静粛
さ、動作の無さは常軌を逸している。

　俺はそろそろと指を伸ばし、少女の頬に触れてみた。
　
　柔らかい。
　温かい。

　体温のある肌だ。
　やはり、ちゃんと生きている人間ではあるらしい。

　声は無意味でも接触は刺激になるのか、少女は眼を
瞬かせた。
　そのまま、俺をじっと見上げてくる。

　いつまでも。
　微動だにせず、ずっと。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130050a00">
「…………」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆フラッシュバック。茶々丸（ライガー）

	EfRecoIn1(18000,600);

	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg037_競技場ガレージb_01.jpg");
	CreateTextureSP("絵回想200", 2100, Center, InBottom, "cg/st/st茶々丸_通常_変装.png");

	EfRecoIn2(300);
	
	WaitKey(1500);

	EfRecoOut1(300);

	Delete("絵回想*");

	EfRecoOut2(600,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　――どうしてか。
　ある少女の面影が、そこに重なった。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130060a00">
（何故……？）

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　理由のわからない幻視に困惑する。
　俺もまた、黙って少女を見詰め続けるしかなかった。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆ウェイト
	WaitKey(2000);

//◆ＢＧＭフェードアウトして
	SetVolume("@mbgm*", 1000, 0, AxlAuto);

//◆足音→ドアが開く

	OnSE("se人体_足音_歩く03_L", 1000);
	WaitKey(3000);
	SetVolume("@OnSE*", 1000, 0, null);

	OnSE("se日常_建物_扉開く01", 1000);

	SetFwR("cg/fw/fwウォルフ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130070a13">
「ところでパンツの現在進行形はパンチング
で良いのか？」


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130080a00">
「いえ、そもそもそれはどんな動詞ですか」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　振り返る。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_04_1.png", true);

	DeleteStA(0, true);

	CreateTextureSP("絵演拡大背景", 6000, -207, -273, "cg/bg/resize/bg079_ウォルフ教授の部屋_03m.jpg");

//◆ウォルフ

	StR(6100, @0, @0, "cg/st/stウォルフ_通常_私服.png");
	FadeStR(0, true);

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_01_04_0.png", true);
	Delete("黒幕１");

	SoundPlay("@mbgm21", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　長身の男がそこにいた。
　豊かな髭と、<RUBY text="・・・・・・">ぎょろぎょろ</RUBY>動く双眸がやたらと注意
を引く。

　彫像じみた少女に比べると、男はまさに人間だった。
　年齢は不詳。一見では初老と思えるが、意外に若い
のではないかと思える節もある。流石に三十代という
ことはあるまいが。

　彼は、俺を――<k>{DeleteStR(150,true);}あっさり<RUBY text="スルー">看過</RUBY>すると、傍らの少女を
見やって破顔した。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @80, @0, "cg/st/stウォルフ_通常_私服.png");
	StCL(1000, @-40, @0, "cg/st/st鍛造雷弾_通常_私服.png");
	FadeStA(0,true);
	FadeDelete("絵演拡大背景", 300, true);

	SetFwC("cg/fw/fwウォルフ_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130090a13">
「なんだ、ここにいたのか〝<RUBY text="リトルガール">少女</RUBY>〟！
　まぁ人生は大概こんなものだな。青い鳥は
いつだって自宅にいる。失くした財布は机の
引き出しに収まっている。そんなものだ」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130100a13">
「さっ、部屋に戻りなさい。
　もう子供は休む時間だよ。<RUBY text="トイレ">小用</RUBY>を済ませて、
歯を磨いて、<RUBY text="パジャマ">寝間着</RUBY>を着て、パンツは脱いで、
ベッドに入りたまえ。特に最後は大事だぞ」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130110a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 20000);
	DeleteStA(0,true);
	FadeDelete("絵板写", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　男の声にも少女が反応することはなかったが、手を
引かれて促されると従順に歩き出し、奥の扉の向こう
へと消えていった。
　それを見送って、髭の男は向き直る。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

	StL(1000, @0, @0,"cg/st/stウォルフ_通常_私服.png");
	FadeStL(300,true);

	SoundPlay("@mbgm35", 1000, 1000, true);

	SetFwC("cg/fw/fwウォルフ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130120a13">
「僕にはかねてから不思議でならないことが
ある」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130130a00">
「何でしょう」


{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130140a13">
「何故、人はパンツを穿く？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130150a00">
「それは哲学に属する問題ですか」


{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130160a13">
「そう言っても差し支えない。
　君は疑問に思ったことはないかね？　人は
生まれつきパンツを穿いていたわけではない」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130170a13">
「にも拘わらず誰もがパンツを穿く。
　まるで天命の如くに――だ」


{	FwC("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130180a13">
「しかしその一方で、誰もがパンツを脱ぐで
はないか！
　パンツを穿いたまま性交する者がいるか？
パンツを穿いたまま排便する者がいるか？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130190a00">
「稀には」


{	FwC("cg/fw/fwウォルフ_絶叫.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130200a13">
「それは背徳行為としてだろう！」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130210a00">
「特殊な嗜好である事は認めます」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130220a13">
「正常な人間はパンツを脱ぐのだ。
　ならば何故、最初から脱いでおかない？」


{	FwC("cg/fw/fwウォルフ_怒り.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130230a13">
「穿かなければ良いではないか！」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");
	
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130240a00">
「……成程。
　主旨は理解しました」


{	FwC("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130250a13">
「そうか。
　君は僕に賛同してくれるのだね」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130260a00">
「いいえ」


{	FwC("cg/fw/fwウォルフ_絶叫.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130270a13">
「何!?」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130280a00">
「パンツは穿いておくべきでしょう」


{	FwC("cg/fw/fwウォルフ_怒り.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130290a13">
「何故だ！」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130300a00">
「今度は自分からお訊ねしますが」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130310a13">
「うむ」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130320a00">
「いい歳の男がパンツ穿かずに歩いていたら
嬉しいですか」


{	FwC("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130330a13">
「君は僕を侮辱する気か？」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130340a00">
「お答え下さい」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130350a13">
「右手に三八口径、左手にパンツを持って、
すぐに穿けと命令するよ」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130360a00">
「成程。
　では……そうして男にパンツを穿かせるの
は楽しいですか」


{	FwC("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130370a13">
「最悪だな」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130380a00">
「逆に、女性のパンツを脱がせるのは？」


{	FwC("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130390a13">
「人生の喜びだ」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130400a00">
「そういう事です」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130410a13">
「ん？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130420a00">
「誰もがパンツを脱いでいる世界で醜いもの
にパンツを穿かせて回るのと、誰もがパンツ
を穿いた世界で美しい人のパンツを脱がせて
回るのと、どちらがより優れた人生か」


{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130430a00">
「答えは明々白々でしょう」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130440a13">
「――――――――」


{	FwC("cg/fw/fwウォルフ_絶叫.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130450a13">
「おおお!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	DeleteStA(300, false);
	CreatePlainEX("絵板写", 15);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 500, 0, 20, 0, 0, 1000, DxlAuto, true);
	Delete("絵板写");

	SetVolume("@mbgm*", 1000, 0, null);

	CreatePlainSP("絵板写下", 9990);
	CreatePlainEXadd("絵板写", 10000);
	Wait(12);
	Fade("絵板写", 1000, 1000, Axl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　男は吼えた。
　両腕を突き上げ、天上を振り仰ぐ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm28", 0, 1000, true);
	CreateTextureSP("絵演効果背景", 9000, Center, Middle, "cg/bg/bg001_空c_03.jpg");

	Fade("絵板写*", 1000, 0, null, false);
	DrawDelete("絵板写*", 1000, 1000, "effect_01_00_0", true);

	SetFwC("cg/fw/fwウォルフ_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130460a13">
「素ゥン晴らしいィィィィィ!!
　完璧だ！
　なんてこった！」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130470a13">
「長年の謎が遂に氷解した！
　こんなにも簡単に！
　ああ、ハレールーヤー！」


{	FwC("cg/fw/fwウォルフ_歓喜.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130480a13">
「ハレェェェルゥゥゥヤァァァァァァ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitKey(1500);

	SetVolume("@mbgm*", 1000, 0, null);
	StL(1000, @0, @0, "cg/st/stウォルフ_通常_私服.png");
	FadeStL(0, true);

	FadeDelete("絵演効果背景", 600, true);

//◆不意に冷静に
	SetFwC("cg/fw/fwウォルフ_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130490a13">
「僕は馬鹿か？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130500a00">
「かなりの高確率で」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　言えた義理ではないにしても。
　途中から会話に脳髄がついてこなくなったので脊椎
反射で答えていたが、一体いまの何処が哲学であった
のやら。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm35", 0, 1000, true);

	SetFwC("cg/fw/fwウォルフ_思索.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130510a13">
「しかしね。
　……それでもやはり、人はパンツを脱がな
くてはならんのさ」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130520a00">
「は……？」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130530a13">
「性器を隠すのは羞恥心の証。
　羞恥心は知恵の源泉だ」


{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130540a13">
「この小賢しい知恵というやつが我々を神の
<RUBY text="ま">坐</RUBY>す<RUBY text="はて">涯</RUBY>から遠ざける……」


//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130550a13">
「これがある限り人は神に許されない。
　いくら神を求めても……届かない」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130560a13">
「……神を目指す者は裸であるべきだ……」


//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130570a13">
「何もかも捨て去って……祈る。
　さすれば……神は<RUBY text="・・・・・">昇り来たる</RUBY>……」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130580a00">
「………………？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆足音

	DeleteStL(300,false);
	OnSE("se人体_足音_歩く03_L", 1000);
	WaitKey(1500);
	SetVolume("@OnSE*", 1000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　男はやにわな動作で歩き出した。
　机の向こうに回り、古びた椅子へ腰を下ろす。

　そして片手を差し出し、俺にも椅子を勧めた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwウォルフ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130590a13">
「湊斗景明君だね」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130600a00">
「はい。
　貴方は――」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130610a13">
「ウォルフだ。
　皆には<RUBY text="プロフェッサー・ウォルフ">ウォルフ教授</RUBY>と呼ばれている」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　やはり。
　この人物が……俺の助命を大鳥大尉に頼んだという。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130620a00">
「大学で教鞭を執られているのですか」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130630a13">
「確かにそんな時代もあったが。
　今は違うよ」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130640a13">
「けれど司令部の要請に応じて大和語の講義
なんかをしているのでね、<RUBY text="ここ">横浜</RUBY>では。
　それでみんな教授と呼んでくれるのだろう」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130650a00">
「先程から感銘を受けておりましたが、実に
流暢な大和語です。
　貴方への敬意は正当なものでしょう」


{	FwC("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130660a13">
「ありがとう」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130670a13">
「だがね、僕が大和語の扱いに慣れているの
は別に奇跡ではなく、ごくごく当然の事だよ」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130680a00">
「と言われると？」


{	FwC("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130690a13">
「簡単な話さ。
　何しろ大和といえばパンツの国」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130700a00">
「……いえ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　事実無根である。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwウォルフ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130710a13">
「違った。
　何しろ大和といえばパンツはかない国」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130720a00">
「まぁ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　昔は一応。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwウォルフ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130730a13">
「違った。
　何しろ大和といえば劒冑の国」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130740a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　脈絡が無さ過ぎると思うのは俺の気の迷いか。

　しかし――劒冑？
　では、この人は……劒冑の研究者か。

　そうなると分野は機械工学、流体力学、考古学。
　いや、あるいは……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwウォルフ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130750a13">
「フォルクローアだよ」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130760a00">
「フォルクローア……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　こちらの内面の思いを読み取ったかのように放たれ
た一語を受け止め、反芻する。
　それは独語の音階を有していた。

　フォルクローア……フォークロア。
　……<RUBY text="フォークロア">民俗学</RUBY>。
　
　独語を英語へ変換、そして大和語へ再変換する。

　民俗学。
　その単語を噛み締めた後、俺はもう一度部屋の中を
見回してみた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130770a00">
「……成程」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　先刻、中途まで読んだ奇妙な論文も彼自身が著した
ものに違いない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwウォルフ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130780a13">
「大和を無視して、人類文化における劒冑の
意味を解き明かそうなんてお笑い種だろう？」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130790a00">
「外国の方にそう言って頂けるのは、大和人
として喜ばしい事です」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130800a13">
「ああ、君達は誇るべき文化を持っているよ。
　この狭い島国の中で、良くぞこうまで独自
の技術を発展させたものだ」


//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130810a13">
「その点において、君達は全欧州国家を合わ
せたより優秀であったかもしれない」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130820a00">
「恐縮です。
　しかし我々は産業革命という大偉業を成し
遂げる事も、その流れから劒冑の量産技術を
開拓する事も、独力では果たせませんでした」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130830a13">
「ふむ。では一長一短としておこうか。
　だがね、僕個人はあくまで大和の優秀性を
評価する」


{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130840a13">
「いや、期待していると言った方がいいな」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130850a00">
「……それは？」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130860a13">
「僕の望みを<RUBY text="・・">君達</RUBY>が叶えてくれるのではない
かという……期待だよ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　気のせいか。
　その『君達』は、これまでと響きが若干異なるよう
だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130870a00">
「…………」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130880a13">
「さて、用件を済ませてしまおうかな」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130890a00">
「用件？」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130900a13">
「君を呼び出した用件だよ、もちろん」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　……そうか。
　進駐軍の顧問教授は、用もなく人と会っていられる
ほど暇ではないだろう。当たり前である。

　呼ばれたからには、何か俺に対して求めるところが
ある筈なのだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130910a00">
「……現在、自分は捕虜としてまずまず妥当
な扱いを受けていると考えております。
　そのため、積極的に敵対する意図は有して
おりません」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130920a00">
「教授のご要望が自分あるいは自分の関係者
に著しい不利益をもたらすものでない限り、
可能な範囲で善処を致しましょう」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130930a13">
「うん。
　まぁ、そんな大袈裟な話じゃない」


//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130940a13">
「簡単な用事でね。すぐに済む」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130950a00">
「……は」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130960a13">
「君は健康か？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130970a00">
「……」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0130980a00">
「はい。
　おおむね身体機能に支障は有りません」


{	FwC("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0130990a13">
「明日の朝になってみたらうっかりポックリ
逝っていたりしないかね？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0131000a00">
「……まず、大丈夫かと」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0131010a13">
「なら良い。用事は済んだ。
　もう自室に戻ってくれて構わないよ」


//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0131020a13">
「君をここまで連れて来た兵士が外で待って
いる」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0131030a00">
「……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0131040a00">
「用件とは、これだけなのですか」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0131050a13">
「うん」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0131060a00">
「……」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0131070a00">
「貴方は大鳥大尉にも、自分を殺さず連れて
くるよう願われたとか。
　何故……自分の身命を気遣われるのです？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0131080a00">
「宜しければ、お教え頂きたい」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0131090a13">
「既に教えたよ」


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0131100a00">
「……」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0131110a13">
「君達には期待している……
　さっきそう言っただろう？」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0131120a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆ウェイト

	WaitKey(1500);

//◆部屋を出る

	SetFwC("cg/fw/fwウォルフ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0131130a13">
「――君の未来に<RUBY text="グリューネドラヘ">緑龍</RUBY>の羽音が響かんことを」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　部屋を去ろうとした刹那、そんな言葉が背を打った。
　
　……何処かの土地の言い回しか？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



//◆時間経過

	ClearWaitAll(1500, 1500);


}

..//ジャンプ指定
//次ファイル　"mc02_014.nss"