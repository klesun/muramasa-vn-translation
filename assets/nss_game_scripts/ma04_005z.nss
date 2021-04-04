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

scene ma04_005z.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma04_006.nss";

}

scene ma04_005z.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_005a.nss"
//前ファイル　"ma04_005b.nss"
//前ファイル　"ma04_005c.nss"

//◆合流
	SoundPlay("@mbgm29",0,1000,true);
	PrintBG("上背景", 30000);
	CreateTextureSP("絵ＥＶ100", 5100, Center, -576, "cg/ev/ev119_一条と香奈枝海水浴_a.jpg");
	Move("絵ＥＶ100", 0, @0, -110, Dxl1, true);
	FadeDelete("上背景",0, true);

	SetFwR("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/005z0010a02">
「と……とにかく！
　話を元に戻しますけどっ」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005z0020a00">
「うむ」

{	FwR("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/005z0030a02">
「あたしたちの目的地は江ノ島でしょう？
　なら、早く行きましょう！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	OnBG(100,"bg041_片瀬海岸_01.jpg");
	FadeBG(0,true);
	SetVolume("@mbgm*", 1000, 0, null);
	FadeDelete("絵ＥＶ*", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　……そう。
　ここは江ノ島ではない。

　江ノ島の対岸、片瀬だった。
　ここに留まっていても埒は明かない。早く島へ渡り
たいという一条の意思は理解できる。

　が。
　それでも留まっているからには理由があるのだった。

　俺はそのうち、最も直接的なものから口にした。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm16",0,1000,true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005z0040a00">
「渡れない」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/005z0050a02">
「……え？
　どうしてですか？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005z0060a00">
「ここへ来るまでに調べておいた。
　今、江ノ島全域は立ち入り禁止区画に指定
されている」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/005z0070a00">
「無論、発令したのは幕府だ。
　理由は不明」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005z0080a03">
「情報通り、兵器研究をしているのでしたら
当然の処置ですね。
　一概には決め付けられませんけれど……」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/005z0090a04">
「疑惑が強まったのは事実でございます。
　ゆめ、ご油断なさいませぬよう」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/005z0100a02">
「じゃあ……どうするんですか？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005z0110a00">
「公然と渡るのが不可能であるなら、非公然
に渡るまでの事。
　その方策を探るのが、ここに留まっている
理由の第二」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/005z0120a00">
「第三は情報収集。
　本来なら目的地の手前で聞き込みなどと、
迂遠なやり方は好まないのだが」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/005z0130a04">
「<RUBY text="こたび">此度</RUBY>は目的地の異常が既に明らかでござい
ますからね」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005z0140a00">
「はい」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/005z0150a02">
「……それは、そうです。
　島へ行く前に、せめて<RUBY text="・・・・">この状況</RUBY>がどういう
ことなのか多少でも知っておかないと……」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005z0160a03">
「何も知らずに島へ行くのは二の足を踏んで
しまいます。
　…………夏ですし」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005z0170a00">
「夏です」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/005z0180a04">
「夏でございます」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/005z0190a02">
「夏だよな……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　季節は夏。
　暦は霜月。そろそろ年の瀬も近いこの頃。

　夏である筈がなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005z0200a00">
「異常気象にも程があるというもの」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/005z0210a04">
「しかも江ノ島周辺だけときては……」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/005z0220a02">
「何でこんなあからさまに怪しい事件が全然
ニュースになってないんだ？　あたし、新聞
で読んだ覚えないぞ」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005z0230a03">
「六波羅さまの<RUBY text="・・・">何やら</RUBY>が原因なら、報道機関
に緘口令を布くくらい何でもないでしょう」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/005z0240a04">
「疑惑濃度更に上昇でございますね」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　確かに。
　八幡宮で話を聞いた時点では、六波羅の秘匿研究と
いう点については半信半疑、むしろ首を傾げる気持ち
の方が強かった位なのだが。

　現時点では逆転している。
　幕府はあの島で何かを行っているのだ――おそらく。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005z0250a00">
「ではそろそろ行動を開始しましょう。
　手分けして情報収集を。主眼とすべきは島
への潜入方法、及びこの異常な熱気について」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/005z0260a00">
「何か質問、提案などある方？」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/005z0270a02">
「ありません！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　応えつつ、一条は既に動き出していた。
　辺りを見回すや、客で賑わう海の家――ではなく、
その隣で小船を囲んで暗い顔をしている漁師の一団を
目指して歩き始める。迅速、かつ的確な行動だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005z0280a03">
「ひとつよろしいかしら」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005z0290a00">
「はい。大尉」

{	SetVolume("@mbgm*", 300, 0, null);
	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005z0300a03">
「そろそろわたくしか一条さんか、どちらか
選んで、常に一緒に行動したりとかして関係
を深めてゆく頃合なのではないでしょうか。
　あら、でも一条さんはもういないから……」

{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/005z0310a02">
「やにわに何言ってんだてめぇ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　戻ってきた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm25",0,1000,true);

	SetFwC("cg/fw/fwさよ_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/005z0320a04">
「さあ、決断の時ですよ湊斗さま！」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005z0330a00">
「却下致します。
　調査効率の悪化を招く以外に、効果が認め
られません」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005z0340a03">
「そこで牽強付会なこじつけをして己の行動
を正当化するのが男の甲斐性というものです
のに！」

{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/005z0350a02">
「おめー実は脳味噌が癌なんじゃねえの？」

{	FwC("cg/fw/fwさよ_驚き.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/005z0360a04">
「綾弥さまっ、口が過ぎますよ！」

{	FwC("cg/fw/fw香奈枝_凹む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005z0370a03">
「そうですっ。酷いことを」

{	FwC("cg/fw/fwさよ_怒り.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/005z0380a04">
「お嬢さまが頭を深刻に病んでおられるのは
事実でございますが、それはそれとして、今
のご発言はわりとけっこう核心を突いていた
りするのです！」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005z0390a03">
「おいおい。待てよ侍従」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/005z0400a02">
「んなわけねーだろ……。
　そりゃ一体どんな男だ」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/005z0410a04">
「いやいや綾弥さま。
　己に課せられた使命を果たしつつしっかり
<RUBY text="ヒロイン">恋人</RUBY>と結ばれてこそ男児の本懐というもので
ございまして――」

{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005z0420a03">
「景明さまっ、わたくし唐突に芸術的インス
ピレェションを獲得しました！
　題して水着とライフル銃」

{	FwC("cg/fw/fw香奈枝_怒笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005z0430a03">
「半世紀後くらいにネタの切れた企画屋さん
が苦しまぎれに思いつきそうな感じの前衛劇
なんですけど、今ここで開始してもよろしい
かしら？」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005z0440a00">
「自分と一切無関係の所でお願いします」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　暦は霜月。季節は夏。
　頭の季節感も狂っていた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

//◆０６へ

}

..//ジャンプ指定
//次ファイル　"ma04_006.nss"