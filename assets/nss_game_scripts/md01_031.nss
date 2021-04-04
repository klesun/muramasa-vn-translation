//<continuation number="570">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_031.nss_MAIN
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
	#ev113_サーキット貴賓席_a=true;
	#bg031_八幡宮境内_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_032.nss";

}

scene md01_031.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_030.nss"

//◆フラッシュ。過去光
	SoundPlay("@mbgm01",0,1000,true);
	PrintBG("上背景", 15000);
	EfRecoIn1(18000,600);
	CreateTextureSP("絵回想", 16000, Center, Middle, "cg/ev/ev128_病床の光_a03.jpg");
	EfRecoIn2(300);

	WaitKey(500);

	EfRecoOut1(300);
	Delete("絵回想*");
	OnBG(100,"bg031_八幡宮境内_01.jpg");
	StL(1000, @-60, @0,"cg/st/3d銀星号_立ち_通常.png");
	StR(1100, @60, @0,"cg/st/3d村正標準_立ち_通常.png");
	Delete("上背景");
	FadeBG(0,true);
	Rotate("@StL*", 0, @0, @180, @0, null,true);
	Request("@StL*", Smoothing);
	FadeStA(0,true);
	EfRecoOut2(600,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　余りに遠い。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0310010a00">
「お前は……何が望みだ？」

{	FwC("cg/fw/fw光_驚き.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0310020a14">
「……む。
　今度はおまえが光に覇を問うか」

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0310030a14">
「良かろう！」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0310040a00">
「……」

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0310050a14">
「天の下に、あまねく武の法を布く。
　……天下布武！」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0310060a00">
「武の……法？」

{	FwC("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0310070a14">
「争う、と云う事。
　殺す、と云う事」

//【光】
<voice name="光" class="光" src="voice/md01/0310080a14">
「ただそれきりの法だ」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0310090a00">
「それは」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　違う。
　統様が――養母が教えた道は、

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_好戦.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【光】
<voice name="光" class="光" src="voice/md01/0310100a14">
「今更寝惚けたことは言うまいな、景明？
　いい加減、お前も<RUBY text="・・・・・・・">村正を理解した</RUBY>はずだぞ」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0310110a00">
「……！」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0310120a14">
「……わかっている、か。
　良し、それでこそだ」

{	FwC("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0310130a14">
「ならば話もしやすい。
　光はこの武をもって世を照らす」

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0310140a14">
「人が人のまま、ささやかにまとまって身を
寄せ合う時代はここで<RUBY text="・・・・・">ぶった切る</RUBY>。
　誰もが欲するままに生き、戦い、殺す――
そんな時代を導こう！」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0310150a00">
「――時代？」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0310160a00">
「時代など来ない。
　それでは滅びがあるだけだ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　人間の。世界の。
　意味もない終わりが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_瞋恚.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【光】
<voice name="光" class="光" src="voice/md01/0310170a14">
「そうだ！」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0310180a00">
「っ……!?」

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0310190a14">
「人が滅び去り……
　最後に勝ち残ったものは<RUBY text="かみ">天</RUBY>と名乗る資格を
得る！」

//【光】
<voice name="光" class="光" src="voice/md01/0310200a14">
「ここに光の覇道がある」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0310210a00">
「馬鹿な！」

{	FwC("cg/fw/fw光_不思議.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0310220a14">
「む。どこかおかしかったか？
　……いや、そんなことはないはずだ」

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0310230a14">
「論理的に考えて、神と称し得る方法はこれ
しかない！
　<RUBY text="・・・・・・・・・・">人類全員と戦って勝つ</RUBY>!!」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0310240a00">
「――――」

{	FwC("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0310250a14">
「そのためには、まず全人類を戦いの舞台へ
上げねばならないが……
　村正の<RUBY text="うた">汚染波</RUBY>で光の<RUBY text="こころ">心格</RUBY>を人々に移し与え
られるのはもっけの幸いであった」

{	FwC("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0310260a14">
「刃を見れば逃げ惑うばかりの脆弱な人々を
追い立てて背後から斬るなど、卑怯卑劣。
　欲するまま戦う猛き獣と成さしめ、対等に
争ってこそ、勝利が意味を持つ」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0310270a14">
「おれは<RUBY text="・・">公正</RUBY>な闘争のはて頂点に立とう。
　そうして神に至れば――光の<RUBY text="ゆめ">目的</RUBY>も叶う」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0310280a00">
「……目的？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　その先に、まだ何かあるのか……？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【光】
<voice name="光" class="光" src="voice/md01/0310290a14">
「それは、さっきも言ったろう？
　こういう言葉は幾度も口にせぬものだ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0310300a00">
「…………」

//【景明】
<voice name="景明" class="景明" src="voice/md01/0310310a00">
「……愛……？」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0310320a14">
「胸に炎あればこそ……
　肉体は鍛えられ、戦う<RUBY text="はがね">鋼鉄</RUBY>となる」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0310330a00">
「殺し合わせることが……人間というものに
対するお前の愛情だとでも言うのか」

{	FwC("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0310340a14">
「まさか。
　……いや、そうであれば良かったのだろう
が」

{	FwC("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0310350a14">
「惜しむらく、光の心は人間すべてを愛せる
ほど雄大ではなかった。
　この想いは、ただ<RUBY text="・・・">一個人</RUBY>へ向けられるもの
に過ぎない」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0310360a14">
「…………。
　景明、乙女にこんな話をさせるな。いくら
家族のおまえでも、胸の内まで入られては、
こう……むずがゆいものがある」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0310370a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　――駄目だ。
　理解できない。

　何もかも繋がらない。
　俺の意識野で光の人物像が線を結ばない。

　<RUBY text="ゆめまぼろし">夢幻</RUBY>と会話をしているかのようだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0310380a00">
「狂っている……」

{	FwC("cg/fw/fw光_驚き.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0310390a14">
「そんなことはないぞ」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0310400a00">
「狂っている！
　壊れている！」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0310410a00">
「お前は……二年前……
　山賊団と町の人々を諸共に殺し尽くしてし
まった時に、狂った！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　――村正の戒律に縛られて。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0310420a00">
「俺の妹は……
　光は、あの時に死んだのだ」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆村正抜刀
	CreateSE("SE01","se擬音_雰囲気_抜刀01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreatePlainSP("絵板写", 5000);
	StR(1100, @60, @0,"cg/st/3d村正標準_立ち_抜刀.png");
	FadeStR(0,true);
	FadeDelete("絵板写", 300, false);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0310430a00">
「お前は一匹の魔物に過ぎない。
　……斬る……」

{	FwC("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0310440a14">
「…………」

{	FwC("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0310450a14">
「狂ってはいない」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0310460a00">
「聞かぬ」

{	FwC("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0310470a14">
「いや聞け。
　光は<RUBY text="・・・・">最初から</RUBY>すべて知っていた」

//【光】
<voice name="光" class="光" src="voice/md01/0310480a14">
「村正が如何なる劒冑であるか」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0310490a00">
「……ッ!?」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0310500a01">
《…………》

{	FwC("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0310510a14">
「承知の上で、我が物としたのだ」

//【光】
<voice name="光" class="光" src="voice/md01/0310520a14">
「そしておまえにも与えた……」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0310530a14">
「おまえの手で、母上を殺させるために！」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0310540a00">
「―――――――――――――――――――
――――――――――――――――――――
――――――――――――――――――――
――――――――――――――――――――」

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0310550a14">
「ふフ」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0310560a00">
「……何と……」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0310570a00">
「何と言った、光ッッ!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 1000);

}

..//ジャンプ指定
//次ファイル　"md01_032.nss"