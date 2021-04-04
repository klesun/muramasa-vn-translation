//<continuation number="1280">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_002.nss_MAIN
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
	#bg002_空a_01=true;
	#bg026_普陀楽山塞a_01=true;
	#bg027_普陀楽評議の間_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md03_003.nss";

}

scene md03_002.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md03_001.nss"


//◆車の音
//◆市街？

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");
	OnBG(100, "bg002_空a_01.jpg");
	FadeBG(0, true);


	Delete("上背景");

	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0020010a07">
「……お兄さん。
　そろそろ着くよ？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se乗物_ジープ_走行音");
	MusicStart("SE01",0,1000,0,1000,null,false);

	FadeDelete("黒",2000,true);
	Wait(1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　言われて、俺は掌中の書面から目を離した。

　車の窓越しに景色を眺める。
　併走する警護車両、流れ去ってゆく街路――そして
その向こうに<RUBY text="そび">聳</RUBY>える、不動の偉容。

　確かに、もう近い。
　……これ程の距離で目にするのは、思えば初めての
事であった。

　六波羅幕府の中核点――――普陀楽城塞。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆普陀楽城

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


	OnBG(100, "bg026_普陀楽山塞a_01.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

	SetVolume("@SE*", 1000, 0, null);
	Wait(2500);
	
//◆すぱーん。勢い良く襖を開けた音
//◆評議の間


	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100, "bg027_普陀楽評議の間_01.jpg");
	FadeBG(0, true);

	StR(1000, @220, @0, "cg/st/st茶々丸_通常_制服a.png");

	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateColorEX("絵色100", 16050, "BLACK");
	CreateTextureEX("絵演窓上/絵演背景", 16100, -100, -344, "cg/bg/bg027_普陀楽評議の間_01.jpg");
	CreateTextureEX("絵演窓上/絵立絵", 16200, 460, -482, "cg/st/resize/st茶々丸_通常_制服a_l.png");
	Move("絵演窓上", 0, @0, @128, null, true);

	Request("絵演窓上/絵演背景", Smoothing);
	Request("絵演窓上/絵演背景", Smoothing);

	Zoom("絵演窓上/絵演背景", 0, 2000, 2000, null, true);
	SetShade("背景１", HEAVY);


	Wait(500);

	OnSE("se日常_建物_スライド開く02", 1000);
	FadeStR(100, false);
	Move("@StR*", 300, @-150, @0, Dxl2, false);
	DrawTransition("黒幕１", 200, 1000, 0, 100, null, "cg/data/blind_05_00_0.png", true);
	Delete("黒幕１");



	SetFwC("cg/fw/fw茶々丸_悪戯.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//◆ハイテンション
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0020020a07">
「呼ばれて!!」

//◆ハイテンション
{
	Move("絵演窓上/絵演背景", 200, @-100, @0, Dxl2, false);
	Move("絵演窓上/絵立絵", 200, @-200, @0, Dxl2, false);

	Fade("絵色100", 150, 300, null, false);
	Fade("絵演窓上/絵演背景", 150, 1000, null, false);
	Fade("絵演窓上/絵立絵", 150, 1000, null, false);

	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0020030a07">
「飛び出て!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆急落
	Wait(300);
	FadeDelete("絵色100", 500, false);
	FadeDelete("絵演窓上*", 500, true);
	Delete("絵演窓上*");

	StL(1100, @-50, @0,"cg/st/st獅子吼_通常_制服.png");
	StCL(1000, @100, @0,"cg/st/st雷蝶_通常_制服.png");
	StCR(900, @-100, @0,"cg/st/st童心_通常_私服b.png");


	SoundPlay("@mbgm20", 0, 1000, true);

	SetFwC("cg/fw/fw茶々丸_落胆.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0020040a07">
「来てやったってのに誰も出迎えに来ねえ。
　寒いんだよ、てめーら」

{	FadeStL(300,false);
	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020050a06">
「呼んでいない」

{	FadeStCL(300,false);
	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0020060a08">
「右に同じ」

{	FadeStCR(300,false);
	FwC("cg/fw/fw童心_宥め.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0020070a09">
「いやいやいやいや。
　あまりに突然のご登城であったゆえ……前
もってお知らせ下さっていればこんな無礼は
致さなかったのでござるが」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0020080a09">
「ともかく、よくぞお戻り下された。
　この童心坊、百人力を得た心地でござる」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0020090a08">
「百人分の足手まといの間違いでしょうに」

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020100a06">
「百人分で済めば良いが」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0020110a07">
「二百人分は覚悟しといた方がいいな」

{	FwC("cg/fw/fw雷蝶_笑い.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0020120a08">
「そうね、オホホホホホ！」

{	FwC("cg/fw/fw雷蝶_逆上.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0020130a08">
「じゃァないでしょ!?
　端から役に立つ気がないのかあんたは!!」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0020140a07">
「話を合わせてやったのに怒るし……。
　相変わらずこの子は難しい子ですね」

{	FwC("cg/fw/fw童心_宥め.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0020150a09">
「まぁまぁ、まぁ。
　久々に四公方が顔をそろえたのでござる」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0020160a09">
「今日のところは、再会を祝いましょうぞ」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020170a06">
「宜しかろう。
　これも政治というものだ」

//◆冷笑
{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020180a06">
「<RUBY text="めでた">目出度</RUBY>い」

//◆無感情
{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0020190a08">
「そうね」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0020200a07">
「こいつら実は、人の上に立つ器量とか全然
無いんじゃなかろうか」

//◆やれやれは小声
{	FwC("cg/fw/fw童心_宥め.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0020210a09">
「まぁまぁ。
　…………やれやれ」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0020220a09">
「して、茶々丸殿。
　お伺いしたいのでござるが」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0020230a07">
「うん？」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020240a06">
「あぁ。俺も訊きたかった。
　……誰だ？　そいつは」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,true);

	Wait(300);
//◆ざっ。
//◆景明・六波羅軍装
	OnSE("se人体_足音_走る06", 1000);

	StCR(990, @0, @0, "cg/st/st景明汚染_通常_制服.png");
	FadeStCR(500, true);

	Wait(300);

	SetFwC("cg/fw/fw景明汚染_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0020250a00">
「…………」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0020260a07">
「そぅそぅ。紹介しないとね。
　今度新しくあての副官になった、湊斗景明
中佐」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0020270a00">
「――湊斗であります。
　宜しくお見知り置きの程を」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0020280a09">
「……ほゥ……」

{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0020290a08">
「……中佐？」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0020300a07">
「よろしくねー」

{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020310a06">
「いや、待て。
　湊斗……？　そんな佐官がいたか？」

{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020320a06">
「俺の記憶には無いぞ」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0020330a07">
「当然だな」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020340a06">
「元の部署は？」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0020350a07">
「ねえよそんなの。
　昨日まで民間人だったし」

{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020360a06">
「…………。
　それがどうして、今日から中佐なのだ!?」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0020370a07">
「そこはそれ。あれだ」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020380a06">
「どれだ」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0020390a07">
「捏造。軍歴とか。色々」

{	FwC("cg/fw/fw獅子吼_怒り.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020400a06">
「堂々と言う事か！」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0020410a07">
「仕方ねぇだろー、予科に通わせるとこから
始めてたら手元で使えるようになるまで何年
掛かるかわからんし。
　この時期にンな悠長なことやってられっか」

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0020420a08">
「だからって、そんないい加減な話はないで
しょうよ！
　まったくあんたは、いつもいつも――」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0020430a08">
「ってつい言っちゃったけど、考えてみたら
あんた、そういう無茶な人事ってあまりやら
なかったわよね？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0020440a07">
「無茶やってまで使いたいほどの人間に巡り
合わなかったかんね。
　出会えば、別」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020450a06">
「ふん……言うな？
　これがそれほどの男か？」

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020460a06">
「どうなのだ、湊斗とやら。
　飼い主は貴様の事を随分と買っているよう
だが……？」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0020470a00">
「……………………」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020480a06">
「……」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020490a06">
「黙殺か。
　良い度胸だな」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆立つ獅子吼
	OnSE("se人体_動作_立ち上がる_畳", 1000);

	StL(1000, @0, @50, "cg/st/st獅子吼_通常_制服.png");
	Move("@StL*", 300, @0, @-50, null, false);
	FadeStL(300, true);


	SetFwC("cg/fw/fw獅子吼_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020500a06">
「その舐めた態度がどんな結果を招くのか、
わからぬわけではなかろうに。
　大したものだ……度胸だけはな」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0020510a00">
「お褒めに<RUBY text="あずか">与</RUBY>り光栄であります、閣下」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020520a06">
「――――」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0020530a00">
「しかし小官は答えようのない問いに答える
手間を省いたに過ぎません」

{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020540a06">
「……何が言いたい？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0020550a00">
「この湊斗の<RUBY text="ゆういむい">有為無為</RUBY>は働きによって明らか
となる事。
　口舌での証明は致しかねます」

//【景明】
<voice name="景明" class="景明" src="voice/md03/0020560a00">
「仮に為し得たとしても、四公方たる方々に
御納得頂けるとは思えません。
　それゆえ、返答を遠慮致しました」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020570a06">
「……ふん。
　つまり貴様は、俺にこう言うわけか」

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020580a06">
「知恵の足りない質問をするな、と」

{	FwC("cg/fw/fw景明汚染_冷笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0020590a00">
「御賢察、感服仕りました。
　大鳥中将閣下」

{	FwC("cg/fw/fw童心_驚き.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0020600a09">
「…………」

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0020610a08">
「…………」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020620a06">
「――――――――――――」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020630a06">
「悪くない」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0020640a00">
「……」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020650a06">
「悪くないではないか……この男」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0020660a07">
「だろ？」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020670a06">
「ああ」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020680a06">
「悪くない」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆抜き打ち。横薙ぎ
//◆受けた。がきーん。

	CreateTextureEX("抜き打ち", 5000, @0, @0, "cg/ef/ef015_汎用横軌道.jpg");
	CreateTextureEX("衝突", 4500, @0, @0, "cg/ef/ef040_汎用衝突.jpg");

	SetVolume("@mbgm20", 500, 1, null);

	Wait(500);
	DeleteStA(50,true);

	OnSE("se戦闘_攻撃_剣戟弾く01", 1000);

	Fade("抜き打ち", 0, 1000, null, true);

	EffectZoomDXadd(10000, 200, 100, "#FFFFFF", "cg/ef/ef015_汎用横軌道.jpg", true);

	OnSE("se戦闘_攻撃_刀衝突01", 1000);

	Fade("衝突", 0, 1000, null, true);

	EffectZoomDXadd(10000, 500, 100, "#FFFFFF", "cg/ef/ef040_汎用衝突.jpg", false);

	DrawDelete("抜き打ち", 100, 100, "circle_02_00_1", true);
	FadeDelete("衝突",700,true);

	Wait(1000);

	StL(1000, @0, @0,"cg/st/st獅子吼_戦闘_制服.png");
	StR(1000, @0, @0,"cg/st/st景明汚染_戦闘_制服.png");

	FadeStL(300,false);
	FadeStR(300,true);

	SetVolume("@mbgm20", 2000, 1000, null);

	SetFwC("cg/fw/fw景明汚染_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0020690a00">
「…………」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020700a06">
「迷わず抜いたな……。
　顔色も変えん」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020710a06">
「殿中の掟を知らんのか？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0020720a00">
「存じております」

//◆喉で笑う感じ。文字通りに読む必要は無し。
{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020730a06">
「知った上で、<RUBY text="・・・・・">知った事か</RUBY>と言いたいわけか。
　……くっ。くっくっくっくっく」

{	FwC("cg/fw/fw童心_驚き.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0020740a09">
「獅子吼殿……」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020750a06">
「見逃して頂こう。
　この男は仕掛けられて防いだだけ」

//◆ざれた
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020760a06">
「俺は<RUBY text="・・・">戯れた</RUBY>だけだ。
　誰ぞが能会にかこつけて開いた乱痴気劇と
変わらん」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0020770a09">
「……むう。
　そう言われては、返す言葉もござらんなァ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆獅子吼、座る

	Move("@StL*", 300, @0, @50, null, false);
	DeleteStL(300,true);

	StR(1000, @0, @0,"cg/st/st景明汚染_通常_制服.png");
	CreateSE("SE01","se擬音_雰囲気_抜刀01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw獅子吼_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020780a06">
「悪くない。
　湊斗、景明……だったな？　中佐」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0020790a00">
「はっ。
　御記憶有難くあります、閣下」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020800a06">
「ふん。生意気な。悪くない。
　いちいち癪に障る……忌々しい男だ」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020810a06">
「くっくっくっく……」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0020820a08">
「……恐いわよ。
　あんたも何気に趣味嗜好が変よね」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020830a06">
「貴様にだけは言われたくない言葉だ。
　しかし茶々丸よ、こんな男を何処の山から
拾ってきた？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0020840a07">
「倒幕さんちのお山から」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0020850a08">
「おいおい」

{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020860a06">
「ほぅ。
　この男、元は叛徒か」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020870a06">
「容易く節を曲げるようには見えんが。
　どうやって口説いた？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0020880a07">
「いやなに。
　元々、彼には倒幕も佐幕もなくてね。ただ
結果的に幕府と敵対することが多かったって
だけでね」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0020890a07">
「彼と<RUBY text="こっち">幕府</RUBY>の利害の擦り合わせをして、味方
に引き入れました」

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020900a06">
「利害、か。
　何か個人的な目論見があると？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0020910a07">
「まあね。
　でも秘密」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020920a06">
「信用できるのか」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0020930a07">
「あてと同じくらいかな？」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020940a06">
「そうか」

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0020950a08">
「そうか、じゃないっての！
　こいつと同じじゃまるで信用できんわっ！」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020960a06">
「全くだな。
　が……構うまい」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020970a06">
「信用などできんのはどうせ誰も彼も同じだ。
　……ふん？　そうなると、今のも愚かしい
質問だったということになるのか？」

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0020980a06">
「どうだ、湊斗中佐」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0020990a00">
「御自覚の通りで宜しいかと存じます。閣下」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0021000a06">
「くっくっく……！」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0021010a06">
「茶々丸、この男を俺に寄越せ。
　代わりに一個大隊回してやる」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(150);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_悪戯.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0021020a07">
「だーめっ」

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0021030a08">
「ちょ、ちょっと獅子吼！
　あんたは認めるわけ!?」

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0021040a08">
「よりにもよって逆賊上がりの男を登用する
なんてふざけた真似を……！」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0021050a06">
「ああ」

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0021060a08">
「童心様！」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0021070a09">
「むう」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0021080a09">
「まぁ……宜しいのではござらんかな？」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0021090a08">
「そんなっ！」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0021100a09">
「いやいや、雷蝶殿の懸念はごもっとも。
　されどこれは堀越軍の事、茶々丸殿が全て
承知した上での差配とあらば、我らがああだ
こうだと云う筋合いではござらぬ」

{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0021110a08">
「それは……そうですけれど、」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0021120a09">
「加えて申さば。
　こちらの御仁、それがしもいささか存じて
ござる」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0021130a09">
「なかなかに面白き男。
　あの折とはどうも印象が異なるが……そこ
も含めて興味深い」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0021140a00">
「……？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0021150a09">
「如何でござるかな、雷蝶殿。
　ここはそれがしが頭を下げ申そう」

//【童心】
<voice name="童心" class="童心" src="voice/md03/0021160a09">
「何と言っても茶々丸殿が戻られためでたき
日。ひとつ、どうか」

{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0021170a08">
「…………。
　童心様がそう仰るのであれば……」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0021180a08">
「でも、いいこと？　湊斗とやら！
　麿はおまえのような男を信用したわけでは
なくってよ！」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0021190a00">
「はッ。
　寛大な御心に感謝致します」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0021200a00">
「華麗にして優美なる小弓中将閣下」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雷蝶_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0021210a08">
「――――――――。
　あら」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0021220a08">
「美しさを理解する目は備えているようね。
　フフッ……まぁ、そんな当たり前のことを
言われたって嬉しくも何ともないけれどっ」

//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0021230a08">
「あまり狭量なのも美しくないかしら。
　そうね、一応のところは認めてあげること
にするわ。湊斗中佐！」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0021240a00">
「有難くあります」

{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0021250a06">
「……単純な」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0021260a07">
「ある意味うらやましいやっちゃ」

{	FwC("cg/fw/fw雷蝶_笑い.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0021270a08">
「ホーホホホホッ!!」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0021280a09">
「……ふむ、ふむぅ」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md03_003.nss"