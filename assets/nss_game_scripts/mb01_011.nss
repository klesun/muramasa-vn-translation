//<continuation number="210">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb01_011.nss_MAIN
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
	#bg007_若宮大路b_01=true;
	#bg060_円応寺境内_01=true;
	#ev001_銀星号事件イメージ１=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb01_012.nss";

}

scene mb01_011.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb01_010.nss"

//◆翌朝
//◆雨の鎌倉
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg007_若宮大路b_01.jpg");
	CreateSE("SEL01","se自然_水_雨音02_L");
	FadeBG(0,true);
	Delete("上背景");
	MusicStart("SEL01",2000,1000,0,1000,null,true);

	$SYSTEM_effect_rain_speed = 128;
	$SYSTEM_effect_rain_dencity = 16;
	CreateEffect("絵効果雨", 2000, Center, Middle, 512, 288, "Rain");
	SetAlias("絵効果雨","絵効果雨");
	Move("絵効果雨", 0, 256, 144, null, true);
	Zoom("絵効果雨", 0, 2000, 2000, null, true);
	Fade("絵効果雨", 0, 500, null, true);

	FadeDelete("絵暗転", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　一夜明けて、雨は再び降り出していた。
　黒灰色の雲にとって鎌倉上空は余程に居心地が良い
ものらしい。立ち退いたのは夜の間だけで、今はまた
どっかりと腰を据えている。

　傘の端から滴る水玉が手の甲にも触れ、それが酷く
冷たかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/0110010a01">
《御堂。
　やらねばならないことは、わかっているで
しょう》


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0110020a00">
「……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/0110030a01">
《私たちには使命がある》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0110040a00">
「ああ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演", 100, -1024, -50, "cg/ev/resize/ev101_プロローグ_a.jpg");

	Move("絵演", 8000, @120, @0, null, false);
	Fade("絵演", 1000, 750, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　――銀星号を、止めねばならない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/0110050a01">
《その妨げになるなら……
　振り払うまでよ》


//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/0110060a01">
《何物であれ》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0110070a00">
「わかっている」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/0110080a01">
《……御堂……》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0110090a00">
「わかっている……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	FadeDelete("絵演", 1000, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　村正との問答は昨夜半、幾百幾千と繰り返した自問
の焼き直しに過ぎなかった。
　わかっている――己のすべきはわかっている。

　町に、村に、あるいはそれ以外の人の集まりの中に、
忽然と現れて殲滅する……<RUBY text="テンペスト">殺戮天象</RUBY>。銀星号。
　現代大和の悪夢。終わらせるのは俺の役目だ。

　俺にしかできないのだから。
　<RUBY text="はは">養母</RUBY>に託された願いなのだから。
　あれは、俺の妹なのだから。

　俺が、やらねばならない。
　何を踏み越えてでも。

　これまでそうしてきたように。
　この二年間、幾つもの生命を鉄靴の下に踏み<RUBY text="しだ">拉</RUBY>いて
きたのと同じように。

　これからも。
　今日も。

　円往寺で待つ、綾弥一条も――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想
//回想シーンまとめ
	OnSE("se擬音_回想_フラッシュバック01",1000);
	CreateColorEXadd("絵白転", 5000, "#FFFFFF");
	Fade("絵白転", 600, 1000, null, true);

	CreateTextureSP("絵回想背景", 3100, Center, Middle, "cg/bg/bg060_円応寺境内_01.jpg");
	StR(4000, @0, @0,"cg/st/st一条_通常_制服b.png");
	FadeStR(0,true);

	Fade("絵白転", 300, 400, null, true);

	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0110100a02">
「湊斗景明。
　あたしはあんたを許さない」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0110110a02">
「あんたを殺す」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	Fade("絵白転", 400, 1000, null, true);
	DeleteStA(0,true);
	Delete("絵回想*");
	FadeDelete("絵白転", 600, true);

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0110120a00">
「……ッ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆ばしゃ。
	CreateSE("SE01","se人体_足音_水一歩");
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　膝を打つ痛みで、我に帰る。
　気付かぬ間に水溜りへ踏み込み、足を滑らせていた。

　散った水面が、路上で跪く男の姿を映す。
　無様な絵図だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/0110130a01">
《……》


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0110140a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　付近を潜行する劒冑から送られてくる、無言の視線
が煩わしい。
　それでも黙殺して、立ち上がる。

　慣れ親しむ肉体は、<RUBY text="やたら">矢鱈</RUBY>と重かった。
　気を緩めれば膝が笑い出す程に。

　体重ではない重みが何処かに懸かっているようでも
ある。
　何処か――頭蓋の中か、心臓の奥か、それ以外か。

　<RUBY text="こころ">精神</RUBY>が負荷を掛けている。
　四肢に軋みを上げさせている。

　綾弥一条と戦う。
　その意思が、重い。

　あの少女は許さないと宣言したのだ。
　湊斗景明を――彼が犯してきた罪業を。許さないと
告げたのだ。

　断罪。

　<RUBY text="おれ">被告</RUBY>は、同意する。
　その通り――到底、許されざる罪だ。

　許されてはならない罪だ。

　ならば、どうして……
　俺は抗わねばならないのか。

　抗うなどという真似が、許されるのか。

　否。
　許されない筈だ。

　この手で剥奪した命を、
　この指で咲かせた血華を、

　忘れないのならば……
　どうして、裁きに抗おう。

　受け入れるべきではないのか。

　<RUBY text="さばき">断罪</RUBY>の正当を認めるならば、
　刑吏の刃に身を委ねるべきではないのか……

　そう。
　それが、当然の筈だ。

　今までは俺を裁く者が現れなかっただけだ。
　見逃されてきただけだ。

　今はいる。
　天秤と鎌を持つ、判事にして処刑人たる者が訪れて
いる。

　ならば――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/0110150a01">
《……御堂》


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0110160a00">
「……わかっている」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　問答の繰り返し。

　俺に、安逸への逃避は許されない。
　罪を認め、刑に服し、一命を捧げれば楽になれよう
――だが、まだその時ではない。

　使命を果たし終えた後でなくては、俺にはそうする
資格が無い。

　わかっているのだ。
　わかっているのだ。

　しかし――思う。
　それは、罪からの逃避ではないのかと。

　やらねばならぬ事があるのは誰も同じだ。
　生きとし生けるもの全てが、生きて果たすべき使命
を持っている。

　しかし誰もが不死ではいられない。
　誰もが未練を抱えて死んでゆく。

　そう思えば、使命など、死を避けるに値する理由と
言えようか。
　言えまい。

　この世のあらゆる死者のように――俺に殺され不意
に未来を奪われた人々のように、
　俺もまた無念を抱え、ここでもがき苦しんで死んで
ゆくべきではないのか。

　それこそが正しい帰結ではないのか……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/0110170a01">
《御堂。
　私たちが銀星号を倒さなければ――》


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0110180a00">
「何度言わせるつもりだ。
　<RUBY text="・・・・・・">わかっている</RUBY>」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/0110190a01">
《……》


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0110200a00">
「もう黙っていろ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateTextureEXmul("絵演", 3000, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　言われるまでもない。
　俺が、俺に課せられた使命を投げ出すなら……失わ
れるものは俺一人の生命では済まない。

{	Fade("絵演", 1000, 500, null, false);}
　銀星号は殺し続けるだろう。
　人々を狂わせ……〝卵〟を撒き、分身を育てて。

　歴史は未曾有の災厄として、その名を記録する。
　……そうさせてはならない。

{	FadeDelete("絵演", 1000, false);}
　俺が止めるのだ。
　既にして被害は甚大だが、せめてこれ以上は、犠牲
者の列を続けさせぬために。

　……だが。
　そうするからには、今日――綾弥一条と戦い。

　その正当なる断罪を跳ね除け。
　打ち倒し、踏み越えて、俺は……行かねば。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0110210a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　出口は見えない。
　思考は堂々巡りを繰り返すばかりだった。

　そして時間は無限ではなかった。
　<RUBY text="こぶくろざか">巨福呂坂</RUBY>を越える。

　円往寺はもう、すぐ<RUBY text="そこ">其処</RUBY>にあった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb01_012.nss"