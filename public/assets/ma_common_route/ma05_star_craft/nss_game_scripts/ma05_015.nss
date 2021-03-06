//<continuation number="190">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma05_015.nss_MAIN
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
	#ev128_病床の光_f03=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma05_016.nss";

}

scene ma05_015.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma05_014.nss"

//◆道場
//◆素振り
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg052_湊斗家道場_01.jpg");
	CreateSE("SE01","se戦闘_攻撃_刀振る02");
	FadeBG(0,true);
	Delete("上背景");
	MusicStart("SE01",0,1000,0,900,null,false);
	WaitPlay("SE*", null);
	FadeDelete("絵暗転", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……風を切る響きが、どうにも冴えない。
　腰がいまいち据わらず、刃先に力が乗っていないの
だろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm33",0,1000,true);
	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0150010a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　不調もその理由も、俺は自覚していた。
　諦めて、木刀を下ろす。

　何をしていても、頭は昨日の光景から離れない。

　夢だったのではないかと疑って、今朝目覚めてすぐ
改めて確認した、あの姿から意識を離せない。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆カット挿入。回復した光
	EfRecoIn1(18000,600);
	CreateTextureSP("絵回想", 8000, Center, Middle, "cg/ev/ev128_病床の光_f03.jpg");
	EfRecoIn2(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　光の肉体は蘇生を遂げていた。
　昨日の、あの刹那――――<RUBY text="・・・・・">一瞬にして</RUBY>。

　抜け落ちていた髪も、歯も、
　皮ばかりであった肉も、
　枯れ枝さながらの骨格も。

　全てが瑞々しく再生していた。

　……無論。
　そのような事が、常理の範疇で起こるわけがない。

　あれを成したのは、常理を超えるちから――
　劒冑の力であろう。

　真打の劒冑は<RUBY text="シテ">仕手</RUBY>……使い手の身体能力を飛躍的に
向上させる。
　その中には回復力も含まれる。

　武者は腕を切り落とされても、<RUBY text="・・・・・・">繋いでおけば</RUBY>やがて
元に戻る。
　<RUBY text="・・・・・">生え変わる</RUBY>ことさえあるという。

　光の見せた異常回復も、劒冑の作用とみれば納得が
いく。
　
　だが有り得ない。

　真打劒冑は仕手に装甲されておらずとも、離れ離れ
になっていても、傷の回復を早める程度の真似はする。
　しかしそれは仕手と<RUBY text="く">奇</RUBY>しき<RUBY text="えにし">縁</RUBY>で結ばれていればこそ
の事だ。

　<RUBY text="タテワキ">帯刀の儀</RUBY>と呼ばれる武家古伝の儀礼がある。
　これは武人と劒冑とが対面して互いの資質を問い、
使い手として武器として双方が承認し合う――という
ものである。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　この儀礼を終えて初めて武人と劒冑は合一し、異能
の武者として再誕する。
　こうして結縁した両者の魂は不離一体、万里の距離
にも分かたれることはない。

　光に、その帯刀儀礼ができた筈はないのだ。
　心の砕けた廃人を、どうして劒冑が主と認めようか。

　現に光は<RUBY text="ふ">臥</RUBY>せったままだ。
　身体が回復しても、動き出す様子はない。


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵回想背景", 7999, Center, Middle, "cg/bg/bg054_湊斗家祭殿a_01a.jpg");
	FadeDelete("絵回想", 1000, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
　劒冑の方も同様だ。
　あの後、全員が戸惑いながらも、とにかく祭儀をと
いうことで最後まで執り行い、無事にまた御扉の奥へ
封じたのだが。その間、ぴくりとも動く事はなかった。

　光とあの白銀の劒冑が結縁したとは考えられない。
　
　さりながら、劒冑の力と見るほかない光の超回復。

　こんな話は古今東西、どんな武者伝承にもなかろう。
　少なくとも俺は聞いた覚えがなかった。

　余りにも不可解。
　だからだろう。本来なら躍り上がって喜んでも良い
筈なのに、とてもそんな気分になれないのは。

　養母も同じようなものらしい。
　本家や他のお歴々は、わけはわからないがあるいは
何か<RUBY text="・・・・・・">良からぬこと</RUBY>が起きてしまったのかも――そんな
不安げな面持ちで、昨日は散会していった。

　……本当に。
　あれは、何だったのだろう。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぶん。

	CreateSE("SE01","se戦闘_攻撃_刀振る02");
	MusicStart("SE01",0,1000,0,900,null,false);
	EfRecoOut1(100);
	Delete("絵回想*");

	EfRecoOut2(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　まとわりつく何かを払う思いで最後に一振りくれ、
木刀を仕舞う。
　光の身体が回復した――それは良い。良い事なのだ。

　だが、それに関与したのは劒冑。
　しかも、皆斗家が過去現在未来に渡って封ずるべし
と定められた〝邪しきもの〟だ。

　そこが心に引っ掛かってならない。
　わけもなく気が焦り、胸の動悸が慌しくなる。

{	CreateColorEX("絵黒", 5000, "#000000");
	Fade("絵黒", 3000, 1000, null, false);}
　これは吉事か。
　それとも凶事か。

　未だ、判然としない。
　まるで丁半賭博の、<RUBY text="さい">賽子</RUBY>を隠す壷を見ているような
心地だ。

　賭博であれば、結果は必ず示される。
　出目が勝ち負けを決める。

　これが賭博であるなら……
　果たして、どんな出目が――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆とん。
	CreateSE("SE01","se人体_動作_一歩");
	MusicStart("SE01",0,800,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　ふと、軽い足音を背中に聞いて。<k>
　<RUBY text="はは">養母</RUBY>だろうと、俺は何気もなく振り返った。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆光
//◆ちょっと演出入れるか。
//あきゅん「演出：バストアップここだけやってみるか」

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Delete("絵黒");
	Fade("フラッシュ白",0,1000,null,true);

	CreateCamera("カメラ１", Center, Middle, 250);
	SetAlias("カメラ１","カメラ１");

	CreateTextureSP("カメラ１/絵背景100",500, -709, -338, "cg/bg/resize/bg052_湊斗家道場_01l.jpg");
	CreateTextureEX("カメラ１/絵背景200",500, -709, -338, "cg/bg/resize/bg052_湊斗家道場_01l.jpg");
	SetAlias("カメラ１/絵背景100","絵背景100");
	Request("カメラ１/絵背景100", Smoothing);
	Zoom("カメラ１/絵背景100", 0, 1200, 1200, null, true);
	Zoom("カメラ１/絵背景200", 0, 1200, 1200, null, true);
	SetShade("カメラ１/絵背景200", SEMIHEAVY);

	CreateTextureSP("カメラ１/絵１",600, 173, -658, "cg/st/resize/st光二年前_通常_私服ex.png");
	SetAlias("カメラ１/絵１","絵１");
	Request("カメラ１/絵１", Smoothing);
	Zoom("カメラ１/絵１", 0, 300, 300, null, true);
	Move("カメラ１/絵１", 0, @+50, @+50, null, true);

	SetVolume("@mbgm*", 1000, 0, null);
	FadeDelete("フラッシュ白",1000,false);
	Move("絵背景100", 5000, @0, -586, Dxl1, false);
	Move("絵st100", 5000, @0, -71, Dxl1, true);


//	CreateColorSP("絵黒", 5000, "#000000");
//	Wait(10);
//	StR(1000, @0, @0,"cg/st/st光二年前_通常_私服.png");
//	FadeStR(0,true);
//	DrawDelete("絵黒", 1000, 100, "slide_01_00_1", true);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0150020a00">
「――――――――――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("カメラ１/絵背景200", 3000, 1000, null, false);
	MoveCamera("@カメラ１", 5000, @+450, @0, @+300, Dxl1, true);
	SetShade("カメラ１/絵背景100", HEAVY);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　光がいた。

　午後の、柔らかな日差しを浴びて。
　俺の妹が、そこに佇んでいた。

　一年前までは見慣れていて、<k>
　この一年で遠くなって、<k>
　もう一度見たいと切望しながら、それでも段々と、
ぼやけていってしまっていた姿。

　光が微笑んでいる。

　――光がそこにいる。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

//	FadeDelete("絵写板", 800, false);
//	SoundPlay("@mbgm14",0,1000,true);

	SetFwL("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0150030a00">
「光……」

{	FwL("cg/fw/fw光二年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0150040a14">
「うん」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　遠かったはずの、快活な声。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0150050a00">
「……光……
　お前なのか」

{	FwL("cg/fw/fw光二年前_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0150060a14">
「ああ。<RUBY text="・・・">おれだ</RUBY>。
　景明」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　光の声。
　妹の言葉。

　光が――
　そこに立ち、そこで話している。

　失ったものが。
　失ったはずのものが。

　そこにある――！

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0150070a00">
「光!!」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　すべてが吹き飛んだ。
　下らぬ懸念も不安も何もかも、この現実の前に弾け
て消えた。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色100", 1500, "Black");

	Fade("カメラ１/絵背景200", 500, 0, null, false);
	MoveCamera("@カメラ１", 1000, @0, @0, @+700, Dxl1, true);
	CreateSE("SE01","se人体_動作_掴む01");
	CreateSE("SE02","se人体_動作_抱きつき01");
	Shake("カメラ１/絵１", 500, 0, 3, 0, 0, 500, null, false);
	MusicStart("SE01",0,1000,0,1000,null,false);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0151]
　駆け寄る。
　身体に触れる。

{	MusicStart("SE02",0,1000,0,1000,null,false);
	MoveCamera("@カメラ１", 1000, @0, @0, @+500, Dxl1, false);
	Fade("絵色100", 500,1000,null,false);}
　確かな感触を、心の何処かはなお信じない。 
　抱き締めて、更に深く確かめる。

　……いる。
　光はここにいる。

　帰ってきたのだ。
　俺の妹が帰ってきたのだ！

</PRE>
	SetTextEXL();
	TypeBeginTimeLO(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光二年前_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【光】
<voice name="光" class="光" src="voice/ma05/0150080a14">
「ん、景明……
　少し痛いぞ」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0150090a00">
「あ……あぁ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　甘く叱られて、俺は力を緩めようとし。
　しかし腕は言う事を聞いてくれなかった。

　もっと、求める。
　感触を求める。

　夢ではないと。
　これは妄想が見せる幻ではないと。

　証拠を欲しがって、更に深く。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光二年前_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【光】
<voice name="光" class="光" src="voice/ma05/0150100a14">
「……しょうのないやつだな」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　妹は好きにさせてくれた。
　代償を求めるように、その指が俺の髪に触れる。

　最早――何もかもどうでも良かった。
　この感触さえ確かなら、ほかは何がどうでも構わな
かった。

　何がこれをもたらしたのでもいい。
　劒冑であろうと禁忌であろうと。

　ただこの奇跡に感謝する。
　それが何であれ感謝する！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【統】
<voice name="統" class="統" src="voice/ma05/0150110b46">
「……あっ――」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0150120a00">
「統様……！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 15000);

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg052_湊斗家道場_01.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	StL(1000, @0, @0,"cg/st/st統_通常_私服.png");
	FadeStL(0,true);

	FadeDelete("上背景", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210a]
　声が聞こえたのか。
　いつしか養母もそこにいて、先刻の俺のように呆然
として、光を――娘を見詰めていた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StR(1000, @-30, @0,"cg/st/st光二年前_通常_私服.png");
	Move("@StR*", 300, @30, @0, DxlAuto, false);
	FadeStR(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210b]
　無理矢理に身体を引き剥がして、光から離れる。
　母も俺と同じ心境の筈だ。目前の光景が事実かそれ
とも幻想か、確かめずにいられないだろう。俺が独占
していてはならなかった。

　誘われるように、養母が光に近付く。
　その瞳は既に潤んでいた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【統】
<voice name="統" class="統" src="voice/ma05/0150130b46">
「ひか――――」

{	FwC("cg/fw/fw光二年前_冷笑.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0150140a14">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　そうして。
　養母は立ち止まった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0150150a00">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　募る想いに胸をつかれ……という様子ではない。
　養母の表情を見て、俺は驚いた。

　<RUBY text="・・・・・・">戸惑っている</RUBY>。
　有り得ない奇跡に我が眼を疑っているのとは、違う。

　娘の復活を事実と認めて。
　その上で、素直な喜びを妨げられている。

　何に？

　……養母が見ているのは光だ。
　光の<RUBY text="かお">貌</RUBY>だ。

　光も、母親の方を向いている。
　その表情を見せている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0150160a00">
（……え？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　俺はそこに見たものを理解しかねた。
　いや――

　理解はしたが。
　承服はしかねた。

　何故だ？
　何故？

　<RUBY text="・・">何故</RUBY>、<RUBY text="・・・・・・・・・・">悪意を込めて母を見る</RUBY>？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光二年前_冷徹.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【光】
<voice name="光" class="光" src="voice/ma05/0150170a14">
「…………」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0150180b46">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　馬鹿な、と。
　何度見直してみても、その形は変わらない。

　光は<RUBY text="・・・・・">悪意を笑い</RUBY>、
　養母は声もなくそれを受けている。

　こんな事はかつてなかった。

　病に臥せる前、思春期ゆえのものだろう、光はしば
しば母親に対して反抗的な態度をとることもあった。
　が――このような目付きをしたためしはない。

　……目覚めたばかりで、なにか混乱でもあるのでは
ないか。
　そうとでも思わねば、納得しようもなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0150190a00">
「光、」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆がたん。乱暴に扉を開けた？
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se日常_建物_扉開く02");
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　ともかくも気まずい空気を振り払おうと、俺は光に
声を掛け――
　途中で、その口を切らされた。

　…………物音は、門の方角からだった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma05_016.nss"