//<continuation number="620">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma05_019.nss_MAIN
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

	$GameName = "ma05_020.nss";

}

scene ma05_019.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma05_018.nss"

//◆湊斗家
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg051_湊斗家居間_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　ひとまず彼女の骸を居間へ安置してから、俺は二人
の後を追った。
　のんびりしていて良い時ではない。祭殿の中へ駆け
込む。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆祭殿
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg054_湊斗家祭殿a_01a.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);
	SoundPlay("@mbgm14",0,1000,true);

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190010a00">
「統様！　光――」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190020a00">
「……!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　そんな場合ではないというのに。
　祭殿の中の光景を見て、俺は一瞬ならず立ち竦まね
ばならなかった。

　中央に、力なく伏せる養母。
　その向こう、禁忌の御扉に取り付いている光。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190030a00">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　<RUBY text="・・・・・・・・・・・・">看過できない事が多過ぎて</RUBY>。
　思わず硬直する。

　……数瞬。
　貴重な時間を無駄に使った後、俺はようやく、優先
順位を整理して活動を再開した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190040a00">
「統様……！」

{	FwC("cg/fw/fw統_沈思.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0190050b46">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　駆け寄り、肩を揺り動かす。
　返事はない――だが呼吸は確かだった。

　負傷の痕跡も見受けられない。
　ただ気を失っているだけのようだった。

　とりあえず安堵して、次の状況に目を向ける。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//あきゅん「SE：要望：ピッキング音、まあ普通になんかカチカチする音ループで」
	CreateSE("SEL01","se日常_金属_鎖鳴る01");
	MusicStart("SEL01",0,1000,0,1250,null,false);

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190060a00">
「光！」

{	FwC("cg/fw/fw光二年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0190070a14">
「ん？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190080a00">
「……何をしている？」

{	FwC("cg/fw/fw光二年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0190090a14">
「見ての通り。
　<RUBY text="かぎ">錠</RUBY>を開けているのだが」

{	FwC("cg/fw/fw光二年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0190100a14">
「……どうもコツが要るようだな。これ。
　中々難しい」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190110a00">
「……ああ。
　そうらしいな」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　養母も昔は梃子摺ったとか――いや。
　違う。そういう問題ではない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190120a00">
「待て、光！」

{	FwC("cg/fw/fw光二年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0190130a14">
「うん？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ガチャ
	CreateSE("SEL01","se日常_金属_鎖鳴る01");
	MusicStart("SEL01",0,1000,0,1250,null,false);

	WaitKey(800);

	SetVolume("SE*", 100, 0, null);
	CreateSE("SE01","se人体_動作_ロック解除01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw光二年前_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【光】
<voice name="光" class="光" src="voice/ma05/0190140a14">
「……む。開いた。
　なんだ、力の問題ではなかったのか。要は
引っ掛け所の問題だったのだな」

{	FwC("cg/fw/fw光二年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0190150a14">
「ありがとう景明。
　あやうく蹴り破るところだった。中の物の
ことを思うと流石にそれはまずかろうにな」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190160a00">
「いや……
{	Wait(500);
	FwC("cg/fw/fw景明_困惑.png");}
　いやいやいや！　光！　開けてはならん！」

{	FwC("cg/fw/fw光二年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0190170a14">
「何故だ？」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190180a00">
「何故って……何故ではなくてだな。
　そこに封じられているのは皆斗家の禁忌。
統様の許可なくして開いてはならない」

{	FwC("cg/fw/fw光二年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0190190a14">
「だが、今や湊斗の巫姫はこの光だ。
　祭祀の権限はすべておれにあるのではない
か？」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190200a00">
「……そういえば、そうだが」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　なぜ光がそれを知っている？
　……いや、そんな事はさておいて。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190210a00">
「とにかく、今はそれどころではないのだ、
光。一体何があったのか教えてくれ。
　いや、統様を起こすのが先か――」

{	FwC("cg/fw/fw光二年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0190220a14">
「<RUBY text="・・・・・">それどころ</RUBY>だよ、景明。
　今がその時だ」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190230a00">
「何だと？」

{	FwC("cg/fw/fw光二年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0190240a14">
「山賊団とやらが町を襲うのだろう」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190250a00">
「……ああ」

{	FwC("cg/fw/fw光二年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0190260a14">
「光が迎え撃つ。
　ここにある劒冑を使ってな」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　――――!?

　あの劒冑を、
　………………使う!?

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190270a00">
「駄目だ、光!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　我知らず、俺は叫ぶほどの声を張り上げていた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190280a00">
「あれは……
　<RUBY text="・・・・・・">あれは駄目だ</RUBY>！　持ち出してはならない！」

{	FwC("cg/fw/fw光二年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0190290a14">
「……ふむ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @-30, @0,"cg/st/st光二年前_通常_私服.png");
	Move("@StL*", 300, @30, @0, DxlAuto, false);
	FadeStL(300,true);
	CreatePlainSP("絵板写",1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　そこで初めて、光は俺を振り返った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光二年前_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【光】
<voice name="光" class="光" src="voice/ma05/0190300a14">
「だが、景明。
　他に方法があるか？」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190310a00">
「それは……
　いや、しかし」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190320a00">
「あれは……まずい。
　皆斗の伝承が云うように、邪しきものだ」

{	FwC("cg/fw/fw光二年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0190330a14">
「何を言う。劒冑とて所詮は武器だ。
　武器は武器、それ以上のものではない」

//【光】
<voice name="光" class="光" src="voice/ma05/0190340a14">
「武器は善悪など持たぬ。
　正と云い邪と云うも、使い手次第で決まる
事」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190350a00">
「それは……全くその通りだが……」

{	FwC("cg/fw/fw光二年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0190360a14">
「先刻の女。
　<RUBY text="み">鑑</RUBY>たところ、あれは武者だろう？」

//【光】
<voice name="光" class="光" src="voice/ma05/0190370a14">
「にも拘わらず劒冑を持っていなかった。
　つまり、山賊は劒冑を保有し、使ってくる
という事ではないのか？」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190380a00">
「……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　……確かに。
　劒冑は――数打物といえど、誰にでも扱えるという
代物ではない。訓練あるいは才能が必要だ。

　だが、首領以外にもそういったものを持ち合わせた
人間が一人くらいはいるだろう。
　少なくとも、あの弟は姉と同じ訓練を受けている筈
……。

　山賊団の分裂がどのような過程を辿ったのかは知る
由もない。
　が、かの弟が姉に従ったと断定する根拠はなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光二年前_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【光】
<voice name="光" class="光" src="voice/ma05/0190390a14">
「武装集団の相手だけでも生身には余る。
　加えて武者までいるならば、こちらも劒冑
を用いる他に対処の術はなかろう？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190400a00">
「……うぬ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　光の言うことは――おそらく正しい。
　おそらく……この状況下では最も現実的なプランだ。

　完全武装の歩兵。あるいは更に砲、車両。
　そして劒冑。

　身体一つでどうやって止められよう。
　しかも――俺は養母の教えを思い出していた。

　殺してはならない。

　殺さずに、武装集団を制止せねばならない。
　……やはり、劒冑は必要だった。

　劒冑の力があれば、通常兵器の無力化は難しくない。
兵士を殺さずに済ませる事も、おそらくできる。
　同じ劒冑に対してはそんな余裕などなかろうが――
対等の戦力を示せば交渉に持ち込む事はできそうだ。

　現実的である。

　それでも、どうしても同意に二の足を踏むのは……<K>
{//◆回想。禁忌の劒冑
	CreateColorEX("絵演背景黒化", 499, "#000000");
	Fade("絵演背景黒化", 0, 1000, null, true);
	CreateTextureSP("絵演立左", 500, Center, Middle, "cg/st/3d二世女王蟻_煽り.png");
	CreateTextureSP("絵演立右", 500, Center, Middle, "cg/st/3d村正蜘蛛_俯瞰.png");
	Move("絵演立右", 0, @300, @100, null, false);
	Move("絵演立左", 0, @-300, @100, null, false);
	DeleteStA(0,true);
	Fade("絵板写", 600, 0, null, false);}
　
　あの劒冑を見ているからだろう。

　肌が粟立つまでの禍々しさ。
　あんなものを持ち出すことに、懸念は拭えない。

　しかし。
　……しかし……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	Fade("絵板写", 600, 1000, null, false);

	SetFwC("cg/fw/fw光二年前_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【光】
<voice name="光" class="光" src="voice/ma05/0190410a14">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　光は律儀に俺の答えを待っている。
　
　……少なくとも。
　この逡巡には、百害あって一利なし、か。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	WaitAction("絵板写", null);
	Delete("絵演*");
	StL(1000, @0, @0,"cg/st/st光二年前_通常_私服.png");
	FadeStL(0,true);
	Delete("絵板写");

	SetFwC("cg/fw/fw景明過去_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190420a00">
「わかった」

{	FwC("cg/fw/fw光二年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0190430a14">
「うん？」

{	FwC("cg/fw/fw景明過去_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190440a00">
「俺がやろう」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　まさか、病み上がりの光にはさせられない。
　己の掌を見詰める。それが経てきた鍛錬を思う。

　吉野御流合戦礼法は武者の業。
　やってやれない事はない筈だ……！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光二年前_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【光】
<voice name="光" class="光" src="voice/ma05/0190450a14">
「そうか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　それを聞いて、光がにやりと楽しげに笑う。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光二年前_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【光】
<voice name="光" class="光" src="voice/ma05/0190460a14">
「それがいい。
　劒冑は<RUBY text="ふたつ">二領</RUBY>あるのだしな」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190470a00">
「！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　そういえば……そうだった。
　禁忌の劒冑は、二領あるのだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190480a00">
「だが……
　待て、光！」

{	FwC("cg/fw/fw光二年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0190490a14">
「いや、そろそろ行こう」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStL(300,false);

//あきゅん「SE：要望：軋みながら扉開く音」
	SetVolume("@mbgm*", 2000, 0, null);
	CreateSE("SE01","se日常_建物_扉開く09");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureEX("絵演立左", 2100, Center, Middle, "cg/st/3d二世女王蟻_煽り.png");
	CreateTextureEX("絵演立右", 2100, Center, Middle, "cg/st/3d村正蜘蛛_俯瞰.png");
	CreateColorSP("絵黒", 2000, "#000000");
	DrawTransition("絵黒", 1000, 0, 1000, 100, null, "cg/data/slide_06_00_1.png", false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　やはり律儀に返答しながら、光が扉を引き開ける。
　重いはずの扉は、あっけなく回った。

　そうして中に――
　あの劒冑。

{	WaitAction("絵黒", null);
	Move("絵演立右", 0, @300, @100, null, false);
	Move("絵演立左", 0, @-300, @100, null, false);}
　二領の劒冑。
{	Fade("絵演立左", 500, 1000, null, false);}
　白銀の女王蟻に、<?>
{	Fade("絵演立右", 500, 1000, null, false);}
深紅の蜘蛛。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190500a00">
「……ッ！」

{	FwC("cg/fw/fw光二年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0190510a14">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　走り寄ろうとして、思わずたたらを踏む。
　災いの気配、不吉の匂い――劒冑が放つその流気は、
改めて見ても只ならぬものがあった。

　反して、光は気にした様子もない。
　無造作に歩み寄り、その劒冑――白銀の大蟻に片手
を<RUBY text="かざ">翳</RUBY>した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光二年前_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【光】
<voice name="光" class="光" src="voice/ma05/0190520a14">
「待たせたな。
　村正」

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0190530a15">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　――むらまさ？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光二年前_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【光】
<voice name="光" class="光" src="voice/ma05/0190540a14">
「いざ、共に参らん！
　武の大道へ！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ガリーン。女王蟻が割れる
//装甲まとめ
	CreateSE("SE02","se特殊_鎧_装着04");
	PrintGO("上背景", 10000);

	CreateColorSPadd("絵フラ", 5000, "#FFFFFF");
	OnBG(100,"bg054_湊斗家祭殿a_01a.jpg");
	FadeBG(0,true);
	StC(1000, @0, @0,"cg/st/st光二年前_通常_私服.png");
	FadeStC(0,true);
	MusicStart("SE02",0,1000,0,1250,null,false);
	FadeDelete("上背景", 600, true);
	WaitKey(100);
	FadeDelete("絵フラ", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　……呼び掛けに応えたのか。
　銀の姿が割れる。

　割れ砕け、片鱗となり、
　光の周囲に舞い踊る。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190550a00">
「な……！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　この光景が何を意味するのか、知っていた。
　何が起こるのか――<RUBY text="・・・・・・・・・・・">何ゆえに何が起こるのか</RUBY>、俺は
脳細胞が宿す知識から判別できた。

　――光は既に、あの劒冑と結縁を果たしている!?

　愕然と見守るなか。
　白銀の煌きに囲まれて、心地良さげに眼を細めつつ、
光はゆるりと優美な仕草で指を流した。

　<RUBY text="ソウコウノカマエ">装甲ノ構</RUBY>！

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆光、装甲アクション１
	SoundPlay("@mbgm11",0,1000,true);
	CreatePlainSP("絵板写",3000);
	StC(1000, @0, @0,"cg/st/st光二年前_装甲_私服a.png");
	FadeStC(0,true);
	FadeDelete("絵板写", 300, true);

	SetFwR("cg/fw/fw光二年前_好戦.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【光】
<voice name="光" class="光" src="voice/ma05/0190560a14">
「鬼に逢うては鬼を斬る。
　仏に逢うては仏を斬る」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆アクション２
	CreatePlainSP("絵板写",3000);
	StC(1000, @0, @0,"cg/st/st光二年前_装甲_私服b.png");
	FadeStC(0,true);
	FadeDelete("絵板写", 300, true);

	SetFwR("cg/fw/fw光二年前_好戦.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【光】
<voice name="光" class="光" src="voice/ma05/0190570a14">
「ツルギの<RUBY text="ことわり">理</RUBY>ここに在り」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ガキーン。閃光
//◆銀星号
	CreateSE("SE02","se特殊_鎧_装着04");

	CreateSE("SE01","se特殊_鎧_装着06");

	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	MusicStart("SE02",0,1000,0,700,null,false);
	Fade("絵フラ", 600, 1000, null, true);
	StC(1000, @0, @0,"cg/st/3d銀星号_立ち_通常.png");
	FadeStC(0,true);
	MusicStart("SE01",0,1000,0,700,null,false);
	WaitKey(2000);
	FadeDelete("絵フラ", 1000, true);

	SetFwR("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190580a00">
「……ッ!?」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　光――――!?

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆どかーん。
//◆祭殿、半壊
	CreateSE("SE01a","se戦闘_動作_空上昇01");
	CreateSE("SE01b","se戦闘_破壊_建物02");
	PrintGO("上背景", 10000);

	MusicStart("SE01a",0,1000,0,1250,null,false);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateColorSPadd("絵煙幕", 10000, "#FFFFFF");
	DrawTransition("絵煙幕", 300, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Delete("上背景");
	DeleteStC(0,true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg054_湊斗家祭殿b_01.jpg");
	CreateTextureSP("絵背景2000", 150, Center, Middle, "cg/bg/bg054_湊斗家祭殿b_01.jpg");
	SetBlur("絵背景2000", true, 3, 500, 100, false);

	CreateTextureadd("絵背景200", 1000, Center, Middle, "cg/ef/efRec_雲a03.png");
	Request("絵背景200", Smoothing);
	Zoom("絵背景200", 0, 3000, 5000, null, true);

	Move("絵背景200", 0, @+250, @-50, null, true);
	CreateMovie("ムービー１", 2000, InLeft, 0, true, true, "dx/mvk100.ngs");
	Rotate("ムービー１", 0, @0, @180, @0, null,true);
	Zoom("ムービー１", 0, 3000, 5000, null, true);
	Move("ムービー１", 0, @+250, @-50, null, true);

	MusicStart("SE01",0,1000,0,1000,null,false);

	Fade("絵背景2000", 0, 300, null, true);
	Zoom("絵背景2000", 2000, 2000, 2000, null, false);
	FadeDelete("絵背景2000", 1500, false);
	Shake("絵背景100", 2000, 4, 3, 0, 0, 1000, Dxl1, false);
	DrawDelete("絵煙幕", 1500, 1000, "effect_01_00_0", false);
	Fade("絵煙幕", 1000, 0, null, true);

	Zoom("絵背景200", 2500, 10000, 80000, null, false);
	Fade("絵背景200", 2000, 0, null, false);
	Move("ムービー１", 7000, @0, @+300, null, false);
	Zoom("ムービー１", 8000, 70000, 8000, null, false);
	Fade("ムービー１", 6000, 0, null, false);

	WaitKey(3000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　……銀色の閃光が収まった後に。
　ようやく視界を回復した俺が見たものは、屋根と壁
の一部が吹き飛んだ祭殿の姿だった。

　光はいない。見当たらない。
　いや――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, Dxl1, "cg/data/slide_02_01_0.png", true);

	Delete("ムービー１");

	CreateTextureEX("絵背景1000", 5000, Center, -550, "cg/bg/resize/bg002_空a_01.jpg");
	Zoom("絵背景1000", 0, 1000, 5000, null, true);

	Fade("絵背景1000", 0, 1000, null, false);

	Zoom("絵背景1000", 400, 1000, 1000, Dxl1, false);
	Move("絵背景1000", 400, @0, 0, Dxl1, false);

	DrawDelete("黒幕１", 200, 100, "slide_02_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0451]
　空に、翔ける銀影。
　……ほんの一瞬で消え去る。

　町へと向かったのか。
　それに、しても。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);
	FadeDelete("絵背景1000", 600, false);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190590a00">
「……装甲しただけで……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　ただそれだけで。
　――この惨状だと？

　あの劒冑はどれほどの<RUBY text="ちから">異能</RUBY>を有しているのか。
　想像するだに、背筋が震えた。

　爆風は浴びたが、俺の身体に傷はない。
　養母も同様だ。幸いにも――いや。光が配慮してく
れたのだろう。

　……ならば、のんびり呆けている場合ではなかった。

　俺も続かねばならない。
　光を止め損ねてしまった以上、すぐにも追わねば。

　残った一領の劒冑を見やる。
　あの暴発の至近距離にありながら、損傷も無ければ
倒れてさえいなかった。

　その事実は、白銀の蟻に劣らぬ力の存在を否が応に
も知らしめる……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明過去_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190600a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("絵板写", 0, 1000, null, true);
	Wait(10);
	CreateColorSP("絵黒", 2000, "#000000");
	CreateTextureSP("絵演中央", 2100, 52, 123, "cg/st/3d村正蜘蛛_正面.png");
	Fade("絵板写", 600, 0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　怯えを噛み殺して、近付く。
　深く赤く鋼鉄を輝かす大蜘蛛は、傍で見れば尚の事
不吉が匂った。

　……さて、どうしたものか。
　帯刀の儀の詳細までは俺も知らない。

　とりあえず、触ってでもみるしか――

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆キーン。共鳴？
	CreateSE("SE01","se特殊_雰囲気_発光04");
	PrintGO("上背景", 25000);
	CreateColorSP("絵白", 10000, "#FFFFFF");
	CreateColorSP("絵黒", 100, "#000000");
	CreateTextureSP("絵演中央", 500, 52, 123, "cg/st/3d村正蜘蛛_正面.png");
	Delete("上背景");
	MusicStart("SE01",0,1000,0,1500,null,false);
	FadeDelete("絵白", 1000, true);
	SoundPlay("@mbgm04",0,1000,true);

	SetFwL("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190610a00">
「――ッ!?」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆村正の世界。醜悪。死と怨念のイメージ
//◆銀星号事件ＣＧを歪曲して使うとか。
//◆ＳＥ付き。おどろおどろ。
	CreateSE("SE01","se特殊_陰義_発動04");//ダミー注意
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵白", 10000, "#FFFFFF");
	CreateTextureEXsub("絵演１", 400, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");

	CreateColorSP("絵色399", 399, "#CC0000");

	CreateStencil("Ｓ",1000,52, 123,128,"cg/st/3d村正蜘蛛_正面.png",false);
	SetAlias("Ｓ","Ｓ");
	CreateMask("Ｓ/Ｍ", 1000, center,InBottom, "cg/st/3d村正蜘蛛_正面.png", false);
	SetAlias("Ｓ/Ｍ","Ｓ/Ｍ");
	CreateTextureSPmul("Ｓ/Ｍ/絵演", 2100, Center, InBottom, "cg/ev/ev001_銀星号事件イメージ１.jpg");

	Fade("絵演１", 0, 750, null, true);
	DrawEffect("Ｓ/Ｍ/絵演", 3600000, "LowWave", 30, 30, null);
	FadeDelete("絵白", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
　……何だ。
　これは……

　何だぁッッ!?
　これはッッ!?

　この――
　身の毛もよだつ景色と音響と匂いと気配と肌触りと
味と思念と運命は何だぁぁぁぁぁぁぁァァァァッ!!

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆キーン
	CreateSE("SE01","se特殊_陰義_発動04");//ダミー注意
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　
　　　　　　　　　我が<RUBY text="な">銘</RUBY>は村正

　
　　　　　　我、鬼に逢うては鬼を斬り

　
　　　　　　仏に逢うては仏を斬るもの也

　
　　　　　　　　　我、善に非ず

　
　　　　　　　　　我、義に従わず

　
　　　　　　　　　我、正道を<RUBY text="ゆ">征</RUBY>かず

　
　　　　　　　　我、正邪を諸共に断つ

　
　　　　　　　　　我、一振の<RUBY text="ハガネ">凶刃</RUBY>也

　
　　　　　我との契りを求める者
　　　　　我と共に凶刃と<RUBY text="な">生</RUBY>る覚悟ありや

　
　　　　　　　　　無かりせば去れ

　
　　　　　　　　　有りせば――

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆ギーン。不協和音
//◆現実復帰
	CreateSE("SE01","se特殊_陰義_発動03");//ダミー注意
	PrintGO("上背景", 25000);
	Delete("Ｓ");
	CreateColorSP("絵白", 5000, "#FFFFFF");
	OnBG(100,"bg054_湊斗家祭殿b_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	SetVolume("@mbgm*", 100, 0, null);
	MusicStart("SE01",0,1000,0,1500,null,false);
	FadeDelete("絵白", 1000, true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190620a00">
「がっ……
　はァッッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
　辛うじて――
　俺は劒冑に張り付いた手を引き剥がすのに成功した。

　胃の底から突き上げる嘔吐感に負けて、床を転げる。
　吐瀉物を撒き散らす。

　声にならぬ声を絶叫する。

　……駄目だ！
　駄目だ駄目だ駄目だ駄目だ駄目だ!!

　あのようにおぞましい魔物！
　とてものこと、俺の手には負えない……!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma05_020.nss"