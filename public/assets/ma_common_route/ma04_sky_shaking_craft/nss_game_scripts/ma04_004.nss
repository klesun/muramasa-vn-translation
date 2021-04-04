//<continuation number="380">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_004.nss_MAIN
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
	#voice_on_柳生常闇斎=true;

	$PreGameName = $GameName;

	$GameName = "ma04_005.nss";

}

scene ma04_004.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_003.nss"

//●０４
//◆普陀楽城
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg027_普陀楽評議の間_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm34",0,1000,true);

	StL(1000, @0, @0,"cg/st/st護氏_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw護氏_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma04/0040010a05">
「……して。
　何事か？　獅子吼」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma04/0040020a06">
「は。
　昨日、進駐軍とも繋がりを持つ御雇組の者
から報告があり……」

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma04/0040030a06">
「何でも近々、奴らが江ノ島へ本格的な調査
団を送り込むとの事」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma04/0040040a09">
「……ほゥ、ほゥ」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma04/0040050a08">
「その情報の精度は？」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma04/0040060a06">
「横浜に潜伏している厩衆へ連絡して、至急
調べさせた。
　確かに、そのような動きがあるそうだ」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma04/0040070a07">
「へーえ。
　ようやく食いついてきたってわけだ？」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma04/0040080a09">
「存外、腰の重いやつらだのう。
　教えてやってから一月近く経っておるでは
ないか」

{	FwC("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma04/0040090a05">
「さて……単に動きが鈍いだけか。
　それとも餌が旨過ぎて警戒させたか……」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma04/0040100a05">
「いずれにせよ……
　乗ってきたなら、こちらの対処は決まって
いる」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma04/0040110a08">
「はい、お父様。
　<RUBY text="・・・・・">何もしない</RUBY>ということで、宜しゅうござい
ますのね？」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma04/0040120a05">
「うむ。
　飢えた獣には餌が必要だ」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma04/0040130a09">
「腹がふくれれば<RUBY text="・">鼻</RUBY>も鈍る。
　やつらには、たんまりと食ってもらいたい
ものでござるなァ？　殿」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma04/0040140a07">
「でなきゃ用意した甲斐がないしねぇー。
　あれはあれでカネ掛かってんだしさ」

{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma04/0040150a06">
「予算を好き放題に使わせた奴の言う台詞か」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma04/0040160a07">
「物々しい研究所で、造ってるもんが単なる
ハリボテだったらさすがにバレるだろ。本物
志向ですよ本物志向。
　……お陰で最高の<RUBY text="ギャグ">冗談</RUBY>になっちまったけど」

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma04/0040170a08">
「あれは少しやり過ぎじゃないかって気がし
なくもないわねぇ……」

{	FwC("cg/fw/fw護氏_通常.png");}
//嶋：修正（くらい）【090930】
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma04/0040180a05">
「そのぐらいで良かろう。奴らの興味関心を
満たしてやるにはな。
　万一にも現段階で<RUBY text="・・">本命</RUBY>の方へ目を向けられ
ては困る………獅子吼、そちらはどうか」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma04/0040190a06">
「お待ちを。
　……<RUBY text="じょうあん">常闇</RUBY>」

{	#voice_on_柳生常闇斎=true;
	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/ma04/0040200b37">
「ハッ――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆すいっ。
//◆柳生常闇斎。侍スタイルにナイトスコープ
	StR(1000, @-30, @0,"cg/st/st常闇斎_通常_私服.png");
	Move("@StR*", 300, @30, @0, DxlAuto, false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw常闇斎_敬意.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/ma04/0040210b37">
「御前に」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma04/0040220a09">
「おう、これは柳生の。
　多忙であろうに、呼び立ててすまんなァ」

{	FwC("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/ma04/0040230b37">
「お心遣い、痛み入ります。
　古河中将様」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma04/0040240a05">
「して、常闇斎。
　篠川の状況は如何に」

{	FwC("cg/fw/fw常闇斎_思考.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/ma04/0040250b37">
「――」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma04/0040260a05">
「構わぬ。直答を許す」

{	FwC("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/ma04/0040270b37">
「ハッ。現時点では御懸念に及びませぬ。
　我が麾下の厩衆による防諜は、充分に機能
しております」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma04/0040280a05">
「かの計画は幕府の大事、国家の大事。
　……そなたを信頼して構わぬであろうな？」

{	FwC("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/ma04/0040290b37">
「六波羅あってのこの常闇。
　何条もって、ご期待に背きましょうや」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma04/0040300a05">
「宜しい。
　下がれ」

{	FwC("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/ma04/0040310b37">
「ハッ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆さっ。
	Move("@StR*", 300, @30, @0, DxlAuto, false);
	DeleteStR(300,true);

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【童心】
<voice name="童心" class="童心" src="voice/ma04/0040320a09">
「して、計画の進捗状況は如何であろう？」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma04/0040330a06">
「岡部の乱で収集した実戦データを元に最終
調整を行っている。
　それが完了次第、第一期量産の予定だ」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma04/0040340a05">
「急げよ」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma04/0040350a06">
「はッ！」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma04/0040360a09">
「異人どもも馬鹿ではないからのう。
　いつこちらの<RUBY text="またぐら">股座</RUBY>へ手を伸ばしてくるか。
はて、さて……」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma04/0040370a08">
「だからこそ用意した江ノ島……
　うまく<RUBY text="・・・">効いて</RUBY>くれることを期待しましょう」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

//◆江ノ島遠景（対岸の片瀬から見た図）
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg040_江ノ島全景_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　鎌倉市の南西に浮かぶ江ノ島は関東における弁財天
信仰の中心地であり、由緒ある観光地だといえる。
　古くは鎌倉幕府の昔から参詣客が訪れ、江戸時代に
はお伊勢参りと並ぶ庶民の旅の定番であった。

　島の独特の風景、情緒は近代になっても愛され続け、
交通機関の発展と共に近隣遠方から訪れる人々の数は
一層増加した。
　その中には多くの著名人も含まれる。

　ハプスブルクのフェルディナンド王子、学習院院長
時代の乃木希典、等々。十年ほど前には文豪太宰治の
心中事件の舞台として大和中に知られたこともあった
（これは正しくは島の対岸で起きた事件であったが）。

　近年は参詣地、景勝地としてのみならず、別の目的
で訪れる人々をも迎え入れている。
　それは例えば釣りであり、希少な植物の観察であり、
そしてまた――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆片瀬海水浴場
	OnBG(100,"bg041_片瀬海岸_01.jpg");
	FadeBG(1000,true);
	SoundPlay("@mbgm29",0,1000,true);

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0040380a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　良く晴れていた。
　海の青と空の青とに視野を征服される感覚は決して
不快なものではない。

　潮の匂う熱い風が肌を焦がす。
　全身を絶え間なく伝う汗の玉が、今この時ばかりは
何とも云えぬ清々しさに満ちていた。

　暑い。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


..//ジャンプ指定
//次ファイル　"ma04_005.nss"

}


