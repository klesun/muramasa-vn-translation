//<continuation number="1270">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_013.nss_MAIN
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
	#bg053_堀越御所の庭_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_014.nss";

}

scene md02_013.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md02_012.nss"


//◆庭
//◆騒音、遠く

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	OnBG(100, "bg053_堀越御所の庭_01.jpg");
	FadeBG(0, true);
	CreateSE("ざわ・・・", "se背景_ガヤ_ざわめき02");
	MusicStart("ざわ・・・", 500, 1000, 0, 1000, null);

	SoundPlay("@mbgm30", 0, 1000, true);
	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	StR(1000, @0, @0,"cg/st/st村正_通常_私服.png");

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130010a00">
「……何やら騒がしくなってきたな」

{	FadeStR(300,false);
	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0130020a01">
「そうね……。
　何かあったのかしら」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　敷地内の何処かで、多数の人間が走り回って何かを
追っているような気配がある。
　足音、そして声。

　戦闘とまではゆかぬにしても、不穏な様子だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130030a00">
「銀星号……ではないな？」

{	FwC("cg/fw/fw村正_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0130040a01">
「ええ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　村正の返答に迷いはない。
　あれが現れたのなら事態は一目瞭然、既に周辺一帯
は混沌の渦中にある筈であった。

　差し当たって、わざわざ首を突っ込みにゆく必要は
ないだろう。
　俺は鍛錬を続けることにした。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);
	SetVolume("@mbgm*", 1000, 0, null);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130050a00">
（無想）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　元より、一朝一夕に成る事だとは思っていない。

　才有る武人が一生涯を修行に費やして、それでなお
辿り着けるかどうかは天運を恃まねばならない境地だ。
　湊斗景明が、この年齢で手掛かりのひとつなりとも
掴めていたなら、望外の幸というものだろう。

　しかし俺は手掛かりどころか全てを手にせねばなら
ない立場なのだ。
　それが必要なのだから、獲得しなくてはならないの
だ。

　そう思うと……
　二時間試してもまるで手応えというものを感じられ
ないこの現状に、暗澹たる気分を催さずにはいられな
かった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130060a00">
（焦るな……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　焦りは何の益にもならない。
　無論、諦めも。

　もう一度やってみよう。
　今度は――<k>あの木の葉がいい。

　そよ風に揺られ、今にも落ちそうに見える。
　耳目を使わず、あの葉が落ちる一瞬を察知し、地面
へ落ちる前に手で捕まえるのだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト

	CreateColorEX("黒幕１", 6001, "#000000");
	Fade("黒幕１", 3000, 1000, null, true);

	DeleteStR(0,true);
//◆ウェイト
	WaitKey(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　――今か!?

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//―――――――――――――――――――――――――――――

//◆しゅん。手を飛ばす
	CreateTextureEXadd("絵背景501", 10000, Center, Middle, "cg/ef/ef002_汎用移動.jpg");
	OnSE("se人体_動作_素振り打ち下ろし01", 1000);
	Fade("絵背景501", 100, 1000, null, true);
	FadeDelete("絵背景*", 500, true);

//◆ばっ。布を掴む音
	OnSE("se人体_動作_腕を掴む01", 1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　取った!!

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//―――――――――――――――――――――――――――――

//◆フェードイン

//◆ぱっと眼を開く
//◆真ん前に童心（編笠）アップ。
	CreateWindow("絵窓左", 5000, 300, 0, 424, 576, false);
	SetAlias("絵窓左","絵窓左");

	CreateTextureSP("絵窓左/絵演背景", 5020, InLeft, Middle, "cg/bg/bg053_堀越御所の庭_01.jpg");
	Zoom("絵窓左/絵演背景", 0, 2000, 2000, null, true);
	CreateTextureSP("絵窓左/絵演立", 5100, Center, InBottom, "cg/fw/fw童心変装_通常bex.png");
//	Move("絵窓左/絵演立", 0, @-50, @0, null, true);
//	Move("絵窓左/絵演背景", 0, @-30, @0, null, true);

	CreateColorEX("絵窓下色100", 1500, "BLACK");
	Fade("絵窓下色100", 0, 300, null, true);


//	Move("絵窓左/絵演立", 100, @50, @0, Dxl1, false);
//	Move("絵窓左/絵演背景", 100, @30, @0, Dxl1, false);

	OnSE("se擬音_コミカル_殴り04",1000);
	Zoom("絵窓左/絵演立", 100, 1100, 1100, Dxl1, false);

	FadeDelete("黒幕１", 100,true);

	Zoom("絵窓左/絵演立", 300, 1000, 1000, Axl1, false);

	Wait(1000);

	Fade("絵窓左/絵演背景", 2000, 0, null, false);
	Fade("絵窓左/絵演立", 2000, 0, null, false);
	Fade("絵窓下色100", 2000, 0, null, false);

//	FadeDelete("絵窓*", 2000, false);


	SetFwC("cg/fw/fw童心変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130070a09">
「…………」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0130080a01">
「ごめん……
　声掛けようか、迷ったんだけど……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130090a00">
「…………」

//◆平板な声で
{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130100a00">
「うわぁ」

{	FwC("cg/fw/fw童心変装_通常a.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130110a09">
「おぬし、感情表現が苦手か？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130120a00">
「失礼致しました。
　鍛錬中にて、全く気付かず」

{	FwC("cg/fw/fw童心変装_通常a.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130130a09">
「や、や。謝るには及ぶまい。
　悪戯心を起こし、黙って近付いたこちらの
非に決まっておるからのう」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	Delete("絵窓*");

	SoundPlay("@mbgm23", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　からからと笑う、巨躯の僧侶。
　……誰だろうか？　どうもこの堀越御所の人間には
見えないが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心変装_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130140a09">
「しかし、鍛錬とな？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130150a00">
「口幅ったい申しようでありました」

{	FwC("cg/fw/fw童心変装_通常a.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130160a09">
「か、どうかは聞いてみるまでわからぬ。
　お若い方、いかなる鍛錬をしておられたの
かな？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130170a00">
「は……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　他人に話すような事柄ではない。
　増して何の成果も挙げていないとなれば尚更、口外
するのは恥ずかしい。

　とはいえ、所以もなしに胸倉を掴み上げてしまった
負い目がある……。
　
　俺は仕方なく、僧の興味深そうな視線に応えた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130180a00">
「いわゆる無想という理念を、体得できない
ものかと」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130190a09">
「ほゥ……。
　無想」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130200a00">
「目に頼らず、そこの葉が落ちる瞬間を悟れ
ないか、試していたのです」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　梢の葉はまだ風に揺れていた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心変装_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130210a09">
「それは、<RUBY text="なまなか">生半</RUBY>な修行では成し得まい」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130220a00">
「如何にも……」

{	FwC("cg/fw/fw童心変装_通常a.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130230a09">
「高みを目指して己を鍛えるのは良きことで
あろうがの。
　おぬし、武人として大成するが望みか？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130240a00">
「…………いえ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　間を挟んだのは、回答に悩んだからではなく、回答
が自分でも不思議であったからだった。
　そう。俺はいま剣聖になろうとして足掻いているが、
剣聖の境地そのものには深い関心を持っていない。

　考えてみれば、変な話だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st村正_通常_私服.png");
	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130250a00">
「ただ、必要なので」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130260a09">
「うむ？
　無想を体得することが、必要？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130270a00">
「……はい。
　自分には、倒さねばならぬ敵がいるのです」

//【景明】
<voice name="景明" class="景明" src="voice/md02/0130280a00">
「自分より遥かに勝る力を持った敵が……」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130290a09">
「ほゥ……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130300a00">
「……」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130310a09">
「その者と戦って勝つために、無想の境地を
目指している、と……？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130320a00">
「はい」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130330a09">
「……なるほどのう」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130340a00">
「<RUBY text="ごぼう">御坊</RUBY>。
　宜しければ、御助言を下さいませんか」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130350a09">
「助言か……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130360a00">
「自分如き凡才には、まさに雲を掴む心地」

{	FwC("cg/fw/fw童心変装_通常a.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130370a09">
「ふっふぅ」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130380a00">
「……」

{	FwC("cg/fw/fw童心変装_大笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130390a09">
「ふわっはっはっはっはっはっはっはっはっ
はっはっはっはっはっはっはっはっはっは!!」

{	FadeStR(300,false);
	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0130400a01">
「ちょっと貴方！」

{	FwC("cg/fw/fw童心変装_大笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130410a09">
「はっはっはっはっはっはっはっ――」

{	FwC("cg/fw/fw村正_怒りa.png");}
//嶋：修正（悩みを）【090930】
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0130420a01">
「こんのっ……
　坊さんのくせに、ひとの悩み聞いて笑う
ってどういう了見よっ！」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0130430a01">
「事と次第によっては一発かますからね！」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130440a00">
「村正。怒るな」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0130450a01">
「だって！」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130460a00">
「傍から見れば滑稽なのは間違いない」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　自分でも変だと思ったばかりである。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0130470a01">
「そんなことないもの。
　だいたい、人が真剣にやってるのを茶化す
ってのがおかしいでしょ！」

{	FwC("cg/fw/fw童心変装_通常a.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130480a09">
「いや、全く全く……
　蝦夷の姫御の言う通り」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130490a09">
「これは拙僧が悪かった。
　この通り、お許しくだされ」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0130500a01">
「…………」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130510a00">
「頭をお上げ下さい。
　助言を求めたのはこちらの勝手、御坊が気
に病まれる事は何もありません」

{	FwC("cg/fw/fw童心変装_通常a.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130520a09">
「いやいやいや」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0130530a01">
「謝るなら、笠くらい取りなさいってのよ」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130540a00">
「村正」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130550a09">
「いちいちごもっとも。
　しかし、取るに取れぬ事情がござって」

//【童心】
<voice name="童心" class="童心" src="voice/md02/0130560a09">
「このことも含めて、どうかご勘弁くだされ」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0130570a01">
「ふんっ……」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130580a09">
「代わりと云うては何だが。
　お若い方、助言をさせて頂こう」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130590a00">
「……は。
　承ります」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130600a09">
「先ほど笑うたのは、おぬしの修行がおかし
かったわけではなくての。
　おぬしの心得違いがおかしかったのよ」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130610a00">
「心得違い……」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130620a09">
「うむ」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0130630a01">
「何よ、それ」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130640a09">
「そも……
　無想とは、何であろうかな？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130650a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130660a00">
「一切の執着を捨て去り、何も欲さず、何も
求めず……
　心を<RUBY text="くう">空</RUBY>として、世界と同化することである
かと」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130670a09">
「空は<RUBY text="ゼン">全</RUBY>に通ず。
　全てを得んと欲する者、全てを捨つるべし」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130680a00">
「は」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130690a09">
「色即是空、空即是色。
　世に万物あれど、執着すべき物はなし……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130700a00">
「……」

{	FwC("cg/fw/fw童心変装_通常a.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130710a09">
「わからぬかな？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130720a00">
「……はっ？」

{	FwC("cg/fw/fw童心変装_通常a.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130730a09">
「おぬしは誰かと戦うために、無想を求める
のであろう？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130740a00">
「はい」

{	FwC("cg/fw/fw童心変装_通常a.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130750a09">
「執着しておるではないか」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130760a00">
「――――」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130770a09">
「勝ちに執着するがため……
　執着を捨てねば至れぬ境地を求める」

{	FwC("cg/fw/fw童心変装_通常a.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130780a09">
「これは道理が通るまい」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130790a00">
「……………………」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130800a09">
「勝ちにこだわる間は、決して無想に届かぬ。
　無想に届いた時は、勝ちなどどうでも良く
なっておる」

{	FwC("cg/fw/fw童心変装_通常a.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130810a09">
「いや、まこと残念だが――
　敵に勝つため無想を求めるというおぬしの
修行、これは全く、何の、意味もないっ！」

{	FwC("cg/fw/fw童心変装_大笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130820a09">
「ふわっはっはっはっはっはっはっはっは!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　再び大笑する僧侶。
　先の謝罪など忘れたと言わんばかりの態度であった
が、俺はやはり、腹を立てることができなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130830a00">
（何と、まあ――）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　笑われるのも仕方ない。

　初歩的と云うか何と云うか。
　実に下らぬ、愚かな過ちを犯していたものだ。

　自分で自分を指差して笑いたいくらいの心地だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0130840a01">
「……でもむかつく」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130850a00">
「仕方ない」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0130860a01">
「一発殴らせて」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130870a00">
「やめておけ。
　この方が忠告して下さらなかったら、俺は
いつまで的外れな修行をしていたかわからん」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　むしろ礼を言うべきであろう。
　そう気付いた俺は、いまだ腹を震わせている僧侶に
一礼した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130880a00">
「貴重な御助言を賜りました。
　御坊、有難うございます」

{	FwC("cg/fw/fw童心変装_通常a.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130890a09">
「いや、いや……
　……ふむ……」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130900a09">
「さて、わしとしたことが。
　相手がこう率直だと、ただ笑ったままでは
帰れぬ心地だのう……」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0130910a01">
「いいから行きなさいよ、もう。
　つぎ笑ったら、本当に手か足が出ますから
ね」

{	FwC("cg/fw/fw童心変装_通常a.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130920a09">
「剣呑剣呑。
　では、手短に済ませよう」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130930a09">
「お若い方、おぬしが求めるべきは無想では
ない。
　無我であろうの」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130940a00">
「無我」

{	FwC("cg/fw/fw童心変装_通常a.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130950a09">
「うむ」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130960a00">
「……」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130970a09">
「意味はおわかりか？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0130980a00">
「字義を追えば……
　<RUBY text="おのれ">自己</RUBY>の全てを無にすること、かと」

{	FwC("cg/fw/fw童心変装_通常a.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0130990a09">
「さよう。
　無想が外の<RUBY text="せかい">宇宙</RUBY>を無とする理念であれば、
無我は内の<RUBY text="おのれ">宇宙</RUBY>を無とする理念」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0131000a09">
「これもまた、<RUBY text="ゼン">全</RUBY>に通ずる法であろう」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0131010a00">
「しかし、御坊」

{	FwC("cg/fw/fw童心変装_通常a.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0131020a09">
「うむ」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0131030a00">
「これもやはり、自分には意味がないのでは
……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　<RUBY text="てき">銀星号</RUBY>を倒すという望みは、紛れもなく自己の意思
から来るものである。
　我を消せば、その望みもまた消える道理。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心変装_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【童心】
<voice name="童心" class="童心" src="voice/md02/0131040a09">
「さて、どうであろうかな」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0131050a00">
「……」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0131060a09">
「敵に勝ちたいと云うたのう。
　それは、全くの私欲からかな？」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0131070a00">
「はい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　私事、私欲である。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心変装_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【童心】
<voice name="童心" class="童心" src="voice/md02/0131080a09">
「本当に、私欲のみか？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0131090a00">
「は……」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0131100a01">
「……詳しい話はしないけど、色々と厄介な
相手だから。
　倒した方が世の中のためではあるでしょう
ね」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0131110a00">
「村正――」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0131120a01">
「もちろん、だから私達は正義だなんて烏滸
がましいことを言う気はないけれど」

{	FwC("cg/fw/fw童心変装_通常a.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0131130a09">
「いやいや。
　ここは、その烏滸がましさが肝要よ」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0131140a09">
「お若いの。おぬしはその敵との戦いがまず
第一に私事であるがゆえに、世のためなどと
称するのを恥じるのであろうが……
　それもまた心得違い」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0131150a00">
「……とは？」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0131160a09">
「無我に至らば、私事も私欲も既に無い」

//【童心】
<voice name="童心" class="童心" src="voice/md02/0131170a09">
「有るのは世の大義のみ。
　その敵を討てと欲する、世の意志のみ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0131180a00">
「――――」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0131190a09">
「おぬしの戦いに、一片でも大義があるなら。
　迷うことはない。無我の境地を求めよ」

//【童心】
<voice name="童心" class="童心" src="voice/md02/0131200a09">
「おぬしの意思が消え去ろうとも……
　世の意志がおぬしを衝き動かし、敵を討つ
であろう」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0131210a01">
「…………」

{	FwC("cg/fw/fw童心変装_通常b.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0131220a09">
「…………」

{	FwC("cg/fw/fw童心変装_通常a.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0131230a09">
「ふっ、ふっふぅ。
　やれ、柄でもないことをほざいたものよ」

//【童心】
<voice name="童心" class="童心" src="voice/md02/0131240a09">
「おぬしがさような大義の武人となった暁に、
まず斬られるはこの破戒坊主であろうにの。
　墓穴を掘るとは、このこと」

//【童心】
<voice name="童心" class="童心" src="voice/md02/0131250a09">
「お若い方、そのような者になってくれるで
ないぞ！
　わしは大いに困るからのう！」

{	FwC("cg/fw/fw童心変装_大笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md02/0131260a09">
「はぁっはっはっはっはっはっはっはっ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆童心、去る
	CreateSE("SE01","se人体_足音_歩く08");
	MusicStart("SE01",0,1000,0,800,null,false);
	SetVolume("SE*", 3000, 0, null);

	WaitKey(1000);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0131270a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　<RUBY text="ムガ">無我</RUBY>。

　……無我、か。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 1500);

}

..//ジャンプ指定
//次ファイル　"md02_014.nss"