//<continuation number="950">




chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_007.nss_MAIN
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
	#bg013_鎌倉俯瞰a_02=true;
	#bg013_鎌倉俯瞰a_03=true;
	#bg006_雄飛の部屋_03a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma01_008.nss";

}

scene ma01_007.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma01_006.nss"

	PrintBG("上背景", 30000);
	CreateColorSP("暗転", 1500, "#000000");

	Delete("上背景");

//◆夕暮れの鎌倉
//◆夜の鎌倉
//◆雄飛の部屋

	CreateTextureSP("絵背景30", 1030, Center, Middle, "cg/bg/bg013_鎌倉俯瞰a_02.jpg");
	CreateTextureSP("絵背景20", 1020, Center, Middle, "cg/bg/bg013_鎌倉俯瞰a_03.jpg");
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg006_雄飛の部屋_03a.jpg");

	StL(1000, @0, @0,"cg/st/st忠保_通常_制服.png");
	StR(1000, @0, @0,"cg/st/st小夏_通常_制服.png");

	FadeStL(0,false);
	FadeStR(0,true);

	FadeDelete("暗転", 600, true);
	WaitKey(300);

	FadeDelete("絵背景30", 1000, true);
	WaitKey(400);

	SoundPlay("@mbgm27",1000,1000,true);
	FadeDelete("絵背景20", 1000, true);

	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070010b56">
「……というわけで」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070020b43">
「リツは、竹林の辺りまでは帰ってきていた
らしいんだよ」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070030b33">
「弁天さまの近くの竹林よね？」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070040b43">
「うん」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　一日の調査を終え、小夏を交えて報告会。
　場所はおれの部屋だった。

　小夏は当然ながら自分の部屋に男を入れたがらない
し、忠保の家は少しばかり敷居が高いので――忠保に
そう言っても首を傾げるだけだろうが――仕方ない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070050b43">
「雄飛、卑猥な雑誌はちゃんと奥にしまって
おいてよ。恥ずかしいなぁ」

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070060b56">
「しまってあるよ！　適当言うな！」

{	FwC("cg/fw/fw小夏_怒りb.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070070b33">
「……しまってあるの？」

{	FwC("cg/fw/fw忠保_笑顔b.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070080b43">
「うわぁ、墓穴掘ったね雄飛っ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　テメェだよ掘ったのは！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070090b56">
「話を元に戻します。
　……足跡を辿れたのは竹林までだ。その先
はわからなかった」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070100b43">
「その先って言っても、もうリツの家は目と
鼻の先なんだけどねえ」

{	FwC("cg/fw/fw小夏_通常a.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070110b33">
「すごいじゃない。
　一日でよくそこまでわかったね」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070120b56">
「自分でも結構驚いている」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　あの弦楽器の女性と老女の二人連れに出会った後の
捜査は、とんとん拍子と言いたいくらい順調に運んだ。
　リツは駅前で数軒の店舗を覗いたあと帰路についた
ことが、日暮れ前には確認できたのだから。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070130b43">
「でも不思議だよねぇ。あの竹林に入ったら、
あとは住宅地方面に出るしかないはずなんだ
けど」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070140b56">
「そっちでは目撃されてなかったんだよな」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070150b33">
「竹林に入ったのは確かなの？」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070160b56">
「手前の飲み屋通りで聞けた。一昨日の夜に
入っていくのを見たって人が何人かいる」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070170b43">
「リツはいつもあそこを通って帰るから、日
にちを間違えてるって可能性もないわけじゃ
ないけど……ねぇ」


{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070180b56">
「いつも見掛けるのに昨日は見なかったんで
不思議に思ってた……っていうんだから確か
なんじゃねぇ？」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070190b43">
「うん」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070200b33">
「竹林の中は調べなかったの？」

{	FwC("cg/fw/fw雄飛_沈むa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070210b56">
「いやそれが……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　もちろん、調べようとはしたのだが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_沈むa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070220b56">
「あそこ、田中の爺さんの土地だろ」


{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070230b33">
「あぁー。あの雷爺い」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　小夏が顔をしかめる。さもありなん。

　リツの家の近所の竹林は子供の頃のおれたち四人組
にとって絶好の遊びスポットだったから、幾度となく
侵入を試みた。

　そのたび立ちはだかったのが、竹林の所有者である
田中の爺さん。
　人呼んで雷帝。

　竹林を通行路として使われることは容認したものの
（そこへ至るにも付近住民との間で過酷な闘争があり、
これは第一次雷帝動乱と呼ばれる）、子供の遊び場に
されることは断固として認めなかった爺さんは、

　野犬一〇匹をまとめて心臓麻痺に至らしめたという
伝説の<RUBY text="サンダークラップ">雷鳴怒叫</RUBY>を駆使して侵入者を攻撃。
　対するおれたちは兵力の優位を生かせる散開戦術を
選択。敵戦力の疲弊を狙ってゲリラ戦を繰り広げたが、

　付近住民の仲裁（雷鳴の流れ弾をくらうこっちの身
にもなれ）によりやむなく和睦。ふかし芋八個と引き
換えに全戦線から撤退したのだった。
　第二次雷帝動乱の終結である。

　そんなことがあったため、今でもあの爺さんはおれ
たちにとって鬼門だった。
　最近は寄る年波のせいか、家でおとなしくしている
ことが多くなったと聞いていたのだが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_沈むb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070240b56">
「たまたま昨日は元気だったらしくてな」

{	FwC("cg/fw/fw忠保_笑顔b.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070250b43">
「しかもつい最近竹林を荒らした連中がいる
らしくて。こっちを見るなり僕らを犯人だと
決め付けて怒鳴り通しでさ。
　ハハハ、まったく話にならなかったねぇ」

{	FwC("cg/fw/fw小夏_呆れ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070260b33">
「笑いごとじゃないでしょ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　まったくもって。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070270b56">
「とにかく、あそこは爺さんの留守を狙って
また調べてみるさ。
　でないと調査が進まないしな」

//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070280b56">
「それで、おまえの方はどうだったんだ？」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070290b33">
「あ、うん。
　リツの友達を片っ端から当たってみたんだ
けど……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　その小夏の表情を見れば大体続きはわかったが。
　聞かないわけにもいかない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070300b56">
「けど？」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070310b33">
「成果ゼロ。一昨日、忠保と別れた後のリツ
を見た人は誰もいなかった。
　誰それと駆け落ちでもしたんじゃないとか、
いい加減な噂は色々拾ったけどね……」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070320b43">
「駆け落ちの相手は？　誰か特定の男？」

{	FwC("cg/fw/fw小夏_呆れ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070330b33">
「言う人によってバラバラ。
　ちなみにあんたや雄飛も候補者のうち」

{	FwC("cg/fw/fw雄飛_沈むb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070340b56">
「……おれたちは別に失踪してないんだが」

{	FwC("cg/fw/fw忠保_笑顔b.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070350b43">
「一方だけが姿を消す駆け落ちって、それは
つまり拉致監禁って言わないかなぁ。
　雄飛、ちょっと押入れ開けてみていい？」

{	FwC("cg/fw/fw雄飛_怒りa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070360b56">
「どうもおまえとの友情を清算して損失額を
支払わせる時が来たらしいな？」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070370b33">
「後にしなさい。
　それと……これも聞いた噂の内なんだけど」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070380b56">
「ん？」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070390b33">
「ちょっと……良くない噂が」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070400b43">
「……まぁ、リツはやることなすこと万事が
派手めだったからねぇ」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070410b56">
「悪く言う奴は昔からいたろ。
　今更そんなもん、気にしたって仕方がない」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　目立つ人間の宿命みたいなものだ。
　昔はしばしば腹を立てることもあったが、当の本人
が『ほほほ有名税というやつですわね』とか言ってる
ので段々気にならなくなった。

　相手にされない陰口側はそれで一層躍起になるわけ
だが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小夏_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070420b33">
「そうじゃなくて。
　リツの噂じゃなくて……」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070430b56">
「なんだよ」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070440b33">
「……リツに関係あるかもしれない悪い噂。
　最近、人がいなくなってそれきりってこと
多いでしょ？」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070450b43">
「順調な増加傾向にあるね」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070460b56">
「順調ってこたないだろ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　順調だけど。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小夏_怯え.png");
	SetVolume("@mbgm*", 2000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070470b33">
「その理由が……
　六波羅の奴隷貿易なんじゃないかって、噂
する人が多いの」

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070480b56">
「…………」

{	FwC("cg/fw/fw忠保_冷徹.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070490b43">
「…………」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070500b33">
「だから子供とか、見た目のいい若い女の子
とかがよくいなくなるんだって。本当かどう
かはわからないけど。
　大陸に運んで売るのに都合がいいから……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　小夏はそこまで呟いて黙った。
　かわりに口を開く者もいない。

{	SoundPlay("@mbgm35",2000,1000,true);}
　――六波羅の奴隷貿易。
　おそらく、なんの証拠もない噂だろう。

　六波羅に反感を抱く人間なら誰でも思いつきそうな
話だ。そして六波羅に反感のない市民などいない。
　そんな噂が多く飛び交うのは当然と言えた。

　つまりは偏見というものだろう。

　だがそれでも。
　六波羅の奴隷交易、その言葉が持つ現実味は――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070510b43">
「……有り得ない話じゃないね」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070520b56">
「忠保……」


{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070530b43">
「なるほど。それなら、拉致犯が家に連絡を
入れてこないことも不思議じゃなくなる。
　利益は被害者の家族ではなく、購入者から
得ればいいわけだから」

{	FwC("cg/fw/fw小夏_怒りa.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070540b33">
「ちょっと――」

{	FwC("cg/fw/fw雄飛_怒りa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070550b56">
「忠保！」

{	FwC("cg/fw/fw忠保_冷徹.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070560b43">
「怒らないで聞いて欲しいな。
　時間の無駄だよ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　激昂しかけたおれと小夏に、忠保の声はバケツ一杯
の水のようだった。
　冷え切っていた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_冷徹.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070570b43">
「狙われるのは女子供……それも合理的だね。
　捕獲に要する手間が少ないうえ、運ぶのも
比較的楽だ。成年男性と違って労働力として
は期待できないけれど……」

//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070580b43">
「そういう役割を求められる奴隷ではないの
だろうね」

{	FwC("cg/fw/fw雄飛_沈むa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070590b56">
「……」

{	FwC("cg/fw/fw小夏_怯え.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070600b33">
「…………」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070610b43">
「奴隷市場となると、どこになるかな。上海
か、香港か……<RUBY text="マカオ">澳門</RUBY>か。
　その先はもうわからないな……中南米かも
しれないし、大陸の奥地かもしれない」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　忠保の淡々とした言葉は続く。
　止めたかったが――止められない。

　それはただ、臭いものに蓋をするも同然のことだと
わかっていた。
　蓋をしたところで汚物は消えない。

　本当に……そんな。
　汚物のような事実が。
　リツを襲ったと、言うのだろうか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小夏_沈む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070620b33">
「もし……」


{	FwC("cg/fw/fw忠保_冷徹.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070630b43">
「うん」

{	FwC("cg/fw/fw小夏_怯え.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070640b33">
「もし、もしよ？　もし本当にそんなことが
あったとして……。
　どうすればいいの？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　どうすればいいのか。
　そんな事態に対して。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070650b43">
「……とりあえずは、事実を調べることだよ」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070660b33">
「……」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070670b43">
「まだリツがどうなったか、実際のところは
何もわかっていないんだ。
　まずはその確認が第一」

//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070680b43">
「憶測で騒ぎ立てても相手にされないよ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　答えになっていない。
　それはわかっていた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070690b56">
「つまりはリツの足取り調査の続行だな」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070700b43">
「そうだね」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　話を合わせる。忠保が頷く。
　小夏は黙っていた。

　考えていることは、きっと、全員同じだった。

　<RUBY text="・・・・・・・・・・・">六波羅には刃向かえない</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_驚き.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070710b43">
「小夏」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070720b33">
「……」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070730b43">
「ほかには何かないのかな？」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070740b33">
「え……あ、うん。
　そういえばもう一つ、気になる話が」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070750b56">
「なんだ？」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070760b33">
「今朝のことなんだけど、学校に来る途中で
怪しい人を見たって」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070770b43">
「怪しい人？」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070780b56">
「忠保くらいか？」

{	FwC("cg/fw/fw忠保_笑顔b.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070790b43">
「ハハハ雄飛、ちゃんと冗談めかして言って
よ。真顔で言ってどうするのさ」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070800b56">
「？　おれは真面目だが。冗談言ってる場合
じゃないだろ」

{	FwC("cg/fw/fw小夏_怒りa.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070810b33">
「そうね。話を聞く限りだと、どうも４忠保
くらいの怪しさみたい」

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070820b56">
「相当だな」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070830b43">
「会話の円滑な進行のためにひとまず黙って
おくけど、僕が納得していないという事実は
議事録に残しておくからね。
　それで、どんな人？」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070840b33">
「うーん。なんだか……すごく暗い感じの」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070850b56">
「ほお？」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070860b33">
「暗黒大将軍か、暗闇の星の暗闇星人かって
くらいに黒いオーラがにじんでる人で」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070870b43">
「あまり聞かない人物評だね」

{	FwC("cg/fw/fw小夏_怒りa.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070880b33">
「途方もなく景気の悪い目つきをしながら、
学校の周りを徘徊していたんだとか」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070890b56">
「それは怪しいな……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　おれは思わず腕組みして唸った。
　そんな野郎が今日、学校のそばにいたとは。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小夏_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070900b33">
「関係……あるかな？」

{	FwC("cg/fw/fw忠保_冷徹.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070910b43">
「さっきの噂と結びつければ、拉致の実行犯
が次の獲物を狙ってるとも考えられるね」

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070920b56">
「！　じゃあ、そいつを捕まえれば」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070930b43">
「リツに辿り着ける可能性はある……可能性
はね。
　現段階では何もかも推測だよ」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070940b56">
「それはわかってるが……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　だがようやく、道筋が一つ見えた気がする。
　明るい道筋ではないにしても。

//◆夜の鎌倉
{	CreateTextureEX("絵背景50", 1050, 2000, 0, "cg/bg/bg013_鎌倉俯瞰a_03.jpg");
	Move("絵背景50", 0, Center, Middle, null, true);
	Fade("絵背景50", 2000, 1000, null, false);}
　リツは今日も結局、家へ戻っていない。

　焦りが募る。
　そばにいることに慣れ親しんだ仲間がいない、それ
がこんなにも辛いことだとは思わなかった。

　耐え難いまでの焦り。
　本当は寝る間も惜しい。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070950b43">
「夜に調査なんてやるだけ無駄だよ。
　鎌倉大番に捕まりでもしたら何もできなく
なる。落ち着いて、雄飛」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　わかってる。
　わかっちゃいるけど。

　リツ……無事でいるよな？
　きっとどっかで遊んでるだけなんだろ？

　さっさと帰ってこいよ。
　今なら笑って許してやるから。

　それとも本当に、六波羅の鬼畜野郎にさらわれちま
ったのか。なら、おれは、
　おれは、

　糞。

　……おれはその夜、見も知らぬ暗闇星人と巨大化し
て戦う夢を見ながら眠った。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000,3000);


}

..//ジャンプ指定
//次ファイル　"ma01_008.nss"
