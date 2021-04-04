//<continuation number="370">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_015.nss_MAIN
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
	#bg006_雄飛の部屋_03a=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma01_016.nss";

}

scene ma01_015.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma01_014.nss"

	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg006_雄飛の部屋_03a.jpg");

	SoundPlay("@mbgm31",1000,1000,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);


//◆雄飛の部屋

	SetFwC("cg/fw/fw小夏_沈む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0150010b33">
「……明日からどうする？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
　小夏がようやくおれにそう聞いてきたのは、既に夜
も更けて就寝の頃。

　あれから何も言葉を交わさずおれたちは家路を辿り、
忠保と別れ、家について食事をして風呂にも入った。
　その間、口を利いたのはおじさんおばさんとだけだ。

　おれも小夏も元気溌剌とはいかなかったから二人に
は不審がられたものの、問い詰められるほどのことは
なく、互いに余計な心労を背負わずに済んだのは幸い
だった。

　殴られて怪我でもしていたら話はまた変わっていた
だろうが。
　そう考えると、忠保のことは少し心配だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0150020b56">
「どうもこうもねえよ」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0150030b33">
「ねえよって言っても」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0150040b56">
「別に変わらねえ。リツを探す。
　今までと同じだ」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0150050b33">
「でも」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
　――あの人とはもう一緒に行かないんでしょ？
　
　口を切っても、小夏が何を言おうとしたかは容易に
知れた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0150060b56">
「最初からわかってたのにな」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0150070b33">
「……」

{	FwC("cg/fw/fw雄飛_沈むa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0150080b56">
「警察なんかあてにならない。
　わかってたってのに……ったく」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
　悔しかった。
　ほんの一日でも、あんな男を信じてしまったことが。

　勝手に信じて期待した自分が悪いのだ。そう思う。
　思っても、怒りは消えない。だが心を前へ向ける役
には立った。あの男のことは忘れる。忘れて、元通り、
自分と仲間の力だけを信じてやり直す。

　それでいい。
　最初から、それしかなかったんだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0150090b56">
「あの一条って人に相談してみようかなんて
こともちょっと考えたけどさ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
　戸口に佇んでいる小夏の表情をちらと覗く。
　多分、同じことを考えたのだと思うが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0150100b56">
「けど、もういいよな……勝手に期待して、
勝手に失望するなんてのは。
　おれたちだけでやろう」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0150110b33">
「……」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0150120b56">
「それでいいだろ？」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0150130b33">
「うん」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
　小さく頷いてくる。
　……同じことを考えて、結論も同じだった、という
ことか。

　一日を無駄にした、とは思わない。
　成果はあった。武者の関与を示す物証が得られたし、
その武者が竹林へどう侵入し、どう離脱したかという
おそらくは重要だろう疑問点も見出した。

　けれどもう、同じことをする必要はない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0150140b56">
「もう寝ろよ。今日は疲れたろ……色々」

{	FwC("cg/fw/fw小夏_通常a.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0150150b33">
「あんたもね」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0150160b56">
「あぁ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0161]
　応えて、ひとつ欠伸する。
　確かに疲れていた。心身、そのどちらがより重いか
は知れないが両方とも。

　戸口の気配が去り次第、おれは布団の上に横転して、
そのまま朝まで起きないだろう。
　早いところそうしたい。

　だが、気配はなかなか去らなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0150170b56">
「……どうした？」

{	FwC("cg/fw/fw小夏_照れ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0150180b33">
「ん。えーっと」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0181]
　なにやら言い淀む様子。
　右を見て、左を見て、天井を見る。

　それは単なる挙動不審か、でなければ隠密の気配を
探っているとしか見えず、要するに、挙動不審だった。
　こういう小夏は、あまり知らない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0150190b56">
「なにやってんだ」

{	FwC("cg/fw/fw小夏_照れ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0150200b33">
「えっとさ」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0150210b56">
「うん」

{	FwC("cg/fw/fw小夏_ツンデレ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0150220b33">
「あんた……今日、何の役にも立たなかった
じゃない」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//◆ばたん。
	OnSE("se人体_衝撃_転倒01",1000);
	SetVolume("@mbgm*", 0, 1, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0221]
　おれは布団に横転した。
　このまま朝までと言わず一生、動けないような気が
した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_沈むb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//◆表情：るーるーるー。
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0150230b56">
「…………」

{	FwC("cg/fw/fw小夏_怒りa.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0150240b33">
「あ、えっと。そうじゃなくて。
　そうじゃなくてね」

{	FwC("cg/fw/fw雄飛_沈むa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0150250b56">
「……なんなんだよ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 3000, 1000, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0251]
　おれをヘコますのが目的じゃなかったんなら、早い
とこフォローしてくれ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小夏_ツンデレ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0150260b33">
「確かに今日あんたはわたしのピンチだって
のに何の役にも立たなくて格好いいところは
全部一条さんに持っていかれてて男としての
株を下げに下げて最安値になっちゃったけど」

{	SetComic(@0,@0,8);
	FwC("cg/fw/fw雄飛_沈むb.png");}
//◆表情：るーるーるー。
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0150270b56">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0271]
　おまえは言葉で人を殺す気か。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小夏_照れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0150280b33">
「でも……わかってるから」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0150290b56">
「……なにが？」

{	FwC("cg/fw/fw小夏_ツンデレ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0150300b33">
「まるで何の役にも立たなくてカカシも同然
っていうかむしろカカシの方が雀を追い払う
だけましかもって感じだったあんたが、その」

{	FwC("cg/fw/fw雄飛_怒りb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0150310b56">
「しつこいよ!?」

{	FwC("cg/fw/fw小夏_照れ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0150320b33">
「で、でもね、<RUBY text="・・・・・・">助けてくれた</RUBY>のは、ちゃんと
わかってるから」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0150330b56">
「……」

{	FwC("cg/fw/fw小夏_照れ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0150340b33">
「ありがとう……。
　言いたかったのはそれだけ……」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0150350b56">
「……あ……あぁ」

{	FwC("cg/fw/fw小夏_ツンデレ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0150360b33">
「じゃ、じゃあ、おやすみっ！
　早く寝なさいよ！」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0150370b56">
「おう……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぱたん。たったったっ。

	OnSE("se日常_建物_スライド閉める01",1000);
	CreateSE("SE11","se人体_足音_走る02");
	MusicStart("SE11",0,1000,0,1000,null,false);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0371]
　閉じられた戸口を眺めて。
　おれはしばらく、ぼんやりとしていた。


{	SetVolume("SE11", 5000, 0, null);}
　それから右を見て左を見て、天井を見て、ぽりぽり
と鼻の頭をかいた。
　別に隠密を探していたわけではないので、ただ単に
挙動不審だったと思う。

　そして、布団に倒れ込んで寝た。
　何故か心身にのしかかる重さが少し和らいでいて、
そのことが不思議だった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 3000);


}

..//ジャンプ指定
//次ファイル　"ma01_016.nss"



