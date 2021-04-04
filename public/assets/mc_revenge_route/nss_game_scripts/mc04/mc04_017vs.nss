//<continuation number="800">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_017vs.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/mc04_017vs.nss","DenziBladeCharge",true);
	Conquest("nss/mc04_017vs.nss","DenziBladeChargeSet",true);
	

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
	#ev186_村正ＶＳ銘伏_e=true;
	#ev186_村正ＶＳ銘伏_f=true;
	#ev186_村正ＶＳ銘伏_g=true;
	#ev186_村正ＶＳ銘伏_h=true;
	#ev186_村正ＶＳ銘伏_i=true;
	#ev186_村正ＶＳ銘伏_j=true;
	#ev186_村正ＶＳ銘伏_k=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene mc04_017vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc04_016vs.nss"

//◆景明サイド
//◆下がる獅子吼
	PrintBG("上背景", 30000);

	CreateColorSP("黒", 15000, "BLACK");

	OnBG(100, "bg090_大鳥邸通路b_01.jpg");
	FadeBG(0, true);

	StR(10000, @0, @0,"cg/st/3d村正標準_立ち_抜刀.png");
	FadeStR(0,true);

	Delete("上背景");
	FadeDelete("黒", 2000, true);

	SoundPlay("@mbgm10",0,1000,true);

	CreateWindow("絵窓", 19000, 0, 30, 1024, 288, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateColorSP("絵窓/絵演色", 5010, "#336600");
	CreateTextureSPmul("絵窓/絵演背景", 5020, Center, Middle, "cg/ef/ef003_汎用移動.jpg");

	CreateTextureSP("絵窓/絵演立絵装甲", 5100, Center, Middle, "cg/st/resize/3d銘伏_立ち_抜刀l.png");
	Move("絵窓/絵演立絵装甲", 0, @-100, @160, null, true);
	Request("絵窓/絵演立絵装甲", Smoothing);
	Zoom("絵窓/絵演立絵装甲", 0, 900, 900, null, true);

	Move("絵窓/絵演立絵装甲", 3000, @-110, @0, DxlAuto, false);
	Zoom("絵窓", 300, 1000, 1000, Dxl2, true);


	SetFwC("cg/fw/fw銘伏_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/017vs0010a06">
「ぐっ……く！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　――手応えあった。

　低い姿勢から薙ぎ払った太刀は、敵騎の膝上辺りを
とらえ、食い付き……
　浅からぬ裂傷を甲鉄に刻んでいる。

　片脚を断つまでには至らなかったが、骨に響く程の
打撃は与えた筈だ。
　その負傷は確実に敵騎の運動を阻害するだろう。

　踏み込みにも差し支えるとなれば、延いては剣撃の
威力をも低下させずにおくまい。
　
　大きな優勢を、俺は獲得した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/017vs0020a01">
《今よ。
　御堂、あと一手――》


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0030a00">
（……いや）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　優劣は定かだ。
　対手にも、それがわからぬとは思えない。

　大鳥獅子吼は感情的と見えて、戦闘においては常に
冷徹を本分とするようである。
　なら――今、改めて対話に臨めば、血気を抑えての
決断を期待できるのではなかろうか……？

　試すだけは試してみたかった。
　避けられる争いは避けておきたい。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0040a00">
「大鳥中将に申し上げる！」


{	FwC("cg/fw/fw銘伏_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/017vs0050a06">
「……」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0060a00">
「繰り返しになるが、当方は争いを求めない。
　また閣下、邦氏殿下、大鳥家御当主、この
いずれの方に対しても害為す意思を持たない」

//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0070a00">
「当方は一身上の都合によって大鳥邸の床を
汚したのみ。私用を済ませ次第、直ちに退散
するとお約束する。
　……どうか、そこを通されたし！」


{	FwC("cg/fw/fw銘伏_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/017vs0080a06">
「……、……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆よろめく獅子吼
	CreateSE("SE01","se特殊_鎧_駆動音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetFrequency("SE01", 500, 750, Dxl3);

	Shake("絵窓/絵演立絵装甲", 300, 10, 0, 0, 0, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　篠川公方は答えなかった。
　いや……答えられなかったのか。

　表情は鉄面で覗けぬにせよ、苦悶の様相は均整さを
失った立ち姿から見て取れる。
　痛みを噛み殺す歯軋りまで、耳に聴こえてくるよう
だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0090a00">
「中将！」


{	FwC("cg/fw/fw銘伏_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/017vs0100a06">
「くっ……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆よろめく
	CreateSE("SE01","se特殊_鎧_駆動音01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetFrequency("SE01", 500, 750, Dxl3);

	Shake("絵窓/絵演立絵装甲", 300, 10, 0, 0, 0, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　右へ、左へ――震える足に引き摺られて、獅子吼の
身体が揺れ動く。
　それは彼の内心の動揺を示しているとも思えた。

　隙だらけの格好に、あえて打ち込みを控える。
　だが勿論、刃先に威圧を込めて太刀を構えておくの
は忘れない。

　こちらが隙を見せれば、この気鋭の将の事、負傷を
押してでも斬り掛かって来るに相違なかった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆よろめき
	CreateSE("SE02","se人体_足音_鎧歩く04");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Shake("絵窓/絵演立絵装甲", 300, 0, 10, 0, 0, 1000, null, false);
	Move("絵窓/絵演立絵装甲", 300, @-20, @100, null, false);
	Fade("絵窓/絵演立絵装甲", 300, 0, null, false);
	Zoom("絵窓", 1000, @0, 0, DxlAuto, true);
	Delete("絵窓");

//◆どさっと膝をつく
	CreatePlainEX("絵板写", 9900);

	CreateSE("SE02","se戦闘_衝撃_鎧転倒01");
	MusicStart("SE02",0,1000,0,1000,null,false);

	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 600, 0, 20, 0, 0, 1000, Dxl2, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　耐えかねたか、彼は遂に膝を落とした。
　固い床に甲鉄を重ね、高い音を鳴らす。

　項垂れるかのように身を<RUBY text="かが">屈</RUBY>め。
　大鳥獅子吼は――<k><?>
{	CreateSE("SE03","se戦闘_動作_刀構え02");
	MusicStart("SE03",0,1000,0,1000,null,false);}
太刀を構えた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0110a00">
「ぬ――」


{	FwC("cg/fw/fw銘伏_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/017vs0120a06">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　切先を後方に向けた、脇構えに取っている。
　座位から一歩を踏み出し、横一文字に切り払う体勢
だ――が。

　そうか。
　反撃の用意と同時に、足の負傷の回復をも試みる肚
か。

　こうして足を休ませておけば、傷の治癒も早くなる。
　しかも、その回復状況を俺の観察眼から隠蔽できる。
立っていれば姿勢の変化で察せられるが、足を使わず
座っていては看破のしようがない。

　窮地にあってこの機転、賞賛に値する。
　……だが。その機転が意味を持つかどうかは、俺の
判断に依存する事だ。

　<RUBY text="たちあわせ">太刀合</RUBY>の最中に休戦提案など、たしかに武人として
あるまじき惰弱な振舞いであったかもしれないが、と
いって敵の回復を黙って許すとまで<RUBY text="みくび">見縊</RUBY>られては困る。
　そこまで甘くはないつもりだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_動作_刀構え01", 1000);
	StR(10000, @0, @0,"cg/st/3d村正標準_立ち_戦闘.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0130a00">
「大鳥中将。言葉はこれで最後だ。
　次は太刀にて仕る」


{	FwC("cg/fw/fw銘伏_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/017vs0140a06">
「……」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0150a00">
「道を開けられよ。
　――無言は拒絶と承るが、如何に」


{	FwC("cg/fw/fw銘伏_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/017vs0160a06">
「……ゃ、」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0170a00">
「……？」


{	FwC("cg/fw/fw銘伏_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/017vs0180a06">
「止む……無し」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0190a00">
「……中将」


{	FwC("cg/fw/fw銘伏_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/017vs0200a06">
「止む……無き、ゆえ。
　……こう……」

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/017vs0210a06">
「させて貰う！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆しゅぱーん。下からなんか
	CreateTextureEX("絵背景500", 11000, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");
	Request("絵背景500", Smoothing);
	Rotate("絵背景500", 0, @180, @0, @0, null,true);
	Zoom("絵背景500", 0, 1100, 1100, null, true);

	OnSE("se戦闘_攻撃_刀振る02",1000);
	FadeFR2("絵背景500",0,1000,300,@0,@0,40,Dxl2, true);

	CreatePlainEX("絵板写時間止", 12000);
	SetTone("絵板写時間止", Monochrome);

	Fade("絵板写時間止", 0, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　――――何!?

　彼は……足を蹴り上げた。
　膝を突き、畳んでいた足を。

　そんな蹴りは、俺に届かない。
　届いたところで、痛痒も覚えまい。
　
　――何だ？　何の意味が……

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆がーん。なんかぶつかった。
	CreateSE("SE01","se戦闘_攻撃_鎧攻撃命中");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSP("絵色白", 20000, "#FFFFFF");
	DeleteStA(0,true);
	Delete("絵板写時間止");
	Delete("絵背景500");
	Wait(10);

	OnBG(100, "bg090_大鳥邸通路d_01.jpg");
	FadeBG(0, true);

	CreatePlainSPadd("絵板写", 10000);
	Zoom("絵板写", 0, 1250, 1250, null, true);
	SetBlur("絵板写", true, 4, 500, 60, false);

	FadeDelete("絵色白", 600, false);

	Shake("絵板写", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵板写", 200, 1000, 1000, null, false);
	FadeDelete("絵板写", 5000, false);

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0220a00">
「ッ!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　……食らった!?

　何を!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆通路
//◆がしゃん。金物が床に落ちた。
	OnSE("se戦闘_動作_金属落とす", 1000);

	WaitKey(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　……これは。

　大鳥獅子吼の、<k><RUBY text="・・・・・">捨てた脇差</RUBY>!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0230a00">
「しっ――」


{	FwC("cg/fw/fw銘伏_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/017vs0240a06">
「下郎がァ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆獅子吼
//◆袈裟一閃。がーん。
	CreateColorSP("絵色黒", 19000, "#000000");
	CreateSE("SE01","se戦闘_攻撃_野太刀振る02");
	SL_rightdown2(20000,@0, @0,1500);

	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_rightdownfade2(10);

	CreateTextureSPadd("絵演効果", 5000, Center, Middle, "cg/ef/ef045_スパーク.jpg");
	CreateSE("SE01a","se戦闘_攻撃_鎧攻撃命中03");

	MusicStart("SE01a",0,1000,0,1000,null,false);

	CreatePlainEX("絵板写", 4990);

	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 500, 10, 30, 0, 0, 1000, Dxl2, false);

	Delete("絵色黒");
	FadeDelete("絵演効果", 500, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　後方への退避は間に合わなかった。
　跳ね上がるようにして放たれた獅子吼の浴びせ斬り
を、肩口に叩きつけられる。

　撃衝が体内を走り、五臓六腑を引っ掻き回した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0250a00">
「ぐふ……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　深傷を負う足で支えられた一撃とは信じ難い。
　重過ぎる。

　確実な手応えがあったのだが……
　実質以上の負傷を装われたのか？　あのよろめいて
膝を屈した折から欺瞞されていたのか。

　あれは脇差の位置までさりげなく移動し、足の下に
隠し込むための<RUBY text="きょし">挙止</RUBY>だったのか！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/017vs0260a01">
《半端なところで手を緩めるから！》


{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0270a00">
（返す言葉は無いが、黙っておけ！）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　村正の叱責に反駁だけしておく。
　痛覚の激しい主張を誤魔化すのに、いくらかは役に
立った。

　奥歯を擦りつつ、敵手との間合を計り直す。
　やや遠い。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆再び対峙
	PrintGO("上背景", 20000);

	CreateTextureSP("絵背景01", 5000, @0, @0, "cg/ev/ev186_村正ＶＳ銘伏_e.jpg");

	FadeDelete("上背景", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　改めて太刀を上段にとる大鳥獅子吼の姿から、足の
傷の影響を見出す事はできない。
　決して<RUBY text="ゼロ">絶無</RUBY>ではなかろう……が、もはや推察するの
は不可能であった。

　この男に対して、安直な予断は命取りだ。
　今、まさに身をもって思い知った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演", 5010, -1550, -500, "cg/ev/resize/ev186_村正ＶＳ銘伏_elm.jpg");
	Move("絵演", 6000, @0, -780, DxlAuto, false);
	Fade("絵演", 2000, 1000, null, false);

	SetFwC("cg/fw/fw獅子吼_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/017vs0280a06">
「底無しの戯けめが……
　戦場の心得すらまともに知らぬか!?」


{	FwC("cg/fw/fw獅子吼_怒り.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/017vs0290a06">
「貴様など、太刀の錆にするのも業腹だが、
生かして帰すのはなお許せん。
　大和の未来を占う大礼にその愚劣さで踏み
込んだ罪、血という血を撒き捨てて償え!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　激する大鳥獅子吼は、劒冑を身に<RUBY text="よろ">装甲</RUBY>う前と、外見
以外何が違うわけでもない。
　篠川公方。六波羅中将。幕府最後の大将帥である。

　篠川軍十万を一手に率い、かの<RUBY text="おかべだんじょういんよりつな">岡部弾正尹頼綱</RUBY>さえ
打ち破った天下の<RUBY text="ぎょうしょう">驍将</RUBY>――――

　だが。
　俺は……そこに、今や大きな<RUBY text="・・">ずれ</RUBY>を感じ取らずには
いられなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	FadeDelete("絵演", 1000, false);

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0300a00">
「大鳥中将」


{	FwC("cg/fw/fw獅子吼_怒り.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/017vs0310a06">
「重ねての問答は無用！
　これ以上、俺に要らぬ刻を――」


{	SetVolume("@mbgm*", 500, 0, null);
	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0320a00">
「貴方は、正道の武人ではない……な」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト

	Wait(800);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　俺の言葉が、即答で報われることはなかった。
　といって、降りた沈黙の帳が黙殺の顕れということ
もなかった。

　この静寂は、<RUBY text="にわ">俄</RUBY>かに立ち込めた想念――否、<RUBY text="・・">怨念</RUBY>に
満ちている。
　今の一言は大鳥獅子吼の心中に届き、何処かを貫通
したようであった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0330a00">
「眩惑の妖剣。
　重傷の偽装。
　そして、脇差を足で操る手妻」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0340a00">
「一つ限りなら、非常の備えとしての裏技か
と得心もゆく。
　が……三手」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0350a00">
「中将、貴方は――」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/017vs0360a06">
「<RUBY text="みだ">妄</RUBY>りに舌を動かすなよ。
　湊斗とやら……」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0370a00">
「…………」


{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/017vs0380a06">
「……そうだ。
　俺は元来……<RUBY text="・・・・・・">そういうもの</RUBY>だった」

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/017vs0390a06">
「己の境遇に、何の不満もなかった。
　大鳥の先々代――<RUBY text="ときはる">時治</RUBY>様の御為、どのよう
な汚泥でもこの身に受ける覚悟があった」


{	FwC("cg/fw/fw獅子吼_影人.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/017vs0400a06">
「だが、愚かな先代が全てを壊した！
　奴の<RUBY text="せい">所為</RUBY>で俺は本来の役目を失い、ばかり
か先々代の御遺志を遂げるため不遜にもあの
御方の<RUBY text="・・・・">身代わり</RUBY>を務めるほかなくなった!!」

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/017vs0410a06">
「貴様などにはわかるまい。
　影に潜むべき己が表に現れ――あまつさえ
忠誠を誓った主君の職掌を侵す、この恥辱！
この自虐！　この自涜！」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0420a00">
「…………」


{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/017vs0430a06">
「嗤うがいい！　そうだ。その通りだ。
　賢しくも貴様が看破した通り、篠川中将と
奉られるこの身は――――<?>
{	Wait(1000);}
かくの如き<RUBY text="かげびと">影人</RUBY>に
過ぎんのだ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆陰義・翳伏
//◆じわっと姿が滲む
	OnSE("se特殊_陰義_発動04", 1000);

	CreateTextureEX("絵背景02", 5200, @0, @0, "cg/ev/ev186_村正ＶＳ銘伏_f.jpg");

	CreateTextureEXadd("絵背景02EX", 5210, @0, @0, "cg/ev/ev186_村正ＶＳ銘伏_f.jpg");
	SetVertex("絵背景02EX", 768, 306);
	Zoom("絵背景02EX", 0, 1150, 1150, null, true);

	Fade("絵背景02", 1000, 1000, null, false);

	Fade("絵背景02EX", 300, 1000, null, false);
	DrawTransition("絵背景02EX", 300, 0, 500, 100, null, "cg/data/circle_12_00_0.png", true);

	SoundPlay("@mbgm13", 0, 1000, true);

	FadeDelete("絵背景02EX", 4000, false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/017vs0440a01">
《え――っ》


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0450a00">
「……隠身!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　陰義か！
　裏技の数々に加え……劒冑までも斯様の性質とは！
ここに至って、疑念の余地は一片もない。

　大鳥獅子吼は――<RUBY text="アサッシン">暗殺者</RUBY>かッ!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitAction("絵背景02EX", null);

//◆じわー。消える。
	OnSE("se特殊_陰義_発動03", 1000);

	CreateTextureSP("絵演背景", 10000, Center, Middle, "cg/bg/bg090_大鳥邸通路d_01.jpg");
	CreateTextureSPadd("絵演効果背景", 10010, Center, Middle, "cg/bg/bg090_大鳥邸通路d_01.jpg");

	Delete("絵背景02*");
	FadeDelete("絵演効果背景", 1000, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/017vs0460a01">
《消え……た？》


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0470a00">
（……いや。
　よく、<RUBY text="み">視</RUBY>ろ）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 30000);
	CreateTextureSP("絵演", 5000, -1400, -770, "cg/ev/resize/ev186_村正ＶＳ銘伏_glm.jpg");
	CreateTextureEX("絵演上", 5010, -1400, -770, "cg/ev/resize/ev186_村正ＶＳ銘伏_glm.jpg");
	Fade("絵演上", 0, 500, null, true);

	Request("絵演*", Smoothing);
	Zoom("絵演*", 0, 800, 800, null, true);

	SetBlur("絵演上", true, 3, 500, 200, false);

	MoveFFP1("@絵演",30000);
	MoveFFP2("@絵演上",40000);

	FadeDelete("上背景", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　空間と物体の境目に断層がある。
　両眼を凝らせば、<RUBY text="はかな">儚</RUBY>くもその薄線を知覚できた。

　殆ど、<RUBY text="まぼろし">錯覚</RUBY>と見紛うばかりだが……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0480a00">
（光を透過させているのではなく、甲鉄の色
を周囲に溶け込ませているのだ。
　一種の擬態……保護色だな）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/017vs0490a01">
《……なるほどね。
　月山三騎組よりはまし、かしら？》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0500a00">
（さて。どうか）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演弐", 5100, Center, Middle, "cg/ev/ev186_村正ＶＳ銘伏_g.jpg");
	Fade("絵演弐", 1000, 1000, null, true);

	MoveFFP1stop();
	MoveFFP2stop();

	Delete("絵演");
	Delete("絵演上");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　あれは<RUBY text="トリック">詐術</RUBY>であった。
　種を見破れば、打ち崩すのにさまでの難はなかった。

　だが、これは間違いなく一騎で成し遂げし陰義の業。
　風魔党三騎の合力技ほど法外な効果を誇らぬ代わり、
術を無効化する鍵の存在などは期待できそうにない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0510a00">
（<RUBY text="ネームレス">無銘劒冑</RUBY>のようだが……。
　厄介な力を使ってくれるな）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/017vs0520a01">
《……私の<RUBY text="みみ">信号探査</RUBY>と<RUBY text="はだ">熱源探査</RUBY>には反応有り。
　こちらには何の影響も及ぼせないみたい》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/017vs0530a01">
《けれど……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　武者の本領たる空戦であったなら、村正が逐一送信
してくれる敵騎の位置情報は大きな助けとなったろう。
　が。この至近距離の白兵戦では、全く無用の長物で
あった。

　頼れるのは俺自身が備え持つ五感だけだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆獅子吼近付く
	CreateTextureEX("絵背景05", 5400, @0, @0, "cg/ev/ev186_村正ＶＳ銘伏_h.jpg");
	Fade("絵背景05", 1000, 1000, null, true);
	Delete("絵演弐");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　敵騎の輪郭が――<k>やや、大きくなった？

　近寄ってきているのか。
　いや。真実そうか？　見誤りではないのか？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0540a00">
「……く」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　腹の底に酷く寒いものを覚え、一度だけ震える。

　沈静して見直せば、敵手は半歩、近付いてきたよう
だと知れた。
　それ自体はいい。まだ間合のゆとりはある。震えた
のは、別の理解のためだった。

　<RUBY text="・・・・・・・・・・">咄嗟に判別がつかない</RUBY>。

　対手が接近してきても、即時、それを知る事ができ
ない。錯覚か否か、検分する手間を要する。
　……どう考えても、これは致命的であった。

　敵の挙動に対する即応が不可能なのである。
　篠川公方が斬り間に踏み入ってきても、俺は察知し
得ない。そのまま彼が斬りつけてきても、反撃どころ
か防備さえ整えられない。……そうなる。

　これで勝てる道理がなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0550a00">
（ならば、いっそ――）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　こちらから踏み込み、斬るか。
　今この瞬間は敵手の位置、相関距離をおおむね把握
している。見当違いの場所を斬る心配はいらない。

　……やるなら今だ。
　敵が動いてからでは、あるいはもう遅い。

　やるならば今。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0560a00">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト

	Wait(1200);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　しかし。
　俺は決意を定めかねた。

　戦機も得ずに攻め込んだところで<RUBY text="カウンター">迎え技</RUBY>の餌食。
　ならば<RUBY text="フェイント">偽攻</RUBY>との二段構えで仕掛けるか？　それとて
目はない。既に一度試し、釣り損じている……。

　駄目だ。
　先手を取っても、勝てない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0570a00">
（……だが）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　待っても、同じ。
　色彩なき敵騎の攻勢に対する俺の反応は決して迅速
ならず、対処の技も遅延する。

　ただ虚しく斬られるだろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw獅子吼_影人.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/017vs0580a06">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　――押せど死。引けど死――
　
　今や在り処の知れぬ敵手の眼窩が、そう語り伝えて
いるかに思えた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆獅子吼接近
	CreateTextureEX("絵背景06", 5500, @0, @0, "cg/ev/ev186_村正ＶＳ銘伏_i.jpg");
	Fade("絵背景06", 1000, 1000, null, true);
	Delete("絵背景05");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　また、敵影が揺らめいた。
　近付いたのか。それとも左右に身を移したのか――

　眼球に命じてその識別をさせる、前に。
　
　
　俺は決断を一つ下し、行動した。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se擬音_雰囲気_抜刀01", 1000);

	CreateWindow("絵窓", 19000, 0, 0, 1024, 576, false);
	SetAlias("絵窓","絵窓");

	CreateMask("絵窓/絵覆", 6000, 0, 0, "cg/mask/ciスラッシュ_05_00.png", false);
	SetAlias("絵窓/絵覆","絵窓/絵覆");

	CreateTextureEX("絵窓/絵覆/絵演", 6100, -590, -186, "cg/ev/resize/ev908_村正電磁擲刀_am.jpg");
	SetBlur("絵窓/絵覆/絵演", true, 3, 500, 90, false);

	Zoom("絵窓", 1, 1000, 0, null, true);


	Fade("絵窓/絵覆/絵演", 0, 1000, null, true);

	Move("絵窓/絵覆/絵演", 600, -880, @0, DxlAuto, false);
	Zoom("絵窓", 300, 1000, 500, null, true);

	WaitAction("絵窓/絵覆/絵演", null);
	SetBlur("絵窓/絵覆/絵演", false);
	Move("絵窓/絵覆/絵演", 1000, -812, -38, null, false);
	Zoom("絵窓", 2000, 1000, 2000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0484]
　姿勢の均衡を崩さぬよう留意しつつ半歩後退。
　剣を、鞘へ戻す。

　一呼。
　一吸。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0590a00">
（<RUBY text="エンチャント">磁装</RUBY>――<RUBY text="エンディング">蒐窮</RUBY>）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/017vs0600a01">
《ながれ・つどう！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　俺の意に、劒冑は反問せず応じた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆帯電
	CreateSE("SE01","se特殊_電撃_放電02");
	MusicStart("SE01",0,1000,0,1200,null,false);

	CreateColorEXadd("白", 20000, "WHITE");
	Fade("白", 300, 1000, Dxl3, true);

	Delete("絵窓");

	CreateSE("SE_帯電", "se特殊_電撃_帯電01");
	MusicStart("SE_帯電", 0, 1000, 0, 1000, null, true);

	CreateTextureSPadd("プロ絵上", 5560, Center, Middle, "cg/ev/ev908_村正電磁擲刀_c.jpg");
	CreateTextureSPsub("プロ絵", 5555, Center, Middle, "cg/ev/ev908_村正電磁擲刀_c.jpg");
	CreateTextureSP("絵演効果", 5550, Center, Middle, "cg/ev/ev908_村正電磁擲刀_c.jpg");
	SetVertex("プロ絵", 790, 320);
	SetVertex("プロ絵上", 790, 320);
	Request("プロ絵*", Smoothing);

	DenziBladeCharge();

	FadeDelete("白", 1500, true);

	SetFwC("cg/fw/fw獅子吼_影人.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/017vs0610a06">
「…………！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　<RUBY text="おわり">蒐窮</RUBY>の太刀……称して<RUBY text="レールガン">電磁抜刀</RUBY>。

　名称通りの構造を持つこの一技は、磁気を利用した
加速により音速以上の域に達し、あらゆる防御を無為
のものとする。
　何者も見切り得ず、何物も耐え得ない。

　<RUBY text="・・">必殺</RUBY>の術である。
　殺せぬ相手に用いるべき剣ではない。が、幸いにも
今は地上戦――高々速で行き交う空戦と違い、胸や頭
といった致命的箇所を避けて打ち込む事が可能だ。

　重傷を負わせる始末とはなるが、それも武者ならば
治癒させられるだろう。
　
　問題は……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景07", 5600, @0, @0, "cg/ev/ev186_村正ＶＳ銘伏_j.jpg");
	Fade("絵背景07", 300, 1000, null, false);
	DrawTransition("絵背景07", 300, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("Ｐ電磁抜刀放電ループ");
	Delete("絵演効果*");
	Delete("プロ*");

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0620a00">
「……」


{	FwC("cg/fw/fw獅子吼_影人.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/017vs0630a06">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
　根本的に、状況は<RUBY text="・・">何も</RUBY>変わっていないという点だ。

　我が電磁抜刀に無敵の二字を冠せられるとしても、
それは『互角の条件で剣速比べをしたら必ず勝つ』と
いう程度の意味に過ぎない。
　互角の条件、要は同じ<RUBY text="スタートライン">開始線</RUBY>に立つ前提で必勝。

　現況がそうかと問えば、無論違った。
　対手は今、間合の変化を俺に優先して察知する権利
を所有している。

　敵の前進によってあるいは俺の突出によって、互い
の距離が<RUBY text="クロスレンジ">一足一刀</RUBY>まで至った時、敵側のみがその事実
を直ちに知るのだ。
　敵像の看取に時間を要するこちらは確実に遅れる。

　この格差があっては、神速の抜刀も鞘の中で眠りに
つくほかない。
　剣技を繰り出す暇に恵まれず、俺は斬死するだろう。

　……従って。
　大鳥獅子吼に対する勝利は、この根本的劣勢を取り
除かずして実現しない。

　<RUBY text="イーブン">五分</RUBY>の対決において必勝手である電磁抜刀を生かす
ため、まず条件を五分に持ち込む手筈が必要なのだ。
　
　如何にすべきか。

　つまり――
　如何にして敵騎の<RUBY text="・・・・">位置情報</RUBY>を掴むか。これに尽きる。

　俺の知覚、感覚を、どう活用すれば必要情報を得ら
れるのだろう？

　視覚か。
　……敵影をかくもあやふやな像でしか捉えられない
我が眼を、これ以上どう酷使のしようがあるのだろう。

　では聴覚……これとてどこまで当てになるか。
　圧倒的な優位にも拘わらず敵が一息に押して来ない
のは、足音を殺すために決まっている。音こそ逆転の
糸口たると彼はわきまえ、強く警戒しているのだ。

　ならば、呼吸でも読んでみるか。
　……呼吸は進退を如実に語る。だがこの男に限って
は、呼吸すら偽装しかねない。闇討奇襲の手管に長け
過ぎている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0640a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆獅子吼近付く
	CreateTextureEX("絵背景08", 5700, @0, @0, "cg/ev/ev186_村正ＶＳ銘伏_k.jpg");
	Fade("絵背景08", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
　<RUBY text="しおあい">潮合</RUBY>が窮まるのを、肌に感じる。
　そろそろ――刻か。

　迷いが有ろうと無かろうと、決断せねばならない。
　考えあぐねて立ち続けるという選択は単なる自殺だ。
生きて目的を達したく思うなら、ほかの選択が必須で
ある。

{	SetVolume("SE*", 2000, 0, null);}
　では決しよう。

　この局面……
　頼るべきはどの感覚か？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitPlay("SE*", null);

//◆選択：視覚／聴覚／第六感

}

..//ジャンプ指定
//◆視覚　"mc04_017vsa.nss"
//◆聴覚　"mc04_017vsb.nss"
//◆第六感　"mc04_017vsc.nss"

//★選択肢シーン
scene mc04_017vs.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	SoundPlay("@mbgm13",0,1000,true);
	CreateTextureSP("絵背景08EX", 5800, @0, @0, "cg/ev/ev186_村正ＶＳ銘伏_k.jpg");

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice03("視覚","聴覚","第六感");
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
			ChoiceA03();
//◆視覚　"mc04_017vsa.nss"
				$GameName = "mc04_017vsa.nss";
		}
		case @選択肢２
		{
			ChoiceB03();
//◆聴覚　"mc04_017vsb.nss"
				$GameName = "mc04_017vsb.nss";
		}
		case @選択肢３
		{
			ChoiceC03();
//◆第六感　"mc04_017vsc.nss"
				$GameName = "mc04_017vsc.nss";
		}
	}
}


function DenziBladeCharge()
{
	CreateProcess("Ｐ電磁抜刀放電ループ", 5000, 0, 0, "DenziBladeChargeSet");
	SetAlias("Ｐ電磁抜刀放電ループ","Ｐ電磁抜刀放電ループ");
	Request("Ｐ電磁抜刀放電ループ", Start);
}

function DenziBladeChargeSet()
{
	begin:
	while(1)
	{
	$RZoomSet = Random(3) + 3;
	$RZS = ($RZoomSet * 10) +1000;
	Shake("@プロ絵", 300, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@プロ絵上", 300, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@プロ絵*", 300, $RZS, $RZS, null, false);
	Fade("@プロ絵*", 50, 800, null, true);
	Fade("@プロ絵*", 250, 0, null, true);
	Wait(50);
	Zoom("@プロ絵*", 0, 1000, 1000, null, false);

	$RZoomSet = Random(3) + 3;
	$RZS = ($RZoomSet * 10) +1000;
	Shake("@プロ絵", 200, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@プロ絵上", 200, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@プロ絵*", 200, $RZS, $RZS, null, false);
	Fade("@プロ絵*", 50, 800, null, true);
	Fade("@プロ絵*", 150, 0, null, true);
	Wait(10);
	Zoom("@プロ絵*", 0, 1000, 1000, null, false);

	$RZoomSet = Random(3) + 3;
	$RZS = ($RZoomSet * 10) +1000;
	Shake("@プロ絵", 150, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@プロ絵上", 150, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@プロ絵*", 150, $RZS, $RZS, null, false);
	Fade("@プロ絵*", 50, 800, null, true);
	Fade("@プロ絵*", 150, 0, null, true);
	Wait(10);
	Zoom("@プロ絵*", 0, 1000, 1000, null, false);

	}

}