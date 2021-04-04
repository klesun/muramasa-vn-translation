//<continuation number="320">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_006.nss_MAIN
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
	#ev152_見下ろす銀星号_a=true;
	#ev152_見下ろす銀星号_b=true;
	#ev152_見下ろす銀星号_c=true;

	#ev152_見下ろす銀星号_a=true;
	#bg002_空a_02=true;
	#ev152_見下ろす銀星号_b=true;
	#ev152_見下ろす銀星号_c=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb04_007.nss";

}

scene mb04_006.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb04_005.nss"

//◆村正と正宗
//あきゅん「演出：ここで刀の絵があると良かったなぁ」
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 100, "#000000");
	Delete("上背景");
	SoundPlay("@mbgm14",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　俗説に曰く……

　千子村正と五郎正宗は同じ師のもとで業を学んだ。
　共に天性の才を示したが、性質は全く逆であった。

　あるとき師は二人に刀を打たせ、それを川へ立てた。

　村正の刀は漂ってきた木の葉を斬り。
　正宗の刀は木の葉を斬らずに逃した。

　――刃は斬るべきを斬り斬らぬべきは斬らぬが最上。
　師はそう云い、村正ではなく正宗を賞賛した。

　…………だが。
　
　武器、刃というものの本質を正しく<RUBY text="あらわ">顕</RUBY>していたのは、
果たしてどちらであったのだろう。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色黒", 10000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);

//◆ＣＧ：炎上する町を見下ろす銀星号
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureSP("絵ＥＶ１Ａ", 4000, Center, Middle, "cg/ev/ev152_見下ろす銀星号_a.jpg");
	CreateSE("SEL01","se自然_火_火災倒壊");
	MusicStart("SEL01",2000,750,0,800,null,true);
	Delete("上背景");

	CreateMovie("煙動画", 4020, 256, 278, true, true, "dx/mvk100.ngs");
	SetAlias("煙動画","煙動画");
	Zoom("煙動画", 0, 3000, 4000, null, true);
	Request("煙動画", AddRender);
	Move("煙動画", 0, @0, @-100, null, true);
	Rotate("煙動画", 0, @0, @180, @0, null,true);


	FadeDelete("絵暗転", 2000, true);

	Wait(500);

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【光】
<voice name="光" class="光" src="voice/mb04/0060010a14">
「………………」



{//◆キィーン。騎航音。なんか近付いてくる。
	CreateSE("SE01","se戦闘_動作_空突進08");
	MusicStart("SE01",2000,1000,0,1000,null,false);
	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/mb04/0060020a15">
《――――御堂》


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb04/0060030a14">
「ん……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆ズシャーンと村正登場
	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);


	CreateTextureSP("絵背景100", 5000, Center, Middle, "cg/bg/bg002_空a_02.jpg");
	Zoom("絵背景100", 0, 1200, 1200, null, true);

	CreateTextureSP("絵St100", 5000, 100, -242, "cg/st/3d村正標準_騎航_通常.png");
	SetBlur("絵St100", true, 3, 300, 50, false);

	Shake("絵EF100", 30000, 5, 5, 0, 0, 500, null, false);
	Shake("絵St100", 30000, 1, 0, 0, 0, 500, null, false);
	Fade("絵EF100", 0, 500, null, true);

	OnSE("se人体_動作_跳躍03",1000);
	OnSE("se戦闘_動作_空突進03",1000);

	Move("絵背景100", 1600, @100, @-50, null, false);
	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", false);

	Move("絵St100", 800, @-300, @50, Dxl2, true);
	Move("絵St100", 800, @-600, @100, Axl2, false);

	Wait(500);

	FadeDelete("絵背景100", 300, false);
	FadeDelete("絵St100", 300, true);

	CreateSE("SE01","se戦闘_動作_鎧_着地01");
	CreateTextureEX("絵ＥＶ１Ｂ", 4010, Center, Middle, "cg/ev/ev152_見下ろす銀星号_b.jpg");

	Wait(500);


	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(700);
	Shake("絵ＥＶ１Ｂ", 500, 0, 3, 0, 0, 1000, Dxl2, false);
	Fade("絵ＥＶ１Ｂ", 500, 1000, null, true);
	Wait(500);
	Delete("絵ＥＶ１Ａ");

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【光】
<voice name="光" class="光" src="voice/mb04/0060040a14">
「……景明……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0060050a00">
「……」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb04/0060060a14">
「今は、おまえに用はない。
　<RUBY text="い">去</RUBY>ね」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0060070a00">
「そうはいかぬ」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb04/0060080a14">
「……」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0060090a00">
「大和は<RUBY text="おまえ">銀星号</RUBY>という悪夢にもう飽いた。
　今宵で……幕を引かせてもらう」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb04/0060100a14">
「……ほぅ……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0060110a01">
《――》


{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/mb04/0060120a15">
《――》


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb04/0060130a14">
「あの狂犬が見当たらぬようだが？」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0060140a00">
「残してきた」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb04/0060150a14">
「何故だ？」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0060160a00">
「同じ事だからだ。
　俺の手でお前を倒そうと、彼女の手でそれ
を為そうと」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb04/0060170a14">
「……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0060180a00">
「お前が言った通りだ、銀星号。
　善悪相殺は武の宿命」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/0060190a00">
「如何にしても――逃れようは無い」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb04/0060200a14">
「…………ふ」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆銀星号、村正の方を向く
	CreateTextureSP("絵ＥＶ１Ｃ", 3980, Center, Middle, "cg/ev/ev152_見下ろす銀星号_c.jpg");
	FadeDelete("絵ＥＶ１Ｂ", 300, false);

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【光】
<voice name="光" class="光" src="voice/mb04/0060210a14">
「ふふふ……ははははははは！」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0060220a00">
「……」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb04/0060230a14">
「そう……それでいい。
　妄念から醒めたようだな、景明！」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0060240a00">
「ああ」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb04/0060250a14">
「では戯れ合おう。
　可愛い景明、この指で慈しみながら<RUBY text="いざな">誘</RUBY>って
やるぞ……」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb04/0060260a14">
「武の極みへ！　高き果てへ！
　天下万民を<RUBY text="みなごろ">鏖</RUBY>し、世界への完全勝利を以て、
<RUBY text="かみ">至高</RUBY>の座へ登らん!!」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0060270a00">
「そんなところへは行かぬ。
　行かせもせぬ」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0060280a00">
「俺の妄念はお前が断った。お前の妄念は俺
が断つ。血の色に腐った夢はここで終わりだ。
　銀星号――」


{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0060290a00">
「お前はもう天へ昇らない。
　今日ここで、俺がお前を地へ墜とす!!」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb04/0060300a14">
「吼えたな、景明！
　我が道を断つと誓うか！」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb04/0060310a14">
「ならば手心は加えまい。
　白銀の星と呼ばれし光の<RUBY text="ちから">能力</RUBY>、その精粋を
見せてくれる――」


{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mb04/0060320a14">
「冥府へ転げ落ちぬよう、命をしかと掴んで
おけ!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb04_007.nss"