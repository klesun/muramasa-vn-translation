//<continuation number="180">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_017.nss_MAIN
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
	#bg053_堀越御所の庭_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_018.nss";

}

scene md02_017.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md02_016.nss"


//◆庭

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	OnBG(100, "bg053_堀越御所の庭_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm09", 0, 1000, true);
	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　刀は程良い重量だった。

　武者や騎卒が用いるのに適した太刀ではない。
　徒士専用の<RUBY text="うちがたな">打刀</RUBY>である。太刀に比べると反りが浅く、
尺も短く、取り回しの癖が少々違うが、基本的に扱い
易く出来ているので問題は無さそうだ。

　空手よりは得物があった方が鍛錬になるかと考え、
堀越公方に頼んで貸し出して貰った物である。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0170010a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　剣を右肩上へ担ぐようにする、武者上段の構。
　そうして、敵影を<RUBY text="イメージ">想定</RUBY>する。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銀星号。透明度５０％で表示とか？

//おがみ：中央に調整
//	CreateTextureEX("Gin", 1000, @-200, @-30, "cg/st/3d銀星号_立ち_通常.png");
//	Fade("Gin", 1000, 300, null, true);

	CreateTextureEX("Gin", 1000, Center, -270, "cg/st/3d銀星号_立ち_戦闘b2.png");
	Request("Gin", Smoothing);
	Zoom("Gin", 0, 800, 800, null, true);

	Fade("Gin", 1000, 500, null, true);

	Wait(200);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　銀星号。

　……否。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆光
//	CreateTextureEX("Hikaru", 1050, Right, InBottom, "cg/st/st光_通常_私服.png");
//	FadeDelete("Gin",1000,false);
//	Fade("Hikaru", 1000, 300, null, true);

	CreateTextureEX("Hikaru", 1050, Center, InBottom, "cg/st/st光_通常_私服.png");
	FadeDelete("Gin",1000,false);
	Fade("Hikaru", 1000, 500, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　<RUBY text="・">光</RUBY>。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0170020a00">
（そう思わねばならない……）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　銀星号という通り名で考える事すら、無意識の逃げ
なのだろう。
　足利茶々丸の指摘が正しいならば。

　俺が心の底では、光を殺したくないと望んでいるの
ならば。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0170030a00">
（斬る）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　剣を構え、光の姿を幻視し、決する。

　光を斬る。

　斬らねばならないから、斬る。

　他の考えは持たない。
　それらは全て雑念だ。

　妹であるとか……
　統様の娘であるとか……

　俺の手で守るよう、定められたものであるとか……

　雑念だ。

　捨てる。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0170040a00">
（斬る）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　斬る――

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆光。普通に表示
	CreateTextureEX("Hikaru2", 1050, Center, InBottom, "cg/st/st光_通常_私服.png");
	Fade("Hikaru2", 2000, 1000, null, false);
	SetVolume("@mbgm*", 1000, 0, null);

	Wait(1500);

	SetFwR("cg/fw/fw光_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【光】
<voice name="光" class="光" src="voice/md02/0170050a14">
「…………」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0170060a00">
「…………」

{	FwR("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0170070a14">
「対手は、おれか」

{	FwR("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0170080a00">
「わかるのか……」

{	FwR("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0170090a14">
「それだけ想われていればな」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm14", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　小さく微笑して、光は裸足のまま庭へ降りてきた。
　……<RUBY text="・・">本物</RUBY>である。

　いつから近くにいたのだろうか。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【光】
<voice name="光" class="光" src="voice/md02/0170100a14">
「幻を相手に稽古しても、興が無かろう」

{	FwR("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0170110a00">
「……」

{	FwR("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0170120a14">
「さ。来い」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　光は軽く、両足を開く程度に構えた。
　片手を上げて、差し招く。

　隙が無いかと言えば、その姿は隙ばかりである。
　<RUBY text="いつ">何時</RUBY>でも何処からでも打ち込めると思える。

　練達者に特有の、自然体と見えて実はその内に千変
万化の業を蓄えているがゆえの凄み――といったもの
も、無い。
　本当にただ立っているとしか見えなかった。

　にも関わらず、踏み込めないのなら――

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0170130a00">
（俺の心の弱さ）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　なのか。

　斬りたくないと思っているから、斬り込めないのか。

　今、手にしているのは本物の鋼。本物の刃だ。
　生身の肉体など、青菜のように斬り裂ける。

　殺せる。

　俺は、光を殺せるのだ。

　妨げが有るとすれば、
　俺自身の、弱い心のみなのだ。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0170140a00">
（それを……消す）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　脆弱な精神を去らしめる。

　無我。

　殺意だけを残す。

　光の生存を望まない、世の人々の総意に従う。

　雑念の全てを消し去って、掴め。
　最良の機を。

　対敵の呼吸を掴み、<RUBY text="イ">意</RUBY>を掴み、死を掴む。
　対敵の命運を掌中にする。

　それは風を捕まえるにも等しい。
　しかし、できる筈だ。

　無我の奥境に達すれば……
　見えざるものも<RUBY text="しか">確</RUBY>と見えよう。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆適当なＳＥ？
//◆全体にシャドー
	CreateColorSP("ばひゅ", 1300, "BLACK");
	DrawTransition("ばひゅ", 150, 0, 1000, 100, null, "cg/data/circle_02_01_1.png", true);
	OnSE("se特殊_陰義_発動04", 1000);
	Delete("Hikaru2");
	Delete("Hikaru");
	CreateColorEX("白世界", 1205, "BLACK");
	Fade("白世界", 0, 400, null, true);
	DrawTransition("ばひゅ", 150, 0, 1000, 100, null, "cg/data/circle_02_01_0.png", true);

 	CreatePlainSP("絵板写", 2000);
	CreateTextureEX("Hikaru3", 1050, Center, InBottom, "cg/st/st光_通常_私服.png");


	CreateStencil("絵マスク2",800,Center,InBottom,128,"cg/bg/bg053_堀越御所の庭_01.jpg",false);
	SetAlias("絵マスク2","絵マスク2");
	CreateColor("絵マスク2/色１", 700, 0, 0, 1024, 576, "BLACK");
	Fade("絵マスク2/色１", 0, 600, null, true);
//	DrawTransition("絵マスク2/色１", 150, 0, 1000, 50, null, "cg/data/circle_02_01_0.png", true);
	DrawTransition("絵マスク2/色１", 0, 0, 500, 100, null, "cg/data/slide_02_00_0.png", true);


	CreateStencil("S1",1000,Center,InBottom,128,"cg/st/st光_通常_私服.png",false);
	SetAlias("S1","S1");
	CreateStencil("S1/S2",1000,Center,InBottom,128,"cg/st/st光_通常_私服.png",false);
	CreateColorSPadd("S1/S2/C1", 1200, "WHITE");

	Fade("Hikaru3", 0, 1000, null, true);
	Fade("S1/S2/C1", 0, 700, null, false);
	FadeDelete("絵板写", 300, true);

	FadeDelete("ばひゅ",1000,true);
	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　――このように。

　感覚が徐々に変化する……
　これが、<RUBY text="カン">観</RUBY>に近付いているという事か。

　眼と耳ばかりに頼っていた認識界が、曖昧で不確か
なものと成り果ててゆく。
　しかし、理解はむしろ明瞭である。

　庭園の構造を、<RUBY text="かつ">嘗</RUBY>てなく詳細に把握する。
　その中に己の位置を正しく知る。

　敵の位置もまた同様。
　<RUBY text="カン">観</RUBY>の世界に、光の真像が浮き彫りになる……

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆光のみシャドー解除

	Fade("S1/S2/C1", 1000, 0, null, true);

	WaitKey(500);
	Fade("S1/S2/C1", 1000, 800, null, true);
	
//◆が、すぐぼやけて曖昧に
	FadeDelete("Hikaru3", 1000, false);
	FadeDelete("S1/S2/C1",1000,true);

//◆消去


	SetFwR("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0170150a00">
「――――ッ!?」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　消えた。

　<RUBY text="カン">観</RUBY>の世界から、光が消失した。

　何処にもいない。
　……いや。認識できなくなったのだ。

　そんな馬鹿な事が。

　俺の<RUBY text="カン">観</RUBY>が未熟で、定まっていないからか？
　違う――未熟の是非はともかくとして、それが原因
ではない。

　俺は今、五〇メートルばかり離れた場所で松の木に
登り仕事に勤しんでいる庭師の挙措を知覚できている。
　その真偽は後で確かめるまでわからないことだが。
そんな遠くの動きが濃密に掌握できているのに……

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆光。曖昧に

	CreateTextureEX("Hikaru4", 1050, Center, InBottom, "cg/st/st光_通常_私服.png");
	Fade("Hikaru4", 300, 1000, null, false);
	Fade("S1/S2/C1", 1000, 800, null, true);
//	CreateColor("S1/S2/C1", 1200, 0, 0, 1024, 576, "White");
	CreateColorEXadd("S1/S2/C1", 1200, "White");

	Fade("S1/S2/C1", 500, 800, null, true);

	WaitKey(1000);

//◆消す

	FadeDelete("Hikaru4", 1000, false);

//◆が、すぐぼやけて曖昧に
	FadeDelete("S1/S2/C1",1000,true);


	WaitKey(500);	



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　いる……辛うじて、それは掴める。
　だが余りにもあやふやだ。

　呼吸が薄い。
　<RUBY text="イ">意</RUBY>が薄い。

　存在が希薄に過ぎる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0170160a00">
（どういう事だ）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　遂にほんの片鱗だけ掴むことのできた<RUBY text="カン">観</RUBY>の世界が、
芽生えた疑問によって虚しくも崩壊してゆく。
　防ぐ手立てはなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0170170a00">
（<RUBY text="・・・・・・・・・・・">おまえはここにいるのか</RUBY>）

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0170180a00">
（光……
　おまえは本当に、そこにいるのか？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　そんな問いに、答は何処からも与えられない。

　明々白々、光はそこにいるのだから。
　わかり切った事実を問う愚劣漢など、世界は相手に
してくれない。

　放り出して、嘲笑するだけなのだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆崩壊。ホワイトアウト
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 1500, 1000, null, true);
	Delete("絵マスク2/色１");
	SetVolume("@mbgm*", 1000, 0, null);

//■すぐ続くからClearWait等なし。　inc櫻井

}

..//ジャンプ指定
//次ファイル　"md02_018.nss"