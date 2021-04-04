//<continuation number="1630">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_006.nss_MAIN
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
	#bg053_堀越御所の庭_02=true;
	#bg097_堀越御所内景明の部屋_01=true;
	#ev901_銀星号天座失墜小彗星_a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_007.nss";

}

scene md02_006.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md02_005.nss"

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	OnBG(100, "bg001_空a_01.jpg");
	FadeBG(0, true);
	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

//◆昼→夜
	WaitKey(1500);

	OnBG(101, "bg001_空c_03.jpg");
	FadeBG(3000, true);

//◆部屋
	WaitKey(1500);

	OnBG(101, "bg097_堀越御所内景明の部屋_03a.jpg");
	FadeBG(2000, true);
	SoundPlay("@mbgm16", 0, 1000, true);

	StR(1000, @0, @0,"cg/st/st村正_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060010a01">
「……帰るわけにはいかないでしょうね」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060020a00">
「ああ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　日が落ちて、夜の帳が下りた頃、村正は回復した。

　現状を噛み砕いて説明する。
　一通り聞いて劒冑が出した結論は、俺のそれと同じ
だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060030a00">
「銀星号がいると知っては、<RUBY text="ここ">堀越</RUBY>を離れられ
ない」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060040a01">
「いつ<RUBY text="なみ">汚染波</RUBY>を撒き始めるかって思うと……
　目を離すのは怖いし」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060050a00">
「これまでがそうだったと言えばそうなのだ
が――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　毎朝、小刻みに震える指で新聞の頁をめくっていた。
　そこに銀星号の三文字がないか――また何処かの町
で人々が無為に殺し尽くされたのではないかと怯えな
がら。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060060a00">
「ともかくも、所在を突き止めたのだ。
　その利を捨てる法はない」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060070a01">
「そばにいればそれだけ、いざ事が起きた時
に素早く対応できるものね」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060080a00">
「そうだ。
　…………問題は――」

{	FwC("cg/fw/fw村正_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060090a01">
「その後？」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060100a00">
「その後だ。
　<RUBY text="・・">対応</RUBY>ができても、<RUBY text="・・">対処</RUBY>ができなければ何の
意味もない」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060110a01">
「……そうね……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想・本気の銀星号
	EfRecoIn1(18000,600);
//■仮絵 inc櫻井
	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/ef/ef037_飢餓虚空魔王星b.jpg");
	CreateTextureEX("絵回想200", 2100, @0, @0, "cg/ev/ev901_銀星号天座失墜小彗星_a.jpg");
	Fade("絵回想200", 0, 500, null, false);

	EfRecoIn2(300);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　<RUBY text="・・">あの</RUBY>銀星号を、どう食い止めるか。

　これまでも人外魔境であった銀星号の力量は、今と
なっては天外不測、幾何級数じみている。
　自分があれと同等の領域に立つなど、全くの戯言、
夢物語としか思えない。

　実に情けない話ではあるが。
　
　
　……しかし……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	EfRecoOut1(300);

	Delete("絵回想*");

	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060120a00">
「村正……どう思う」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060130a01">
「…………」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060140a00">
「果たして武者とは、あそこまで強くなれる
ものなのか？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060150a01">
「ちょっと信じられないっていうのが、本当
のところ」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060160a00">
「光には天性の才能がある。
　体術は勿論、騎体の運用、熱量の保有量、
陰義を操る感覚――およそ全ての面において
完璧以上と言っていい」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060170a00">
「だが、それでも――」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060180a01">
「あそこまでは……ね。
　なかなか、ならないと思うのだけれど」

//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060190a01">
「何かあるのかしら。
　単なる天才に留まらないものが……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060200a00">
「…………」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060210a07">
「爆才とか？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060220a01">
「それ、意味わかんない」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060230a07">
「じゃあ白菜」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060240a01">
「綺麗さっぱり、面白くないんですけど」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060250a00">
「俺もそう思う」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060260a01">
「なら言わないでよ……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060270a00">
「俺は何も言っていない」

{	FwC("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060280a01">
「え？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060290a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆にょき。下から茶々丸

	StL(1000, @0, @300,"cg/st/st茶々丸_通常_私服.png");
	CreateSE("SE01","se擬音_コミカル_登場01");

	SetVolume("@mbgm*", 500, 0, null);

	Wait(300);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StL*", 200, @0, @-280, DxlAuto, false);
	FadeStL(200,true);

	Wait(200);
	Shake("@StR*", 300, 5, 0, 0, 0, 1000, null, false);

	SetComic(@0,@0,7);
	SetFwC("cg/fw/fw村正_驚きb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060300a01">
「はぅあ！」

{	DeleteComic();
	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060310a07">
「ふゥ」

{	SoundPlay("@mbgm22",0,1000,true);
	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060320a01">
「何処から生えてくるのよ！」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060330a07">
「やにわに失礼なやっちゃな」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060340a00">
「大丈夫だ、村正。
　味方ではないがとりあえず敵でもない」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060350a07">
「適切な表現だ。
　お兄さん、こんばんはーっ」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060360a00">
「今晩は、閣下」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060370a07">
「いい夜ですね」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060380a00">
「月が見えます」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060390a01">
「平然と応対しないでよっ！
　驚いてる私がおかしいみたいじゃない！」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060400a00">
「そうか。済まん」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060410a07">
「八つ当たりかっこわりぃ」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060420a01">
「貴方が変てこな現れかたをしなければいい
話でしょ！」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060430a07">
「あての家だっつーの。
　どっからどう現れようがあての自由」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　それとて限度があるだろうとは、俺にしても思うの
だが。
　……何故、<RUBY text="・">下</RUBY>から？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060440a01">
「何よ。貴方この家の子？
　親の躾が知れるとか言おうかしら」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060450a07">
「いねーし」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060460a00">
「村正。この方が家主だ」

{	FwC("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060470a01">
「はぁ？
　だってここ、将軍様のお屋敷なんでしょ？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060480a00">
「ああ。だから……
　堀越公方、足利茶々丸竜軍中将閣下であら
れる」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060490a07">
「知って驚け見て驚け。
　わかったらとっととひれ伏して、額を畳に
こすりつけろや下民」

//◆笑顔
{	SetComic(@0,@0,11);
	FwC("cg/fw/fw村正_怒りb.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060500a01">
「あらぁーそうでしたの。
　貴方が公方。貴方が中将様」

//◆超クール
{	DeleteComic();
	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060510a01">
「――何それ。ウケ狙い人事？」

{	SetComic(@0,@0,15);
	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060520a07">
「あ。マジ殺意湧いたわ今」

{	DeleteComic();
	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060530a01">
「素直な感想だけど。文句ある？」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060540a07">
「これがほかの奴に言われたんならどうとも
思わねーけどさぁ。
　なんでだろね。この竹アーマーに言われる
と洒落にならんくらい腹立つなー」

{	SetComic(@0,@0,15);
	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060550a01">
「だだだ誰が竹あーまーか!!」

{	DeleteComic();
	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060560a07">
「素直な評価だよ。文句あっか」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060570a01">
「貴方、覚悟できてるんでしょうね」

{	SetComic(@0,@0,15);
	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060580a07">
「あー？　表出るかぁー？」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060590a01">
「出てやろうじゃないの！」

{	DeleteComic();
	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060600a00">
「落ち着け。村正」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060610a01">
「いやっ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　嫌がられた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060620a07">
「わ、ひでー。
　仕手の言うことを聞きやがらねぇ」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060630a01">
「いいのよ。
　御堂はこんなことで怒らないもの」

{	FwC("cg/fw/fw村正_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060640a01">
「私を信じてくれてるから。
　……ね？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060650a00">
「ああ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　俺は即答した。
　本心である。

　本心であるが、それはそれとして、村正の流し目の
中には只ならぬ殺気が含まれており、首を横に振れば
必ずろくでもない運命に見舞われるという予感が俺を
<RUBY text="さいな">苛</RUBY>んだこともまた事実であった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060660a07">
「…………」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060670a01">
「信頼関係。羨ましい？」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060680a07">
「血管切れそうだよ。
　お兄さんの肚の太さに甘えやがって」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060690a01">
「甘えと信愛の区別がつかないのね。
　お子様ね」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060700a07">
「お兄さん、こんな<RUBY text="キノコ">依存症</RUBY>女と組んでちゃあ
いけない。
　あんたにゃもっと気の利く相棒が必要だよ」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060710a07">
「こいつは来月の粗大ゴミの日に出しちまい
ましょう。
　いい劒冑、紹介するからさ」

//◆キレた。
{	OnSE("se擬音_コミカル_殴り03",1000);
	SetComic(@0,@0,15);
	FwC("cg/fw/fw村正_怒りb.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060720a01">
「――――」

{	DeleteComic();
	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060730a00">
「折角ですが」

//◆顔は景明
{	FwC("cg/fw/fw景明_笑顔c.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060740a07">
「是非とも頼むよ、俺の茶々丸……。
　前々からそうしたくてそうしたくて仕方が
なかったんだ」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060750a07">
「おっけー、任せといて！」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060760a01">
「捏造するな！」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060770a07">
「やだなー、真実の代弁ッスよ」

{	FwC("cg/fw/fw村正_怒りb.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060780a01">
「その首、本気で斬り飛ばしたくなってきて
るんだけど？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060790a07">
「ハ。
　安い<RUBY text="はったり">威嚇</RUBY>かます奴ほど何もできやしねー」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060800a07">
「本当に<RUBY text="や">殺</RUBY>る気なら言う前にやってるもんな」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060810a01">
「いいこと言うじゃない。
　そうね。それは正しいって認めてあげる」

{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw村正_怒りb.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060820a01">
「じゃあもう、前置きは無しにしましょうか」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060830a07">
「……」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060840a01">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆がっし。組み合い
	DeleteStA(200,true);
	OnSE("se擬音_コミカル_殴り02", 1000);
	OnSE("se人体_動作_腕を掴む01", 1000);
	OnSE("se人体_動作_腕を掴む01", 1000);
	OnSE("se擬音_コミカル_殴り04", 1000);

	CreateTextureSP("絵背景100", 200, Center, Middle, "cg/bg/bg097_堀越御所内景明の部屋_01.jpg");
	Shake("絵背景100", 500, 10, 0, 0, 0, 1000, Dxl2, false);

//■コミカルシーンだからこれは合うか微妙だが、一応 inc櫻井
	SoundPlay("@mbgm08", 0, 1000, true);

	SetComic(@0,@0,15);

	SetFwC("cg/fw/fw村正_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060850a01">
「ちびっこのくせに！」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060860a07">
「蜘蛛を食うとチョコレートの味がするって
のは本当かどうか試してやんよ！」

{	DeleteComic();
	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060870a00">
「二人とも」

{	SetComic(@0,@0,1);
	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060880a07">
「にゃにっ？」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060890a01">
「何よっ」

{	DeleteComic();
	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060900a00">
「……何故、出会った瞬間から即座にそんな
にも仲が悪い？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　似たような構図だった、某学生と某進駐軍大尉より
酷い気が。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060910a07">
「こいつとは運命的にだめなの」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060920a01">
「絶対にわかり合えないって、一目で悟った」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060930a07">
「そうそう」

{	FwC("cg/fw/fw村正_怒りb.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060940a01">
「どうしようもない感じよね」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　そんなところだけ合意されても困る。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060950a00">
「しかし閣下……
　一つお尋ねしたいのですが」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060960a07">
「すりーさいず、好きな体位、好きなぷれい、
何でも教えてあげるけど、このお邪魔グモを
追っ払うまで待っててくれない？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0060970a00">
「できればそちらを中止して。
　閣下、貴方は何故、この村正の正体に最初
から気付いておられたのです？」

{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw村正_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0060980a01">
「……あ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm16", 0, 1000, true);

	StL(1000, @0, @0,"cg/st/st茶々丸_通常_私服.png");
	StR(1000, @0, @0,"cg/st/st村正_通常_私服.png");
	FadeStR(300,false);
	FadeStL(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　言われて村正も思い至ったらしい。
　そう。茶々丸中将は何の説明も受けないうちから、
蝦夷にしか見えない村正を劒冑として扱っていた。

　知らずに看破できる事ではないと思うのだが……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0060990a07">
「あー、それ？
　錆び腐った鉄屑の匂いがしたから」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0061000a01">
「嘘言うなっ！」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0061010a07">
「床は軋んで抜けそうになってるしさ」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0061020a01">
「そんなに重くない！」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0061030a07">
「あと波長が劒冑っぽい」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0061040a01">
「……波長？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0061050a00">
「……？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0061060a07">
「そういうあれこれが積み重なって、こいつ
はお兄さんの村正だなってのがキュピーンと
来たわけですよ。
　頭のこのへんに」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0061070a07">
「ま、特殊なセンスがあるんだと思っていて
くれれば結構っす」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　自分の額を指差しながら、にまにま笑う足利茶々丸。
　どうもはぐらかされている気がするが……追及して
も徒労に終わりそうだ。

　取っ組み合いを中断させられただけでも良しとして
おこう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0061080a07">
「そうそう。
　あてからも一つ訊いておきたいんだけど」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0061090a00">
「何でしょうか」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0061100a07">
「まだ返事を貰ってなかった。
　お兄さん、結局どうするかい？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0061110a07">
「<RUBY text="・・・・">これから</RUBY>」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0061120a00">
「…………」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0061130a00">
「頼めた筋合いではありませんが……
　宜しければ、滞在のお許しを願います」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0061140a07">
「そう言うと思ったー。
　もちろん、許すよ」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0061150a07">
「筋合いだって充分あるしね。
　遠慮は何にもしなくていいから」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0061160a00">
「お心遣い、感謝致します。中将閣下」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0061170a01">
「御堂」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0061180a00">
「何だ？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0061190a01">
「提案。
　どっかそのへんで野宿しましょう」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0061200a00">
「……」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0061210a07">
「おめーさまが一人で行く分には全く構いま
せんがぁ？」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0061220a01">
「こんな怪しげな館に御堂だけ残して行ける
もんですか」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0061230a07">
「一人で行け」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0061240a01">
「いやよ」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0061250a07">
「お兄さんはここに留まるっつったろ」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0061260a01">
「私が頼めば聞いてくれるもの。
　……たぶん」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0061270a07">
「お兄さん？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0061280a00">
「……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0061290a00">
「村正が達て望むのであれば」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　銀星号の側に留まる事が重要なのだ。
　家の中だろうと外だろうと、その意味では同じ。

　野営の苦も別にない。兵役に就いていた頃の体験で
慣れている。
　村正の希望を言下に拒絶する理由は無かった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0061300a01">
「ほらっ」

{	FwC("cg/fw/fw茶々丸_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0061310a07">
「お兄さん……
　劒冑を甘やかし過ぎです」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0061320a07">
「駄作がますます劣化しちまうよ？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0061330a00">
「いえ。問題有りません」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0061340a07">
「そーかなー」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0061350a00">
「甘やかそうがどうしようが、村正が<RUBY text="おのれ">自己</RUBY>の
役割を忘れる事はありませんから。
　必要な時に必要な働きを必ずする」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0061360a00">
「それは疑いなく信じられます。
　それで、自分には充分です」

{	FwC("cg/fw/fw村正_照れ.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0061370a01">
「…………」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0061380a00">
「自分が村正の信頼を裏切らない限り、村正
の性能が劣化する事など有り得ません」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0061390a01">
「そして御堂が私を裏切ることなんて有り得
ないから、私は常に完全な性能を発揮できる。
　……どう？　こういうものなのよ」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0061400a01">
「互いを認める仕手と劒冑っていうのはねっ。
　以前はともかく、今の私達はちゃんと帯刀
の儀も済ませて結縁してるの。お子様が何を
言ったって、壊される間柄じゃないんだから」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0061410a01">
「わかった？」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0061420a07">
「天井のシミ、なんかこないだよりも増えて
ねえかなー」

{	FwC("cg/fw/fw村正_驚きb.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0061430a01">
「聞きなさいよ！
　いい話してたんだから！」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0061440a07">
「ただの惚気だろ。
　つかおめー、本気でお兄さん外に引っ張り
出すつもりか？」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0061450a07">
「銅鐸は<RUBY text="ろくしょう">緑青</RUBY>が悪化するだけで済むけどよ、
人間は風邪引いたりとかするんだぜ」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0061460a01">
「わかってます。冗談に決まってるでしょ。
　あと銅鐸って誰のことか」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0061470a00">
「良いのか？」

{	FwC("cg/fw/fw村正_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0061480a01">
「私がここにいたくないのも、御堂を置いて
おきたくないのも本当だけど。
　わざわざ野宿するのもばかみたいだし」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0061490a01">
「それに御堂、一度口にしたことを翻すのは
嫌なんでしょ？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0061500a00">
「……そうだな」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　お願いしますと頼んでおきながら、承諾をもらった
後でやっぱり結構ですと突き放すのは、どうにも相手
を馬鹿にしている。
　やりたい事ではない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0061510a00">
「気を遣わせたか」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0061520a01">
「大袈裟よ」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0061530a00">
「では、中将閣下。
　改めて、御世話になります」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0061540a07">
「なんか気に食わない紆余曲折があったけど、
結論がそうなったならまあいいか。
　我が家だと思ってくつろいでね、お兄さん」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0061550a00">
「は」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0061560a01">
「くつろぐから、出て行ってくれない？
　貴方邪魔よ」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0061570a07">
「……礼節の水準に差が有り過ぎじゃねえか
この主従……」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0061580a07">
「つか、おめーこそ出てけよ！
　ここはお兄さんの部屋だっつーの」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0061590a01">
「私達は一緒で構わないけど。
　ねぇ？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0061600a00">
「まぁ」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0061610a07">
「男女同衾なんて不埒な真似、あての館では
許しません。
　おめーにもちゃんと部屋やるから、そっち
いけ」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0061620a01">
「そう？」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0061630a07">
「誰かー」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//即続くからClearしない inc櫻井

}

..//ジャンプ指定
//次ファイル　"md02_007.nss"