//<continuation number="510">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_017vs.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/md05_017vs.nss","DenziBladeCharge",true);
	Conquest("nss/md05_017vs.nss","DenziBladeChargeSet",true);
	

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
	#ev245_長坂仁王立ち_a=true;
	#ev245_長坂仁王立ち_b=true;
	#ev245_長坂仁王立ち_c=true;
	#ev245_長坂仁王立ち_d=true;
	#ev245_長坂仁王立ち_e=true;

	#ev930_村正電磁抜刀穿_a=true;
	#ev930_村正電磁抜刀穿_b=true;
	#ev930_村正電磁抜刀穿_c=true;
	#ev930_村正電磁抜刀穿_d=true;

	#ev931_村正ＶＳ魔神長坂=true;

	#ev246_魔神長坂崩壊_a=true;
	#ev246_魔神長坂崩壊_b=true;

	#bg204_横旋回背景_02=true;



	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md05_018.nss";

}

scene md05_017vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md05_016vs.nss"

/*
//あきゅん「バグ：描画確認用」
	OnBG(100,"bg006_雄飛の部屋_01.jpg");
	FadeBG(0,true);

	CreateMask("面一", 3000, Center, Middle, "cg/data/circle_13_00_0.png", false);
	SetAlias("面一","面一");
	CreateTextureEXadd("面一/絵演一", 3010, Center, Middle, "cg/ev/ev104_鈴川と真改_d.jpg");

	Fade("面一/絵演一", 2000, 1000, null, true);

*/

	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 20000, "#000000");
	CreateTextureSP("絵演", 100, Center, -310, "cg/ev/ev245_長坂仁王立ち_a.jpg");
	Delete("上背景");
	FadeDelete("絵色黒", 2000, true);

	SoundPlay("@mbgm02",0,1000,true);

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/017vs0010a01">
《……あの代官っ!?》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　短く叫んだきり、村正は絶句した。
　無理もない。現実を疑う思いは俺とて同じだ。

　何故、長坂右京がここで現れるのか。
　彼と金神の間に何の接点がある？　いやそれ以前の
問題だ――<k>死んだ筈の男がどうして！

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw長坂魔神_嘲笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【長坂】
<voice name="長坂" class="長坂" src="voice/md05/017vs0020b45">
《おお……良い心地よ！
　感じるわ。滾るわ。これが命、これが力か》

{	FwR("cg/fw/fw長坂魔神_驚き.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/md05/017vs0030b45">
《俺は<RUBY text="うつしよ">現世</RUBY>に戻ってきたのだな！
　お山の<RUBY text="かみ">金神</RUBY>の力を持って……》

{	FwR("cg/fw/fw長坂魔神_怒り.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/md05/017vs0040b45">
《愉快よ！　これほど愉快な話もないわ！
　かァはははははははははッッ!!》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　この手で確かに死の淵へ堕とした男が、いま眼前に
立って大笑する。
　しかもその姿たるや、雲を<RUBY text="つ">衝</RUBY>く巨人。

　悪しき夢でなくて何であろう。
　だがこれは決して、暖かい寝床で<RUBY text="まどろ">微睡</RUBY>みの内に見る
幻影などではなかった。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md05/017vs0050a00">
「村正……有り得る事か？
　重力操作による死者の蘇生というのは」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/017vs0060a01">
《有り得ない！
　死んだものが生き返るなんて、絶対にない
ことよ！》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　悲鳴のような声音で村正は言い切った。
　それから、小声で言い添える。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/017vs0070a01">
《……でも。
　擬似的なことなら……できるのかも……》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/017vs0080a01">
《死骸を基礎にして、その生前に近い存在を
造り上げることなら……》

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/017vs0090a00">
「それがあれか？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　としても、やはり疑問は残る。
　その死骸がどうして〝神〟のもとにあったのか？

　……そう言えば、長坂右京を斬るおり諸共に崩した
あの山には、祟り神の伝承があったが――

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw長坂魔神_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【長坂】
<voice name="長坂" class="長坂" src="voice/md05/017vs0100b45">
《匂う。
　匂うぞ……》

{	FwR("cg/fw/fw長坂魔神_妄執.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/md05/017vs0110b45">
《一媛が近くにおる！
　そうか……俺を迎えに来たか》

//【長坂】
<voice name="長坂" class="長坂" src="voice/md05/017vs0120b45">
《であろう。お前は神に嫁ぐと言った女。
　即ちお前を娶るのは、この俺に他ならぬ！》

{	FwR("cg/fw/fw長坂魔神_怒り.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/md05/017vs0130b45">
《今こそ!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 20000);

	CreateTextureSP("絵演背景", 100, Center, -30, "cg/bg/bg204_横旋回背景c_02.jpg");
	CreateTextureSP("絵演村正", 1000, 125, -250, "cg/st/3d村正最終_騎航_通常b.png");

	FadeDelete("上背景", 500, true);

//◆ずしーん。
	CreateSE("SE01","se戦闘_破壊_建物02");
	CreateSE("SE01a","se戦闘_衝撃_衝突01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreatePlainEX("絵板写", 19990);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 1000, 0, 10, 0, 0, 1000, Dxl2, false);

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md05/017vs0140a00">
「うぉっ……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　<RUBY text="おお">巨</RUBY>きな竜騎兵が一歩、足を進める。
　ただそれだけの事で大富嶽は震撼し、空気までもが
<RUBY text="わなな">戦慄</RUBY>いた。

　あれは山頂を離れ、何処かへ向かう気でいるらしい。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/017vs0150a01">
《……御堂！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　劒冑の金打声が危険を告げる。

　危険――そう、これは危険！
　俺は異常事態への疑問を頭の隅に追いやり、思考の
切り替えを己に強要した。

　あんなものが人里へ降りて、無事に済む筈もない。
　空想旅行記の<RUBY text="ガリバー">巨人</RUBY>とは違う。〝神〟の力に酔う風の
あの男に<RUBY text="・・">小人</RUBY>の世界への配慮を期待するのは、希望的
観測が過ぎている。

　加えてあれは形こそ変われど〝神〟、全世界に蔓延
してゆく汚染波の源なのだ。
　
　俺のやるべき事は一つだった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵演村正", 300, @-2000, @0, Dxl2, true);

	CreateTextureEX("絵ＥＶ", 4000, Center, -310, "cg/ev/ev245_長坂仁王立ち_b.jpg");
	Fade("絵ＥＶ", 1000, 1000, null, true);

	Delete("絵演");

	SetFwR("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/md05/017vs0160a00">
「長坂!!」

{	FwR("cg/fw/fw長坂魔神_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/md05/017vs0170b45">
《まだいたか羽虫。
　貴様など、別にどうでも良いわ》

{	FwR("cg/fw/fw長坂魔神_怒り.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/md05/017vs0180b45">
《尻尾を巻いて遠吠えしておれ！》

{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/017vs0190a00">
「そうしたいのは山々だが、立場上、飛んで
火に入らねばならぬらしい！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色黒", 10000, "#000000");

//◆飛翔、接近
	SetBlur("絵ＥＶ", true, 3, 500, 50, false);
	Move("絵ＥＶ", 150, @0, @-600, null, false);
	Zoom("絵ＥＶ", 150, 3000, 3000, null, false);

	Wait(150);

	Fade("絵色黒", 0, 1000, null, true);
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Delete("絵ＥＶ");

	CreateSE("SEL01a","se戦闘_動作_空走行01_L");
	CreateSE("SEL01b","se戦闘_動作_空走行02_L");

	CreateTextureSP("絵演背景", 100, InRight, Middle, "cg/bg/bg204_横旋回背景_02.jpg");
	CreateTextureSP("絵演立絵", 1000, Center, Middle, "cg/st/3d村正最終_騎航_戦闘.png");
	Move("絵演立絵", 0, @380, @-100, null, true);
	Shake("絵演立絵", 20000, 2, 0, 0, 0, 1000, null, false);

	Rotate("絵演立絵", 0, @0, @0, @-20, null,true);
	Request("絵演立絵", Smoothing);

	Move("絵演立絵", 6000, @-60, @0, DxlAuto, false);
	Move("絵演背景", 20000, -100, @0, null, false);

	MusicStart("SEL01a",1000,750,0,1000,null,true);
	MusicStart("SEL01b",1000,750,0,1500,null,true);

	DrawDelete("絵色黒", 150, 100, "slide_02_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　狙うは首元。
　人体急所があの巨兵に適用されるとも考え難いが、
無策よりはまし――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEXadd("絵色白", 4990, "#FFFFFF");
	CreateSE("SE00","se戦闘_動作_空突進01");
	Move("絵演立絵", 1000, @-30, @0, null, true);

	Wait(700);

	SetVolume("SEL*", 100, 0, null);

	MusicStart("SE00",0,1000,0,1000,null,false);
	Fade("絵色白", 200, 1000, Dxl2, false);
	Move("絵演立絵", 150, @-2000, @200, null, true);

	Wait(50);

	Delete("絵演立絵");
	Delete("絵演背景");

//◆野太刀一閃
//◆がちーん。弾かれ
	CreateColorSP("絵色黒", 5000, "#000000");
	CreateSE("SE01","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_leftdown2(5010,@0, @0,1500);
	SL_leftdownfade2(10);

	Delete("絵ＥＶ");

	CreateSE("SE02a","se戦闘_攻撃_剣戟弾く02");
	MusicStart("SE02a",0,1000,0,850,null,false);

	CreateColorSP("絵色白", 30000, "#FFFFFF");
	Delete("絵色黒");

	CreateTextureSPadd("絵背景覆", 110, Center, Middle, "cg/bg/resize/bg106_富士山遠望b_00l.jpg");
	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/resize/bg106_富士山遠望b_00l.jpg");
	Zoom("絵背景覆", 0, 1250, 1250, null, true);
	SetBlur("絵背景覆", true, 3, 500, 80, false);
	FadeDelete("絵色白", 150, false);

	FadeDelete("絵背景覆", 1000, false);
	Shake("絵背景覆", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵背景覆", 200, 1000, 1000, AxlDxl, true);

	SetFwC("cg/fw/fw長坂魔神_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【長坂】
<voice name="長坂" class="長坂" src="voice/md05/017vs0200b45">
《ごぉァ!?》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/017vs0210a00">
「ぬぅ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　――同じ事か！
　
　木刀で岩を叩くにも似る強硬な手応えを味わわされ、
俺は歯噛みした。

　先刻と違い、全く傷を負わせた感触がない。
　竜騎兵姿は単なる長坂の伊達かと思えば――実際に
体表は武者甲鉄と同等、いや凌駕する硬度を獲得して
いる!?

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw長坂魔神_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【長坂】
<voice name="長坂" class="長坂" src="voice/md05/017vs0220b45">
《痒い真似をォ!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆腕振り
	CreateSE("SE01","se戦闘_魔神長坂_腕振るう");
	MusicStart("SE01",0,1000,0,1000,null,false);

//◆避け

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　虫を払う仕草で振られた腕から、騎体を転じて逃れ
去る。
　吹き寄せる太い風は、敵の桁違いの重量を物語って
いた。

　一寸法師の心細さが今なら良くわかる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw長坂魔神_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【長坂】
<voice name="長坂" class="長坂" src="voice/md05/017vs0230b45">
《面憎い若造め！
　今日もまた俺の邪魔をするかッ！》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/017vs0240a00">
「一身上の都合により」

{	FwC("cg/fw/fw長坂魔神_嘲笑.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/md05/017vs0250b45">
《相変わらずの言い草も忌々しいわ。
　良し……相手してくれるぞ》

{	FwC("cg/fw/fw長坂魔神_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/md05/017vs0260b45">
《考えてみれば、貴様への借りを置き捨てて
おくのも業腹だ。
　一媛のもとへ赴くのは遺恨を晴らしてから
でも遅くなかろうよ……！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆魔神長坂、抜刀。構え
//◆村正との対比で偉容をアピール。
	CreateSE("SE01","se戦闘_魔神長坂_構え");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureEX("絵ＥＶ", 4000, Center, -265, "cg/ev/ev245_長坂仁王立ち_c.jpg");
	Fade("絵ＥＶ", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　鳴動する山のような武者が凍れる大河のような太刀
を構える。
　憤怒し魔を断たんとす<RUBY text="アチャラ・ナータ">不動明王</RUBY>――まさにそれその
ものであった。

　脅威、などという言葉では足りない。
　胃液の形をした恐怖が喉元まで<RUBY text="せ">迫</RUBY>り上がってくる。

　全身全霊の力でそれを腹へ押し戻し、俺は呟いた。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/md05/017vs0270a00">
「良し。好機だ」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/017vs0280a01">
《……ものすごく努力してその一言を言った
のがわかるから、褒めてあげたいんだけれど、
その前に私も同じくらい頑張って今の言葉に
頷かないといけないのね》

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/017vs0290a00">
「いや別にいい。
　俺の意図が通じてさえいるなら」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230a]
　そこは確かめるまでもなかった。
　軽口の金打声を飛ばしながらも、村正は既に機能の
準備を整えつつある。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演金神", 5100, Center, -280, "cg/ev/resize/ev242_金神激しく発光_al.jpg");
	Fade("絵演金神", 1000, 600, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230b]
〝神〟は戦闘能力を飛躍的に増強した。
　間違いなく――如何なる<RUBY text="ゆえん">所以</RUBY>によってか長坂右京を
頭脳に得た一事で。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演八八", 5100, Center, InBottom, "cg/st/3d八八式指揮官_立ち_抜刀.png");
	FadeDelete("絵演金神", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0231]
　既にあれは重力操作を放漫に駆使する<RUBY text="モンスター">怪獣</RUBY>ではない。
{	Fade("絵演八八", 1000, 750, null, false);}
　その膨大を極める<RUBY text="エネルギー">力量</RUBY>を、老練なる武人の制御下に
置かれ、しかも彼が最も操りやすい<RUBY text="かたち">竜騎兵型</RUBY>へと変貌
すらしている――<RUBY text="サターン">魔神</RUBY>なのだ。

　皆無であった戦術構想は狡猾な進化を、
　粗雑であった力量使用は劇的な効率化を、
　
　遂げているとみて疑いない。

{	FadeDelete("絵演八八", 1000, false);}
　戦力比較は今や単純化されている。

　最初は力量で〝神〟が、戦術で俺が完全優位だった。
　長坂を頭脳とした時点で戦術は互角に近くなったが、
それでもまだ慣れぬ異形を操る不利は〝神〟側に存在
したと思われる。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);

	CreateColorEX("絵色黒", 10000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);

	WaitPlay("@m*", null);

	CreateTextureEX("絵演八八", 11000, Center, InBottom, "cg/st/3d八八式指揮官_立ち_戦闘.png");
	Move("絵演八八", 0, @-256, @0, null, true);

	CreateTextureEX("絵演村正", 11100, Center, InBottom, "cg/st/3d村正最終_立ち_戦闘a.png");
	Request("絵演村正", Smoothing);
	SetVertex("絵演村正", center, bottom);
	Move("絵演村正", 0, @256, @0, null, true);
	Zoom("絵演村正", 0, 50, 50, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0233]
　今はどうか。<k>
　
　……<?>
{	Fade("絵演八八", 300, 1000, null, false);}
長坂右京と<?>
{	Fade("絵演村正", 300, 1000, null, false);}
湊斗景明の戦闘技量を互角とするの
なら、後は力量における天地の隔絶のみがある！

　巨と小の絶対的格差。
　それだけだ。それしかない。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 20000);
	Delete("絵演八八");
	Delete("絵演村正");
	FadeDelete("絵板写", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0234a]
　<RUBY text="しか">而</RUBY>して、今は好機なのだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演刀壱", 11100, Center, 110, "cg/ev/ev926_野太刀全容.jpg");
	Request("絵演刀壱", Smoothing);
	Zoom("絵演刀壱", 0, 1500, 1500, null, true);

	CreateTextureEX("絵演刀弐", 11110, Center, 110, "cg/ev/ev926_野太刀全容.jpg");
	Rotate("絵演刀弐", 0, @0, @180, @0, null,true);
	Request("絵演刀弐", Smoothing);
	Zoom("絵演刀弐", 0, 1500, 1500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0234b]
　何故なら<RUBY text="・・">剣と</RUBY>{Fade("絵演刀壱", 1000, 1000, null, true);}<RUBY text="・">剣</RUBY>の{Fade("絵演刀弐", 1000, 500, null, true);}勝負になる。
　人間相手、武人相手の計算が通用する。

　体重、力量の不利は余りにも大きい。
　だが、それはあくまで戦闘条件の一つだ。

　体格差があるならば、その差を覆す技法を用意する
までの事だ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 30000);
	Delete("絵演刀*");
	FadeDelete("絵板写", 1000, true);

	CreateTextureEX("絵演心技体", 11000, Center, Middle, "cg/ev/ev501_村正鎮座.jpg");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0236]
　技法、それは必ず存在する。<k>
{	Fade("絵演心技体", 1000, 1000, null, true);
	SoundPlay("@mbgm03",0,1000,true);}
　そのための武術、<?>
{	Wait(300);}
そのための剣術なのだから。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆魔神長坂、ちと演出
	PrintGO("上背景", 30000);
	CreateColorSP("絵色黒", 5000, "#000000");

	CreateTextureSP("絵演魔神", 3000, Center, -760, "cg/ev/resize/ev245_長坂仁王立ち_cl.jpg");

	FadeDelete("上背景", 1000, true);
	Wait(500);
	Move("絵演魔神", 6000, @0, -600, DxlAuto, false);
	FadeDelete("絵色黒", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　魔神の<RUBY text="かまえ">構</RUBY>に、そこへ捧げられた剣理を観る。
　
　……以前と同様、この長坂という老兵は、激情家で
ありながら戦いの場には欠片もそれを持ち込まない。

　金神の力に酔い、俺を屑虫と侮り、しかしその剣先
は無思慮な突進の愚を冒す気色もなかった。
　一心一刀、必殺の勝機を沈静に窺っている。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/md05/017vs0300a00">
（六波羅新陰流……<RUBY text="カツニントウ">活人刀</RUBY>の<RUBY text="おうり">奥理</RUBY>）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　見て取って、俺は胸腑に呟いた。
　他流儀だが、六波羅新陰流とは奇妙に関わりを持つ
事が多く、多少の知識を持っている。

　魔神の剣形は如何にも堅牢なもの。
　だが詳細に目を凝らせば、糸筋程度の隙が見える。

　それこそが<RUBY text="わな">陥穽</RUBY>。

　完璧に防御を固めれば、対敵は考えを巡らせたすえ、
思いもよらぬ手管を用いる事もあろう。
　そうさせぬため、あえて攻め入る穴をつくる。

　我が想定の範囲内で敵を踊らせ、力と技と機を無為
に費えさせるのだ。さすれば勝利はいとも容易い。
　
　――敵を<RUBY text="い">活</RUBY>かして斃す、これぞ活人刀。

　長坂が得た〝神〟の力は剣理を補強するだろう。
　受け誤って敵刃を浴びようと<RUBY text="こた">堪</RUBY>える体躯ではない。
そして返す太刀は掠める程度で充分、敵を虐殺する。

　必勝の術式。
　
　
　――対するに、俺は、

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆村正、ちと演出
	PrintGO("上背景", 20000);
	CreateTextureSP("絵ＥＶ", 4000, Center, -265, "cg/ev/ev245_長坂仁王立ち_d.jpg");
	FadeDelete("上背景", 1000, true);

	SetFwR("cg/fw/fw長坂魔神_嘲笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【長坂】
<voice name="長坂" class="長坂" src="voice/md05/017vs0310b45">
《……クク……》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　魔神長坂は会心の笑みを浮かべたようであった。
　俺の企図を汲んだのであろう。

　――敵の剣理に、乗る。

　差し出された餌を喰らう。
　毒仕込みのそれを貪ろう。

　先手を取り、故意に作られた隙へ攻め入ろう。

　深遠精緻なる剣理に、単純粗雑の剣理で挑む。
　
　――先手必勝。先に攻め先に斃して勝を取れ。

　即ち<RUBY text="セツニントウ">殺人刀</RUBY>。
　魔神の嘲りは当然であった。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【景明】
<voice name="景明" class="景明" src="voice/md05/017vs0320a00">
（しかし長坂右京）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　油断こそ無いにしても、やはりお前は知るまい。
　殺害権は俺にも有るという事実を。

　例え御身が神であろうが。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆野太刀レールガン準備開始
	PrintGO("上背景", 20000);
	CreateTextureSP("絵ＥＶ", 4000, Center, -265, "cg/ev/ev245_長坂仁王立ち_e.jpg");
	CreateTextureSPadd("絵ＥＶ覆", 4010, Center, -265, "cg/ev/ev245_長坂仁王立ち_e.jpg");
	DrawTransition("絵ＥＶ覆", 0, 0, 100, 1000, null, "cg/data/circle_13_00_0.png", true);

	CreateSE("SE01","se特殊_雰囲気_発光01");
	MusicStart("SE01",1000,1000,0,750,null,false);
	FadeDelete("上背景", 1000, true);
	FadeDelete("絵ＥＶ覆", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　丹田を軸に血の時計を回す。
　加速し収拾し編成する。

　熱量を偏移。
　必要箇所に必要量を。

　我が体内に機関を造れ。
　湊斗景明と三世右衛門尉村正の最大規模・極限値・
絶対量・完全武力の破壊行使のために。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreatePlainEX("絵板写", 8900);
	SetShade("絵板写", SEMIHEAVY);

//◆準備演出
	CreateWindow("絵窓", 19000, 0, 144, 1024, 288, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateColorSPadd("絵窓/絵演色", 19100, "#FFFFFF");

	CreateTextureEXsub("絵窓/プロ絵上", 19012, Center, Middle, "cg/ev/ev930_村正電磁抜刀穿_c.jpg");
	CreateTextureEXadd("絵窓/プロ絵", 19011, Center, Middle, "cg/ev/ev930_村正電磁抜刀穿_c.jpg");
	CreateTextureSP("絵窓/絵演立絵装甲", 19010, Center, Middle, "cg/ev/ev930_村正電磁抜刀穿_b.jpg");
	Request("絵窓/絵演立絵装甲", Smoothing);

	CreateSE("SE02","se特殊_電撃_放電01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Fade("絵板写", 600, 1000, null, false);

	Zoom("絵窓", 300, 1000, 1000, Dxl2, false);
	Wait(300);
	FadeDelete("絵窓/絵演色", 700, true);

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/017vs0330a01">
《<RUBY text="おわりをはじめる">蒐窮開闢</RUBY>》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/017vs0340a01">
《<RUBY text="しをおこなう">終焉執行</RUBY>》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/017vs0350a01">
《<RUBY text="そらをあらわす">虚無発現</RUBY>》

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

//◆準備演出
	CreateSE("SEL01","se特殊_陰義_レールガン穿_準備");
	MusicStart("SEL01",0,1000,0,1000,null,false);
	DenziBladeCharge();

	SetFwR("cg/fw/fw長坂魔神_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【長坂】
<voice name="長坂" class="長坂" src="voice/md05/017vs0360b45">
《――――――――》

</PRE>
	SetTextEXR();
	TypeBeginTimeRIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　ちり、と警戒の気配が俺の脳髄を刺した。

　悟るだろう。
　今となれば悟るだろう長坂右京。

　<RUBY text="おれ">村正</RUBY>が何をしているか。

　どうする。
　止めてみせるか。

　神なる力で、この一剣を止めるか。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆準備演出
	CreateTextureEX("絵演型", 19900, -640, InBottom, "cg/ev/resize/ev902_村正電磁抜刀レールガン_dl.jpg");
	Move("絵演型", 5000, @0, -96, DxlAuto, false);
	Fade("絵演型", 1000, 750, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　基本となる術式は、電磁抜刀の一、<RUBY text="マガツ">禍</RUBY>の型と変わり
ない。
　<RUBY text="むらまさ">劒冑</RUBY>は鞘と刀身の間に強激な磁力反発を生じさせ、
<RUBY text="おれ">仕手</RUBY>はその激流を操って抜刀斬撃と成す。

{	FadeDelete("絵演型", 1000, false);}
　異なるのは式ではなく量。
　規模――速度――威力の。

　武力の容器として太刀が一〇〇であったとすれば、
野太刀〝虎徹〟は一〇〇〇〇に届く。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	Delete("絵窓*");
	Delete("Ｐ電磁抜刀*");
	SetVolume("SE*", 100, 0, null);

//◆魔神長坂
	CreateTextureSPadd("絵演上", 9100, Center, -630, "cg/ev/resize/ev931_村正ＶＳ魔神長坂l.jpg");
	CreateTextureSP("絵演", 9000, Center, -630, "cg/ev/resize/ev931_村正ＶＳ魔神長坂l.jpg");
	Zoom("絵演上", 0, 1200, 1000, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	SetBlur("絵演", true, 3, 500, 80, false);
	Move("絵演*", 300, @0, -120, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);
	Wait(200);

	SetVolume("@mbgm*", 300, 0, null);

//◆斬
	CreateColorSP("絵色黒", 10000, "#000000");
	CreateSE("SE01","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE01",0,1000,0,650,null,false);

	Delete("絵演上");
	SL_down2(10010,@0, @600,10000);
	SL_downfade2(10);

	SetFwR("cg/fw/fw長坂魔神_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【長坂】
<voice name="長坂" class="長坂" src="voice/md05/017vs0370b45">
《ちぇらぁぁぁァァァァァァァ!!》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　土壇場、魔神は遂に正しい決断を下した。
　活人刀の剣理を振り捨て、闇雲に太刀を落とす――

　恐ろしい。

　何という<RUBY text="つわもの">兵</RUBY>か、長坂右京。

　この一幕は俺にとっても不測だが、長坂にとっては
尚の事だろう。突如として再生させられ、わけのわか
らぬ<RUBY text="ふざけ">巫山戯</RUBY>た<RUBY text="ちから">神威</RUBY>を与えられ……<k>
　だが最後まで武人としての己を見失わなかったとは。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【景明】
<voice name="景明" class="景明" src="voice/md05/017vs0380a00">
（危うかった）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　俺は卑屈にも安堵する。

　長坂の正しい決断が、正しい機よりほんの少しだけ
遅れてくれた事に。

　今ならば、
　俺の方が、
　速い。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm12",0,1000,true);

//◆完成
	CreateSE("SE01","se特殊_電撃_放電01");
	MusicStart("SE01",0,1000,0,1500,null,false);
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 20000, "#FFFFFF");
	CreateTextureSP("絵ＥＶ", 100, Center, -100, "cg/ev/ev931_村正ＶＳ魔神長坂.jpg");
	SetBlur("絵ＥＶ", true, 3, 500, 30, false);
	Move("絵ＥＶ", 20000, @0, -490, null, false);

	FadeDelete("上背景", 500, true);
	Wait(500);
	FadeDelete("絵暗転", 2000, true);

	Move("絵ＥＶ", 300, @0, -490, Dxl2, true);

	SetFwR("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400a]
//【景明】
<voice name="景明" class="景明" src="voice/md05/017vs0390a00">
「吉野御流合戦礼法〝迅雷〟が崩し」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01a","se特殊_電撃_放電01");
	MusicStart("SE01a",0,500,0,500,null,false);
	CreateTextureSPadd("絵演上", 3100, Center, Middle, "cg/ev/ev930_村正電磁抜刀穿_c.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ev/ev930_村正電磁抜刀穿_c.jpg");
	Zoom("絵演", 0, 1100, 1100, Dxl2, false);
	Zoom("絵演上", 0, 1300, 1300, null, false);
	Zoom("絵演上", 200, 1100, 1100, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400b]
//【景明】
<voice name="景明" class="景明" src="voice/md05/017vs0400a00">
「<RUBY text="レールガン">電磁抜刀</RUBY>」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateSE("SE02a","se特殊_電撃_放電01");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演弐上", 3210, Center, Middle, "cg/ev/ev930_村正電磁抜刀穿_d.jpg");
	CreateTextureSP("絵演弐", 3200, Center, Middle, "cg/ev/ev930_村正電磁抜刀穿_d.jpg");
	Zoom("絵演弐", 0, 1100, 1100, Dxl2, false);
	Zoom("絵演弐上", 0, 1300, 1300, null, false);
	Zoom("絵演弐上", 200, 1100, 1100, Dxl2, false);
	Shake("絵演弐", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演弐上", 200, true);

	SetFwR("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400c]
//【景明】
<voice name="景明" class="景明" src="voice/md05/017vs0410a00">
「<RUBY text="ウガチ">穿</RUBY>」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆電磁抜刀・穿
//◆いや別に刺さんけど。
	MovieSESet(20000,"mv穿","se特殊_mv用_穿");

	PrintGO("上背景", 19999);
	CreateColorSPadd("絵色白", 19990, "#FFFFFF");
	CreateColorSPadd("絵色白二", 19990, "#FFFFFF");
	Delete("上背景");

	MovieSEStart(2000);

//◆魔神崩壊
	SetVolume("@mbgm*", 300, 0, null);
	CreateSE("SE01","se特殊_その他_噴き上がる光の柱");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateSE("SE01a","se特殊_陰義_重力波01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵ＥＶ覆", 4010, -825, -90, "cg/ev/resize/ev246_魔神長坂崩壊_al.jpg");
	CreateTextureSP("絵ＥＶ", 4000, -825, -90, "cg/ev/resize/ev246_魔神長坂崩壊_al.jpg");
	SetVertex("絵ＥＶ*", center, bottom);
	Shake("絵ＥＶ*", 2000, 60, 0, 0, 0, 1000, null, false);
	Zoom("絵ＥＶ覆", 6000, 1100, 5000, DxlAuto, false);
	FadeDelete("絵ＥＶ覆", 6000, false);

	DrawDelete("絵色白", 1000, 1000, "slide_01_02_1", false);
	DrawDelete("絵色白二", 1000, 1000, "slide_01_02_0", true);

	CreateSE("SE01b","se特殊_その他_神の絶叫");
	MusicStart("SE01b",0,1000,0,1250,null,false);
	SetFrequency("SE01b", 3000, 500, DxlAuto);

	SetFwC("cg/fw/fw長坂魔神_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【長坂】
<voice name="長坂" class="長坂" src="voice/md05/017vs0420b45">
《ぎぃぃおおおおオオオオオオオオオオオ!?》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE02","se特殊_雰囲気_崩壊音");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreatePlainSPadd("絵板写", 19000);
	CreateTextureSP("絵ＥＶ下", 3990, Center, Middle, "cg/ev/ev246_魔神長坂崩壊_a.jpg");
	Delete("絵ＥＶ");
	FadeDelete("絵板写", 800, false);

	CreateSE("SE01L","se戦闘_神_グラビティブラスト_準備_L");
	MusicStart("SE01L",0,750,0,350,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　砕け散る。

　野太刀が<RUBY text="はし">疾</RUBY>った軌道――
　そこには虚空が現れた。

　虚空は領域を広げ、
　無をもって有を侵食し、
　
　<RUBY text="セイメイ">血魂骨肉</RUBY>を食い破った。

　神であろうと。
　魔神であろうと。
　構造核芯を<RUBY text="く">刳</RUBY>り<RUBY text="ぬ">貫</RUBY>かれたならば、後は崩壊を遂げる
のみ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【景明】
<voice name="景明" class="景明" src="voice/md05/017vs0430a00">
「…………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/017vs0440a01">
《……終わりね……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　結末を見届ける。

　鍛冶の神であったもの。
　長坂右京であったもの。
　
　そして、――であったもの。

　その果てを見送る。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw長坂魔神_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【長坂】
<voice name="長坂" class="長坂" src="voice/md05/017vs0450b45">
《お――――が、ぐ》

{	FwC("cg/fw/fw長坂魔神_怒り.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/md05/017vs0460b45">
《ぬぅぅぅぅぅぅぅぅぅ!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆破片が集まる
	CreateSE("SE00","se特殊_その他_噴き上がる光の柱");
	CreateSE("SE01","se特殊_鎧_装着04");
	MusicStart("SE00",0,1000,0,1000,null,false);
	MusicStart("SE01",0,1000,0,1500,null,false);

	CreateColorEXadd("絵色白", 19900, "#FFFFFF");
	Fade("絵色白", 1000, 1000, AxlDxl, true);

	CreatePlainSPadd("絵板写", 10000);
	SetVertex("絵板写", center, bottom);
	Zoom("絵板写", 0, 1100, 6000, null, true);

	Wait(500);

	Zoom("絵板写", 7000, 1000, 1000, DxlAuto, false);
	FadeDelete("絵色白", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　崩壊が――<k>
　
　　　　　　――逆転した!?

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/017vs0470a01">
《……復元するつもり!?》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/017vs0480a00">
「馬鹿な！」

{	FwC("cg/fw/fw長坂魔神_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/md05/017vs0490b45">
《二度までも！
　二度までもォォォォォ!!》

{	FwC("cg/fw/fw長坂魔神_怒り.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/md05/017vs0500b45">
《貴様などにィィィィ、この俺がァァァァ!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆復元過程
	CreateSE("SE01","se特殊_その他_神再生");
	MusicStart("SE01",0,1000,0,100,null,false);
	SetFrequency("SE01", 5000, 1000, Axl2);
	CreateSE("SE01a","se特殊_陰義_重力波01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵ＥＶ２", 4100, Center, Middle, "cg/ev/ev246_魔神長坂崩壊_b.jpg");
	DrawTransition("絵ＥＶ２", 10000, 0, 1000, 1000, null, "cg/data/slide_02_01_1.png", false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　何という〝神〟の力。
　何という長坂の執念。

　絶対浄滅の渦中にあって尚も足掻き、乗り切ろうと
している……！<k>
　
　させてはならない。

　あと一撃を打ち込めば、確実に滅びるだろう。

　足掻く〝神〟もそれを悟っているのか。
　暴走も厭わず力を渦巻かせ、混沌の大坩堝の中心と
なり<RUBY text="ほ">吼</RUBY>え<RUBY text="たけ">哮</RUBY>る。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw長坂魔神_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【長坂】
<voice name="長坂" class="長坂" src="voice/md05/017vs0510b45">
《オオオオオアアアアアアアアアアア!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆渦巻く力。ズゴゴゴ。
	CreateSE("SE01","se特殊_その他_渦巻く力");
	MusicStart("SE01",1500,1000,0,1000,null,false);
	Zoom("絵ＥＶ２", 10000, 2000, 2000, null, false);
	Shake("絵ＥＶ２", 3000, 0, 0, 0, 30, 1000, AxlAuto, false);

	Wait(2900);

	Shake("絵ＥＶ２", 2000, 0, 30, 0, 30, 1000, AxlAuto, false);

//◆ピキーン。世界凍結
	SetVolume("SE*", 100, 0, null);
	CreateSE("SE01","se特殊_その他_世界凍結");
	MusicStart("SE01",1500,1000,0,1000,null,false);

	$残時間=RemainTime("SE01");

	CreatePlainSP("絵板写", 10000);
	CreateEffect("絵効果", 10010, 0, 0, 1024, 576, "KitanoBlue");
	SetAlias("絵効果","絵効果");
	DrawTransition("絵効果", $残時間, 0, 1000, 1000, Axl2, "cg/data/circle_03_00_0.png", true);

}

..//ジャンプ指定
//次ファイル　"md05_018.nss"


..//マクロ＜電磁抜刀放電＞
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
	Shake("@絵窓/プロ絵", 300, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@絵窓/プロ絵上", 300, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@絵窓/プロ絵*", 300, $RZS, $RZS, null, false);
	Fade("@絵窓/プロ絵*", 50, 800, null, true);
	Fade("@絵窓/プロ絵*", 250, 0, null, true);
	Wait(50);
	Zoom("@絵窓/プロ絵*", 0, 1000, 1000, null, false);

	$RZoomSet = Random(3) + 3;
	$RZS = ($RZoomSet * 10) +1000;
	Shake("@絵窓/プロ絵", 200, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@絵窓/プロ絵上", 200, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@絵窓/プロ絵*", 200, $RZS, $RZS, null, false);
	Fade("@絵窓/プロ絵*", 50, 800, null, true);
	Fade("@絵窓/プロ絵*", 150, 0, null, true);
	Wait(10);
	Zoom("@絵窓/プロ絵*", 0, 1000, 1000, null, false);

	$RZoomSet = Random(3) + 3;
	$RZS = ($RZoomSet * 10) +1000;
	Shake("@絵窓/プロ絵", 150, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@絵窓/プロ絵上", 150, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@絵窓/プロ絵*", 150, $RZS, $RZS, null, false);
	Fade("@絵窓/プロ絵*", 50, 800, null, true);
	Fade("@絵窓/プロ絵*", 150, 0, null, true);
	Wait(10);
	Zoom("@絵窓/プロ絵*", 0, 1000, 1000, null, false);

	}

}