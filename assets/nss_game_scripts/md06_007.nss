//<continuation number="260">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_007.nss_MAIN
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
	#bg034_署長宅茶の間a_03a=true;
	#ev258_村正を押し倒す景明=true;
	#bg009_鎌倉住宅街a_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_008.nss";

}

scene md06_007.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md06_006.nss"


//◆夜
	PrintBG("上背景", 30000);

	CreateColorSP("黒", 5000, "BLACK");
	SoundPlay("@mbgm05", 0, 1000, true);

	OnBG(100, "bg034_署長宅茶の間a_03a.jpg");
	FadeBG(0, true);

	Delete("上背景");
	FadeDelete("黒",1500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　砂に水を撒いているようなものだなと、自分で思う。

　酒瓶を傾けて、杯に注ぐ。
　杯を口元に運び、流し込む。

　味も香りもわからない。
　ただ腹の底にどろりとしたものが溜まってゆくのを
感じるだけだ。

　その反復。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0070010a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　愚劣な事をしている。
　旨くもないのに、どうして飲み続けるのか。

　酔って気が晴れるわけでもない。
　心地良い眠気が訪れてくれるわけでさえない。

　胸は一向に温まらず、眠気はいつまでも遠い。

　まるで無駄な酒だ。
　何の為なのかわからない。

　俺自身と良く似ている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//ここでは村正登場させない inc櫻井

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0070020a00">
「……」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0070030a01">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　隣からの視線に気付いてはいたが、俺は目を合わせ
なかった。
　酒を注ぎ、杯を運ぶ作業に没頭する。

　元々、好きな方ではない。
　しかし昔は、多少の味わいなら理解できた。

　<RUBY text="はは">養母</RUBY>が酒も煙草も好む人で、俺も仕込まれた所為だ。
　煙草の方はさっぱりだったが、酒は飲めば飲むほど
正味に通ずると言われる通り、幾らかは教育の成果も
上がった。

　あの頃の感覚を、今はもう思い出せない。

　酷く、不味い。
　味がしないという事はこんなにも不快なのかと驚く。

　飲む。

　毒の味は、毒の記憶を釣り出した。
　一口毎に、脳裏で閃くものがある。

　人の顔。
　死者の顔だ。

　この手に掛けて殺した人間。

　紛れもない大量殺戮の罪。

　決して許されぬ。
　裁かれねばならぬ。
　
　……しかし、俺は裁かれない。

　ならば生きて何をする。
　死者に報いる何事かを為すのか。
　
　……何もできない。

　一体、何なのだ。

　湊斗景明とは何なのだ。

　こんな人間がいて良いのか。

　飲む。

　酒は腐蝕剤のようだった。
　五臓六腑を蝕む音が聴こえる。

　飲む。

　じくじくと。

　飲む。

　じくじくと、<RUBY text="し">沁</RUBY>みる。

　飲む――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0070040a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　ふと気付けば、酒が止まっていた。
　杯が動かない。

　腕を押さえられている。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//アップ画像来たら近づける inc櫻井

	StR(1000, @0, @0, "cg/st/st村正_通常_私服.png");
	FadeStR(300, true);

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0070050a01">
「そのくらいにして」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0070060a00">
「村正……」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0070070a01">
「今日はもう休んで……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　懇願めいた声。

　俺を気遣っているのは、目だけ見てもわかった。

　……何故だ。

　俺を気遣う必要が、何処にある。

　どうしてそんな事をする。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_優しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0070080a01">
「……うん……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　俺が杯から手を離すのを見て、安堵するように息を
つく。

　その腕を、俺は掴み返した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_驚きa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0070090a01">
「えっ？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0070100a00">
「酒を止せというなら……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　実のところ、わかっていた。

　俺を救うものがあるとすれば酒などではなく。
　いま触れている<RUBY text="・・">これ</RUBY>なのだと。

　俺が<RUBY text="すが">縋</RUBY>れる、唯一のもの。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0070110a00">
「お前が、代われ」

{	FwC("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0070120a01">
「……きゃっ！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆ＥＶ：村正組み伏せ

//ここらへんからはHシーン用のfw？　「？」の inc櫻井

	OnSE("se人体_動作_抱く01", 1000);
	DeleteStR(300,true);

	SetNwC("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0070130a01">
「み、御堂……？」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0070140a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　組み敷いた体は、<RUBY text="てつ">劒冑</RUBY>の癖にやけに熱い。
　酒で体温が下がっているせいで、そう感じるのかも
しれなかったが。

　そして柔らかい。
　何か、野兎を思わせるものがある。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0070150a00">
（何をしている）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　自問。
　この期に及んで、する事ではなかった。

　俺は村正を犯そうとしているのだ。

　誰の目にもそう見える。
　村正も、よもや誤解はしていないだろう。

　もう、誤魔化しようもない。

　だから続ける。

　首筋に口を近付け、舌を押し当てた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0070160a01">
「……ぅっ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　一舐め、味わう。
　それだけの行為に、村正の体は過剰な反応を見せた。

　びくりと波打つ。

　……しかし、そこまで。
　振り払う様子も、突き<RUBY text="の">退</RUBY>ける様子もない。

　瞳には薄く涙の膜が張り始めていたが。
　抵抗はしなかった。

　こうなると思っていた。

　村正――
　この人ならぬ女は、俺を拒まない。

　許してくれるだろう。
　そういう打算が、最初からあった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0070170a00">
（卑しい……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　己に、そう思う。

　だが、では何か。

　今までは卑しくなかったとでも云うのか。

　卑しかった。誰よりも。
　ただ上面を取り繕っていただけだ。

　もういい。

　もうそんな、無駄な事は止めだ。

　卑しい者は卑しく振舞うのが相応。

　沈め。

　沈んでしまえ。

　村正は許してくれる。

　こんな俺でも――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0070180a00">
「……」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0070190a01">
「……」

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0070200a01">
「んぅっ……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　何かに誘われて、唇を吸う。
　頭ごと抱え込み、舌も唾液も構わず。

　触れ合う点から、村正の動転は直に伝わってきた。
　しかし逃げない。為すがままだ。

　これでいい。

　このまま、何処までも。

　衣服を脱がし――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0070210a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　躊躇う理由など無いのだ。

　耽溺してしまえばいい。

　誰も咎めない。

　誰も。

　俺自身さえ目を瞑れば、きっと誰も。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	FadeDelete("組み伏せ",1000,true);

	SetVolume("@mbgm*", 1000, 0, null);


//離れ演出、大きめの立ち絵をゆっくり通常サイズに切り替える？　逆にダサいかも inc櫻井

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0070220a00">
「……っ……」

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0070230a00">
「く、おぁァァァ!!」

//◆離れる
{	FwC("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0070240a01">
「……御堂!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆外へ
	OnSE("se日常_建物_スライド開く02", 1000);

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	OnBG(100, "bg007_若宮大路a_03.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_01_02_1.png", true);
	Delete("黒幕１");

	SoundPlay("@mbgm32", 0, 1000, true);

	SetFwC("cg/fw/fw村正_驚きa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0070250a01">
「待って――」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0070260a01">
「御堂っ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆走り去るＳＥ
//◆フェードアウト

	OnSE("se人体_足音_走る03", 1000);

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	WaitKey(1500);

	WaitPlay("@OnSE*", null);

}

..//ジャンプ指定
//次ファイル　"md06_008.nss"