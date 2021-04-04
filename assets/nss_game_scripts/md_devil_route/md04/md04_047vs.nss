//<continuation number="820">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;

//あきゅん「ＣＰ：デバッグ用」
		$GameDebugSelect = 1;

		Reset();
	}

}

scene md04_047vs.nss_MAIN
{

//あきゅん「演出：シーンの繋ぎのため前ファイルで定義します」
	//CP_AllSet("村正");
	

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
	#ev231_茶々丸変身_e=true;
	#bg105_城門付近内側_02=true;
	#ev502_村正抜刀片手=true;
	#ev232_村正ＶＳ茶々丸１=true;
	#ev233_村正ＶＳ茶々丸２_a=true;
	#ev233_村正ＶＳ茶々丸２_b=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	Cockpit_AllFade0();

	$GameName = "md04_048vs.nss";

}

scene md04_047vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md04_046.nss"


	if($GameDebugSelect==1){CP_AllSet("アベンジ");}


//◆ＢＧＭ？
//◆bg105＋虎徹茶々丸
	PrintBG("上背景", 30000);
	CreateTextureSP("魔王星", 1200, 0, 0, "cg/ev/ev231_茶々丸変身_e.jpg");
	OnBG(100, "bg105_城門付近内側_02.jpg");

	SoundPlay("@mbgm10", 0, 1000, true);
	FadeBG(500, true);
	Delete("上背景");
	FadeDelete("魔王星",500,true);

	Wait(500);

	OnSE("se人体_足音_鎧歩く03",1000);

	StC(1000, @0, @30, "cg/st/3d虎徹_立ち_通常.png");

	Move("@StC*", 500, @0, @-30, Dxl1, false);
	FadeStC(500, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　人でもなく。劒冑でもなく。
　<RUBY text="・・・・">生ける鎧</RUBY>。

　そんな<RUBY text="もの">存在</RUBY>が生まれ得るのか？

　どうして茶々丸はそんな存在になったのだ!?

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw茶々丸虎徹_冷酷.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0010a07">
「あての父親は堀越公方足利守政。
　母親は蝦夷の劒冑鍛冶……長曽弥入道虎徹
の銘を受け継ぐ二八代目、<RUBY text="おきなが">興永</RUBY>」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0020a07">
「本当ならあては人間か蝦夷か、でなけりゃ
半蝦夷に生まれつくはずだった」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　六波羅の公安警察である鎌倉大番が睨みを利かせて
いるため、声高に語られることはない。
　しかし、それは有名な話だった。

　堀越公方足利茶々丸の血の半分は蝦夷のもの。
　すなわち<RUBY text="か">彼</RUBY>の将帥は<RUBY text="ハーフドワーフ">半蝦夷</RUBY>である――と。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0030a00">
「……だが。
　そうはならなかった……？」

{	FwR("cg/fw/fw茶々丸虎徹_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0040a07">
「残念なことに」

{	FwR("cg/fw/fw茶々丸虎徹_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0050a07">
「……残念なことに……」

{	FwR("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0060a00">
「何故――」

{	FwR("cg/fw/fw茶々丸虎徹_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0070a07">
「いいの？
　お兄さん」

{	FwR("cg/fw/fw茶々丸虎徹_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0080a07">
「あての身の上話なんか聞いてて。
　急ぎの用事があるんじゃない？」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0090a00">
「……」

{	FwR("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/047vs0100a01">
「御堂」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0110a00">
「ああ……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　確かに、そんな場合ではない。
　当の茶々丸に忠告されるのもおかしな話だが。

　今は鍛造雷弾の投下を阻止せねば！

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0120a00">
「茶々丸。
　通しては――くれないのだな」

{	FwR("cg/fw/fw茶々丸虎徹_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0130a07">
「うん……」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0140a00">
「…………」

{	FwR("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0150a00">
「村正」

{	FwR("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/047vs0160a01">
「ええ」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	Move("@StC*", 300, @-50, @0, Axl2, false);
	Move("@OnBG*", 300, @-100, @0, Axl2, false);
	CreateColorSP("黒幕１", 15000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	Move("@OnBG*", 0, @200, @0, null, true);
	DeleteStL(0,true);

	StR(1000, @0, @0,"cg/st/st村正_通常_私服.png");
	StC(1000, @0, @0,"cg/st/st景明_装甲_私服a1.png");
	FadeStR(0,true);
	FadeStC(0,true);

	Move("@OnBG*", 300, @-100, @0, Dxl2, false);
	Move("@StR*", 300, @-150, @0, Dxl2, false);
	Move("@StC*", 300, @-150, @0, Dxl2, false);
	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_01_01_0.png", true);
	WaitKey(1500);


//◆村正分解
//◆装甲アクション

	CreateColorEXadd("フラ", 10000, "#FFFFFF");
	CreateSE("SE01","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);

	Fade("フラ", 300, 1000, null, true);
	DeleteStR(0,true);
	DeleteStC(0,true);

	CreateColorSPadd("フラ", 10000, "#FFFFFF");

	DeleteStL(0,true);

	StC(1000, @0, @0,"cg/st/st景明_装甲_私服a.png");
	FadeStC(0,true);
	Delete("上背景");
	FadeDelete("フラ*", 1600, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　<RUBY text="ソウコウノカマエ">装甲ノ構</RUBY>――
　仕手と劒冑が武者と成る、その必須の<RUBY text="プロセス">過程</RUBY>。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――


	SetFwL("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0170a00">
（八幡宮の事件以来か）

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　どうしてか懐かしい。
　あれから何ヶ月と経ったわけでもないのに。

　この行為に良い記憶が伴うことは稀だった。
　闘争、苦痛、そして殺害――付き纏うのはその三つ
ばかりだ。

　それでも。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――


	SetFwL("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0180a00">
（これは、嫌いではない）

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/047vs0190a01">
《……そうね。私も》

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　四肢を伸ばし、全身の筋肉は軽く張る。
　周囲に踊る<RUBY text="はがね">甲鉄</RUBY>を我が身として受け入れるために。

　不完全な二から完全な一となるために。
　誓約の詞を唄う。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――


	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateColorSPadd("絵演窓上/フラ", 25000, "#FFFFFF");
	SetAlias("絵演窓上","絵演窓上");
	CreateColorEX("絵色100", 16050, "BLACK");
	CreateTextureEX("絵演窓上/絵演背景", 16100, 0, -344, "cg/bg/bg105_城門付近内側_02.jpg");
	Zoom("絵演窓上/絵演背景", 0, 2000, 2000, null, true);
	SetShade("絵演窓上/絵演背景", HEAVY);
	Request("絵演窓上/絵演背景", Smoothing);

//	DrawEffect("絵演窓上/絵演背景", 50, "LowWave ", 0, 100, null);


	CreateTextureEX("絵演窓上/絵立絵", 16200, 60, -220, "cg/st/resize/st景明_装甲_私服aex.png");
	SetBlur("絵演窓上/絵立絵", true, 3, 500, 70, false);

	Move("絵演窓上", 0, @0, @128, null, true);

	Request("絵演窓上/絵演背景", Smoothing);
	Request("絵演窓上/絵演背景", Smoothing);

	FadeDelete("絵演窓上/フラ", 1000, false);

	Move("絵演窓上/絵演背景", 600, @-100, @0, Dxl2, false);
	Move("絵演窓上/絵立絵", 600, @-200, @0, Dxl2, false);
	Fade("絵色100", 300, 300, null, false);
	Fade("絵演窓上/絵演背景", 500, 1000, null, false);
	Fade("絵演窓上/絵立絵", 500, 1000, null, true);

	SetFwL("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0200a00">
「鬼に逢うては鬼を斬る。
　仏に逢うては仏を斬る」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――


	CreateTextureEX("絵演窓上/絵立絵2", 16200, -140, -220, "cg/st/resize/st景明_装甲_私服bex.png");
	SetBlur("絵演窓上/絵立絵2", true, 3, 500, 70, false);

	OnSE("se戦闘_攻撃_鎧_剣戟02",1000);
	EffectZoomadd(17000, 600, 100, "cg/ef/ef003_汎用移動.jpg", false);
	FadeF4("絵演窓上/絵立絵2", 200, 1000, 400, 0, 0, Dxl2, true);

//	Wait(300);

	CreatePlainSP("絵板写", 20000);
	Delete("絵演窓*");
	Delete("絵色*");
	StC(1000, @0, @0,"cg/st/st景明_装甲_私服b.png");
	FadeStC(0,true);
	Zoom("絵板写", 300, 2000, 2000, Axl3, false);
	FadeDelete("絵板写", 300, true);
	SetFwL("cg/fw/fw景明_怒りb.png");

//pre分けしました　inc久保田
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0210a00">
「ツルギの理ここに在り」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆装甲
//◆村正ＶＳ虎徹（茶々丸）



	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 15000, "#FFFFFF");

	Fade("絵フラ", 600, 1000, null, true);
	DeleteStA(0,true);

	CreateTextureSP("絵背景100", 10000, Center, Middle, "cg/st/resize/3d村正標準_立ち_通常l.png");
	Move("絵背景100", 0, -563, -669, null, true);

	Move("絵背景100", 3000, -563, -539, null, false);
	Fade("絵フラ", 1000, 0, null, true);

	WaitKey(1000);

	Fade("絵フラ", 300, 1000, null, true);

	Delete("絵背景100");

	DeleteStC(0,false);
	StC(1000, @0, @0,"cg/st/3d村正脇差_立ち_通常.png");
	FadeStC(300,false);
	FadeDelete("絵フラ", 1000, true);

	Wait(500);

	SetFwL("cg/fw/fw茶々丸虎徹_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0220a07">
「……へっへ。
　あては御姫と違って、愛情表現でぶん殴っ
ちゃうようなビョーキは抱えてないけど」

{	FwL("cg/fw/fw茶々丸虎徹_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0230a07">
「やっぱり武人の端くれ、こうして武者姿の
お兄さんを前にすると手合わせしたくなって
はくるね。
　中身はともかく外側はやたら忌々しいしな」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/047vs0240a01">
《……望むところよ。
　高い代償を払わせてあげる》

{	FwL("cg/fw/fw茶々丸虎徹_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0250a07">
「ハ。夜郎自大な屑鉄がァ！」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――


	SetVolume("@mbgm*", 300, 0, null);

	CreateTextureEX("絵背景22", 1000, Center, Middle, "cg/bg/bg105_城門付近内側_02.jpg");

	Request("絵背景22", Smoothing);
	Move("絵背景22", 0, @100, @0, null, false);
	Zoom("絵背景22", 0, 1200, 1200, null, false);
	DeleteStCR(1500,false);
	StCL(1000, @0, @0,"cg/st/3d虎徹_立ち_通常.png");
	FadeStCL(1500,false);
	Fade("絵背景22", 1500, 1000, null, true);
	FadeDelete("@OnBG*", 1500, true);
	SoundPlay("@mbgm09", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　武者として見れば、その容姿は特異であった。

　まず、太刀を携えていない。
　それに代わる刀剣槍棒の類もない。

　有るのは長い爪だった。
　両手の甲から伸びる三本の鋭鋒が、薄暮の光を照り
返して橙色に染まっている。

　あたかも<RUBY text="タイガークロー">虎の前肢</RUBY>。

　至近距離なら刀剣より有効な武装だろう。
　……格闘戦に特化した<RUBY text="タイプ">型</RUBY>か。

　これに対する定法は、敵騎の間合に入らない――
　つまり太刀の間合で勝負を決める事。

　距離の有利を生かして一方的に攻めて勝つ。
　それが最上だ。

　最上だが…………
　
　俺は左手で、自騎の腰を探ってみた。

　そこにある筈の太刀が、今は無い。
　脇差があるきりだ。

　覚悟していた事である。落胆はしなかった。
　ただ、厳しい現実を思う。

　脇差の刀身は短く、これを用いるなら近距離の間合
に踏み込まざるを得ない。
　敵騎の得意な戦場を選ぶしかなくなる。

　村正の主武器であった長大な野太刀、それに代わる
ものだった三尺余の太刀、いずれかでもあればそんな
羽目にならず済んだのだが。
　今となっては無い物ねだりだ。

　どちらも銀星号に奪われてしまった。
　前者は砕かれて〝卵〟の素材にされ。後者は重力の
渦に呑み込まれて消え。

　今や武装はこの脇差しか残されていない。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	CreateTextureEX("絵背景20", 1000, Center, Middle, "cg/bg/bg105_城門付近内側_02.jpg");

	Request("絵背景20", Smoothing);
	Move("絵背景20", 0, @-100, @0, null, false);
	Zoom("絵背景20", 0, 1200, 1200, null, false);
	DeleteStCL(1500,false);
	StCR(1000, @0, @0,"cg/st/3d村正脇差_立ち_通常.png");
	FadeStCR(1500,false);
	Fade("絵背景20", 1500, 1000, null, true);
	FadeDelete("絵背景22", 1500, true);

	SetFwL("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0260a00">
（分は……悪いな）

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　茶々丸の三本爪に気を払いながら思う。
　数の問題ではなかった。

　先方は<RUBY text="スペック">性能</RUBY>にせよ<RUBY text="スキル">技術</RUBY>にせよ密着戦に適したものを
有しているとみて間違いないだろう。
　反して<RUBY text="こちら">此方</RUBY>はまず俺が脇差の扱いに太刀ほど慣れて
おらず、騎体も小型武器の運用を目的としていない。

　村正は劒冑として<RUBY text="オーソドックス">正統派</RUBY>であり、重量のある刀剣を
空中又は地上で扱うという想定のもと性能設定がなさ
れている。
　至近距離戦闘では本来の性能を発揮できないのだ。

　不利な要因は他にもある。

　村正の武装が見えていない筈はない。にも関わらず
茶々丸は動かず、様子を窺っている。
　警戒心からそうしているのでない事は明らかだ。

　現状、茶々丸はあえて攻め出る必要がない。
　茶々丸の目的は俺をこの場に足止めしておくだけで
達せられるのである。

　その理を返せば俺の勝利条件になる。
　俺は必ずしも茶々丸を倒す必要はないが、とにかく
一秒でも早く突破して天守閣へ向かわねばならない。

　このまま時間が過ぎ去れば、鎬を削るまでもなく、
茶々丸の勝利と俺の敗北が決する。
　
　鍛造雷弾の投下によって。

　従って俺は戦術的に不利な上、戦略的理由から持久
策を選べないのだった。
　不得手を承知で至近戦闘の領域へ自ら攻め込まねば
ならない。

　戦う前から半分負けていると言っても過言ではない
だろう。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――


	SetFwL("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0270a00">
（だが……）

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	StCR(1000,@0,@0,"cg/st/3d村正脇差_立ち_戦闘.png");
	Wait(200);
	OnSE("se戦闘_動作_刀構え01",1000);
	FadeStCR(500,true);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　不利なら不利なりに<RUBY text="・・・・">やりよう</RUBY>のあるのが、武芸武術
というものだ。

　俺は右手で脇差を抜き、先端を対手へ向けて腰溜め
に構えた。
　同時、左手と左足は軽く前へ出して、半身の体勢と
なる。

　吉野御流合戦礼法小太刀術、逆脇の構。
　
　吉野御流の小太刀は得物を前へ出し主として防御に
用いるが正形だが、この構はその逆をゆく。

　<RUBY text="から">空</RUBY>の左手を捨て身の防御とし、敵にこれを斬らせて
右手の小太刀で突き殺す。
　一撃勝負、肉を斬らせて骨を断つの型である。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw茶々丸虎徹_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0280a07">
「なるほどねェ……」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景21", 1000, Center, Middle, "cg/bg/bg105_城門付近内側_02.jpg");

	Request("絵背景21", Smoothing);
	Move("絵背景21", 0, @100, @0, null, false);
	Zoom("絵背景21", 0, 1200, 1200, null, false);
	DeleteStCR(1500,false);

	StCL(1000, @0, @0,"cg/st/3d虎徹_立ち_通常.png");

	FadeStCL(1500,false);
	Fade("絵背景21", 1500, 1000, null, true);
	FadeDelete("絵背景20", 0, true);


	StC(1000,@-250,@0,"cg/st/3d虎徹_立ち_戦闘.png");
	Rotate("@StC*", 0, @0, 180, @0, null,true);

	OnSE("se戦闘_動作_刀構え03",1000);
	DeleteStCL(300,false);
	FadeStC(300,true);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　茶々丸は俺の変化に応じて、ほぼ同じような姿勢を
とった。
　右足を引き、左前半身になる。

　刺突に対して体の正面を広げて立ち向かうのは危険、
半身となって的の面積を減らすべきである。茶々丸の
判断は正しい。
　……だが正しいだけに、それは俺の予測通りだった。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景30", 1000, Center, Middle, "cg/bg/bg105_城門付近内側_02.jpg");

	Request("絵背景30", Smoothing);
	Move("絵背景30", 0, @-100, @0, null, false);
	Zoom("絵背景30", 0, 1200, 1200, null, false);
	Fade("絵背景30", 500, 1000, null, true);
	DeleteStCL(0,false);

	CreateTextureEX("絵ＳＴＣ200", 1100, Center, InBottom, "cg/st/3d村正脇差_立ち_戦闘.png");

	CreateTextureEX("絵村正２", 2100, Center, Middle, "cg/ev/ev504_村正突進.jpg");
	CreateTextureEX("絵村正３", 2000, Center, Middle, "cg/ev/ev504_村正突進.jpg");
	SetBlur("絵村正２", true, 3, 500, 50, false);
	WaitKey(500);

	OnSE("se戦闘_動作_刀構え02",1000);

	Fade("絵ＳＴＣ200", 300, 1000, null,false);

	Wait(300);

	OnSE("se戦闘_動作_空突進03",1000);


	Move("絵村正２", 500, @0, @0, Axl1, false);
	Wait(350);
	Shake("絵村正２", 100000, 0, 1, 0, 0, 500, null, false);
	Fade("絵村正３", 500, 1000, null, false);
	Fade("絵村正２", 500, 1000, null, false);

	FadeDelete("@OnBG*", 0, false);
	FadeDelete("絵背景20", 0, false);
	FadeDelete("絵ＳＴＣ*", 0, false);



	SetFwL("cg/fw/fw景明_警戒.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0290a00">
「しッ――」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　短く息を放ちつつ、前方へ踏み出す。
　合わせて左手も大きく伸ばす。

　軽く握り込んでいた拳を全開に広げ、相手の顔面を
覆うようにしながら。
　
　――――<RUBY text="コノハガクレ">木ノ葉隠れ</RUBY>

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw茶々丸虎徹_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0300a07">
「!!」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　視界を塞がれた茶々丸が一瞬の十分の一ほどの時間、
思案する――肌に伝わる呼吸でわかる。
　俺の小太刀が右から出るか下からゆくか、それとも
正面からか、この刹那は判断材料が無い。

　一瞬を待てば見切れるが、その一瞬を待てば避ける
のは無理となる。
　
　――茶々丸は結局、無難な決断をした。

　左手の爪で前面に盾を作り、かつ後方に退避する。
　こうしておけば、<RUBY text="カウンター">逆撃</RUBY>の手は失うが、俺の小太刀が
どの角度から襲おうと防ぎ切れる。軽く刺される事は
あっても致命傷とはなり得ない。

　……但し。
　俺が素直に突いていればの話だ。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_動作_突進01",1000);
	CreateTextureEX("ido", 15000, @0, @0, "cg/ef/ef002_汎用移動.jpg");
	Zoom("ido", 0, 1500, 1500, null, true);
	Fade("ido", 400, 1000, null, true);
	Zoom("ido", 150, 1000, 1000, DxlAuto, false);
	FadeDelete("絵村正*", 0, true);

	SetFwL("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0310a00">
（あと半歩！）

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――



	CreateTextureEX("もん", 1001, @0, @0, "cg/bg/bg105_城門付近内側_02.jpg");
	CreateTextureEX("絵ＳＴＣ100", 6000, @500, InBottom, "cg/st/3d虎徹_立ち_戦闘.png");
	CreateTextureEX("絵ＳＴＣ200", 7000, Center, InBottom, "cg/st/3d村正標準_騎航_通常3a.png");
	CreateColorEX("ぼかしろ", 6500, "BLACK");
	CreateTextureEX("まえ", 10000, @0, @0, "cg/ef/ef003_汎用移動.jpg");

	SetShade("絵ＳＴＣ100", EXTRALIGHT);
	SetShade("もん", LIGHT);

	Zoom("絵ＳＴＣ200", 0, 2000, 2000, null, true);
	Move("絵ＳＴＣ200", 0, @-900, @900, Axl1, true);
	SetBlur("絵ＳＴＣ200", true, 5, 200, 100, false);

	Fade("絵ＳＴＣ100", 0, 1000, null, false);
	Fade("もん", 0, 1000, null, false);
	Fade("ぼかしろ", 0, 100, null, true);
	FadeDelete("ido", 300, true);


	Move("絵ＳＴＣ200", 200, @600, @-300, Dxl1, false);
	Fade("絵ＳＴＣ200", 200, 1000, Dxl1, false);


	Request("もん", Smoothing);
	Request("絵ＳＴＣ100", Smoothing);
	Fade("まえ", 400, 1000, null, false);
	OnSE("se戦闘_動作_空突進01",1000);
	Zoom("もん", 400, 2000, 2000, Dxl1, false);
	Move("もん", 400, @100, @0, Axl1, false);
	Zoom("絵ＳＴＣ100", 400, 1500, 1500, Dxl2, false);
	Move("絵ＳＴＣ100", 100, @-100, @0, Dxl2, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　相手の後退に合わせて――想定通りなのだから苦は
ない――足の踏み出しを延長する。
　茶々丸を逃さず間合に捉え続ける。

　小太刀は、
　刺突の軌道を<k>変化。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆刺突ＣＧ→斜め斬りＣＧ
	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");
	Delete("上背景");

	OnSE("se戦闘_攻撃_刀振る05",1000);
	CreateTextureEXadd("絵演上", 18010, Center, Middle, "cg/ef/ef017_汎用正面軌道.jpg");

	Move("絵演上", 500, @0, @-576, Dxl2, false);
	Zoom("絵演上", 500, 200, 2000, Dxl2, false);
	Fade("絵演上", 100, 1000, null, false);
	Wait(300);
	OnSE("se戦闘_攻撃_刀振る01",1000);
	CreateTextureSPadd("絵演", 18011, Center, Middle, "cg/ef/ef010_汎用斜め軌道.jpg");
	DrawTransition("絵演", 50, 0, 1000, 100, null, "cg/data/beam_02_00_0.png", true);

	Delete("絵演上");

//	DrawDelete("絵演", 150, 100, "beam_02_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　斜め上から叩きつける、斬撃へと変える。
　狙いは首筋。

　木ノ葉隠れでまず裏をかき、刺突から斬撃への切り
替えで裏の裏。
　余程の練達者でなくば、読み切るのは難しかろう。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateTextureEXadd("とん", 10000, @0, @0, "cg/ef/ef042_汎用打撃.jpg");
	OnSE("se戦闘_攻撃_剣戟弾く03",1000);
	Fade("とん", 300, 1000, null, false);


	SetFwL("cg/fw/fw茶々丸虎徹_歯噛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0320a07">
「――――」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――


	CreateTextureEX("もん", 1001, @0, @0, "cg/bg/bg105_城門付近内側_02.jpg");
	Fade("もん", 1000, 1000, null, false);

	CreateTextureEX("絵ＳＴＣ100", 1500, 100, InBottom, "cg/st/3d虎徹_立ち_戦闘.png");
	Move("絵ＳＴＣ100", 1200, @50, @0, Dxl2, false);
	SetBlur("絵ＳＴＣ100", true, 2, 200, 100, false);

	OnSE("se人体_動作_跳躍01",1000);
	Fade("絵ＳＴＣ100", 1000, 1000, null, false);
	FadeDelete("黒", 1000, false);
	FadeDelete("とん", 1000, false);
	DrawTransition("絵演", 300, 1000, 0, 100, null, "cg/data/beam_02_00_1.png", false);
	FadeDelete("絵演*", 1000, true);
	Move("絵ＳＴＣ100", 200, @-200, @0, Dxl3, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　しかし足利茶々丸は……
　恐ろしい事に、その練達者である。

　その齢でどれ程の実戦経験を積んでそうなったのか。
　俺の攻撃変化に動揺すら見せない。あくまで平静な
まま適切な対処を続行している。

　刺突への盾に動かしてしまったのは片手だけ。
　もう一方の鉄爪で、狙われた首を防御する。

　……完璧だった。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0330a00">
（完璧に）

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵黒幕１", 2000, "Black");
	Fade("絵黒幕１", 1000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　<RUBY text="・・">俺の</RUBY>狙い通りだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆斜め斬りアニメ

	OnSE("se戦闘_攻撃_刀振る01",1000);
	SL_leftdown(@0, @0,1000);
	SL_leftdownfade2(10);

	WaitKey(500);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　裏の裏の、もう一つ裏。
　防御のためにかざされた爪を目掛けて、俺は小太刀
を打ち下ろす。

　茶々丸を無用に傷付ける意図はなかった。
　そうしたくない理由は幾つもあるが、最たるものは、
<RUBY text="・・・・・・・・・">関わりを持ち過ぎた</RUBY>という事だ……それが精神汚染を
受けている間の話であっても、記憶は拭えない。

　無力化するのみで充分なのだ。
　だから、武器である爪を狙う。

　俺が首を狙っていて爪に防がれたのなら、弾かれる
だけで終わりだろう。
　だが、最初から<RUBY text="ヒッティングポイント">打突標点</RUBY>をそこに現れる爪に据えて
いたのなら――<k>力ずくで叩き折れる！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆激突音。がちーん。
//◆小ウェイト

	SetVolume("@mbgm*", 1000, 0, null);

	OnSE("se戦闘_攻撃_剣戟弾く02", 1000);
	CreateTextureEXadd("とん", 10000, @0, @0, "cg/ef/ef042_汎用打撃.jpg");
	Fade("とん", 100, 1000, null, true);
	Fade("とん", 300, 0, null, false);
	WaitKey(1000);

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0340a00">
「…………」

{	FwC("cg/fw/fw茶々丸虎徹_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0350a07">
「……あ。
　<RUBY text="・・・・">やっぱり</RUBY>ね」

{	FwC("cg/fw/fw茶々丸虎徹_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0360a07">
「そうすると思ったよ。
　お兄さん、優しいから」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0370a00">
「――ッッ!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	SoundPlay("@mbgm08", 0, 1000, true);
	Zoom("もん", 0, 1300, 1300, null, true);

	CreateColorSP("絵色黒大幕", 19000, "#000000");

//あきゅん「演出：ここのシーンのＥＶです。位置は仮ですので演出に合わせて調整して下さい」
//鉄爪アップから全体表示のイメージで組んでみました。部材到着後位置あわせが必須です。inc久保田
	CreateTextureEX("絵ＥＶ", 4000, Center, Middle, "cg/ev/ev232_村正ＶＳ茶々丸１.jpg");
	CreateTextureSP("絵ＥＶ大", 4000, @150, Middle, "cg/ev/resize/ev232_村正ＶＳ茶々丸１l.jpg");

	Request("絵Ｅ*", Smoothing);

	Zoom("絵ＥＶ大", 0, 2000, 2000, null, true);
	SetBlur("絵ＥＶ大", true, 2, 200, 100, false);

	Delete("絵黒幕１");


	FadeDelete("絵色黒大幕", 500, true);
	Wait(300);

	Move("絵ＥＶ大", 700, -512, @0, Dxl2, false);
	Zoom("絵ＥＶ大", 700, 500, 500, Dxl2, true);
	Fade("絵ＥＶ", 0, 1000, null, true);
	FadeDelete("絵ＥＶ大", 700, false);


/*
	MyLife_Count(500,720);
	MyTr_Count(500,300);
	CP_HighChange2(500,3,null,false);
	CP_SpeedChange2(500,0,null,false);
	Cockpit_AllFade2();
*/



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　折れて、<k>……いない？

　俺の小太刀が、茶々丸の鉄爪――
　
　爪と爪の間に絡め取られている。

　接着されたように、<RUBY text="・・">びく</RUBY>とも動かない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0380a00">
（十手術……!?）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　読み切られた。
　こちらが。

　裏の裏の裏を狙い、更にその裏をゆかれた！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸虎徹_悪戯.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0390a07">
「<RUBY text="ライガー">雷虎</RUBY>流<RUBY text="ソードブレイカー">刀剣破壊</RUBY>。
　いま開眼していま命名!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆びき
//	Fade("絵ＳＴＣ100", 300, 0, null, true);
	OnSE("se特殊_鎧_ひび割れ01", 1000);
	CreateColorSPadd("絵フラ", 20000, "#FFFFFF");
	Fade("絵フラ", 100, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　茶々丸が捕獲した小太刀に体重を掛ける。
　刀身から不穏な悲鳴が聴こえてきた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/047vs0400a01">
《ちょっ――》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0410a00">
（不味い）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　折るどころか、こちらの武器が折られる！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵ＥＶコックより上", 18900, @0, @0, "cg/bg/bg105_城門付近内側_02.jpg");
	Fade("絵ＥＶコックより上", 300, 1000, null, false);

//◆小太刀、飛ぶ
	OnSE("se戦闘_攻撃_小太刀投擲", 1000);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　瞬時の判断で、俺は柄から手を離した。
　負荷の一方を失い、小太刀が明後日の方角へ飛んで
ゆく。

{	OnSE("se戦闘_動作_脇差落ちる", 1000);}
　武器を奪われた事には変わりないが、後で取り戻す
機会があるだけこの方がましだ。
　
　が……これも茶々丸の想定内だったのだろう。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//	CreateTextureSP("絵ＥＶコックより上", 20000, Center, Middle, "cg/ev/ev232_村正ＶＳ茶々丸１.jpg");

	Move("絵ＳＴＣ100", 0, 355, -75, null, true);

	MyLife_Count(0,720);
	CP_IHPChange(0,10,null,false);
	CP_PowerChange(0,1000,null,false);

	CP_SpeedChange2(0,0,null,false);
	MyTr_Count(0,300);

	CP_HighChange2(0,3,null,false);
	CP_AziChange(0,45,null,false);
	CP_AltChange(0,0,null,false);

	Delete("絵ＥＶ大");
	Delete("絵ＥＶ");

	Cockpit_AllFade2();
	FadeDelete("絵ＥＶ*", 300, false);

	Fade("絵ＳＴＣ100", 300, 1000, null, true);
	OnSE("se人体_動作_後ずさり01",1000);

	Request("もん", Smoothing);
	Request("絵ＳＴＣ100", Smoothing);

	Move("もん", 300, @0, @-50, null, false);
	Move("絵ＳＴＣ100", 300, 56, 5, Dxl2, false);

	Zoom("もん", 300, 1600, 1600, null, false);
	Zoom("絵ＳＴＣ100", 300, 1500, 1500, Dxl2, true);

//pre分けしました。inc久保田

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0411]
　体勢を崩す事なく、間を取る事もなく即座、茶々丸
が低い姿勢から一歩踏み込む。
　右手を掌打の形にしながら――俺の<RUBY text="みぞおち">水月</RUBY>を狙い。

　打ち抜く。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆打撃音。鈍い
//あきゅん「ＣＰ：ＤＭＧ演出入れました。」

	OnSE("se戦闘_攻撃_鎧_打撃02", 1000);

	CreateTextureEXadd("がひっ", 2001, @0, @0, "cg/ef/ef040_汎用衝突.jpg");
	CreatePlainEX("絵ブラー１", 2000);

	Request("がひっ", Smoothing);
	Request("絵ブラー１", Smoothing);

	SetBlur("絵ブラー１", 8, true, 400, 200);

	Fade("絵ブラー１", 0, 500, Dxl1, true);
	Zoom("もん", 100, 1250, 1250, null, false);
	Zoom("絵ブラー１", 100, 1300, 1300, Dxl1, false);
	Fade("絵ブラー１", 100, 1000, null, true);
	Fade("絵ブラー１", 100, 0, null, false);
	Fade("絵ＳＴＣ100", 100, 0, null, false);

	Shake("@CP_Frame", 500, 0, 20, 0, 0, 1000, Dxl2, false);
	MyLife_Count(300,660);

	Fade("がひっ", 0, 1000, null, true);
	Fade("がひっ", 1000, 0, null, false);

	Delete("絵ブラー１");
	Delete("絵ＳＴＣ100");

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0420a00">
「がひっ……！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵ＳＴＣ100", 1500, 0, InBottom, "cg/st/3d虎徹_立ち_戦闘.png");
	Request("絵ＳＴＣ100", Smoothing);

	OnSE("se特殊_鎧_駆動音02", 1000);
	Zoom("絵ＳＴＣ100", 0, 1200, 1200, Dxl2, false);
	Move("絵ＳＴＣ100", 300, @-100, @0, Dxl2, false);
	Fade("絵ＳＴＣ100", 300, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　効いた。
　衝撃は甲鉄を貫通し、しかし背中までは突き抜けて
くれず、体内に残留して内臓を七転八倒させる。

　地獄の苦悶。
　そして腹部打撃の特徴として、頭部打撃と違い意識
を奪うという事がない……意識はむしろ鮮明になり、
苦痛をより明瞭により強烈にする。

　たまらず、俺は体を<RUBY text="・・・">くの字</RUBY>に折り曲げた。
　
　茶々丸の攻め手は更に続く。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Zoom("絵ＳＴＣ100", 300, 1500, 1500, Dxl1, false);
	Fade("絵ＳＴＣ100", 300, 1000, Dxl1, false);
	Wait(100);
	OnSE("se人体_足音_鎧歩く03",1000);
	OnSE("se特殊_鎧_駆動音01", 1000);
	SetBlur("絵ＳＴＣ100", true, 5, 200, 100, false);
	Move("絵ＳＴＣ100", 200, @-300, @200, Dxl1, false);
	Zoom("絵ＳＴＣ100", 200, 2500, 2500, Dxl1, false);
	Fade("絵ＳＴＣ100", 200, 0, null, false);
	WaitKey(1000);
	Shake("もん", 100, 0, 15, 0, 0, 500, null, false);

//preわけしました。
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0431]
　打ち込んだ掌を支点に運動。
　硬直状態にある俺の背後へ回りつつ、腋下から両手
を差し込み、首の後ろで<RUBY text="ロック">固定</RUBY>……

　肩と首の自由が全く利かなくなる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	Shake("もん", 5000, 1, 1, 0, 0, 500, null, false);
	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0430a00">
（巧い）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵ＥＶこっくよりうえ", 20000, Center, Middle, "cg/ev/ev233_村正ＶＳ茶々丸２_a.jpg");

	Zoom("絵ＥＶこっくよりうえ", 0, 2000, 2000, null, true);
	SetBlur("絵ＥＶこっくよりうえ", true, 2, 300, 100, false);

	OnSE("se戦闘_攻撃_鎧攻撃命中",1000);


	Zoom("絵ＥＶこっくよりうえ", 500, 1000, 1000, Dxl2, false);
	Fade("絵ＥＶこっくよりうえ", 500, 1000, null, true);

	Cockpit_AllFade0();
	CreateTextureSP("絵ＥＶ", 4000, Center, Middle, "cg/ev/ev233_村正ＶＳ茶々丸２_a.jpg");
	Delete("絵ＥＶこっくよりうえ");
	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　流水よりも滑らかな<RUBY text="コンボ">連携技</RUBY>。
　茶々丸が体術に熟達しているのは知っていたつもり
だったが、ここまでとは思わなかった。

　当事者の立場も忘れ、感嘆する。
　
　その半瞬後には呼吸困難に陥り、そんな余裕もなく
なった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆茶々丸フルネルソン。両足は腰に巻く
//あきゅん「演出：ここのシーンのＥＶです。位置は仮ですので演出に合わせて調整して下さい」
	CreateTextureEX("絵ＥＶ揺らし", 4000, Center, Middle, "cg/ev/ev233_村正ＶＳ茶々丸２_a.jpg");
	Fade("絵ＥＶ揺らし", 500, 1000, null, true);

	OnSE("se人体_体_骨軋む01", 1000);
	OnSE("se戦闘_攻撃_鎧_絞める01", 1000);
	OnSE("se戦闘_攻撃_鎧_絞める01", 1000);
	Shake("絵ＥＶ揺らし", 300, 0, 30, 0, 0, 500, Dxl3, true);

	Shake("絵ＥＶ揺らし", 10000000, 0, 1, 0, 0, 1000, null, false);

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0440a00">
「かは……ッ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　――――<RUBY text="フル・ネルソン">羽交絞め</RUBY>!?

　単純と言えば単純な首関節技。
　しかし、<RUBY text="き">極</RUBY>まれば凶悪な事この上ない。

　腕はまるで動かず、反撃はおろか脱出の役にも立た
なかった。
　首は……顎が喉に埋まりそうなほど、前へ押し曲げ
られている。

　茶々丸の腕力は猛獣のそれさながら。やはり組打に
適した騎体性能であるためなのか。
　窒息死を待つまでもなく、頚骨をへし折られそうで
あった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸虎徹_悪戯.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0450a07">
「おとなしくしててね。
　殺したくないって思ってるのは、お兄さん
だけじゃないんだ」

{	FwC("cg/fw/fw茶々丸虎徹_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0460a07">
「……暴れたらだめ。
　ほんと折れるよ？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/047vs0470a01">
《くっ……屈辱……！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　村正が歯軋りじみた金打声を上げる。
　感じているのは心理的な苦しみばかりではあるまい。
甲鉄にもかなりの負荷が掛かっている筈だ。

　茶々丸にその気が無いのなら、この状態が俺と劒冑
の死に直結する事はあるまいが……。
　敗北には直結する。

　動けないのでは、鍛造雷弾の阻止ができない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw茶々丸虎徹_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0480a07">
「予定とはちょっと違うけど。
　このまま待とうか、お兄さん」

{	FwC("cg/fw/fw茶々丸虎徹_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0490a07">
「サブミッションを極められながら神の出現
と世界の終わりを迎えるってのも、なかなか
乙なもんでしょ？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/047vs0500a01">
《そんなのを乙だとか洒落だとかいう文化は
大和六十六州に存在しません絶対にっ!!》

{	FwC("cg/fw/fw茶々丸虎徹_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0510a07">
「おめーにゃ訊いてねー。
　お兄さんは満更でもないって様子で黙って
頷いてるだろ？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/047vs0520a01">
《息ができないだけよっ!!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
　村正が俺の意見を代弁してくれるのは有難かったが、
この情勢を覆す契機にはなりそうもなかった。
　軽口を叩き油断しているようでいて、茶々丸の筋力
は少しの緩みも見せない。

　力でも技でも脱出は無理だ。
　この形勢から抜けるには、それを超えた<RUBY text="・">術</RUBY>が要る。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0530a00">
「――――」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/047vs0540a01">
《――――》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
　俺と村正の思考は全く一致した。
　言語を交わさず、そうと理解する。

　呼吸を調整。
　この状態で、それは楽な事ではなかったが……心肺
を制御し、熱量の一点集積を達成する。

　その熱量を村正が確保。
　変換。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateSE("SE01","se特殊_陰義_発動04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵フラ", 15000, "#FFFFFF");
	Fade("絵フラ", 600, 600, null, true);
	WaitKey(100);
	FadeDelete("絵フラ", 600, false);


	SetFwC("cg/fw/fw茶々丸虎徹_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0550a07">
「お？」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0560a00">
「……<RUBY text="エンチャント">磁気鍍装</RUBY>！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
　何かを察したか、茶々丸が身じろぎする。
　だがもう遅い――<RUBY text="かす">擦</RUBY>れ声の<RUBY text="コマンド">呪句</RUBY>によって術は完成、
発動した。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆帯電
//あきゅん「演出：ここのシーンのＥＶです。位置は仮ですので演出に合わせて調整して下さい」

	CreateColorSPadd("絵フラ", 15000, "BLUE");
	SetVolume("SE*", 100, 0, null);
	CreateSE("SE02","se特殊_電撃_放電02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	WaitKey(1000);

	Fade("絵フラ", 0, 1000, null, true);
	CreateTextureEX("絵ＥＶ", 4000, Center, Middle, "cg/ev/ev233_村正ＶＳ茶々丸２_b.jpg");
	CreateTextureEX("絵ＥＶぶらーよう", 4000, Center, Middle, "cg/ev/ev233_村正ＶＳ茶々丸２_b.jpg");
	SetBlur("絵演上2", true, 2, 500, 60, true);

	CreateColorSPadd("絵フラ", 15000, "BLUE");
	Fade("絵ＥＶ", 100, 1000, null, false);
	Fade("絵ＥＶぶらーよう", 100, 1000, null, false);
	Zoom("絵ＥＶぶらーよう", 600, 1200, 1200, null, false);

	Wait(150);
	FadeDelete("絵フラ", 600, false);
	FadeDelete("絵ＥＶぶらーよう", 600, false);

	SetVolume("SE*", 1000, 0, null);
	CreateSE("SE01","se特殊_電撃_帯電01");
	MusicStart("SE01",0,1000,0,1000,null,false);


	CreateTextureEXadd("ばちばち", 5000, @0, @0, "cg/ef/ef030_汎用電磁抜刀a.jpg");
	CreateColorEXadd("絵フラ", 15000, "#00ffff");
	Shake("ばちばち", 50000, 3, 3, 0, 0, 1000, null, false);
	Fade("ばちばち", 500, 100, null, false);
	Fade("絵フラ", 10000, 500, null, false);
	WaitKey(10);
//	FadeDelete("絵フラ", 600, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
　本来は防御に用いる陰義の応用。
　自騎と敵騎に磁気を付与――相互に反発するよう。

　反発力は瞬間的ながら激しい。
　単なる力や技だけでは無理でも、この理外の加勢を
利用すれば……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸虎徹_落胆.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0570a07">
「無茶しない無茶しない。
　一歩間違えたら自爆だよ、それ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆別のエネルギー発生
//◆相殺。元に戻る。

	SetVolume("SE*", 100, 0, null);
	CreateSE("SE01","se特殊_電撃_放電02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("うちけし", 15000, "#ff00ff");
	EffectZoomadd(16000, 1000, 100, "cg/ev/ev233_村正ＶＳ茶々丸２_a.jpg", false);


	Fade("うちけし", 0, 500, null, true);
	Wait(500);
	CreateColorEXadd("絵フラ", 15000, "#FFFFFF");
	Fade("絵フラ", 0, 1000, null, true);
	CreateTextureEX("もどる", 4000, Center, Middle, "cg/ev/ev233_村正ＶＳ茶々丸２_a.jpg");
	Fade("もどる", 0, 1000, null, true);
	FadeDelete("絵ＥＶ", 600, false);
	FadeDelete("絵フラ", 600, false);
	FadeDelete("うちけし", 600, false);
	FadeDelete("ばちばち", 600, false);

	Wait(500);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0580a00">
「何……!?」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/047vs0590a01">
《――どうしてっ!?》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
　磁気が……消された？

　いや、相殺されたのか!?
　反発を目的とした磁力が、吸着を目的とした磁力に
上書きされて――無効化した……？

　いや、馬鹿な！
　何故茶々丸にそんな真似ができる！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/047vs0600a01">
《……嘘よ。
　だって、この力は》

{	FwC("cg/fw/fw茶々丸虎徹_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0610a07">
「あぁそうだ。
　おめーの力だよ、村正」

{	FwC("cg/fw/fw茶々丸虎徹_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0620a07">
「沽券に関わるから、あんまり使いたくない
んだけどなぁー」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/047vs0630a01">
《どうして貴方が!?》

{	FwC("cg/fw/fw茶々丸虎徹_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0640a07">
「にっひっひ。
　あては風魔の<RUBY text="ばけおおかみ">化狼</RUBY>や殺人<RUBY text="マニア">嗜好</RUBY>の青江なんか
とは一味二味違うってーことですよーだ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/047vs0650a01">
《…………え？》

{	FwC("cg/fw/fw茶々丸虎徹_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0660a07">
「さぁお兄さん、もう手は尽きたかな。
　危ない真似はこれっきりにしてねー」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
　心持ち、茶々丸の締め上げてくる力が増す。
　気道は更に狭まり、呼吸状態が悪化した。

　これでは最早、陰義は練れない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0670a00">
（……どうする……!?）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
　余計な疑問は追いやり、考えるべき事のみを考える。
　しかし、答は出せなかった。

　打つ手無し。

　<RUBY text="フル・ネルソン">羽交絞め</RUBY>の解除法も存在すると聞いた事はある。
　だが俺は詳細を知らないし、今からその道の達人に
教えを乞いに行くわけにもいかない。

　外すのは無理だ。
　
　無理だ、と――諦めるしかないのか？

　諦めて良いのか？

　脱出できなければ、鍛造雷弾はやがて落ちるだろう。
　それで神なるモノが現れるかどうかはわからないが、
間違いなく膨大な数の死者は出る。

　下手をすれば、過去の銀星号事件の被害者が<RUBY text="・・">端数</RUBY>に
思える程の――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0680a00">
（それでは）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
　何の為に。

　何の為に、俺は精神汚染を脱したのか？
　何の為に、村正は俺を精神汚染から救ったのか？

　無為。

　幾多の人を犠牲にしてきた俺が、
　その犠牲の意味を守る道から半ばで脱落する――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0690a00">
（……村正！）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/047vs0700a01">
《何か手立て？》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0710a00">
（ああ。
　左腕の甲鉄を外せ）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/047vs0720a01">
《……え？》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0730a00">
（部分除装だ。
　できるだろう？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/047vs0740a01">
《できるけど……
　でも、そんな事をしたら》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0750a00">
（<RUBY text="・・・・・">脱出できる</RUBY>。
　要点は、そこだけだ）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/047vs0760a01">
《…………》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0770a00">
（今はそれだけでいい）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/047vs0780a01">
《……わかった》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670]
　更なる異議は呈さず、劒冑が首肯の意思を寄越す。
　当然だ――村正は<RUBY text="・・">道理</RUBY>のわからぬ奴ではない。

　俺はその一瞬に備えた。
　力を抜き、気は強く張る。

　意識を失うような事になっては笑えない。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorEX("黒幕１", 19000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	Delete("上背景");

	CreateTextureEX("もんもん", 1001, @0, @0, "cg/bg/bg105_城門付近内側_02.jpg");

	Request("もんもん", Smoothing);

	Zoom("もんもん", 400, 1800, 1800, Dxl1, false);
	Fade("もんもん", 1000, 1000, null, false);

	SetFwC("cg/fw/fw茶々丸虎徹_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0790a07">
「……？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/047vs0800a01">
《御堂！》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/047vs0810a00">
「<RUBY text="うむ">肯</RUBY>――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆部分除装
//◆ごき。関節外れ
//◆イメージとして血ＣＧ？
	SetVolume("@mbgm*", 1000, 0, null);

	FadeDelete("絵ＥＶ",0,false);
	FadeDelete("黒幕１",500,true);

	WaitKey(1000);

	OnSE("se特殊_鎧_装着01", 1000);
	CreateColorEXadd("絵フラ", 15000, "#FFFFFF");
	Fade("絵フラ", 0, 1000, null, false);
	Fade("絵フラ", 100, 0, null, false);
	WaitKey(400);
	CreateTextureEX("かたがはずれる", 1500, @0, @0, "cg/ef/ef006_汎用血しぶき.jpg");
	OnSE("se人体_体_骨軋む03", 1000);
	Shake("もんもん", 100, 25, 25, 0, 0, 1000, null, false);
	Move("もんもん", 1000, -50, 0, Dxl3, false);
//	Rotate("もんもん", 100, @0, @0, @-30, Axl3, true);
	Fade("絵フラ", 100, 1000, null, false);
	Fade("かたがはずれる", 100, 1000, Dxl1, true);
	Fade("絵フラ", 100, 0, null, false);

	Delete("もんもん");
//	Fade("かたがはずれる", 100, 0, null, false);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0690]
　村正が左腕甲鉄を解除する。
　次の瞬間、俺の左肩は鈍い音を立てて<RUBY text="・・・">外れた</RUBY>。

　……何の不思議もない事である。
　敵騎の剛腕で押し込まれていたその関節から、急に
甲鉄の支えが失われ脆弱な生の肉体のみとなれば――
ひとたまりもなく折れて当たり前。

　痛覚を電撃が駆け抜ける。
　思考の全てが吹き飛びそうになった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸虎徹_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0700]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/047vs0820a07">
「ふえっ!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]
　流石に茶々丸も驚いたらしい。
　唖然たる吐息が首筋に触れる。

　好機だった。
　左腕が折れたために、羽交絞めは緩んでいる。脱出
するなら今しかない。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateTextureEX("絵背景100", 10000, Center, Middle, "cg/bg/bg105_城門付近内側_02.jpg");
	Request("絵背景100", Smoothing);
	Zoom("絵背景100", 0, 2000, 2000, null, true);

	OnSE("se戦闘_攻撃_殴る01",1000);
	OnSE("se戦闘_動作_空突進02",1000);
	Zoom("絵背景100", 400, 1100, 1100, Dxl2, false);
	Fade("絵背景100", 200, 1000, null, true);

	Wait(200);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0691]
　岩石を噛み砕くように奥歯を打ち合わせ、瞬間的に
苦痛を忘却――
　俺は力任せに茶々丸を振り解き、その場から跳んで
離れた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


}

..//ジャンプ指定
//次ファイル　"md04_048vs.nss"