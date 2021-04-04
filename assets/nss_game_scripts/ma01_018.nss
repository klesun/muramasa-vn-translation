//<continuation number="420">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_018.nss_MAIN
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
	#bg005_山中_01=true;
	#bg019_廃校教室_01=true;
	#bg002_空a_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma01_019.nss";

}

scene ma01_018.nss
{
	$スクリプトバージョン = "  Version $Revision: 28 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma01_017.nss"

	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg005_山中_01.jpg");

	SoundPlay("@mbgm24",1000,1000,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);


//◆山中

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　木々の狭間の向こうに、<RUBY text="ひら">拓</RUBY>かれた山棚が見える。
　その奥には――老朽した木造の平屋。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st忠保_通常_制服.png");
	StR(1000, @0, @0,"cg/st/st小夏_通常_制服.png");
	FadeStL(300,false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0180010b56">
「立ち入り禁止区画って書いてあるな……」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0180020b43">
「それにしては警備員もいないね」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0180030b33">
「警備なんかしなくたって、こんなとこ誰も
わざわざ来ないでしょ。普通」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　だろうな。
　ここまで来るには道なき道――というか<RUBY text="・・">昔は</RUBY>ちゃん
とした道があったらしい場所――を、えんえん進んで
こなくてはならなかったのだ。

　ハイキングコースにこんな選択をする物好きもそう
いまい。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0180040b56">
「先生、ここなんですか？」

{	FwC("cg/fw/fw鈴川_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0180050b57">
「ああ。
　あっちに」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStL(300,false);
	DeleteStR(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　と、鈴川は山裾の方角を指差した。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	StR(1000, @0, @0,"cg/st/st鈴川_通常_制服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw鈴川_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0180060b57">
「竹林にあったのと同じような、地下水脈が
地表に現れている場所がある」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0180070b56">
「はぁ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　そう言われても、おれには何も見えなかったが。
　しかし確かに、耳を澄ますと水の流れと思しき音が
聞こえてくる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0180080b56">
「んで……あの建物は一体？」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0180090b43">
「学校みたいに見えますけど」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0180100b33">
「それにしては小さくない？」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0180110b56">
「だな。長屋じゃないのか？」

{	FwC("cg/fw/fw鈴川_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0180120b57">
「いや、稲城の言う通りだ。
　校舎だよ。<RUBY text="・・・・・・">うちの学校の</RUBY>校舎だ」

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0180130b56">
「へ!?　そうなんですか？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　聞いたことがないぞ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw鈴川_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0180140b57">
「……ずっと昔の話だがな。
　今の場所に移転する前はここにあったんだ」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0180150b56">
「あ、なるほど」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @-60, @0,"cg/st/st忠保_通常_制服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw忠保_冷徹.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0103]
//◆真剣顔
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0180160b43">
「そういえば以前そんな話をどっかで小耳に
はさんだような気が」

{	FwC("cg/fw/fw忠保_笑顔b.png");}
//◆韜晦顔
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0180170b43">
「全然しない」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StCL(1010, @-60, @0,"cg/st/st小夏_通常_制服.png");
	Move("@StML*", 300, @60, @0, DxlAuto, false);
	FadeStCL(300,false);

//	SetComic(@0,@0,18);
	SetFwC("cg/fw/fw小夏_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0105]
//◆かわゆく。うぃんく？
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0180180b33">
「なら言うな☆」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆バキャ。
	OnSE("se戦闘_攻撃_殴る01",1000);
	CreateColorSP("フラ", 15000, "#FFFFFF");

	DeleteStA(0,true);
	StR(1000, @0, @0,"cg/st/st鈴川_通常_制服.png");
	FadeStR(0,true);

	FadeDelete("フラ", 600, false);

	SetFwC("cg/fw/fw鈴川_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0180190b57">
「先生が子供の頃の話だからな。
　知らなくて当然だ」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0180200b56">
「よく今まで残ってましたね」

{	FwC("cg/fw/fw鈴川_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0180210b57">
「経費は掛かるが利益のない撤去作業を誰も
やりたがらなかったというだけのことだろう。
　もう皆、ここに校舎があることなど忘れた。
だからずっとこのままだ」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0180220b57">
「いつか自然に崩れ落ちるまで」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	DeleteStR(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　それを良しとしているのか、悪しとしているのか、
鈴川の表情から判別することはできなかった。
　感情を示す色彩はあった――が、おれがそれを読み
解く前に鈴川は再び歩き出していた。

　廃校舎へ向かって。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_驚くa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0180230b56">
「……いっ？
　あの、ちょっと先生、危ないっスよ!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　放置されてもう長いのだ。
　いつ屋根が落ちるやら知れたものではない。だから
立ち入り禁止なのだろうし――<k>いや。それもそうだが、
そういう問題じゃない。

　鈴川の読みが的を射ていれば、ここは犯人の用いる
犯行拠点なのかもしれないのだ。
　まさかここで寝泊りしているということはあるまい
が……そんな可能性とて捨て切れたものでもなかろう。

　無造作に踏み込むのが賢いとは思えなかった。
　しかし鈴川はおれの制止に構わず、建物へ近づいて
いく。

　残った三人、顔を見合わせる。
　逡巡と困惑が共通して在った。

　やがて、忠保がひとつ肩をすくめ、鈴川の後を追う。
　一歩遅れて、おれと小夏も続いた。

　……ここまで来たら、もう腹を決めるしかないか。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("暗転", 5, "#000000");
	DrawDelete("絵背景*", 1000, 100, "blind_01_00_1", true);

//◆黒
	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　埃の匂い。
　黴の匂い。
　朽ちた木材の乾いた匂い。

　そこまでは覚悟していた。
　そういうものだとわかっていた。

　だが。
　それら全ての匂いを押し潰し、圧倒的な存在を誇る、
この<RUBY text="す">饐</RUBY>えた臭気は――果たして、何なのか。

　似たような匂いを知ってはいた。
　ごく身近な匂いだ。
　家庭で。学校で。あるいは路上で。

　室内の薄暗さに、少しずつ眼が慣れてくる。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵背景1", 1, Center, Middle, "cg/bg/bg019_廃校教室_01.jpg");
	DrawDelete("暗転", 1000, 100, "blind_01_00_1", true);


//◆廃校の教室


	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0180240b56">
「……教室？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　そんな風に見えた。

　廃棄される際に持ち出されたのか、椅子も机も何も
無かったが。
　しかしそれさえあれば、今でも学び舎としての体裁
は辛うじて整えられるように思える。

　鈴川の姿は見えない。
　まさかその代役ではあるまいが、大きな箱が四つ、
教壇のあるべき辺りには並んでいる。

　どうもそこから匂うようだった。
　複雑な要素が絡み合った、この<RUBY text="・・・・・">ゴミ捨て場</RUBY>のそれに
良く似た匂いは。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	StL(1000, @0, @0,"cg/st/st忠保_通常_制服.png");
	StR(1000, @0, @0,"cg/st/st小夏_通常_制服.png");
	FadeStL(300,false);
	FadeStR(300,true);


	SetFwC("cg/fw/fw忠保_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0180250b43">
「なんだろうねぇ……あれ」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0180260b33">
「ゴミ箱かな」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0180270b56">
「始末してけよ……そんくらい」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0180280b43">
「うーん、水の匂いが混じってるような気も
するけど」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0180290b33">
「じゃあ水槽？」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0180300b56">
「金魚でも飼ってたのか？」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0180310b43">
「さてねぇ。
　まぁ、開けてみればわかると思うよ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　そんなことは言われるまでもない。
　全員それがイヤだから、ここでああだこうだと言い
合ってるんだろうに。

　匂いは悪いが物は良い、なんてのはくさやとチーズ
とドリアンくらいのものだ。
　悪臭の根源は大概、人間にとって嬉しくもなんとも
ない代物と決まっている。

　といって、鈴川もいない、うかつに歩き回りたくも
ないという状況では、その臭気の元を確認する以外に
これといって前向きな行動選択もなかった。
　ただ突っ立って待つのも落ち着かない話。

　……あー、仕方ねえ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	DeleteStL(300,false);
	DeleteStR(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0195]
　おれは恐る恐るに、箱の方へと近づいた。
　ネズミの群れとか飛び出してきたらヤだなぁと思い
つつ。

　箱はプラスチック製。
　別に鍵などは掛かっておらず、ただ上から蓋を被せ
てあるだけのようだった。

　簡単に開けられそうだ。
　嬉しくねぇ。

　ちょいちょい、と側面を指でつついてみる。

{	CreateSE("SE01","se人体_血_吐血01");
	MusicStart("SE01",0,1000,0,500,null,false);}
　かすかにチャポンという音がした。
　どうやら忠保の鼻は確かだったらしい。

　縁に手をかける。
　一度深呼吸し、息を止めて、おれは蓋を開け放った。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("暗転", 1500, "#000000");
	Fade("暗転", 200, 1000, null, true);

	WaitKey(400);

	FadeDelete("暗転", 400, true);


//◆ＣＧ……を用意するのもアレなら、一瞬ホワイトアウトもしくはブラックアウト

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　……箱の中身はおよそ、おれの予測とはかけ離れて
いた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_驚くa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0180320b56">
「…………」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0180330b43">
「雄飛？」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0180340b33">
「……何なの？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　おれと同じように危険物を想像して備えていたのだ
ろう、鼻を押さえつつ、二人が口々に問う。
　おれは見たままを告げるしかなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_驚くa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0180350b56">
「……花だ」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0180360b43">
「はぁ？」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0180370b56">
「だから、花……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　花だった。
　箱一杯の花。

　……なんでやねん。

　箱は水で満たされ、その水面一面を花弁が覆い尽く
している。色は紫。珍しくもないよく見かける花。
　<RUBY text="コスモス">秋桜</RUBY>だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw小夏_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0180380b33">
「花って。
　なんでそんなのがわざわざ箱に納まってる
のよ」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0180390b56">
「おれが聞きたい」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st忠保_通常_制服.png");
	StR(1000, @0, @0,"cg/st/st小夏_通常_制服.png");
	FadeStL(300,false);
	WaitKey(200);
	FadeStR(300,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　半信半疑なのか、まだ鼻を覆う手はどかさないまま、
二人が寄ってくる。
　おれはそろそろ、息が<RUBY text="も">保</RUBY>たなくなってきていた。

　慎重に、呼吸を再開する。

　……最初に感じたのは薬品臭。
　ただの水ではないのだろうか？

　そして――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆一瞬フラッシュ
	CreateColorSP("フラ", 15000, "#FFFFFF");
	SetVolume("SE*", 0, 0, null);
	SetVolume("OnSE*", 0, 0, null);
	SetVolume("@mbgm*", 0, 0, null);

	DeleteStL(0,true);
	DeleteStR(0,true);
	FadeDelete("フラ", 100, false);

	SetFwC("cg/fw/fw雄飛_驚くa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0180400b56">
「!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　危うく。
　おれはその場で卒倒しかけた。

　なんだ!?
　<RUBY text="・・・・・・・・">なんだこの匂いは</RUBY>。

　悪臭……いや。
　そんなもんじゃない。
　<RUBY text="・・・・・・・・・">そんなものではない</RUBY>。

　暴力。
　臭気の暴力。殴打的臭気。

　<RUBY text="・・・・・・・">あまりの悪臭に</RUBY>、<RUBY text="・・・・・・・・・・">認識が一瞬遅れたほど</RUBY>。
　そうと気付かず沸騰したやかんに触れた時のように。

　こんな匂いは知らない。
　いや知っている……。
　
　どっちだ!?

　……この匂いは知らないが、<RUBY text="・・・・">こうなる</RUBY>匂いは知って
いる。

　それは。
　それは。

　臭気はおれの脳まで揺らしていたのか。
　視界が傾き、たたらを踏む。

{	CreateSE("SE01","se日常_物_椅子鳴る02");
	MusicStart("SE01",0,1000,0,750,null,false);}
　バランスを崩したおれの体が支えを求めて、箱の縁
を片手でつかんだ。
　しかし場所が悪かったらしい。その瞬間箱はくるり
と回り、中身を床に投げ出した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateColorSP("フラ", 15000, "#FFFFFF");
	CreateColorSP("暗転", 5000, "#000000");

//◆ばしゃー。
	CreateSE("SE02","se日常_水_零れる01");
	MusicStart("SE02",0,1000,0,1000,null,false);

	FadeDelete("フラ", 1000, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　転がり出る。
　転がり出てくる。

　それは何だ。
　花。
　水。

　そしてそれ以外。
　それは何だ。

　せ<k>
　
　　　　　　　　制服

　制服だ。制服。うちの学校の制服。女子用の。
　見覚えがある。あるに決まってる。いや、そういう
意味じゃない。

　あと、鞄、<k>
　
　　　　　　　　　鞄がある、

　ちゃらりと鳴った、<k>
途中で切れてる、<k>
　　　　　　　　　　　　　　　　　　　　イルカ

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	FadeDelete("暗転", 1000, false);

	SetFwC("cg/fw/fw小夏_驚くa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0180410b33">
「――――――――――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　小夏がなんか叫んでいる。
　ああああうるせぇ。考えの邪魔だろ。みろ今まで何
考えてたんだったか忘れちまったろーが！

　ええとなんだっけなんだっけか。
　そう制服。制服と鞄。
　あと何だ。あと見えるものはなんだ。

　制服の隙間に何か見えるじゃないか。
　何だそれ。

　ああくそ誰だよ。おれの目の前で手をぶんぶん振り
回している奴は。邪魔だろうが。
　忠保か？　違うか。あいつは床にへたり込んでいや
がる。何やってんだ。ケツ汚れるぞ。

　ああくそ見えねえ。
　誰の手だよ！

　なんだおれの手か。

　邪魔だ、どけ。
　おれは何があるのか見たいんだ。

　だからおれの首！　勝手によそを向くんじゃねえ！
　ちゃんと見ろよ。

　何がある。
　何があるんだ。

　制服。
　その中身。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	OnSE("se人体_血_吐血01",1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　今度はそこにびしゃりと何かが引っ掛けられた。
　<RUBY text="ゲロ">吐瀉</RUBY>かよ！　誰だよ！　いい加減にしろよなオイ。

　でもなんか見た目あんまり変わらねえ。
　反吐をかけられたその何かも、反吐と大差ない物体
だった。

　それは黒かったり、
　白かったり、
　ピンクだったり、
　一番多いのは濃い灰色か、

　そんなややこしい色合いをしたもので、
　そしてその形は、

　見覚えが　あって、

　まだ　　<RUBY text="スガタ">原型</RUBY>を　　　　留めていて

　だからわかった

　それは　　　　人で

　知っている人で

　とても良く知っている人で

　とてもあいたかったひとで

　さがしていた

　よかっ　た

　やっとみつけた　だいじな　ひと

　おまえ　だろ？

　そうだろ

　なあ

　　　　　　　　リ
　　　　　　　　　　　　　　　　　　　ツ
　　？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//ボックス消して小ウェイト
	WaitKey(1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　
　　　　　　　　　　頭<k>の<k>な<k>い、<k>
　　　　　　　　　　い<k>る<k>か<k>。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	CreateTextureSP("青空", 10, Center, Middle, "cg/bg/bg002_空a_01.jpg");
	Delete("絵背景*");
//	Delete("暗転*");

//◆青空ＣＧ、顔グラなし？

	SetNwC("cg/fw/nw雄飛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0180420b56">
「ぎゃああああああああああああああああ!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――


	ClearWaitAll(3000, 2000);



}

..//ジャンプ指定
//次ファイル　"ma01_019.nss"
