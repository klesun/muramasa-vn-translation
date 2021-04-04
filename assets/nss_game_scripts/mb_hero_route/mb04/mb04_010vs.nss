//<continuation number="100">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_010vs.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/mb04_010vs.nss","TurboBlur",true);
	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼イベントＣＧ
	#bg002_空a_02=true;
	#ev901_銀星号天座失墜小彗星_a=true;
	#ev504_村正突進=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb04_011vs.nss";

}

scene mb04_010vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb04_009.nss"

//◆ＢＧＭ
//◆決戦
	SoundPlay("@mbgm11",0,1000,true);
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");

	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/010vs0010a00">
《光ゥゥゥゥ!!》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆ばひゅーん。天へ疾駆
	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	CreateTextureSPadd("絵演上", 3100, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	CreateTextureSP("絵演", 3000, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	Zoom("絵演上", 0, 1300, 1300, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 1000, 0, 10, 0, 0, 1000, Dxl3, false);

	Move("絵演*", 150, -615, @0, Dxl2, false);

	DrawDelete("絵黒幕", 150, 100, "slide_01_03_1", true);

	FadeDelete("絵演上", 200, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　世界は二元化した。
　有意味と無意味。その二極へ。

　意味有るものは天頂の敵影。
　意味無きものは他のすべて。

　情報が取捨され思考が削摩される。
　湊斗景明なるものの人間要素が<RUBY text="・・・・">ぼろぼろ</RUBY>と崩れゆく
音を聴く。

　知性は逆走する。
　理性は迷走する。
　感性は奔走する。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg002_空a_02.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);
	FadeDelete("絵暗転", 500, true);

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【光】
<voice name="光" class="光" src="voice/mb04/010vs0020a14">
《雄呼――――》

//【光】
<voice name="光" class="光" src="voice/mb04/010vs0030a14">
《来るか――景明!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銀星号、上昇して迎撃準備
	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_1.png", true);

	CreateTextureSPadd("絵演上", 3100, -1024, -190, "cg/ev/resize/ev901_銀星号天座失墜小彗星_al.jpg");
	CreateTextureSP("絵演", 3000, -1024, -190, "cg/ev/resize/ev901_銀星号天座失墜小彗星_al.jpg");
	Zoom("絵演上", 0, 1300, 1300, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 1000, 0, 10, 0, 0, 1000, Dxl3, false);

	Move("絵演*", 150, -650, -400, Dxl2, false);

	DrawDelete("絵黒幕", 150, 100, "slide_01_03_0", true);

	FadeDelete("絵演上", 200, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040a]
　そうして――
　
　思念は惑乱の対極へと向かう。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 18000, "#000000");
	CreateTextureSP("絵演", 17000, -600, -140, "cg/ev/resize/ev504_村正突進l.jpg");
	FadeDelete("上背景", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040b]
　極端な単純化。
　徹底的な整理。

　
　　　　　　　　　　　――殺す。

　目的設定。

　
　　　　　　　　　　――殺す方法。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵暗転", 600, true);
	CreateColorEX("絵色黒幕", 17500, "#000000");
	CreateTextureEX("絵演銀", 17010, -150, -1200, "cg/ef/resize/ef019_銀星号突貫02tll.jpg");
	Rotate("絵演銀", 0, @0, @0, @180, null,true);
	Request("絵演銀", Smoothing);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
　手段の追究。

　……手段。
　敵騎を撃墜し得る方法の最善なるは如何に。

{	Fade("絵演銀", 500, 750, null, false);}
　敵は最速の中の最速を極める銀星号。
　超々高空より閃光と成って降り来たる。

{	FadeDelete("絵演銀", 300, false);}
　入神の域にあるその一撃を上回るには……
　
　術技か。

{	CreateTextureEX("絵演陰義", 17100, Center, Middle, "cg/ef/ef021_汎用陰義発動b.jpg");
	Fade("絵演陰義", 500, 1000, null, false);}
　呼吸を読み間合を測り推定される敵騎の攻撃内容に
対して最も有効な対応術策を用意、敵情を入念に把握
し変化に応じて修正を加えつつ待機のすえ戦機に至ら
ば最高の勝利可能性を最大の努力で実現する……

{	Fade("絵色黒幕", 300, 1000, null, false);
	DrawTransition("絵色黒幕", 300, 0, 1000, 100, DxlAuto, "cg/data/random_01_00_0.png", false);}
　
　　　　　　　　　　　――違う。

　そんな<RUBY text="・・・">屁理屈</RUBY>こそ益体も無い。
　既に思い知らされている。無駄だ。

{	WaitAction("絵色黒幕", null);
	Delete("絵演陰義");
	Fade("絵色黒幕", 300, 0, null, false);}
　どれほど突き詰めた術も技も、あれには無駄なのだ。
　飢えて襲い来た野獣に和平交渉を申し出るに等しい。
全くの無為。全くの徒労。全くの空回りだ。

　<RUBY text="・・・・">ごまかし</RUBY>は通用しない。
　あれに勝つには、純粋に力でもって上回るしかない。

　<RUBY text="アーツ">術技</RUBY>は要らない。
　要るのは<RUBY text="フォース">剛力</RUBY>だ。

{	Fade("絵色黒幕", 300, 1000, null, false);}
　
　　　　　　　　　　　――速度。

　とどのつまりは速度。
　速度なのだ。

{	CreateTextureSP("絵演銀星号", 17100, Center, Middle, "cg/ev/ev901_銀星号天座失墜小彗星_a.jpg");
	FadeDelete("絵色黒幕", 300, false);}
　敵の強さの根源は速度にある。
　これあればこそ敵は一方的に襲い、一撃にて墜とし、
無傷にて勝利する。

　速度だ。

{	FadeDelete("絵演銀星号", 300, false);}
　この優越さえ奪えば勝てる。
　我が彼より速ければ、我こそが一方的に襲い、一撃
にて墜とし、無傷にて勝利できる。

　速度！
　速度！

　その優位を…………強奪するには――――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/010vs0040a00">
「村正ァァァ!!」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/010vs0050a01">
《――――》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　<RUBY text="こたえ">金打声</RUBY>を返すだけの余力が、劒冑には既に無い。
　だが声は届いている。俺の言葉を聴き、続く命令を
待っている。それがわかる。

　残された力の全てを以て、仕手の望みに応えるべく、
村正は待っている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵演", 17000, -600, -140, "cg/ev/resize/ev504_村正突進l.jpg");

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/010vs0060a00">
「<RUBY text="エンチャント・プラス">磁装・正極</RUBY>……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆磁装
	CreateSE("SE01","se戦闘_陰義_磁力展開");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 5000, "#FFFFFF");
	CreateTextureSPmul("絵演陰義", 17100, Center, Middle, "cg/ef/ef021_汎用陰義発動a.jpg");
	CreateTextureEXadd("絵演陰義上", 17110, Center, Middle, "cg/ef/ef021_汎用陰義発動b.jpg");
	FadeDelete("絵色白", 500, false);
	Zoom("絵演陰義上", 500, 1500, 1500, Dxl2, false);
	Fade("絵演陰義上", 250, 1000, null, true);
	Fade("絵演陰義上", 250, 0, DxlAuto, true);
	FadeDelete("絵演陰義", 300, true);

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/010vs0070a00">
「<RUBY text="リニア・アクセル">磁気加速</RUBY>！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	CreateTextureEXadd("絵背景効果線", 17500, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	$効果ナット名 = @絵背景効果線;
	CreateProcess("プロセス１", 150, 0, 0, "TurboBlur");
	SetAlias("プロセス１","プロセス１");



//◆磁気加速
//◆ずぎゅーん。
	CreateSE("SE01a","se特殊_陰義_磁力加速01");
	CreateSE("SE01b","se戦闘_動作_空突進02");
	MusicStart("SE01a",0,1000,0,750,null,false);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreatePlainEXadd("絵板写", 18000);
	CreateTextureEX("絵演振動用", 17010, -600, -140, "cg/ev/resize/ev504_村正突進l.jpg");
	SetBlur("絵演振動用", true, 1, 300, 50, false);

	Request("プロセス１", Start);

	Fade("絵演振動用", 100, 200, null, false);
	Shake("絵演振動用", 360000, 4, 2, 0, 0, 1000, null, false);
	Fade("絵板写", 100, 1000, Dxl2, false);
	Zoom("絵板写", 100, 1250, 1250, null, false);
	Wait(100);
	Zoom("絵板写", 500, 1300, 1300, null, false);
	FadeDelete("絵板写", 400, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　甲鉄が磁化を遂げる。
　その極性は<RUBY text="ＯＳ">村正</RUBY>の統御の下で常に流動するものだ。
同極のそして対極の磁力特性が動作目的に沿って利用
される。

　騎航においてもそれは有効である。
　複雑な運動工程の全てに渡って最適化が施され――
かくして速度は跳ね上がる。

　垂直上昇という最も不利な条件下にあって、屈さず、
速力を増す。
　
　しかし、足りない。

　これではまだ劣る。
　もう一段。

　力を――
　速さを積み重ねなくては、敵に勝てない。

　力!!

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆辰気
//◆黒いエネルギーがうぃーんと出てばちばちっと。
	CreateSE("SE01","se特殊_陰義_発動03");
	CreateSE("SE02","se特殊_陰義_グラビティアクセル準備");
	MusicStart("SE01",0,1000,0,1250,null,false);
	MusicStart("SE02",0,1000,0,800,Axl2,false);
	CreateColorEXadd("絵演色", 18000, "#FFFFFF");
	Fade("絵演色", 100, 1000, null, true);

	Delete("絵演陰義*");

	CreateColorSPadd("絵フラ", 18000, "#660099");
	FadeDelete("絵演色", 200, true);
	Fade("絵フラ", 600, 600, null, true);
	WaitKey(100);
	FadeDelete("絵フラ", 600, false);

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/010vs0080a00">
「<RUBY text="グラビティ・アクセル">辰気加速</RUBY>――！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆エネルギーがばちばちっと。過負荷っぽく
	CreateSE("SE03","se戦闘_陰義_磁力展開");
	MusicStart("SE03",0,1000,0,750,null,false);

	CreateColorEXadd("絵フラ", 18000, "#FFFFFF");

	Shake("絵演振動用", 360000, 6, 4, 0, 0, 1000, null, false);
	SetBlur("絵演振動用", true, 2, 500, 100, false);

	Fade("絵演振動用", 500, 1000, null, false);
	Move("絵演振動用", 6000, -600, -180, DxlAuto, false);
	Zoom("絵演振動用", 1000, 800, 800, DxlAuto, true);
	Zoom("絵演振動用", 5000, 700, 700, DxlAuto, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　力が渦巻く。
　それは荒れ狂う激流だ。

　辰気――重力。
　銀星号の操る<RUBY text="ちから">能力</RUBY>。

　嘗てもこの能力は使ったことがある。
　だがあの時よりも、いま呼び出している力は遥かに
強い。

〝卵〟を介して銀星号から奪ったもの……
　元来が<RUBY text="おれ">村正</RUBY>の能力ではなく、身に過ぎている。

　手綱も無しに悍馬を乗りこなそうとするが如きだ。
　チカラは俺を振り落とそうと躍起になる。悶え暴れ、
あくまで抗う。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/010vs0090a00">
「――ッッ!!」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/010vs0100a01">
《――》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　それでも、制する。
　二人掛かりで。腕ずくで。

　首根を掴んで手繰り寄せ、俺の望む進路へ向ける。
　ともすれば無軌道に暴れたがる力を速度に変える。

　速度。
　俺の求めるものはそれだけだ。

　それだけだから――是が非でも吐き出させる。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆辰気加速
//◆どりゃー。
	SetVolume("SE*", 100, 0, null);
	CreateColorEX("絵色暗転", 18000, "#000000");
	CreateColorEXadd("絵色白", 17600, "#FFFFFF");
	CreateSE("SE04","se戦闘_動作_鎧_合当理吹かし01");
	MusicStart("SE04",0,1000,0,1500,Dxl2,false);
	CreateSE("SE04a","se特殊_陰義_グラビティアクセル加速");
	MusicStart("SE04a",0,1000,0,1000,null,false);
	Fade("絵色白", 600, 1000, null, false);
	Move("絵演振動用", 300, -600, -10, null, false);
	Zoom("絵演振動用", 300, 1500, 1500, DxlAuto, false);
	Wait(200);
	Fade("絵色暗転", 1000, 1000, null, true);
	Delete("絵演振動用");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　何かの壁を越えた。

　俺の周囲から、世界が去ってゆく。
　愛想を尽かした様子で。これ以上は付き合っていら
れない、と吐き捨てて。

　俺は唯一人、虚空に投げ出された。
　
　いや――――まだ、いる。

　もう一人。
　速度の超越によって世界から隔絶した、この虚空に。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

}

..//ジャンプ指定
//次ファイル　"mb04_011vs.nss"

function TurboBlur()
{

	while(1){
	Zoom("$効果ナット名", 0, 1000, 1000, null, true);
	Zoom("$効果ナット名", 100, 2000, 2000, Axl2, false);
	Fade("$効果ナット名", 20, 1000, null, true);
	Fade("$効果ナット名", 80, 0, null, true);
	}

}
