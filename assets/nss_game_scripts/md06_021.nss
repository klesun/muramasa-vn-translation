//<continuation number="1450">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_021.nss_MAIN
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
	#ev259_村正Ｈ_a=true;
	#ev259_村正Ｈ_b=true;
	#ev259_村正Ｈ_c=true;
	#ev259_村正Ｈ_d=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_022.nss";

	//★リコレクション用★★★★★★★★★★★★★★★
	ReConquest();
	#md06_021=true;
	if($PLACE_reco){
		RecoOut();
	}
}

scene md06_021.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//============================================
//★リコレクション用★★★★★★★★★★★★★★★
if(!$PLACE_reco){
//============================================

..//ジャンプ指定
//前ファイル　"md06_020.nss"


//◆署長宅

	PrintBG("上背景", 30000);

	CreateColorSP("黒", 5000, "BLACK");

	OnBG(100, "bg034_署長宅茶の間a_03a.jpg");
	FadeBG(0, true);

	Delete("上背景");
	FadeDelete("黒",1500,true);

	SoundPlay("@mbgm33", 0, 1000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……また、飲んでいる。
　味のしない酒を。愚かしくも。

　やはり、無理だった。

　争いを収めるなど無理だった。
　和平を築き上げるなど無理だった。

　俺にそんな事ができる筈はなかった。

　……最初からわかっていた事だ。

　ふと、夢を見た。
　その夢が醒めた。

　それだけの話だ。

　後に残ったのは現実。
　
　――俺には、何もできない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210010a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　思えば滑稽。

　人殺しが、自分の過去に目を瞑り――
　争うな、共存せよと、聞いた風な事を云う。

　どの口でそんな御託を吐けたやら。

　しかし天は見逃さなかった。
　虚飾を剥ぎ、真実を示した。

　いんちき聖者になり損ねた男は道化として退場した。

　嗤える。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210020a01">
「御堂……」

{	FwC("cg/fw/fw景明_悲しみ.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210030a00">
「…………」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210040a01">
「貴方はよくやったと思う。
　恥じることは何もない」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　……恥。

　何をどうして、恥じずにいられるだろう。
　この俺が。

　幾つもの――幾つもの――貴い命を奪った。
　その中には統様と光、守るべきだった家族すらいる。
　
　人としての恥だ。

　全世界に災厄を撒き散らした。
　阻止する機会はあったのに――果たせなかった。
　
　人としての恥だ。

　そして。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210050a00">
「恥はある。
　何よりも恥じるべきは――」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210060a01">
「…………」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210070a00">
「犯した罪に……
　何一つ、報いていない事」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　法に照らして裁かれる事もなく。
　償い、補いになるような何かを為す事もなく。

　何もせず何もできず。
　のうのうと生存する。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210080a00">
「それが恥だ」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210090a01">
「…………」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210100a00">
「……何故生きている……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210110a00">
「何故生きているのだ、俺は……」

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210120a01">
「…………」

//◆コミカル怒
{	FwC("cg/fw/fw村正_怒りb.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210130a01">
「……………………」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210140a00">
「何故……」

//【景明】
<voice name="景明" class="景明" src="voice/md06/0210150a00">
「……俺は……」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210160a01">
「くっ……」

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210170a01">
「この、」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210180a00">
「そんな資格もないのに……」

//【景明】
<voice name="景明" class="景明" src="voice/md06/0210190a00">
「……生きて……」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210200a01">
「…………」

{	FwC("cg/fw/fw村正_怒りb.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210210a01">
「――え――」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//============================================
//★リコレクション用★★★★★★★★★★★★★★★
}else{
	//状態定義
	OnBG(100, "bg034_署長宅茶の間a_03a.jpg");
	FadeBG(0, true);

	//リコ背景抹消
	RecoIn();

	SoundPlay("@mbgm33", 0, 1000, true);
}
//========================================================

	SetFwC("cg/fw/fw村正_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//◆大フォント
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210220a01">
<FONT size="32">「ええい!!」</Font>

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0);//―――――――――――――――――――――――――――――

//◆糸放射
	SetVolume("@mbgm*", 1000, 0, null);


	CreateColorSPadd("絵フラ", 5000, "#FFFFFF");
//	Fade("絵フラ", 300, 1000, null, true);

	DeleteStA(0,true);
	OnSE("se特殊_生物_蜘蛛の糸吐く01",1000);

	CreateTextureSP("絵背景20", 4900, Center, Middle, "cg/ef/ef018_蜘蛛の糸.jpg");
	DrawDelete("絵フラ", 100, 100, "zoom_01_00_0", true);

	WaitKey(500);

	CreateSE("SE01","se人体_衝撃_転倒03");
	CreatePlainEX("絵板写", 3990);
	Fade("絵板写", 0, 500, null, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("絵板写", 600, 0, 40, 0, 0, 1000, Dxl2, false);

	FadeDelete("絵背景20",300,true);

//◆ＥＶ：村正さんブッキレ。景明を拘束して踏む。

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　変転は突然過ぎ、急激過ぎた。
　脳の性能が追い付かず、情報処理が滞る。

　……何をされた？
　糸――<RUBY text="いと">鋼糸</RUBY>？

　村正……？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Delete("絵板写");

	CreateTextureEX("むらまさ覆", 3010, -235, -45, "cg/ev/resize/ev259_村正Ｈ_al.jpg");
	Fade("むらまさ覆", 1000, 1000, null, true);

	CreateTextureSP("むらまさ", 3000, @0, @0, "cg/ev/ev259_村正Ｈ_a.jpg");

	WaitKey(1000);

	SoundPlay("@mbgm05", 0, 1000, true);

	SetFwC("cg/fw/fw村正_不機嫌.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210230a01">
「あっ、ああああ、もう！」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210240a01">
「頭来た！」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210250a00">
「おい」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210260a01">
「貴方って人はーー！
　どうしてそうそこまでどうしようもなくて、
どうにもならなくて、どうにもしようがない
のよっ!!」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210270a00">
「ど、どう？
　いや、それよりこの拘束を……」

{	FwC("cg/fw/fw村正_驚きb.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210280a01">
「くぁーーーっ!!」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210290a00">
「落ち着け、村正。
　……落ち着いて下さい」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210300a01">
「いやっ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　嫌がられた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210310a01">
「生きてたっていいじゃない！
　何もできなくたってっ」

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210320a01">
「なんで貴方は、その程度にすら自分を許せ
ないのよ！」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210330a00">
「俺は……」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210340a01">
「ミミズだってオケラだってアメンボだって、
呼吸したり泥食べたり体液吸ったりする以外
特に何もしてないけど堂々生きてるでしょ！
　だから貴方も生きてていいのよ！」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210350a00">
「いや。待て」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210360a01">
「今いい話してるんだから黙って聞いてっ！」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210370a00">
「とてもそうは思えないのだが」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210380a01">
「生きている意味がないって思うなら、逆に
考えなさい！
　こうして生きているだけで意味があるんだ、
って！」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210390a01">
「お天道様は意味のないことなんてしないの。
　貴方が今、そうして生きているってことは、
<RUBY text="・・・・・">それでいい</RUBY>のよ！」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210400a00">
「……それは……」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210410a01">
「なによっ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　詭弁だ。
　現状を無条件に肯定する事で過去をも不問に付そう
という――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210420a00">
「……俺は罪を犯している。
　これは完璧な事実だ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210430a00">
「だから、俺は……
　罪に対する責任を果たさなくてはならない
……」

{	FwC("cg/fw/fw村正_怒りb.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210440a01">
「えーえー、わかりますわかります。
　自分のしたこと全部に、きっちりちゃんと
責任を取れる人がいたらそれは立派でしょう
とも！」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210450a01">
「でも貴方がそうなれるかどうかは別よ！」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210460a00">
「……」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210470a01">
「貴方は自分をどれほど凄いと思ってるの!?
　人並み外れて優れた傑物だって思ってる!?」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210480a00">
「そうでは……」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210490a01">
「この世の中、責任の重さに耐えられなくて
逃げたり忘れたりしながら生きてる人は一杯
いる！　貴方の理屈だと、そういう人達は皆
生きる価値なんか無いってわけ!?」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210500a00">
「いや……」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210510a01">
「そうよ！
　そんなの、単に普通の人間よ！」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210520a01">
「世の中は普通の人間が集まって出来てる。
　貴方は自分が、その中の一人に過ぎないん
だって認められないの!?」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210530a00">
「…………」

{	FwC("cg/fw/fw景明_悲しみ.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210540a00">
「……だが……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　確かに責任を果たせず<RUBY text="なげう">擲</RUBY>つ者は多いかもしれない。
　しかし俺の負う責任は、そうした人々とは比較にも
ならないもの――大量殺人の罪だ。

　それを忘れて生きる、など。
　そんな浅ましく、卑しい真似は……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//◆コミカル怒
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210550a01">
「――――」

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210560a01">
「あぁ、そう。わかった。
　思い知らせてあげないと駄目なのね」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210570a00">
「何？」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210580a01">
「とぉ！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆糸放射
//◆差分：村正さん足コキに移行

	CreateColorSPadd("絵フラ", 5000, "#FFFFFF");
//	Fade("絵フラ", 300, 1000, null, true);

	DeleteStA(0,true);
	OnSE("se特殊_生物_蜘蛛の糸吐く01",1000);

	CreateTextureSP("絵背景20", 4900, Center, Middle, "cg/ef/ef018_蜘蛛の糸.jpg");
	DrawDelete("絵フラ", 100, 100, "zoom_01_00_1", true);

	WaitKey(500);

	CreateTextureSP("むらまさ02", 3100, @0, @0, "cg/ev/ev259_村正Ｈ_b.jpg");

	Delete("むらまさ");
	FadeDelete("絵背景20",1500,true);


	SetNwC("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210590a00">
「……おい――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　再び鋼糸が閃き、肌の上を鋭い感覚が這った。
　寒々としたものを覚え――それは持続する。

　服を剥ぎ取られていたのだから、当然だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210600a01">
「これで……こう……」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210610a00">
「待て。いいから待て」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　その足で、何をする気だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210620a01">
「ここを……こっ、こうしてやれば……
　反応しない男はいないって、母様が昔」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210630a00">
「……あの蟻の人……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　さりげなく何を教えているのか。

　男性部分に触れられ、冷たい感覚が背筋を走る。
　びくりと<RUBY text="わなな">戦慄</RUBY>く体を制御するのは不可能だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210640a01">
「わっ、わっ……動いた」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210650a00">
「……おっかないなら触るな」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210660a01">
「べっ、別に？
　ふ――ふふんっ、だらしない姿ねっ」

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210670a01">
「こんなことされて、ここを、ここここんな
風にしちゃうなんては、はず、はずかちゃっ」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210680a00">
「噛み噛みで何を言ってるんだお前は」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　実は酔っているのは俺ではなくこいつではないのか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210690a01">
「いっ、いいのよ！
　とにかく、思い知らせてあげるんだから！」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210700a00">
「何を」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210710a01">
「貴方なんか全然たいした人間じゃないって
ことをよっ。
　卑しい生き方はできないって思ってるなら、
卑しい人間にしてあげる」

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210720a01">
「私の嬲りものになって、無様な姿を――
　ひゃわ!?　なんかびくっとしてるびくっと
してるこれっ!!」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210730a00">
「…………」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210740a01">
「…………」

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210750a01">
「ふっ。無様ね、御堂！」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210760a00">
「どう見てもお前の方が余りにも必死だ」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210770a01">
「そんなこと言っていられるのも今の間よ！
　お……男の人の体はこういうのに耐えられ
ないようにできてるんでしょっ」

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210780a01">
「こうすれば、すぐ――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　素潜りの最中、酸素不足に陥った時のような顔で、
村正が息遣いを乱しながら行為を再開する。
　俺の男性器を掌握する指が、拙くも動いた。

　手管とはまるで無縁。
　しかし偶然か本能的なものか、力加減は絶妙だった。

　粘膜に程良い加減の刺激を受け、結果、血がそこへ
流れ込む。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210790a01">
「きゃー!?
　なんで大きくなるのっ！」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210800a00">
「そんな無責任な事を言われても困る」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210810a01">
「こっ、こういうものなの!?」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210820a00">
「まぁ……こういうものだが。
　どうなると思っていたんだ」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210830a01">
「……」

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210840a01">
「…………」

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210850a01">
「予定通りよ！」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210860a00">
（必死過ぎる……）

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210870a01">
「わ……まだ、むくむくって」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210880a00">
「……」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210890a01">
「ふっ、ふふふ！
　ほ、ほーら、元気なものじゃないっ」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210900a00">
「何がほらなのかはともかく、酸欠一歩手前
のお前より健康そうなのは確かだ」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210910a01">
「こ……こういうことよ。
　貴方がどんなに否定したって、疑問をぶつ
けたって、卑しんだって――」

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210920a01">
「生きてるものは生きてるんだから！
　それに意味が無いなんて言わせない！」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210930a00">
「…………」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210940a01">
「卑しいと思うなら、卑しいなりに生きれば
いいでしょ！」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210950a00">
「……村正」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210960a01">
「塵芥だと思えばいい。
　罪も責任も、自分には背負う力なんて無い
んだって認めればいい」

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210970a01">
「私が――貴方を<RUBY text="おとし">貶</RUBY>めてあげるから」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆差分：村正脱衣
	CreateSE("SE01","se人体_動作_抱く01");
	CreateTextureEX("むらまさ03", 3200, @0, @0, "cg/ev/ev259_村正Ｈ_c.jpg");

	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("むらまさ03", 1000, 1000, null, true);
	Delete("むらまさ02");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　村正の衣服が<RUBY text="ほど">解</RUBY>けた。
　<RUBY text="ぬばたま">射干玉</RUBY>を溶いたような肌が露わになる。

　そんな無防備な姿になって、村正は俺の上に<RUBY text="またが">跨</RUBY>ろう
とした。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0210980a00">
「止せ……」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0210990a01">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateTextureEX("むらまさ覆", 3200, -160, -60, "cg/ev/resize/ev259_村正Ｈ_cm.jpg");
	Move("むらまさ覆", 8000, -210, -200, DxlAuto, false);
	Fade("むらまさ覆", 1000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　反射的に制止するも、返答はない。
　肉と肉が、わずかに触れ合う。

　そこで――そのまま。
　接触の密度を微妙に変化させるのみで、それ以上の
進展はしなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211000a01">
「……ッ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　微妙な交渉が性感を煽る。
　俺のその部分は反応を示し――村正もそうだった。

　どちらの発とも知れない粘液が、間隙に糸を引く。

　しかしそれは、性の技巧としてされている行為では
なかった。
　単に村正は――おそらく未知への恐れから――躊躇
して、こうしているに過ぎない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateTextureEX("むらまさ覆弐", 3210, -160, -60, "cg/ev/resize/ev259_村正Ｈ_cl.jpg");
	Move("むらまさ覆弐", 8000, -235, -45, DxlAuto, false);
	Fade("むらまさ覆弐", 1000, 1000, null, false);

	SetNwC("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0211010a00">
「もういいだろう……止めておけ」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211020a01">
「な、なによっ。
　嫌なの？」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0211030a00">
「嫌ではないが、これは――」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211040a01">
「一度、私のこと押し倒したくせに」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0211050a00">
「う……」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211060a01">
「あ、あんなことして――
　途中で放り出して！」

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211070a01">
「あーもう、思い出したらまた腹立ってきた
じゃないの！」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0211080a00">
「あの時は……」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211090a01">
「うるさいだまれ！
　こっ――こうしたかったんでしょ……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆差分：繋がる。

	CreateTextureEX("むらまさ04", 3300, @0, @0, "cg/ev/ev259_村正Ｈ_d.jpg");
	Fade("むらまさ04", 1000, 1000, null, true);
	Delete("むらまさ03");
	Delete("むらまさ覆*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　思い切ったのか。
　村正の体から力が抜け、体重が落ちてきた。

　肉の尖塔が秘洞にめり込み、引っ掛かり――
　突き破る。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211100a01">
「くっ……」

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211110a01">
「……うぅー……」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0211120a00">
「馬鹿……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　呟く。
　結合部から<RUBY text="したた">滴</RUBY>る、朱色の液体が見えた。

　村正の肉体変成は、劒冑になる以前の姿を再現する
ものだと云っていた。
　往時の村正に性交渉の経験が無かったなら――当然、
こういう事になるだろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211130a01">
「馬鹿じゃないっ。
　馬鹿は、貴方っ」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0211140a00">
「そんな無理をしてどうする」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211150a01">
「無理なんかしてない……っ」

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211160a01">
「こ――こういう事が気持ちいいんでしょう。
　構わないから、その凶暴なので好きなよう
にしたらいいのよっ」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0211170a00">
「そう言われてもだな」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　村正は余りに無知だ。
　痛みを<RUBY text="こら">堪</RUBY>えて動こうとしているが……それは性的な
快感をもたらすものには程遠い。

　元々、湿りの少ないところへ無理矢理挿入したのだ。
　過剰な摩擦による痛みは、俺も共有するものだった。

　このままでいれば、いずれ俺の男性部分は力を失い、
村正がどう頑張って行為を続けようとしても続けられ
なくなるだろう。
　無論、それでいい……<k>のだ、が…………

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211180a01">
「つっ……くぅ……」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0211190a00">
「…………」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211200a01">
「あぅ……」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0211210a00">
「…………」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0211220a00">
「村正」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211230a01">
「え……？」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0211240a00">
「そう乱暴に動かなくていい。
　力を抜いて、速度を緩めろ」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0211250a00">
「軽く柔らかく、擦るように」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211260a01">
「こ……こう……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　言われるまま、村正が動きを変える。
　拙い事に変わりはなかったが、それで苦痛はかなり
和らいだ。

　女性の側に経験が少ない時は、とにかく双方が力を
抑えないと、快楽を得るどころではなくなる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0211270a00">
「それと、息は止めない方がいい。
　軽く浅く、呼吸を続けておけ」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211280a01">
「う、うん……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　苦痛に耐えようとすると自然、息は止まるが、息が
止まると体の力も抜けなくなる。
　だからこのような場合は余計に痛みが増す。

　多少の余裕が出てきたのを見て、俺は繋がる部分に
片手を伸ばした。
　淫核を探り当て、触れる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211290a01">
「あ――っ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　村正の体が跳ねた。
　自分で触れた事もなかったのか。

　未知の刺激は苦痛に近いかもしれないが、それでも
破瓜の痛みを散らす役には立つだろう。
　俺は爪を引っ掛けないように注意しつつ、ごく軽く
愛撫した。

　きゅい、と村正の膣が締まる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211300a01">
「うっ、ん……！」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0211310a00">
「嫌か……？」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211320a01">
「嫌じゃないっ……
　嫌じゃない、けど……！」

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211330a01">
「っ……私のことは、いいから。
　貴方が――っ」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0211340a00">
「……そうか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　思い出す。
　村正が、こんな事をした理由。

　応える方法は、こうあるべきではなかった。

　両腕で、村正の腰の動きを止めさせる。
　入れ替わりに、俺自身を動かす。

　鋼糸は既に拘束力の殆どを失っていた。
　妨げにはならない。

　小刻みに、抉るように突き込む。
　自分の享楽だけを求めて。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211350a01">
「はッ――んっ、くぅ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　身を裂かれる苦しさに村正が涙する。
　瞳が潤んで、雫がこぼれた。

　俺の口元へ落ちる、それすら甘露と受け取る。

　昂ぶる。
　凌辱の高揚。

　己の欲を抑えて、相手の快楽を引き上げてやりなど
しない。
　ただただ、突き上げる欲望のみを追う。

　その卑しい行為に没頭し切る。

　限界へ。
　極限まで。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211360a01">
「あ……あぅ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
　黒いもの。
　<RUBY text="きたな">汚穢</RUBY>いもので、胸を満たす。

　嗜虐の喜び。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateTextureEX("むらまさ覆", 3310, -500, -300, "cg/ev/resize/ev259_村正Ｈ_dl.jpg");
	Move("むらまさ覆", 10000, -550, -500, null, false);
	Fade("むらまさ覆", 1000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0511]
　――そう。
　そうだった。

　何を迷っていたのか。
　何を悩んでいたのか。

　俺はこういうモノを味わえる男だった。

　下卑た悦楽を知る人間だった。

　突き上げる。
　健気な女が泣く。

　俺の唇が笑う。

　楽しい。
　嬉しい。
　心地良い。

　ああ。
　貫く。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	FadeDelete("むらまさ覆", 1000, false);

	SetNwC("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211370a01">
「御堂――――っ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
　絶頂に達する。
　肉体と精神のそれを同時に極めて。

　完璧な喜悦。
　俺はその瞬間、確かに、生きる意味を得ていた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ホワイトアウト
//◆フェードアウト
	CreateColorEXadd("白", 15000, "WHITE");
	Fade("白", 2000, 1000, null, true);

	WaitKey(500);

	ClearWaitAll(2000, 2000);

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
　……そうして。
　村正と共に虚脱の中で横たわり。
　
　俺は正しく絶望した。

　生きる価値無し、資格無しと思いながら、恥知らず
に快楽を貪り耽溺できる――
　この、自分自身というもの。

　絶望する。
　
　……何とも。これは何とも卑しい。

　そして。<k>
　受け入れてしまえば、それはそれだけの事に過ぎな
かった。

　違和感は何も無い。

　この己とは、そういうものだったのだと思う。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0211380a00">
「村正」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211390a01">
「……ん……」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0211400a00">
「お前は、滅茶苦茶だ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
　耳を引っ張る。
　上の空ながらも不満げに、村正が喉で唸った。

　全く……こんな励まし方は聞いた事もない。
　不器用にも程がある。

　だが。
　
　
　――――初めて。

　愛しいと、そう思った。
　この不器用さが。

　人ならぬ伴侶の一途さが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0211410a00">
「村正……」

{	FwC("cg/fw/fw村正_照れ.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211420a01">
「…………」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0211430a00">
「一緒にいてくれるか」

{	FwC("cg/fw/fw村正_照れ.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211440a01">
「……………………」

{	FwC("cg/fw/fw村正_笑顔.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0211450a01">
「…………うん…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
　安らぎを得ていた。
　光を殺して以来――いや養母を殺して以来、絶えて
久しかったそれ。

　腕の中の体温を貴重に思う。

　嘗て己は、村正に、鉄の冷たさを求めた筈だった。
　翻って今は、同じ相手に、肉の温もりを求めようと
している。

　……つくづく、駄目だな。
　
　そう嗤う。

　眠気が訪れた。

　優しい泥濘の中へ沈む。
　二年ぶりに、俺は熟睡した。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//============================================
//★リコレクション用★★★★★★★★★★★★★★★
	if($PLACE_reco){
		RecoReturn();
	}else{
		ClearWaitAll(1000, 0);
	}
//============================================


}

..//ジャンプ指定
//次ファイル　"md06_022.nss"