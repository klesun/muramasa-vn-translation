//<continuation number="1750">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_018.nss_MAIN
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
	#bg067_普陀楽城内能楽堂_01b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb02_019.nss";

}

scene mb02_018.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb02_017.nss"

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg067_普陀楽城内能楽堂_01b.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　舞台の上では狂言が始まっていた。
　演目は『<RUBY text="ふせないきょう">無布施経</RUBY>』。法要を済ませたはいいものの、
決まりのお布施を施主から貰えず困惑する住持の姿が
何とも滑稽である。

　未だ余韻の冷めやらぬ胸中にその軽妙なやり取りは、
まるで食後の茶の一服のように染み渡り、気の<RUBY text="たかぶ">昂</RUBY>りを
宥めてくれる。
　能とは良く考えられているものだと、俺は感服した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ざわっ
	CreateSE("SE01","se背景_ガヤ_ざわめき02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0180010a00">
「……む？」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0180020a02">
「あれ？
　……あの役者」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0180030a00">
「〝頼政〟ではないか……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　急な騒声に目をやれば。
　あの名演を見せ付けた能楽師が、客席に現れていた。

　しかも、役の衣装そのままである。
　……何をしているのか。

　不思議がったのは、本人を除く全員であろう。
　何事かと、警備の兵が男のもとへ駆けつける。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0180040a00">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　だが、彼らはすぐに引き下がった。
〝頼政〟の無作法を咎めるでもなく、泡を食った様子
で。

　能役者はあたかもまだ曲の<RUBY text="さなか">最中</RUBY>にあるかの素振りで、
悠々と美しく足を滑らせ進んでゆく。
　その向かう先は――岡部の遺姫。

　京極家の将士であろう、周囲を固めていた男たちが
いきり立って腰を上げたのも一瞬のこと。
　<RUBY text="たちま">忽</RUBY>ち恐縮の<RUBY text="てい">態</RUBY>で刀の柄へ掛けた利き手を引き剥がす。

　遂に止める者もなく、〝頼政〟は桜子の前に立った。
　そして衣装を脱ぎ去り、頭巾を取り、面に手をかけ
――――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_動作_外套纏う01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw桜子_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180050b28">
「――あっ！」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0180060a00">
「!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆童心
	StL(1000, @0, @0,"cg/st/st童心_通常_私服a.png");
	FadeStL(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　――遊佐童心!?

　馬鹿な。
　なら、主催者然と座している男は一体……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆柳生常闇斎
	CreateColorSP("絵黒幕", 5000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("絵演背景", 2100, -1024, -463, "cg/bg/resize/bg067_普陀楽城内能楽堂_01bl.jpg");

	StR(3000, @0, @0,"cg/st/st常闇斎_通常_私服.png");
	FadeStR(0,true);

	DrawTransition("絵黒幕", 150, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　……誰だ？
　あの異相の男は。

　周囲の人間が驚きつつも咎め立てはしていないこと
から察するに、<RUBY text="うろん">胡乱</RUBY>な者ではないのだろうが。
　俺には見覚えのない男だった。それはつまり、広く
知られた幕府高官ではない事を意味する。

　何にしても、あの男が頭巾を着けて遊佐童心入道の
影武者を務めていたという真相のようだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵黒幕", 5000, "BLACK");
	Fade("絵黒幕", 300, 1000, null, true);
	Delete("絵演*");

	StL(1000, @0, @0,"cg/st/st童心_通常_私服a.png");
	StR(1000, @0, @0,"cg/st/st桜子_通常_私服b.png");
	FadeStA(0,true);

	FadeDelete("絵黒幕", 300, true);
	SoundPlay("@mbgm24",0,1000,true);

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180070a09">
「いやいや……
　驚かせてしまったか」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180080a09">
「すまんのぅ、桜子どの。
　いかぬ、いかぬとわかってはおるのだが、
わしは元来こういう真似が好きでなァ」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180090a09">
「この性根、この歳になってはもう如何とも
ならぬわえ。
　年寄りの戯れと思うて、どうか水に流して
くだされい！」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180100b28">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　姫は呆然とした様子で、返す言葉もない。
　邦氏以下の列席者も大同小異だ。

　……誰が思うか。
　古河公方ともあろう者が、こっそり能楽一座の中に
紛れ込んでシテを張るなどと……！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0180110a00">
「……能楽も武家の嗜みとはいえ」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0180120a02">
「どこまでふざけてんだ。あの坊主」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　一条の声は呟きにしてはやや大き過ぎたが、今なら
ば誰に聴かれても咎められはしないと思えた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180130b28">
「……童心入道様……
　あなたが……あの〝頼政〟を……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180140a09">
「うむ」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180150b28">
「そんな……
　どうして」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180160a09">
「拙い芸で、頼綱公の<RUBY text="ほまれ">誉</RUBY>まで汚してしまった
かの」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180170b28">
「そ、そのようなことはございません。
　……お見事な舞でした」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180180a09">
「おう、おう！
　他ならぬ桜子どのにお褒め頂けるとは、何
とうれしや！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　頬を緩ませて、入道公方が手を打ち鳴らす。
　その前で、姫は困惑の度をますます深めるばかりだ。

　……そう。確かに、見事な芸であった。
　だからこそ腑に落ちないのだ。

　技術の高さは、芸能達者で知られた婆娑羅公方の事。
今更驚くにも値しない。
　だが、あの情感――

　滅びゆく者の悲哀を、ああも見事に唄い上げたのは
何故なのか。
　数多の敵対者を虫けら同然に踏み殺し、顧みてなど
こなかった六波羅の大領袖が……何故。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180190a09">
「のう……
　桜子どの」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180200b28">
「……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180210a09">
「聞けば、閣老らの度々の諮問に何も答えら
れぬとか。
　殊に先のいくさに関する話となると、貝の
ようなだんまりぶり……」


{	FwC("cg/fw/fw桜子_悲哀.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180220b28">
「それは……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180230a09">
「いや、お気持ちはわかり申すぞ。
　敗者は口を閉ざすもの」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180240a09">
「口を開けば己の理がこぼれ出る。
　だが戦い敗れた後で理を語って何になろう。
負け犬の遠吠えよ、潔からぬことよと笑われ、
かえって理を汚すばかりではないか……」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180250a09">
「それでは冥途の同胞に申し訳が立たぬ。
　……であろう？　姫」


{	FwC("cg/fw/fw桜子_悲哀.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180260b28">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　そうだ。
　岡部桜子は、そう言っていた……。

　息を呑んで見詰め返す姫からふと顔をそらし。
　遊佐童心は一座を見渡した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180270a09">
「聞いておったか、御一同！
　桜子姫が虜囚の身に甘んじ、口を閉ざして
生き永らえておられるは、負けを恥じるから
でも世を拗ねているからでもない」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180280a09">
「黙して生きることこそが、敗れ死んだ者の
名誉を守る道であるからじゃ！
　わからぬか？　たとえ命冥加な女よと、世
の嘲りを買おうとも――」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180290a09">
「それは反面、潔く果てし者どもへの賞賛と
なる！
　恥を忘れたふうに振舞う女の姿を見るたび、
人々は岡部の猛き<RUBY text="もののふ">武士</RUBY>を思い出すであろう！」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180300a09">
「姫は岡部の名を汚さず後世へ残すため、己
を捨石とされておる！」


{	FwC("cg/fw/fw桜子_怒り.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180310b28">
「――――!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　……何と。
　それは――そこまでは考えが及ばなかった。

　それが、桜子姫の真意であったのか。
　…………聞けば、納得のゆかぬ点は何もない。

　まさしく、かの姫君はその覚悟でもって生きていた
のであろう。
　胸の奥へ秘め置いて。あの日の、一条の抉るような
問いかけにさえ遂に全ては明かすことなく。

　それにつけても、畏るべきは遊佐の童心坊。
　何と人心の機微に通じていることか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180320a09">
「あの父にしてこの娘あり！
　流石は天下に知られた頼綱公じゃ。子女へ
の薫陶悪しからず。麒麟から<RUBY text="どば">駑馬</RUBY>は生まれぬ
もの……」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180330a09">
「我らもかくあらねばならぬ。
　良いか!?　皆の衆!!」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180340a09">
「岡部を手本として一族を薫育せい！
　武門の盛衰など所詮は時の運。我が六波羅
の栄華もいつかは終わりを迎えよう。その折
に見苦しき振舞いがあってはならぬ……」


{	FwC("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180350a09">
「散るときは花と散ろうぞ！
　たとえそれが埋木の、幻の花であってもの
……散った後に、<RUBY text="み">実</RUBY>が<RUBY text="な">生</RUBY>ることもあろうて！」


{	FwC("cg/fw/fw桜子_悲哀.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180360b28">
「……童心様……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　――は。
　――ははァ。

　筆頭公方の大喝に、異を唱えられる者がいよう筈も
ない。
　皆が一斉に平伏する。俺もそれに倣った。

　一条の頭を腕ずくで一緒に押さえ込みつつ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//◆赤面
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0180370a02">
（…………）


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0180380a00">
（目立つだろう）


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0180390a02">
（すみません）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　幕府の御一同はともかく、こちらには頭を下げねば
ならぬ義理など無いから気持ちはわかる。
　俺とて下げたのは格好だけだ。

　……だが。
　幾分は、本心からの礼も混じっていただろう。

　場には唯一、頭を下げていない人間がいる。
　足利四郎邦氏だ。

　遊佐童心はそちらへ体を向けた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180400a09">
「不吉なことを申し上げましたかな。
　殿下、お許しあれ」


{	FwC("cg/fw/fw邦氏_通常b.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0180410b49">
「いや、謝るには及ばぬ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　少年の表情は反発の対極にある。
　深い感銘に、額まで火照らせていた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw邦氏_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0180420b49">
「良くぞ申した、童心坊！
　この四郎、闇夜に灯明を得た心地である」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180430a09">
「過分なるお言葉。
　冥利に尽き申す」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　深々と、古河公方は主君へ礼を返した。
　そうして再び、姫に向き戻る。

　……闇夜に灯明。
　それはあの年若い王者の、本心の発露であろう。

　彼が望んだ、岡部の姫と共に歩ける未来。
　ひどく険しいと思えたその道も、傍らに遊佐童心の
ような理解者が<RUBY text="はべ">侍</RUBY>るのならば――あるいは、成し得る
事なのかもしれない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180440a09">
「桜子どの……。
　お覚悟の程はまことに立派と存ずる。我ら
六波羅、決して姫の邪魔立ては致さぬ」


{	FwC("cg/fw/fw桜子_悲哀.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180450b28">
「…………」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180460a09">
「黙して、生き続け……
　父君の誇りを守られるが宜しかろう」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180470b28">
「……はい」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180480a09">
「だが、の。
　我らは岡部を語りたい……」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180490a09">
「かような傑物がおった、と……
　我らとは遂に道を違え、弓引き合う間柄と
はなりしも、決して邪念はなく私欲もなく」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180500a09">
「ただ、己の正道を貫かんがため。
　勝てぬと知った戦いに敢えて臨み、見事に
散って逝った……そんな英雄がおったのだと」


//嶋：修正（見せたも）【090930】
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180510a09">
「子々孫々に語り伝えたいのよ……。
　今日、この鈍牛めが不出来な舞を見せたの
もそのため」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180520b28">
「……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180530a09">
「桜子どのは、ご存知かな。
　わしと頼綱公が肩を並べて、共に戦った事
もあったと……」


{	FwC("cg/fw/fw桜子_悲哀.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180540b28">
「えっ？
　……い、いいえ。初耳です」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180550a09">
「あれはもう……三五年も前になろうか。
　<RUBY text="ロシア">露帝</RUBY>相手の<RUBY text="おおいくさ">大戦</RUBY>のおり」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180560a09">
「わしらはかの乃木将軍の陣中におった。
　おう、亡き殿もおられたぞ」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180570a09">
「三人とも、当時は新米の陸軍士官に過ぎな
かったがの……」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180580b28">
「……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180590a09">
「今でも夢に見るわ。
　難攻不落の<RUBY text="リュイシュン">旅順</RUBY>要塞」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180600a09">
「厳寒のなか、<RUBY text="ラッパ">喇叭</RUBY>を合図に、兵が突撃して
ゆくたび……
　一面の凍土が血肉で煮える」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180610a09">
「積み重なるのは友軍の骸ばかり……
　戦果はひとかけらも手にできず、忌々しき
城壁には傷もつかぬ」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180620a09">
「竜騎兵の爆撃も効果はなく……
　かえって撃墜され、弾薬を地上の味方へと
ばらまく始末」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180630a09">
「……地獄であったのう。
　三人で、その地獄を眺めたわ」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180640a09">
「わしは、泣いた。
　武人にあるまじき事だが……命のはかなさ、
戦の無情さが胸に染みて、涙が止まらなんだ
……」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180650a09">
「十太郎――おう、殿の事だがの。あの頃は
そう呼んでおった。
　十太郎は、そんなわしを殴った。兵の死に
涙するなら、坊主にでもなってしまえと」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180660a09">
「頼綱公は、何も言わなんだ。
　黙って眺めておった」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180670a09">
「あの二〇三高地を。
　兵が突撃を繰り返し、繰り返しただけ死骸
を積み重ねてゆく丘をただ、眺めておった」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180680a09">
「唇を固く噛み締め……
　血を滲ませていた。噛み切っておったのだ
ろうな……」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180690b28">
「……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180700a09">
「だが、その後。
　司令部へ戻り、頼綱公が何を上申したか。
桜子どの……わかるかな」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180710b28">
「いえ……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――


	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180720a09">
「二〇三高地は観測と砲撃に絶好の場所。
　これさえ取れば、隙を見てはこちらの制空
権を脅かしに来る籠城軍の頭へ蓋をしてやる
事もできる。いくさの流れが変わる」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180730a09">
「故に、今こそあの丘を砲撃するべし――と。
　……敵のみならず、友軍もひしめいておる
所にな」


{	FwC("cg/fw/fw桜子_悲哀.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180740b28">
「っ!?　そんな」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180750a09">
「乃木将軍はむろん、一言のもとに拒絶した
……<RUBY text="みかど">帝</RUBY>の<RUBY text="せきし">赤子</RUBY>を我が砲で撃てようか、と。
　しかし、頼綱公は引き下がらなかった……
思えば剛情の<RUBY text="たち">質</RUBY>はあの頃からであったわ」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180760a09">
「陛下の赤子を無為に死なせてきたは、今日、
これまでの閣下である。
　今日これよりは、陛下の赤子に有為の死を
お与えあれ……と」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180770a09">
「将軍に向かって言い放ちおったわ。
　名族の出とはいえ、一介の将校に過ぎぬ身
でな。呆れた胆力よ」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180780a09">
「だがその真情が乃木閣下を動かし、砲撃を
決行させ、我が軍勢をして遂に二〇三高地を
奪取せしめた。
　勝負の趨勢は一夜にして覆った」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180790a09">
「……頼綱公は、まこと……
　人の<RUBY text="い">活</RUBY>かし方、その本当のところを知って
いる御仁であった……！」


{	FwC("cg/fw/fw桜子_悲哀.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180800b28">
「……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180810a09">
「頼綱公は、こういう話を姫に聞かせなんだ
か」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180820b28">
「……はい。
　いくさの話は滅多にしてくれませんでした。
幼い折には、せがんだこともあったのですが」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180830a09">
「さもあろう。さもあろう。
　要塞陥落の手柄は疑いもなく頼綱公のもの
であったが、御本人は一度たりと誇ることが
なかった」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180840a09">
「むしろ、生涯の恥としておった。
　味方を撃つがごときを、将軍に勧めた事を」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180850a09">
「悔いては、おらなんだ……。
　しかし恥じておった」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180860a09">
「そんな御仁であったよ。
　姫の父君は……」


{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw桜子_悲哀.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180870b28">
「……父上……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180880a09">
「わしはの。桜子どの。
　そんな頼綱公の事跡の数々を、埋もれさせ
てしまいとうはない」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180890a09">
「後の世に、あの男の生涯を正しく伝え残し
たい……。
　彼と同じ時代を生きたからには、その責任
があると思うのよ」


{	FwC("cg/fw/fw桜子_悲哀.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180900b28">
「……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180910a09">
「構わぬかな？　桜子どの。
　我らが頼綱公を語っても……」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180920b28">
「……は……」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180930b28">
「はい……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　あの姫の身中に、固く冷たくそびえていた<RUBY text="しゅんれい">峻嶺</RUBY>――
　それが今、揺らいだようだった。

　……矜持にかけても自分の口では語れなかった、父
の戦い。
　それを六波羅が語るという。

　いや――古河公方は既に語ってみせた。
　百万言よりも雄弁な、舞の一差しで。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180940b28">
「どうぞお好きに……。
　童心入道様」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180950a09">
「うむ、そうか。そうか……。
　礼を申す。姫」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180960b28">
「いえ……。
　……ただ……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0180970a09">
「うん？」


{	FwC("cg/fw/fw桜子_悲哀.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180980b28">
「聞くのは……<RUBY text="つろ">辛</RUBY>うございます。
　今のように……わたくしの知らなかった父
の姿を聞かされると……」


{
	SoundPlay("@mbgm27",2000,1000,true);
//◆涙交じり
	FwC("cg/fw/fw桜子_涙.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0180990b28">
「もう一度……！
　父に……会いたく……！」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181000a09">
「おう、おう……！
　そうであろうのう」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181010a09">
「済まぬ、泣かせてしもうたな……。
　義清！」


{	FwC("cg/fw/fw義清_通常.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb02/0181020b21">
「はッ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　姫の涙にうろたえた様子で、遊佐童心はいつからか
背後に控えていた小姓を呼ばわる。
　遠目にも美貌と知れるその小姓は素早く、急須と碗
を主人に手渡した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181030a09">
「このような時は酒に限る。
　桜子どの、一献ゆかれよ」


{	FwC("cg/fw/fw桜子_涙.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181040b28">
「……お見苦しいところを……
　申し訳ございません」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181050a09">
「父を思い娘が涙するに何の不思議があろう。
何の罪があろう。
　何も恥じるには及ばぬ。さ、姫」


{	FwC("cg/fw/fw桜子_涙.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181060b28">
「はい……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　桜子が受け取った碗に、童心が急須を向ける。
　大ぶりの碗になみなみと注がれる酒。

　姫がそれを飲み干す。
　……その光景を、能楽堂の全ての者が見ていた。

　幕府政治を動かす百官。
　その家族。
　彼らを統べる足利四郎邦氏。

　全員が見た。
　何か――象徴的な絵画として。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0181070a00">
（……どうしたものかな）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　俺は、悩まねばならなかった。
　<RUBY text="・・・・・・・">どうしたものか</RUBY>。

　前線の兵士が自己判断で作戦方針を変更するなど、
原則的に許されない事だが。
　その必要が今、あるのかもしれない。

　当初の目論見は――あるいはその放棄は。果たして
親王の利益に沿うか……。
　
　決断に迷って、俺は一条を見た。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0181080a00">
（……？　どうした）


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0181090a02">
（え？）


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0181100a00">
（気分が悪そうだぞ）


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0181110a02">
（あ……はい。
　なんか、胃の辺りが<RUBY text="・・・・">むずむず</RUBY>して）


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0181120a00">
（……変な物を食ったわけでもあるまい？）


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0181130a02">
（そうなんですけど。
　なんだろこれ……）


{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0181140a02">
（……こういう時って……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　気にはなったが、いつまでも頭を寄せ合い密談して
いては周囲に不審がられる。
　今は公方と姫の一幕に注目していて当たり前なのだ。

　俺は体の向きを戻した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw常闇斎_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0181150b37">
「――――」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0181160a00">
「ッ!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　……気のせい…………か？
　あの奇妙な影武者、今、こちらを見ていた……？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181170a09">
「ゆく川の流れは絶えぬ。
　流れた水は二度と戻らぬ」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181180a09">
「過ぎ去りしものはいくら惜しんでも帰って
きてはくれぬ……世のさだめとは申せ<RUBY text="さみ">淋</RUBY>しい
ことよ。
　だが、面影を偲ぶくらいはできようて」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181190a09">
「それがうつくしきものであれば、川の流れ
を正しき<RUBY text="かた">方</RUBY>へ向ける<RUBY text="しるべ">標</RUBY>ともなろう」


{	FwC("cg/fw/fw桜子_悲哀.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181200b28">
「……はい」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181210a09">
「桜子どの。
　これを受け取られるがよい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　言って童心は急須を小姓に返すと、別のものを手に
取った。
　面だ。先刻まで、自身が被っていたもの。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181220b28">
「これは……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181230a09">
「この頼政面。
　亡き頼綱公を想って、わしが彫った」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181240b28">
「童心様がお手ずから!?」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181250a09">
「うむ。
　拙い手の内ではあるが……頼綱公との思い
出の<RUBY text="くさぐさ">種々</RUBY>を彫り込めたつもりじゃ」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181260b28">
「……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181270a09">
「迷惑であれば、重ねてすすめはせぬが。
　姫の手元に置いてくれぬかな」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181280b28">
「は、はい……。
　喜んで」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181290b28">
「喜んで……頂戴いたします……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStR(300,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　渡された面に魅入られながら。
　上の空で、桜子姫は答えた。

　<RUBY text="いつく">慈</RUBY>しむように、頼政面の頬へ指を這わせる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181300b28">
「ああ……
　本当に……父上のお顔のよう……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181310a09">
「そう思われるか……」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181320b28">
「はい……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181330a09">
「それは当然の事ぞ……」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181340b28">
「…………」


{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181350a09">
「何故ならその面――<BR>{	WaitKey(2000);}
　頼綱の死骸から剥ぎ取った骨で作ったもの
だからのう」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181360b28">
「え？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト
	WaitKey(1000);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0181370a00">
「――――」


{	FwC("cg/fw/fw邦氏_怒り.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0181380b49">
「――――――――」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0181390a02">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト
	WaitKey(2000);

	SetFwC("cg/fw/fw桜子_恐怖.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181400b28">
「な……
　……何と……」


//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181410b28">
「何と仰られました……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　桜子姫が、尋ねている……。
　冬空の下に干しっぱなしにしておいた洗濯物のよう
に、<RUBY text="・・・・">がちがち</RUBY>と強張った声で。

　九割がた空白化した意識の残り一割で、俺はなんと
醜いのだろう、と思っていた。
　崩れかけの笑顔を無理矢理に支えている姫の相貌が
――何とも汚く、醜く見える。

　人は、これほど醜い顔にもなれるのか。
　
　反して、対面の僧侶の美しさはどうであろう。

　無限の喜び。
　尽きる底のない、この世すべてに対する愛情。
　それが、満ち満ちている――まさに天上の微笑。

　釈尊が舞い降りたかのようであった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm20",0,1000,true);

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181420a09">
「骨じゃ」


{	FwC("cg/fw/fw桜子_恐怖.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181430b28">
「ほね……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181440a09">
「おぬしの父君の顔面をな、こう」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
　古河公方――遊佐の童心入道は、<RUBY text="ひょうきん">剽軽</RUBY>な手真似をし
て見せた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181450a09">
「のこぎりで。
　ぎぃこぎぃこ、と……」


{	FwC("cg/fw/fw桜子_恐怖.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181460b28">
「――――」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181470a09">
「上から下まで、切り割ってな。
　肉を削いで……」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181480a09">
「それから、鑿を打つ。
　こつこつ、こつこつと」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181490a09">
「眉間の皺を刻むのに苦労したのぉ。
　舞台に出る折は頭巾に隠れてしまう所だが、
そういう所こそ手を抜かず仕上げねば全てが
駄目になってしまうでな……」


{	FwC("cg/fw/fw桜子_恐怖.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181500b28">
「あ――あぁ」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181510a09">
「後はいくらか肉付けをし、<RUBY text="ごふん">胡粉</RUBY>と<RUBY text="にかわ">膠</RUBY>を塗り
重ね、彩色をして……完成じゃ。
　いや、なかなか骨であったわい」


{	FwC("cg/fw/fw童心_宥め.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181520a09">
「それに比べると、碗の方は楽であったなァ」


{	FwC("cg/fw/fw桜子_恐怖.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181530b28">
「……」


//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181540b28">
「――――!?」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181550a09">
「こっちは頭蓋の<RUBY text="・">皿</RUBY>を切り取って、上に漆を
塗っただけだからの。
　これも削って整えねばならんかと思うてい
たが、綺麗な形をしていてくれて助かったわ」


{	FwC("cg/fw/fw桜子_恐怖.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181560b28">
「あ――そ」


//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181570b28">
「それも……父上の……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181580a09">
「いんや？
　こちらは、おぬしの同腹の兄」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181590a09">
「岡部十兵衛の骨ぞ」


{	FwC("cg/fw/fw桜子_恐怖.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181600b28">
「――――――」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181610a09">
「……のう、桜子どの。
　先程はこの碗に口をつけて酒を召されたな」

{	FwC("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181620a09">
「いかがであった……？
　血を分けた兄の、骨髄の味は」


{	FwC("cg/fw/fw桜子_恐怖.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181630b28">
「　　、　　　、　　　　、　」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);


//◆ボイスのみ。テキスト出さない
	CreateVOICE("桜子","mb02/0181640b28");
	MusicStart("桜子",0,1000,0,1000,null,false);

/*
	SetFwC("cg/fw/fw桜子_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181640b28">
「ひぃぃぃぃーーーーーーーーーーーーッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――
*/

//◆能舞台
//◆立ち絵童心。垂れ目の穏やかな表情
//◆かっと目を見開いてぐわっと笑う異相にチェンジ

	WaitKey(500);

	SetFwC("cg/fw/fw童心_バサラ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181650a09">
「かあっっっはっはっはっはっはっはっはっ
はっはっはっはっはっはっはっはっはっはっ
はっはっはっはっはっはっはっはぁッッッ!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

//◆間取り演出
//◆能舞台・舞台アップ
	WaitKey(2000);

	CreateTextureEX("絵演背景", 2100, -467, -418, "cg/bg/resize/bg067_普陀楽城内能楽堂_01bl.jpg");
	Move("絵演背景", 600, @30, @0, DxlAuto, false);
	Fade("絵演背景", 1000, 1000, null, true);

	SoundPlay("@mbgm36",3000,1000,true);

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181660a09">
「さあて」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
　一<RUBY text="しき">頻</RUBY>り、笑い――
　この能楽堂の中ただ一人、好き放題に笑い<RUBY text="たの">愉</RUBY>しみ。

　その、悪魔的な快笑を少しも乱さぬまま。
　力をなくした姫の手を取り、舞台の上へ導き出る。

　いつしか狂言師らはみな退いていた。
　白い空間に今立つは、姫と仏僧の二人きり。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181670a09">
「<RUBY text="よばんめ">四番目</RUBY>は雑能と申すも……
　真髄は狂女物にあり！」


{	FwC("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181680a09">
「いざ！
　見事に舞ってくだされい、桜子どの!!」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//◆ばさっ
//◆童心→〝頼政〟
	CreateSE("SE01","se人体_動作_外套纏う01");
	CreateVOICE("桜子","mb02/0181690b28");

	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("桜子",0,1000,0,1000,null,false);

/*
//◆ボイスのみ
{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181690b28">
「ひぃぃ……！」
*/



	SetFwC("cg/fw/fw童心_頼政.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181700a09">
「ははは、どうした？
　ほうれ、父が参ったぞ。そなたの父が参っ
たぞ」

{	CreateVOICE("桜子","mb02/0181710b28");
	MusicStart("桜子",0,1000,0,1000,null,false);}

/*
//◆ボイスのみ
{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181710b28">
「いや……父上！　父上！」
*/

//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181720a09">
「もっと良い声を聞かせよ！
　そら、こちらはそなたの兄じゃ。もう一度
接吻をくれてやれい！」

{	CreateVOICE("桜子","mb02/0181730b28");
	MusicStart("桜子",0,1000,0,1000,null,false);}

/*
//◆ボイスのみ
{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0181730b28">
「あぁ……あぁぁぁぁーーーーーーーーっ!!」
*/

//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181740a09">
「それよ！
　その声よ！」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0181750a09">
「はぁっはっはっはっはっはっはっは!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――



	CreateColorEX("絵色黒", 10000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);

}

..//ジャンプ指定
//次ファイル　"mb02_019.nss"