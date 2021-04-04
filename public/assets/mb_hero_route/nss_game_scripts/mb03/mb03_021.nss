//<continuation number="1330">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb03_021.nss_MAIN
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
	#bg072_火災で倒壊した和風建築_02=true;
	#ev152_見下ろす銀星号_a=true;
	#bg002_空a_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb03_022.nss";

}

scene mb03_021.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb03_020.nss"
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg072_火災で倒壊した和風建築_02.jpg");
	FadeBG(0,true);
	Delete("上背景");

	StL(1000, @0, @0,"cg/st/3d正宗_立ち_通常.png");
	FadeStL(0,true);

	FadeDelete("絵暗転", 1000, true);
	SoundPlay("@mbgm01",0,1000,true);

	Wait(200);


	SetFwC("cg/fw/fw一条_憎悪a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0210010a02">
「…………！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　一条は俺の傍らで、凝然と立ち尽くした。
　
　無理もない。

　江ノ島で遭遇しているとはいえ、間近で相対するの
はこれが最初のはず。
　であれば、その瞭然として隠れもない異常さに息を
呑まずにはおれぬだろう。

　何が違うと云えば、もはや<RUBY text="・・">世界</RUBY>が違う。
　それほどに異質。それほどに不可解。

　それほどに異次元の存在。
　武者にして、武者を超えていると云わざるを得ない
もの。

　俺もまた言葉が無かった。

　ここ小弓を訪れるにあたり、銀星号の所在に通ずる
手掛かりを求めるつもりはあった。
　しかしいきなり<RUBY text="じか">直接</RUBY>に、しかもこのような形で遭遇
するとは……全く予測の外。

　そろって彫像の真似を強いられているこちらに対し、
白銀色の武者は自若としたものだった。
　一条――正宗をふと眺めやり、小首を傾げる仕草を
した後、再びこちらへ瞳の向きを移す。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵演板", 5000, Center, Middle, "cg/bg/bg072_火災で倒壊した和風建築_02.jpg");

	CreateMovie("煙動画", 4999, 256, 278, true, true, "dx/mvk100.ngs");
	SetAlias("煙動画","煙動画");
	Zoom("煙動画", 0, 3000, 4000, null, true);
	Request("煙動画", AddRender);
	Move("煙動画", 0, @0, @-100, null, true);
	Rotate("煙動画", 0, @0, @180, @0, null,true);

	CreateTextureSP("絵演", 4000, Center, Middle, "cg/ev/ev152_見下ろす銀星号_a.jpg");

	FadeDelete("絵演板", 1000, true);

	Wait(300);

	SetFwR("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【光】
<voice name="光" class="光" src="voice/mb03/0210020a14">
「小弓に<RUBY text="つわもの">兵</RUBY>ども集い、戦気満ちている……と
教える者があってな。
　興を咲かされて、遊びに来たのだ」


{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210030a14">
「良き武人どもであった。
　猛々しく、退くことを知らず、幾たび打ち
払われても同胞の<RUBY text="かばね">屍</RUBY>を越えてまた押し寄せ」


//【光】
<voice name="光" class="光" src="voice/mb03/0210040a14">
「最後の一騎まで戦い果てた。
　良い<RUBY text="ひととき">一刻</RUBY>を過ごしたぞ」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　……見れば、周囲には今川雷蝶の他にも数十の――
いやそれ以上の。武者、竜騎兵の甲骸が散乱している。
　それらは全て手練の技に命脈を断たれていた。ここ
へ来るまでに見た、兵らの狂乱死の態とは異なる。

　つまり一般の兵士は精神汚染で自潰させられ。汚染
波に耐えた武者衆は、果敢に銀星号へ挑んだのだろう。
　そして全滅した……百余の鉄塊、肉塊と化して。

　損耗比、一〇〇対<RUBY text="・">〇</RUBY>。
　血臭生々しい戦場にただ独り君臨する白銀の覇者は、
一筋の血も流さず、心地良さげな吐息を洩らしている
に過ぎない。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【光】
<voice name="光" class="光" src="voice/mb03/0210050a14">
「そこに景明、おまえまで来てくれるとは。
　まったく今日の光は退屈という憑物に見放
されているな！　いつもこうなら良いのだが」


{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210060a00">
「……光……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　魔物である。
　異怪である。化生である。鬼妖である。

　人ではない。
　湊斗景明の妹、湊斗光は、とうに人ならぬ物である。

　それと出会った上は、
　
　――斃さねばならぬ。

　斃すほかにない。
　人として人を守ろうと思うのであれば、人ならぬ妹
を斬る以外に道はない。

　……既に悟っていた筈だった。
　遅くとも、江ノ島での邂逅の折には。

　そうだ。
　一度は斬る決意をした筈だ。

　だが。
　それでも……
　
　この今、俺は未練を口にしていた。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210070a00">
「お前は……
　もう、戻れないのか？」


{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210080a14">
「……うん？」


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210090a00">
「昔のようには……
　あの小さな町で暮らしていた頃のようには」


{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210100a14">
「…………」


{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210110a00">
「お前は狂ってしまった。
　二年前、俺が止められなかったから。お前
は山賊達を敵として殺し、村正の呪いに縛ら
れ、町の人々まで殺して狂った――」


{	FwR("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210120a00">
「そうだろう？
　だがその狂気……その原点だけは、決して
お前の罪ではない。なのに駄目なのか？」


//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210130a00">
「お前を冒す、その狂気は……
　もう如何な手立てを尽くしても、癒せない
ものなのか!?」


{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210140a14">
「……」


{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210150a14">
「うぅむ」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　知らず、叫ぶほどの声になった俺の言葉に。
　光は額に拳を当てて、困惑の態だった。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【光】
<voice name="光" class="光" src="voice/mb03/0210160a14">
「やはりどうも、認識に<RUBY text="・・">ずれ</RUBY>があるな。
　……江ノ島でも言ったろう？　景明」


//【光】
<voice name="光" class="光" src="voice/mb03/0210170a14">
「おれは狂ってなどいない。
　変わってもいない。昔も今も、<RUBY text="・・・・・">在るがまま</RUBY>
の湊斗光だ」


{	FwR("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210180a00">
「そんな筈があるか……！
　お前のしている事が、正気の人間にできる
事か！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　吐き捨てるように、そう決め付けた後。
　俺は一縷の望みに縋って、口を継いだ。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210190a00">
「……だが……狂い切っているとも思えない。
　お前には、まだ……人の心が残っていると
……！」


{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210200a14">
「……」


{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210210a00">
「この二年間にお前は幾つもの町や村を滅ぼ
した。
　だが……お前が本当に狂い、完全に暴走し
ていたなら、この程度では済んでいない」


//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210220a00">
「……その筈だ。
　今頃は、少なくとも大和全国が滅びていな
くては理屈に合わない……！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　そう。
　銀星号が全き狂人であり、四六時中破壊と殺戮の夢
に耽溺していたならば――そうなっていなくてはおか
しいのだ。

　銀星号はただ大和の空を飛んで回るだけでいい。
　それだけで人々の心は汚染され、全土は地獄に堕す。

　それが、そうはなっていないということは、つまり
銀星号の暴走は抑制されているという事ではないのか。
　まだ……人がましい心の名残りが、あるのではない
か。

　そうではないのか？
　そう思いたい。それがたとえ、今更何の意味も持た
ないとしても――光の為してきた行為がそれで帳消し
になるわけではないのだから。

　それでも、光に僅かなりと罪を悔い、償おうという
意思があるのならば――
　俺は…………

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210230a00">
「どうなのだ!?
　光!!」


{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210240a14">
「…………。
　おまえは困ったやつだな。景明」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　光の応答は嘆息だった。

　優しげな――
　抱擁めく眼差しと声が、俺に注がれる。
　
　どうしてか、背筋が<RUBY text="・・・">ぶるり</RUBY>と凍えた。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【光】
<voice name="光" class="光" src="voice/mb03/0210250a14">
「親の心子知らず、などと云うが……
　伝わらないものだ」


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210260a00">
「…………」


{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210270a14">
「おれが関東を一息に<RUBY text="・・・">崩して</RUBY>しまわないのは、
な。……景明。おまえのためだ」


{	FwR("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210280a00">
「な……
　…………に？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　俺の――――為？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【光】
<voice name="光" class="光" src="voice/mb03/0210290a14">
「景明。良いか。
　光は狂っておらぬ。……狂う道理がない」


//【光】
<voice name="光" class="光" src="voice/mb03/0210300a14">
「あの山賊どもを殺し、それで村正の呪いに
縛られ、<RUBY text="まちびと">町人</RUBY>をも殺してしまい、狂った……
おまえはそう言ったがな。
　根本に誤解がある」


//【光】
<voice name="光" class="光" src="voice/mb03/0210310a14">
「光は一度たりと、<RUBY text="・・・・・・・・・・・">敵を殺したことなどない</RUBY>」


{	FwR("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210320a00">
「――何を……!?」


{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210330a14">
「光は多くの者と戦い、勝利し、殺めてきた。
　しかし敵意など一度も抱かなかった」


//【光】
<voice name="光" class="光" src="voice/mb03/0210340a14">
「何故なら、おれは一個の武人として武の法
に従ったに過ぎぬ」


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210350a00">
「武の法？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　それは――養母の教え――

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【光】
<voice name="光" class="光" src="voice/mb03/0210360a14">
「争い、殺す。
　ただそれだけの法だ」


{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210370a00">
「……!?」


{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210380a14">
「敵意など要らぬ。憎悪も要らぬ。
　偏に武の命ずるまま、全てを斃してきた」


//【光】
<voice name="光" class="光" src="voice/mb03/0210390a14">
「村正の呪戒は、光には意味のないものなの
だ。従って、それに束縛されたことなど一度
もない。
　納得したか？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　それは、要すれば、<k>
　……呪いに縛られるまでもなく、最初から敵も味方
も構わず殺し尽くしてきたということなのか!?

　二年前の最初から――
　山賊も町の人々も、一切、区別などせずに……!!

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【光】
<voice name="光" class="光" src="voice/mb03/0210400a14">
「光の道は狂気に非ず。
　天下布武の大道である」


//【光】
<voice name="光" class="光" src="voice/mb03/0210410a14">
「万民が武の法に従い、
　各々の武を競い合い、
　その練磨相克によって至尊の座へ達するが
望み」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　…………では――まさか。
　その望みの顕現が、あの――汚染された人々の狂乱
だと……？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210420a00">
「……何故だ。
　どうして……そんな、望みを」


{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210430a14">
「それが<RUBY text="・・・・">光の意味</RUBY>であるからだ。
　武を貫徹し、<RUBY text="・・・・・">世界と戦い</RUBY>、これを屈従せし
めるが光の存在する意義であるからだ」


{	FwR("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210440a00">
「――――」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　お前は。
　お前は、

　本当に、そんな――

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【光】
<voice name="光" class="光" src="voice/mb03/0210450a14">
「望みを叶えるには世界すべてを光の意思で
染め上げねばならぬ……無論それはその通り
であるし、いずれそうするつもりだが。
　少しずつ進めないと<RUBY text="・・・・">おまえが</RUBY>困るだろう？」


//【光】
<voice name="光" class="光" src="voice/mb03/0210460a14">
「おまえは母上から誤った武を教え込まれて
いるからな。すぐにすぐおれの示す武を受け
入れられはすまい。無理に叩き込もうとすれ
ば、おまえこそ狂ってしまいかねん」


{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210470a00">
「……だから……、
　<RUBY text="・・・・">ゆっくり</RUBY>やっているのだ、と……？」


{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210480a14">
「うむ。
　おれが焦って追い詰めたりせねば、おまえ
は自ずと正しき武を悟るはずだからな」


//【光】
<voice name="光" class="光" src="voice/mb03/0210490a14">
「そのための、村正だ」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb03/0210500a01">
《…………》


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210510a00">
「……？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　それは、どういう意味だ……？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【光】
<voice name="光" class="光" src="voice/mb03/0210520a14">
「だがさて、そろそろ頃合だと思うのだがな。
　どうだ？　景明……」


{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210530a14">
「武の天下に<RUBY text="いきる">戦う</RUBY>準備は整ったか？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　期待に弾む声で、銀星号――かつて湊斗景明の妹で
あったもの――は、そんな事を尋ねてくる。
　
　……<RUBY text="・・・・">そんな事</RUBY>を。

　冗談諧謔ではなく。
　偽悪趣味でも無論なく。
　単なるからかいでさえなく。
　純に、本心から。

　
　<RUBY text="・・">あれ</RUBY>には何の迷いもないのだと、俺は知った。

　幾多の殺戮劇を為し、
　今もその一舞台の上に座し、
　あまつさえ、その全てを、敵対し争った末ではなく
ただ殺す為に殺したのだと言い放ちながら。

　迷いさえも抱かないのだ！

　せめて狂気だと信じたかった。
　恐るべき呪いが妹をかくも狂わせてしまったのだと。

　だが、否定された。
　光は全く論理的に、それがもし狂気の原点であった
のなら決して正視できぬであろう事柄について、そう
ではないと解説してのけた。

　それさえ狂気の為だと決め付けることはできる。
　しかし、もう気付いていた――そうすることは単に、
俺の逃避心理に過ぎない。

　意味のない逃避だ。
　それは、刃を鈍らせるだけだから。

　妹を斬るべき刃を。

　必要なものは、その逆――
　真実と正対すること。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210540a00">
「光。
　お前は狂っていない」


{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210550a14">
「うむ。
　やっとわかってくれたな」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　満足した様子で、目元を和らげる光。

　……余計な事を思い出しかけた。
　昔あった、平穏な日々――<k>いや。そんなものはいい。
そんなものは、もう。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210560a00">
「光。
　……銀星号」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　何故なのだと、叫びたい。
　その声が喉をつきかける。

　渾身の力で、胃の腑へ落とし込んだ。
　駄目だ。そんな迷いは余計だ。この今となっては、
もう意味も無いのだから。

　――刃を研ぎ澄ます為に。
　俺は一つの断定をする。

　それは承認。
　
　
　それは断絶。

　それは、決別。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210570a00">
「お前は邪悪だ。
　俺の敵だ」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆ＢＧＭ落とし
//◆フェードアウト
	SetVolume("@mbgm*", 100, 0, null);
	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 600, 1000, null, true);
	Delete("絵演*");
	Delete("煙動画");

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　俺は妹を捨てた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
//◆ＢＧＭ切り替え
	Fade("絵色黒", 1500, 0, null, true);
	SoundPlay("@mbgm04",3000,1000,true);

	Wait(300);

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【光】
<voice name="光" class="光" src="voice/mb03/0210580a14">
「……まだ<RUBY text="・・">遠い</RUBY>らしいな。
　そんなことを口にするところからすると」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　魂を半分切り捨てての一言に、銀色の悪魔は苦笑で
報いた。
　やれやれと指を組み――しかし同時に満更でもなさ
そうな気配を漂わせている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【光】
<voice name="光" class="光" src="voice/mb03/0210590a14">
「まぁ、それはそれで悪くはない。
　こちらへ近付く一歩ではある」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210600a00">
「……こちら？」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210610a14">
「我が武の道に、だ。もちろん。
　景明。おれを敵と定め戦いを挑むのならば、
当然、必要な覚悟は済ませているのだろうな」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210620a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　……覚悟。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【光】
<voice name="光" class="光" src="voice/mb03/0210630a14">
「善悪相殺。我ら村正の絶対戒律。
　敵を殺さば味方も殺し、憎んで殺さば愛に
ても殺す」


//【光】
<voice name="光" class="光" src="voice/mb03/0210640a14">
「光を敵と<RUBY text="にく">悪</RUBY>むほどに、友と恃む者はいるか？
　あるいは……母上の如き者は……」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210650a00">
「……それは、」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210660a14">
「光の一命とその誰かの一命。
　おまえにとって全く等価となる」


//【光】
<voice name="光" class="光" src="voice/mb03/0210670a14">
「二つ共に斬り捨てる覚悟が、
　――――あるのだな？　景明」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210680a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　それは。
　それは。
　
　それ、は、

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0210690a02">
「そんな覚悟はいらない。
　湊斗さんには、あたしがいる」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆正宗
	StL(1000, @0, @0,"cg/st/3d正宗_立ち_通常.png");
	FadeStL(500,true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0210700a00">
「一条……」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210710a14">
「……む」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　ずっと黙っていた少女が、俺を守るように間へ立つ。
　光は眉根を寄せた。対話に割り込まれたことが気に
入らないらしい。

　だが、他人の言葉を邪険に扱わないのが光の持って
生まれた性質である。
　ともかくも関心の矛先をそちらへ向けた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演", 4000, 522, Middle, "cg/ev/ev152_見下ろす銀星号_a.jpg");

	Move("絵演", 500, @-10, @0, Dxl2, false);
	Fade("絵演", 500, 1000, null, true);


	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【光】
<voice name="光" class="光" src="voice/mb03/0210720a14">
「何者である。
　置き捨てに景明と二人きりで話し込んでし
まった非礼は詫びるが、初見の挨拶もなく話
を妨げるもまた不躾であろう」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0210730a02">
「……自己紹介でもしろってか。
　必要ねえよ。そんなもん」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210740a14">
「なぜだ？
　そういった礼節というものは、人と人とが
敬意を抱き合い円滑な関係を築く為にとても
大切なのだぞ」


//【光】
<voice name="光" class="光" src="voice/mb03/0210750a14">
「親しき仲であっても礼儀あるべし。
　だから、おれも今日はまず時候の挨拶から
入った」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　…………あの鬼灯云々は時候の挨拶だったのか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0210760a02">
「だろうが何だろうが、てめぇに名乗る名前
なんか<RUBY text="ね">無</RUBY>え。
　理由くらいわかるだろ」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210770a14">
「ふむ。
　気難しい年頃なのだな」


{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0210780a02">
「違うっ！
　あたしゃ反抗期か！　てめぇはお袋か!?」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//◆ボイスは全部読む。
//◆じゅげむじゅげむごこうのすりきれかいざりすいぎょ
//◆のすいぎょうまつうんらいまつふうらいまつくうねる
//◆ところにすむところやぶらこうじのぶらこうじぱいぽ
//◆ぱいぽぱいぽのしゅーりんがんしゅーりんがんのぐー
//◆りんだいぐーりんだいのぽんぽこぴーのぽんぽこなー
//◆のちょうきゅうめいのちょうすけ

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【光】
<voice name="光" class="光" src="voice/mb03/0210790a14">
「名前が寿限無（略）だとか……」


{	FwC("cg/fw/fw一条_怒りc.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0210800a02">
「落語でもねえ！」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210810a14">
「……ヒント」


{	FwC("cg/fw/fw一条_怒りc.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0210820a02">
「誰がなぞなぞやってる!?
　あたしはなっ、てめぇみてえのを人間とは
思わねえって言ってんだ！」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210830a14">
「ふむ？」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0210840a02">
「てめぇはただの悪だろ。ただの鬼だろ。
　湊斗さんの妹とも思わねえ……」


//【一条】
<voice name="一条" class="一条" src="voice/mb03/0210850a02">
「殺して、<RUBY text="・・・・">無くして</RUBY>やる。
　てめぇには、そうするだけでいい」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb03/0210860b40">
《然り！》


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210870a14">
「…………。
　なるほど……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　一秒毎に殺意の密度を高めてゆく濃藍の竜騎。
　無色の吹雪にも等しかろうそれを浴びせつけられな
がら、銀星号は得心した風でうっすらと笑ってみせた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【光】
<voice name="光" class="光" src="voice/mb03/0210880a14">
「つまりは、狂犬か」


{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0210890a02">
「――何ぃ!?」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210900a14">
「いや、嘲ってはおらぬ。
　その目暗な闘志は光の忌避せざるところ」


//【光】
<voice name="光" class="光" src="voice/mb03/0210910a14">
「劒冑も良い拵えだ。
　村正、銘を<RUBY text="み">鑑</RUBY>よ。訊けば済む話だが、あの
分では教えて貰えそうにない」


{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/mb03/0210920a15">
《うむ。
　……相州物の古刀……そしてこれ程の甲鉄》


//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/mb03/0210930a15">
《まず、五郎入道正宗――と鑑た》


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210940a14">
「如何に？」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb03/0210950b40">
《……フン》


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210960a14">
「当たりか。
　これは良い……」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210970a14">
「天下一名物正宗！
　よもやそんな代物が、景明と共におれの前
へ現れようとは――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　そこまでは機嫌良く唄い。
　しかし不意に、銀星号は沈思する様子を見せた。

　定理に合わぬ解答を導いてしまい、計算式を見直す
学生のように。
　
　やがてその眼がこちらを――俺を見る。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【光】
<voice name="光" class="光" src="voice/mb03/0210980a14">
「……景明。
　そこの狂犬はおれに挑むようだが」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0210990a14">
「おまえはどうするつもりだ？」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0211000a00">
「…………」


{	FwC("cg/fw/fw一条_冷笑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0211010a02">
「何だ？
　二対一じゃ嫌だから一人ずつ来い、とでも
言う気か」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0211020a14">
「光は<RUBY text="さし">一対一</RUBY>を好むが、別に押し付けはせぬ。
それはどちらでも良い。
　しかし……真逆、とは思うが……」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0211030a02">
「……？
　なに考えてんのか知らねえが」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0211040a02">
「こっちはこっちの勝手で<RUBY text="・・">やる</RUBY>ぞ。
　……湊斗さん。いいですか」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0211050a00">
「……{WaitKey(1100);}ああ」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0211060a02">
「大丈夫です。
　あいつを殺すのは、あたしですから」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0211070a14">
「…………」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0211080a02">
「呪いなんて関係ありません。
　死ぬのは、あの悪魔一人きりです」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0211090a00">
「…………」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0211100a14">
「―――――――――――――――――――
――――――――――――――――――――
――――――――――――――――――――
――――――――――――――――――――」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0211110a14">
「待て」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateTextureEX("絵背景100", 10000, Center, Middle, "cg/bg/bg002_空a_02.jpg");
	CreateTextureEX("絵背景200", 10000, Center, Middle, "cg/st/3d銀星号_立ち_通常.png");
	Move("絵背景200", 0, @0, @100, null, true);

	Fade("絵背景100", 500, 1000, null, true);

	OnSE("se戦闘_攻撃_鎧_剣戟02",1000);

	Fade("絵背景200", 500, 1000, null, false);
	Move("絵背景200", 1500, @0, @-100, Dxl2, true);

	DeleteStA(0,true);

//◆銀星号、立つ

	SetFwR("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【光】
<voice name="光" class="光" src="voice/mb03/0211120a14">
「今……
　何と言った」


{	FwR("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0211130a00">
「……」


{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0211140a14">
「狂犬、答えよ」


{	FwR("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0211150a02">
「繰り返させるほどのことかよ。
　こんなの、当たり前だろうが」


{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0211160a14">
「……」


{	FwR("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0211170a02">
「湊斗さんがてめぇを殺したら、呪いでもう
一人殺さなきゃならなくなる。
　でもあたしの正宗にそんな厄介な決まり事
はない」


{	FwR("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0211180a02">
「だから戦うのは二人。殺すのはあたし一人。
　そうすりゃ、死ぬのはてめぇら邪悪だけ」


{	FwR("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0211190a02">
「あたしと湊斗さんは、二人で一つの正義の
剣ってことだ……！」


{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0211200a14">
「…………。
　景明」


{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0211210a14">
「おまえもその<RUBY text="つもり">意図</RUBY>か」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
　不似合いな、淡々たる声音で銀色の鉄面が問う。
　俺は返答を喉に詰まらせた。

　無論……俺も同意だ。
　一条が口にしたのはまさに当然の理。

　村正で敵を殺せば味方をも斬らねばならず。
　正宗で殺すなら敵一人で済む。

　それでどうして、前者を選ぼうか？
　悩むまでもない選択だ。
　
　なのに言葉は詰まり、声にならない。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【光】
<voice name="光" class="光" src="voice/mb03/0211220a14">
「……どうなのだ？
　おまえもそう期して、その狂犬――正宗を
連れていたのか」


{	FwR("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/mb03/0211230a15">
《……》


{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0211240a00">
「……」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb03/0211250a01">
《……》


{	FwR("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0211260a02">
「……湊斗さん？」


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0211270a00">
「あ……
　ああ」


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0211280a00">
「そうだ……」


{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb03/0211290a14">
「……………………」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆ウェイト
	WaitKey(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
　……音もなく、温い風が吹いている。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0211300a00">
「…………」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
　胸がざわついた。

　それは例えて言うなら平穏な航海のなか。
　順風満帆、波は穏やか、空は晴天、憂うべき何物も
なく、平安は今ここにあり、しかもいつまでともなく
続くことが約束されている――

　なのに心臓は早鐘を打ち鳴らし、
　
　海底から鯨が襲来するのを警告しようと躍起なのだ。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	StL(1000, @0,@0,"cg/st/3d正宗_立ち_通常.png");
	FadeStL(0,true);

	FadeDelete("絵背景*", 500, true);

	SetFwR("cg/fw/fw一条_憎悪a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0211310a02">
「もう言ったぞ。
　こっちの勝手で、やるってな」


{	FwR("cg/fw/fw一条_戦闘.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0211320a02">
「正宗」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb03/0211330b40">
《応よ！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆舞い上がって
//◆突進
	SetVolume("@mbgm*", 100, 0, null);

	CreateSE("SE01","se戦闘_動作_空突進01");
	CreateColorEXadd("絵色白", 5000, "#FFFFFF");

	Move("@StC*", 200, @0, @-200, Axl3, false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵色白", 0, 1000, null, true);
	DrawTransition("絵色白", 200, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	WaitPlay("SE01", null);

}

..//ジャンプ指定
//次ファイル　"mb03_022.nss"