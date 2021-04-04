//<continuation number="440">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_011.nss_MAIN
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
	#bg056_建長寺三門前_03=true;
	#bg032_八幡宮奥舞殿内b_03a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md03_012.nss";

}

scene md03_011.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md03_010.nss"


//◆建朝寺。bg056_夜
//◆親王座所

//冒頭以降、演出として立ち絵立たせていません。 inc櫻井

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");


	OnBG(100, "bg056_建長寺三門前_03.jpg");
	FadeBG(0, true);


	SoundPlay("@mbgm16", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒",2500,true);

	WaitKey(2000);


	OnBG(101, "bg032_八幡宮奥舞殿内b_03a.jpg");
	FadeBG(1500, true);

	Wait(500);

	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0110010a01">
「…………こんなところかしら」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　奉刀参拝の日、八幡宮で起きた出来事。
　その後、連れて行かれた伊豆堀越でのこと。
　景明と引き離され、閉じ込められ、そして救い出さ
れて<RUBY text="ここ">建朝寺</RUBY>へ来るまでのこと――

　話すべきと思えたことは全て話した。
　相手は、

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆署長

	StR(1000, @0, @0, "cg/st/st署長_通常_制服.png");
	FadeStR(300, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　景明に『署長』と呼ばれていた男、菊池明堯。
　昔は湊斗家に身を置いていたため〝村正〟について
も良く知る、景明を別とするなら私にとってこの時代
では最も馴染みのある人物のひとり。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStR(300,false);

//◆舞殿宮

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　<RUBY text="まいどののみやはるひろしんのう">舞殿宮春煕親王</RUBY>殿下。
　今上の帝の弟君だという。会うのは今日が初めてだ
けれど、景明と私の銀星号追跡を署長と二人で陰日向
に<RUBY text="たす">援</RUBY>けてくれていたらしい。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆大鳥香奈枝＋さよ

	StR(1000, @0, @0, "cg/st/st香奈枝_通常_私服c.png");
	StL(1000, @0, @0, "cg/st/stさよ_通常_私服.png");
	FadeStL(300, false);
	FadeStR(300, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　そして一応の面識はある、大鳥香奈枝とその侍従。
　大和人だけれど外国の軍隊に所属して大和にいると
いう、何だか良くわからない二人。<RUBY text="じーえいちきゅー">ＧＨＱ</RUBY>とか進駐軍
とか言っていたか……。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(200,true);
//◆一条
	StR(1000, @0, @0, "cg/st/st一条_通常_制服b.png");
	FadeStR(200, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　こちらも景明に付きまとっていたから知っている、
一条綾弥……もとい、<RUBY text="あやね">綾弥</RUBY>一条。
　どんな理由からか、奇妙に複雑なものを込めた目で
ずっと私を見ている……。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStR(200,true);

//◆黒瀬童子

	StL(1000, @0, @0, "cg/st/st黒瀬_通常_私服.png");
	FadeStL(200, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　最後に、<RUBY text="くろのせどうじ">黒瀬童子</RUBY>と称する武人。
　どうも六波羅幕府に敵対する一勢力の頭目のような
立場らしい。茶々丸の館に忍び込んで窮したところを
景明と私に救われ、再びやって来て今度は私を救った。

　彼だけは銀星号について何も知らなかったらしく、
私の話を聞いてだいぶん困惑した様子を見せている。
　覆面の中で押し黙り、情報を咀嚼するふうだった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStL(300,true);

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md03/0110020a10">
「……驚いたなあ……」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md03/0110030a10">
「何から驚いたらええのかわからんくらいの
心地やねえ。
　なぁ、署長」

{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0110040a11">
「……はい」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md03/0110050a10">
「この姉ちゃんが村正の劒冑ってのは、ま、
署長から聞いてたからええとしといて。
　……ほんとはちっとも良くないけどなぁ」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md03/0110060a10">
「景明くんが銀星号の力で洗脳されて、幕府
側に寝返ってるやて？」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0110070a01">
「…………」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md03/0110080a04">
「されど聞く限り、茶々丸殿と六波羅とは、
必ずしも同一視できぬようでございますな」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md03/0110090a03">
「そうですね。
　幕府ではなく堀越公方が銀星号と繋がって
いて、今は景明さまをも取り込んでいる……
と考えるべきでしょう」

{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0110100a02">
「いったい何を企んでんだよ、そいつは」

{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md03/0110110a04">
「さぁて……。
　銀星号と連携して何やら大事を起こそうと
いう肚のようですが」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md03/0110120a03">
「単純に幕府内の権力争いに利用しようとか、
進駐軍との戦争に役立てようとか、そういう
次元の話ではなさそうです。
　もっと……異質な」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0110130a11">
「確かに。
　四公方のほか三人――遊佐童心、今川雷蝶、
大鳥獅子吼らとて独自の野心には事欠かない
でしょうが、」

{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0110140a11">
「彼らのそれはまず六波羅という土台に拠る
もので、だからこそ外敵に対しては結束して
当たることもできます。
　しかし、足利茶々丸は――」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md03/0110150a10">
「そこんとこが、なんか違う感じやなァ」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0110160a11">
「はい」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md03/0110170a03">
「…………」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md03/0110180a04">
「…………」

{	FwC("cg/fw/fw黒瀬_瞑目.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/0110190b26">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　申し合わせたように、皆が沈黙した。
　誰も疑問の答を出せなかったのだろう。

　足利茶々丸と銀星号の繋がりを教えた私にしてから
が、茶々丸の目的にさっぱり見当を付けられないのだ
から仕方ない。
　本当に――何を望んでいるのか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md03/0110200a10">
「ああ、すまんなぁ、村正の姉ちゃん。
　こっちで勝手に盛り上がってて」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0110210a01">
「いえ……」

{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md03/0110220a04">
「どちらかというと、皆で盛り下がっていた
のですがねぇ」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md03/0110230a10">
「聞いてばっかで、こっちから何にも話しと
らんかったわ。
　ええとな、こっちはこっちで色々とあって
――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　宮様は署長と一緒に、奉刀参拝から今までのことを
かいつまんで説明してくれた。
　八幡宮が銀星号によって<RUBY text="・・・">消えて</RUBY>しまったので、宮様
の居はこの建朝寺に移されたこと……。

　建朝寺は幕府を牛耳る足利一門と縁深いが、それで
いて朝廷に心を寄せる僧も実は密かに多いため、宮様
を中心とする一派は以前より活発な行動がとれるよう
になったこと……。

　その成果の一つが、幕府に反逆して滅ぼされた岡部
一族の残党との接触であり、彼らをまとめているのが
ここにいる黒瀬童子であること……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md03/0110240a10">
「それで童子から堀越御所で妙な男に助けら
れたって話を聞いてなぁ……名前は湊斗景明
やっていうやないか。
　もうひっくり返るかと思うたえ」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md03/0110250a10">
「いないいない言うて探してた景明くんが、
まさかそんなとこにいるなんてなァ。
　慌てて童子にお願いして、もう一度詳しい
様子を調べに行ってもろたんよ」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0110260a01">
「……そうですか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　それで幽閉されていた私を発見した、ということの
ようだ。
　
　……正直、その辺りの経緯にはさほど関心なかった。

　関心があるとすれば――この先のことで。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【署長】
<voice name="署長" class="署長" src="voice/md03/0110270a11">
「さて。
　情報を整理したところで、今後の話です」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md03/0110280a10">
「そやな。
　景明くんを助け出したげんと」

{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0110290a11">
「いえ、宮殿下。
　そのようなことは後回しで良いでしょう」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　景明の養父と聞いているその男は、言い切った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md03/0110300a10">
「後回しって、菊池ぃ」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md03/0110310a03">
「……まぁ……利用されているということは
差し当たって命を奪われる危険はないという
ことでもありますけれど」

{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md03/0110320a04">
「何にどう利用されるのかにもよりますなァ」

{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0110330a11">
「堀越公方の目論見も気掛かりですが、幕府
全体の動きも忘れてはなりません。
　今はこちらの方が差し迫っています」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0110340a11">
「幕府が朝廷に働き掛けている、足利邦氏へ
の大将領宣下……。
　これが成功した時、おそらく大和の情勢は
決定的な節目を迎えます」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md03/0110350a03">
「……ええ。
　その時機に合わせて、ＧＨＱが軍事行動を
企画しているのはほぼ疑いありません」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md03/0110360a04">
「決定力となる新兵器が用意されている模様
でございます」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0110370a11">
「六波羅と進駐軍。
　我々としてはどちらの勝利も望ましくない」

{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0110380a11">
「無論、両者の戦争が決着せず、いたずらに
国土と国民を疲弊させてゆくのも」

{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/0110390b26">
「……今は両者を争わせるべきではない。
　従って、足利四郎への大将領宣下を妨害し
なくてはならぬ、ということか」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0110400a11">
「そうです」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md03/0110410a10">
「京都と連絡を取り合って、何とかかんとか
引き伸ばしてもろうてるけどなァ……。
　いつまで続けられるかはわからんねえ」

{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0110420a11">
「長くはもたないでしょう。
　今のうちに幕閣内への工作を進め――」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0110430a01">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　話は政治のことに移ってしまった。
　わかっている……この人達にとってはそれこそ重要
なのだ。

　納得できるし、愚かだとも薄情だとも思わない。
　
　けれど。

　けれど、私は――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【一条】
<voice name="一条" class="一条" src="voice/md03/0110440a02">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md03_012.nss"