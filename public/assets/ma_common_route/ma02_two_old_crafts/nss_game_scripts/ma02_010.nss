//<continuation number="870">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_010.nss_MAIN
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
	#bg047_景明故郷町a_01=true;
	#bg047_景明故郷町b_01=true;
	#bg023_弥源太の家_03a=true;
	#bg202_旋回演出背景山_02=true;

	#ev128_病床の光_b03=true;
	#ev005_斬り割られた兜=true;
	#ev132_笑う統=true;
	#ev952_銀星号登場=true;
	#ev951_小太郎装甲_a=true;
	#ev943_村正ＶＳ月山=true;


	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_弥源太=true;
	#voice_on_ふき=true;
	#voice_on_ふな=true;

	if($ma02_010_routeFlag == true){$ma02_010_routeFlag = false;}
	else{$Others_Flag++;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma02_011.nss";

}

scene ma02_010.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_009vs.nss"

//◆黒
	PrintBG("上背景", 15000);
	CreateColorSP("絵暗転", 5000, "#000000");
	FadeDelete("上背景", 0, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0001a]
　いーろーはーにーほーへーとぉ……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆故郷
	CreateTextureSP("絵背景4000", 4000, Center, Middle, "cg/bg/bg047_景明故郷町a_01.jpg");
	SetShade("絵背景4000", HEAVY);

	FadeDelete("絵暗転", 1600, true);

	SoundPlay("@mbgm33",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0001b]
　ちぃーりーぬーるーを
　わーかーよーたーれーそ……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆病床の光、顔は出さず
//あきゅん「演出：体験版用に特殊調整」
//嶋：調整済み
//	CreateTextureSP("絵背景3500", 3500, Center, Middle, "cg/bg/bg051_湊斗家居間_01.jpg");
	CreateTextureSP("絵背景3500", 3500, Center, Middle, "cg/ev/ev128_病床の光_b03.jpg");
	SetShade("絵背景3500", HEAVY);

	FadeDelete("絵背景4000", 1600, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0002]
　つぅーねぇーなーらぁーむ……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆兜割りの兜
	CreateTextureSP("絵背景3000", 3000, Center, Middle, "cg/ev/ev005_斬り割られた兜.jpg");
	SetShade("絵背景3000", HEAVY);

	FadeDelete("絵背景3500", 1600, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0003]
　うーゐーのーおーくーやーま……
　けーふーこーえーてー……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆笑う養母
	CreateTextureSP("絵背景2500", 2500, Center, Middle, "cg/ev/ev132_笑う統.jpg");
	SetShade("絵背景2500", HEAVY);

	FadeDelete("絵背景3000", 1600, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0004]
　あぁーさーきーゆーめーみーし……
　ゑーひーもーせーすぅ……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆殺戮された故郷
	CreateTextureSP("絵背景2000", 2000, Center, Middle, "cg/bg/bg047_景明故郷町b_01.jpg");
	SetShade("絵背景2000", HEAVY);

	FadeDelete("絵背景2500", 1600, true);

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100010a00">
（浅き夢見し……
　酔ひもせず……）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銀星号
//あきゅん「演出：ここでの銀星号は実は過去編ぽいのがいいのか？」
	CreateTextureSP("絵背景1500", 1500, 235, 90, "cg/ev/ev952_銀星号登場.jpg");
	Zoom("絵背景1500", 0, 1500, 1500, null, true);

	SetShade("絵背景1500", HEAVY);

	FadeDelete("絵背景2000", 1600, true);

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100020a00">
（酔ひも……せず…………）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);

//◆ホワイトアウト
//◆弥源太の家
	CreateColorEXadd("絵フラ", 1500, "#FFFFFF");
	Fade("絵フラ", 1000, 1000, null, true);

	WaitPlay("@mbgm*", null);

	WaitKey(2000);

	PrintGO("上背景", 15000);

	CreateColorSPadd("絵フラ", 1500, "#FFFFFF");
	OnBG(100,"bg023_弥源太の家_03a.jpg");
	FadeBG(0,true);

	Delete("上背景");
	FadeDelete("絵フラ", 2000, true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100030a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/stふな_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fwふな_通常.png");

	#voice_on_ふな = true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0100040b06">
「あっ。おきたー！」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100050a00">
「…………」


{	FwC("cg/fw/fwふな_通常.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0100060b06">
「じっちゃー！
　にーやがおきたよぉー！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStR(300,true);

//◆ブラックアウト
//◆ブラックイン

	CreateColorSP("絵暗転", 5000, "#000000");
	DrawTransition("絵暗転", 600, 0, 1000, 100, null, "cg/data/slide_05_00_0.png", true);

	Fade("絵暗転", 600, 1000, null, true);

	Wait(400);

	DrawDelete("絵暗転", 1000, 100, "slide_05_00_0", true);
	SoundPlay("@mbgm23",0,1000,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
　……家の中だ。
　どこかの百姓家だろうか。

　見覚えのない床の上、見覚えのない布団の中に寝か
されている。
　<RUBY text="ありてい">有体</RUBY>に言って、ひどく硬い。だが温かくはあった。

　己の全身を知覚する。
　……胸に包帯を巻かれているようだ。ややきつめに
締めてある。打撲傷ではなく、おそらく激しい出血を
した際の巻き方。

　さて。
　そのような負傷をいつ、何処で――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フラッシュバック
//◆小太郎、月山、最後の奇襲
	SetVolume("SE*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);

	OnSE("se擬音_回想_フラッシュバック01",1000);
	CreateColorEXadd("絵フラ", 10000, "#FFFFFF");
	Fade("絵フラ", 100, 1000, null, true);

	CreateTextureSP("絵演回想", 4190, Center, Middle, "cg/ev/ev951_小太郎装甲_a.jpg");
	Fade("絵フラ", 400, 200, null, true);

	Wait(500);

	CreateTextureSP("絵演回想２", 4180, Center, Middle, "cg/ev/ev943_村正ＶＳ月山.jpg");
	FadeDelete("絵演回想", 500, true);

	Wait(500);

	CreateTextureSP("絵演回想背景", 4000, Center, -576, "cg/bg/bg202_旋回演出背景山_02.jpg");
	CreateTextureSP("絵演回想立絵", 4010, Center, Middle, "cg2/st/3d九〇式竜騎兵_騎突_戦闘b.png");
	Zoom("絵演回想立絵", 0, 750, 750, null, true);
	Request("絵演回想立絵", Smoothing);

	FadeDelete("絵演回想２", 500, true);

	Wait(500);

	Fade("絵フラ", 100, 1000, null, true);
	Delete("絵演回想*");
	FadeDelete("絵フラ", 1000, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0038]
　…………。
　思い出した。

　そう、俺は――<RUBY text="お">墜落</RUBY>ちたのだ。
　確か……山の斜面へ……。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆起きようとする音。がさ。
//◆レッドフラッシュ

	OnSE("se人体_動作_抱く01",1000);
	CreateColorSP("鼓動", 10000, "#CC0000");
	FadeDelete("鼓動", 300, true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100070a00">
「……ッ！」


{	#voice_on_ふき=true;
	FwC("cg/fw/fwふき_困惑.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0100080b05">
「わっ、駄目ですよ。まだ起きられません。
　そのまま寝ていてください」


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100090a00">
「つぅ……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/stふき_通常_私服.png");
	FadeStL(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　体内を走り抜けた稲妻に呻きをこぼしながら、声の
聞こえてきた方へ首をめぐらす。
　年の頃は二桁始めか。少女がひとり、座っていた。
手には布巾、傍らには水の入った<RUBY text="たらい">盥</RUBY>を置いている。

　その肌は褐色。
　両耳は細く尖っていた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100100a00">
「……蝦夷の方ですか」


{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0100110b05">
「え？　えと……はい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　綺麗な風貌をしている。
　種族的な特徴だろう。彫りが深い一方で、細やかな
造形。良い意味で彫像的な美しさがあった。

　繊細な指先が、今はおろおろと、布巾を弄んでいる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwふき_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0100120b05">
「あ、あのぅ……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100130a00">
「はい」


{	FwC("cg/fw/fwふき_困惑.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0100140b05">
「汗を拭いた方がいいと思うんですけど……
　その、か、構いませんか？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　確かに、全身が汗ばんでいる。
　拭いてもらえるのなら有難い。こちらには厭う理由
などある筈も――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100150a00">
（……ああ。成程）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　俺は少女の心情を察した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100160a00">
「失礼。うら若い女性にご造作をおかけする
ようなことではありませんでした。
　布巾をお貸し下さい。お見苦しい体に柔手
を触れて頂くには及びません」


{	FwC("cg/fw/fwふき_困惑.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0100170b05">
「え!?　あああ、いえ、違いますっ」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100180a00">
「……？」


{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0100190b05">
「そうじゃなくて……
　その、<RUBY text="あて">自分</RUBY>、蝦夷ですから。触られると、
ほら……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　けがれる、とか。
　尻蕾になった少女の声は、最後にそう言ったように
思えた。

　…………。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100200a00">
「宜しくお願いします」


{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0100210b05">
「あっ、はっ、はい……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStL(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　慌てた手付きで、少女は濡らした布巾を一度絞ると、
こちらの額に当ててきてくれる。
　ひやりとする感触が心地良かった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0100220a01">
《……御堂。加減はどう》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100230a00">
（<RUBY text="おまえ">村正</RUBY>か。悪くはない）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　視線を動かす。
　部屋の隅に深紅色の蜘蛛が蹲っていた。異様な光景
ではある――が、ここが蝦夷の住居ならば、妖怪推参
なりと騒がれることはよもやないだろう。

　実際、甲斐甲斐しく汗を拭いてくれている少女は、
そちらを気にした風でもない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100240a00">
（……少なくとも、袈裟懸けに斬られて墜落
したにしては。
　あの後の経過を教えて欲しい）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0100250a01">
《重傷の貴方を村まで連れて行こうとしたの
だけれど。私も動けなくて。
　難儀していたら、蝦夷の老人がやって来て
助けてくれたのよ》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100260a00">
（老人……）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0100270a01">
《この家の主。
　ちなみに、ここは例のお山の中》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　そう聞いて、脳内で幾つかの断片が組み合わさる。
　――村長の話。山に住む、祟り神を祀る蝦夷の一族。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100280a00">
（成程……）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0100290a01">
《話せることはこのくらい。時間的にはまだ
大して経ってないのよ。三、四時間っていう
ところ。
　詳しい状況は貴方から訊いてみて》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100300a00">
（お前の損傷程度は？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0100310a01">
《悪くはないかしらね。袈裟懸けに斬られて
墜落したにしては。
　これから回復に専念する……後はよろしく》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100320a00">
（承知した）

{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0100330b05">
「あ……そちらの蜘蛛の人、お武家様の劔冑
ですよね。心配していたんですよ。
　あの、蜘蛛さん。こちらのかた、起きられ
ましたよ……？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆テキストボックス消去
//◆ちょっとウェイト
	Wait(600);

	SetFwC("cg/fw/fwふき_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0100340b05">
「……あぅ。答えてくれない……。
　さっきまではこう、頭にぴりぴりくる声で
話してくれたのに」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100350a00">
「申し訳ありません。
　劔冑にとって、己の仕手や別の武者はとも
かく、普通の方と声を交わし合うのはとても
億劫なことのようなのです」


//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100360a00">
「他意は何もありません。
　自分が起きたので後の対応はこちらへ任せ、
休息をとっているだけです。非礼の段は自分
からお詫び致します」


{	FwC("cg/fw/fwふき_困惑.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0100370b05">
「わ、いえいえ、そんな！　非礼だなんて。
　ちょっと残念だっただけですからっ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　赤面して、手をわたわたさせる少女。
　ちなみにその手は布巾をつかんでいて、包帯が巻か
れた俺の胸の上に置かれていたりする。

　少々痛い。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	StR(1000, @0, @0,"cg/st/st弥源太_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw弥源太_通常.png");

	#voice_on_弥源太=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0100380b55">
「……何をやっとる。ふき」


{	FwC("cg/fw/fwふき_困惑.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0100390b05">
「え？　はぅあっ!!
　ごごっ、ごめんなさーい！」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100400a00">
「いえ。問題ありませんから」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0100410b55">
「ふき、それは置け。
　そろそろ包帯を巻き直す。棚から新しいの
を出してこい」


{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0100420b05">
「は、はい。じっちゃま」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStR(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　少女が立ち上がり、箪笥に駆け寄る。
　代わって腰を下ろした男性は、物静かな眼でこちら
の全身を眺めてきた。その背中に張り付くようにして、
歳はもう三、四つ下だろう、別の娘が顔を出している。

　視線が合うと、はにかんだ笑顔。
　……いささか、対応に戸惑う。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw弥源太_微笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0100430b55">
「お加減は如何かな。御堂」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100440a00">
「……お陰をもちまして。
　一命をお救い頂いたようです」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0100450b55">
「なに、<RUBY text="なれ">貴公</RUBY>は自分で自分を救っておったよ。
　<RUBY text="うて">己</RUBY>がしたのはここへ寝かせて包帯を巻いた
だけに過ぎん。しかし……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　男性の手が包帯を解く。
　数箇所、傷口に包帯の張り付いていた所が引き剥が
されて痛みを発した。が、さほどの出血はない。
　傷口の惨さに比べての話だが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwふな_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0100460b06">
「おーっ」

{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0100470b55">
「……見よ。
　ここへ連れて来た時は骨が覗いておったが
な。既に肉が盛り上がり、傷を覆っている。
　まこと、武者の回復力は凄まじい」

{	FwC("cg/fw/fwふき_呆気.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0100480b05">
「ど、どうして……？」

{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0100490b55">
「これが紛い物にあらざる劔冑の力。
　鍛冶師の身魂を宿す真の劔冑はなまなかな
ことでは破壊されぬ。少々の欠損なら自力で
容易く復元してのける」

//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0100500b55">
「そして、<RUBY text="タテワキ">帯刀</RUBY>の儀によって結縁した武者と
劔冑は常に一体……。
　復元の力は武者の肉体にも及ぶのだ。この
ようにな」

{	FwC("cg/fw/fwふき_呆気.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0100510b05">
「そうなんだ……。
　すごい……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100520a00">
「さりながら。
　貴方がたがお助けくださらなければ、回復
するより前に命を絶たれていたことでしょう。
やはり御礼は申し上げねばなりません」

{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0100530b55">
「なれは代官だのその取巻きだのに殺される
ような<RUBY text="ほし">天命</RUBY>ではないよ。
　それに御堂、うては当然のことをしている
に過ぎん」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100540a00">
「……」

{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0100550b55">
「なれが山の作業場であの馬鹿者を止めてく
れた折、うてもその場におった。
　我が村の救い主が倒れているのを見掛けて、
何もせぬ法があろうか」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100560a00">
「それは一身上の都合でした事。
　救いなどと考えられては身が縮みます」

{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0100570b55">
「だとしても助けられれば感謝はするもの。
　当然のことであろう？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100580a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　なんだか自分がただ強情を張っている未熟な若造に
しか思えなくなってきた。
　人生経験の差を感じる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100590a00">
「御老人……失礼。
　そのようにお見受けしたのですが、もしや
見込み違いということは」

{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0100600b55">
「ないよ、お若い方。
　歳はもう五十を数えた。蝦夷としては老人
も老人、長老などと呼ばれる頃合かな」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　やはり、か。
　不老の蝦夷種族らしく、外見上はいいところ壮年に
しか達していない。しかし動作の端々にある重さと、
御堂という呼び方が実際の歳を窺わせた。

　御堂とはもう用いる者も多くはない、武者に対する
古風な敬称。
　かつて宮中の武者溜りが釈天堂という建物にあった
ことを由来とする。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100610a00">
「では、御老人。
　貴方はやはり、この山で祭祀を行っておら
れるというご一族の」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0100620b55">
「村長にでも聞いたか。
　その一族の最後の末裔がここにおる三人よ」


//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0100630b55">
「うては弥源太。
　こやつらは孫で、大きい方がふき、小さい
方がふなと申す」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100640a00">
「申し遅れました。
　鎌倉警察署の湊斗景明です」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　頭を下げる。
　……新しい包帯を巻かれながらでは、充分な礼儀を
尽くすわけにもいかなかったが。

　老人は軽く顎を引きだけして応えた。
　孫の方を見ると、上の娘は恐縮した風で何度も礼を
し、下の娘はまた笑顔を向けてきている。
　妹の方が堂々としているようで、少し可笑しい。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw弥源太_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0100650b55">
「警察の人であったか」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100660a00">
「御協力に感謝致します。
　この御礼は後日必ず……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100670a00">
「今日のところは、そろそろ失礼させて頂き
ます」


{	FwC("cg/fw/fwふき_困惑.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0100680b05">
「えっ!?
　そんな……無理ですよ！」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0100690b55">
「……さっきは回復が早いと褒めたがな。
　流石に一晩は動けんだろうよ。無理をして
動けばまた傷口が開くぞ」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100700a00">
「しかし、ご迷惑は掛けられません。
　自分がここに留まれば、この図体で場所を
塞ぐのみならず――」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0100710b55">
「代官どものことを案じておるのか？
　なるほど……やはりその傷はやつらと一戦
交えた結果か。それで追手が来るかもしれぬ
と言うのだな」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100720a00">
「まさしく」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0100730b55">
「だがそれは無用の心配。
　ここでなれを追い出したところで、やつら
の迷惑が迷惑でなくなるものか」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100740a00">
「それは……」


{	FwC("cg/fw/fw弥源太_警戒.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0100750b55">
「やつらはいる限り村の迷惑よ。
　一身上の都合だろうが何だろうが、御堂、
なれがやつらを成敗するというのなら、なれ
を助けることは村の利益に適う」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100760a00">
「……」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0100770b55">
「丸一日はここで休んでゆけ。
　なれならば、おそらくそれで全快しよう」


{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0100780b05">
「そうしてください。
　あては難しいことはわかりませんけど……
こんな大怪我をしている人が出ていくなんて、
そんなの駄目です」


{	FwC("cg/fw/fwふな_通常.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0100790b06">
「んーっ？
　ねーや、にーやはどうしたの？」


{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0100800b05">
「にーや、おうちに帰りたいんだって」


{	FwC("cg/fw/fwふな_通常.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0100810b06">
「えーっ、そんなのやだ！
　もっといてほしい……」


{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0100820b05">
「そうよねっ。
　ほら、お武家様。ふなもこう言ってます」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　言われても。
　……しかし、これを振り切って行くことはできそう
になかった。

　それに弥源太老人の言う通り、今無理を押して出て
いく選択にはどうも利もなければ理もないらしい。
　ここは厚意に甘えておくのが賢明だろうか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0100830a00">
「……わかりました。
　ご厄介をおかけします」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0100840a01">
《よろしく》

{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0100850b05">
「わっ、ぴりぴりきたー！」


{	FwC("cg/fw/fwふな_笑い.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0100860b06">
「ぴりぴりー！」



{	FwC("cg/fw/fw弥源太_微笑.png");}
//◆微笑
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0100870b55">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);


//◆アナザー好感度＋
//$Another_Flag = $Another++;
	$ma02_010_routeFlag = true;
	$Others_Flag++;

	judgment_of_count();

}

..//ジャンプ指定
//次ファイル　"ma02_011.nss"


