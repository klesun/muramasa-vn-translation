//<continuation number="1420">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_021.nss_MAIN
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
	#bg063_普陀楽城内廊下_02=true;
	#bg027_普陀楽評議の間_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md03_022.nss";

}

scene md03_021.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md03_020.nss"


//◆廊下


	PrintBG("上背景", 30000);


	OnBG(100, "bg063_普陀楽城内廊下_02.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm20", 0, 1000, true);

	StL(1000, @0, @0, "cg/st/st常闇斎_通常_私服.png");
	StR(1000, @0, @0, "cg/st/st茶々丸_通常_制服a.png");
	FadeStR(0, true);
	FadeStL(0, true);


	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);


	SetFwC("cg/fw/fw常闇斎_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md03/0210010b37">
「御依頼の件のことです」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210020a07">
「……わかったか？」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md03/0210030b37">
「はい。
　とんだ<RUBY text="・・・">おまけ</RUBY>も付いてきました」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210040a07">
「へぇ？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆評議の間

	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	DeleteStA(0,true);
	Delete("@OnBG*");

	OnBG(100, "bg027_普陀楽評議の間_02.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

	SetFwC("cg/fw/fw雷蝶_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210050a08">
「では、式典の際の分担を決めましょう」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0210060a06">
「部隊配置を詰めるのが先だろう」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0210070a09">
「む……」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210080a07">
「いーやっ。
　どっちも後回しだ」

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210090a08">
「茶々丸？」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210100a07">
「建朝寺を攻めるぞ」

{	FwC("cg/fw/fw童心_驚き.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0210110a09">
「……何と？」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210120a08">
「舞殿宮を!?」

{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0210130a06">
「気でも違った――」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0210140a06">
「わけではなさそうだな？　茶々丸」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210150a07">
「連中、少数精鋭で普陀楽にカチ込む気だ。
　宣下式典をやめさせるために」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210160a07">
「要はテロだな」

{	FwC("cg/fw/fw童心_驚き.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0210170a09">
「…………」

{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210180a08">
「――――」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0210190a06">
「……ほう」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0210200a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　――そうか。
　あの親王、ここで動くか。

　しかし俺を失った今、誰を手駒に使うつもりだ……？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雷蝶_落胆.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210210a08">
「そ――そんな馬鹿なこと」

{	FwC("cg/fw/fw獅子吼_影人.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0210220a06">
「いや。
　有り得ん話ではないな」

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210230a08">
「ちょっ、あんたまで」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0210240a06">
「舞殿宮の一派にも情勢を見る目くらいある
だろう」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0210250a09">
「……左様でござるな。
　宣下式典の決行は六波羅と進駐軍の開戦を
意味すること、わからぬ道理はない」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0210260a09">
「と、なれば……あの庶民派の宮様が阻止に
動いてくるとしても不思議はござらんのう」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210270a08">
「ど、童心様。でも――」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0210280a09">
「対処は？」

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0210290a06">
「奴らが来るのを待ち構えてやってもいいが
……いや。それでは事が大きくなりかねんな」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210300a07">
「宣下式典を控えてる時期にそりゃ避けたい
だろ」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0210310a09">
「然り。
　できるなら極秘の内に片付けてしまいとう
ござる」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210320a08">
「あの、」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210330a07">
「コトを逆にしちまえ。
　倒幕勢力が舞殿宮を拉致って利用しようと
してるって情報を掴んだから、警備する――
って名目で建朝寺を囲む」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210340a07">
「で、不穏分子はひっそりと全員始末。
　宮様はそのまま監禁だ」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0210350a06">
「ふん。悪くない」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【童心】
<voice name="童心" class="童心" src="voice/md03/0210360a09">
「それがしも異存ござらん。
　問題は、誰を派遣するか……」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0210370a06">
「相手が皇族となると、慎重な人選が要るな。
　間違いは許されん」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210380a07">
「けどのんびり選んでる時間なんてねえぞ。
　向こうはすぐにも動きそうな気配だ」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0210390a09">
「我らのうち誰かが行くしかござらんな」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0210400a06">
「俺が行こう」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210410a07">
「はんたーい」

{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0210420a06">
「……俺では不足だとでも言うのか」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210430a07">
「不足はないけど。
　もっと向いてるやつがいるから、そいつに
やらせとこうぜ」

{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0210440a06">
「誰だ」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210450a07">
「こいつ」

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210460a08">
「――は？」

//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210470a08">
「麿？」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210480a07">
「おまえ」

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210490a08">
「何でよっ!?
　……ていうか、あんたら全員ちょっと待ち
なさいよ!!」

//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210500a08">
「話を進めるのが早過ぎるでしょっ！
　それよりまず先に、情報の真偽を確かめて
から――」

{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0210510a06">
「阿呆。
　貴様の頭には砂糖でも詰まっているのか？」

{	FwC("cg/fw/fw雷蝶_逆上.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210520a08">
「何ですってぇ!?」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210530a07">
「いやいや。
　そうそう、そうだった」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210540a07">
「雷蝶の言う通り。
　最初にやらなきゃいけないことがあったよ
な」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0210550a09">
「……ふむ？
　茶々丸殿、それはいったい？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210560a07">
「ちーむわーく」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0210570a06">
「何だ、それは」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210580a07">
「知らねえの？
　友情、団結、そして勝利。勝つための手順
ってもんがあるんだよ、世の中には」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210590a07">
「まずあてらの結束を固めましょう」

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210600a08">
「そんなこたどーでもいいのよっ！
　麿が言ってるのは、」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210610a07">
「確認しまーす。
　この中に、舞殿宮とこっそりつながってる
やつはいないよね？」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210620a07">
「朝廷権威を背景にして幕府の主導権を握れ、
なんて甘い誘惑に乗っちゃったよーなバカは」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210630a08">
「――――――――」

{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0210640a06">
「……ふん。
　それは確かに、確認しておく必要があるな」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0210650a09">
「……で、ござるのう」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210660a07">
「宣誓。
　あては絶対に違いまーす」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0210670a06">
「俺もだ。
　大鳥家先々代当主、時治様の名に懸けて」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0210680a09">
「それがしもやましいところはござらん。
　御仏に誓いましょうぞ」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210690a07">
「うわ、信用おけねえ。
　まぁいいや」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210700a07">
「で、雷蝶。おめーは？」

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210710a08">
「え？」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210720a08">
「あ、その」

//◆笑み
{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0210730a06">
「どうした。
　さっさと答えんか」

//◆笑み
{	FwC("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0210740a09">
「あらぬ疑いを招いてしまいますぞ、雷蝶殿」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雷蝶_焦り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210750a08">
「えっ、ええ。
　も――もちろん、麿もそんなことしていな
くってよ！」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210760a07">
「そーだろーそーだろぉー。
　なんせおめーは今は亡き大将領護氏の息子
だもんな」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210770a07">
「んで次の大将領、四郎邦氏の叔父だ。
　そんなやつが幕府を売るような真似、する
わけがねーなー！」

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210780a08">
「とっ、当然ね！」

{	FwC("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0210790a09">
「はっはっはっ。
　いやぁそれがし、安心いたした」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0210800a09">
「これで我らの結束も完璧でござる」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0210810a06">
「違いない。
　実に喜ばしいことだ」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0210820a06">
「嬉しいぞ、雷蝶」

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210830a08">
「そ、そうぉ？
　おほ、ホホホホ……」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210840a07">
「じゃ、行こうか。
　建朝寺」

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210850a08">
「え」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210860a07">
「舞殿宮を押さえるんだよ。
　嫌、なんて言わねえだろ？」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210870a07">
「六波羅にとっての禍根を絶つためだ。
　忠勇烈将、今川雷蝶くんとしちゃあ、勇み
立って行くところだよなー？」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0210880a06">
「くっくっく……
　忠勇烈将！」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210890a08">
「そ、そそ、そうねえぇ。
　で――でも」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210900a08">
「やっぱり麿は……その……もう少し慎重に
考えて動いた方がいいと思うのよ！
　相手は帝の弟よ？　誤って殺しちゃったり
したら大変なことになるし、」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210910a07">
「大丈夫。
　あても一緒に行って、そのへん気を配って
おくからさ」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210920a08">
「それに……そう、ことの真相が露見したら
大変よ!?
　大将領宣下が取りやめなんてことにも」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210930a07">
「あーのーなー」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0210940a00">
「その心配は無用です。
　今川中将閣下」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　俺は口を挟んだ。

　理由は一つ。
　面白そうだったからである。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雷蝶_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210950a08">
「何よっ！
　ぽっと出の中佐風情が、公方同士の論議に
割り込んでいいと思ってるの!?」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0210960a06">
「意見くらい構うまい。
　雷蝶、そううるさがるな」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0210970a06">
「身分に差はあれど、同じ忠臣ではないか。
　……くっ。くっくっ」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210980a08">
「……っ」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0210990a06">
「湊斗中佐、言ってみろ」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0211000a00">
「はっ。
　万一、舞殿宮への弾圧が発覚した場合――
あるいは手違いで舞殿宮を殺害してしまった
場合は、」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0211010a00">
「そこまでするに足る正当性があったことを
発表すれば宜しいかと考えます」

{	FwC("cg/fw/fw童心_驚き.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0211020a09">
「正当性とな？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0211030a00">
「舞殿宮春煕親王は、大将領足利護氏公暗殺
事件の主犯であります」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0211040a07">
「――――」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0211050a00">
「自分が証人として立ちましょう」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0211060a06">
「……どういうことだ。
　貴様、倒幕派に与していたとは聞いたが、
舞殿宮の配下だったのか？」

{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0211070a06">
「それで舞殿宮のもとで企まれた、足利護氏
暗殺にも関与したと？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0211080a00">
「自分が一時期、舞殿宮に服属していたのは
事実です。
　しかし、暗殺計画は存在しませんでした」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　俺は真実と嘘を両方告げた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw獅子吼_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0211090a06">
「無かった？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0211100a00">
「はい。
　ですが、<RUBY text="・・・・・・・・">あった事にします</RUBY>」

//【景明】
<voice name="景明" class="景明" src="voice/md03/0211110a00">
「自分が鎌倉警察署の署長を通じて舞殿宮と
繋がっていた事については、物証も用意でき、
誰もを納得させられます。
　その自分が暗殺計画を証言するのです」

//【景明】
<voice name="景明" class="景明" src="voice/md03/0211120a00">
「舞殿宮一派が何を言おうと、人々は苦しい
弁明としか受け止めないでしょう」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0211130a09">
「……むゥ……」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0211140a06">
「そうか……。
　良し。いいぞ。悪くない」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0211150a06">
「それはいい<RUBY text="・・">保険</RUBY>だ」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0211160a07">
「……だね」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0211170a07">
「聞いたよな、雷蝶？
　もう心配はなんにもいらねーぞ」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0211180a08">
「あ、う……」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0211190a06">
「何を慌てる？」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0211200a08">
「あ、慌ててなんか！」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0211210a06">
「くっくっく……！」

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0211220a08">
「あ、あんた……さっきから人を馬鹿にして。
　笑いたくても笑えない身体にするわよっ!?」

{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0211230a06">
「ほゥ。
　笑ってはいかんのか……」

{	FwC("cg/fw/fw獅子吼_影人.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0211240a06">
「せっかく……人が笑い事で済ませてやろう
としているものをな。
　何だ、要らぬ気遣いか？」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0211250a08">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw獅子吼_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0211260a06">
「そうか、俺はもう笑わなくていいのか。
　なら、奸賊は<RUBY text="・・・・">まとめて</RUBY>片付けてしまうか」

{	FwC("cg/fw/fw獅子吼_影人.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0211270a06">
「それこそ禍根を絶つというものだ……」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0211280a07">
「ふーん。
　あては、まぁ……構わないけどね？」

{	FwC("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0211290a09">
「さぁーて。
　それがしも、反対するほどの理由はない、
かのう……？」

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0211300a08">
「ど……童心様……？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0211310a09">
「雷蝶殿次第でござるよ。
　この童心坊はいつでも、雷蝶殿のお考えを
尊重いたしますぞ」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0211320a06">
「くっ……くっくっ……！」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0211330a07">
「…………」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0211340a00">
「…………」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0211350a08">
「……っ……」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0211360a08">
「け……
　建朝寺へ――行きましょう……」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0211370a07">
「ＯＫ、ＯＫ。
　そう言ってくれると思ってたぜ、雷蝶」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0211380a07">
「さー、楽しいハイキングだー♪」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0211390a09">
「よろしくお願いいたす」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0211400a06">
「雷蝶の<RUBY text="・・・">保護者</RUBY>をしっかりな、茶々丸」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0211410a07">
「あーい」

//◆敗北
{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0211420a08">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md03_022.nss"