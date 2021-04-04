//<continuation number="310">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_012.nss_MAIN
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
	#bg035_鎌倉サーキット俯瞰a_02=true;
	#bg035_鎌倉サーキット俯瞰a_03=true;
	#bg007_若宮大路a_03=true;
	#bg034_署長宅茶の間a_03a=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma03_013.nss";

}

scene ma03_012.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_011a.nss"
//前ファイル　"ma03_011ba.nss"
//前ファイル　"ma03_011bb.nss"
//前ファイル　"ma03_011c.nss"

//◆合流
//◆サーキット場→夜

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg035_鎌倉サーキット俯瞰a_02.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	WaitKey(1000);

	OnBG(100,"bg035_鎌倉サーキット俯瞰a_03.jpg");
	FadeBG(2000,true);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　日が落ちる頃合を見て、その日の調査を終了。
　これ以降は不審者を見る眼も厳しくなる。急いて事
を仕損じる危険を避けるには、ひとまず撤退するより
なかった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆鎌倉街路
//◆署長宅・居間

	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg007_若宮大路a_03.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 2000, true);
	WaitKey(1000);
	FadeDelete("絵暗転", 2000, true);

	WaitKey(1000);

	CreateColorSP("絵暗転", 15000, "#000000");
	DrawTransition("絵暗転", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100,"bg034_署長宅茶の間a_03a.jpg");
	FadeBG(0,true);

	DrawDelete("絵暗転", 1000, 1000, "blind_01_00_1", true);

	SoundPlay("@mbgm30",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　合流し、署長宅へ帰着。
　茶を貰って一息つき、互いに情報を開陳する。

　着眼すべき成果は三つだった。

　一。
　今日の予備予選に参加した騎体、及びその後で練習
騎航を行った騎体の中に、寄生体は存在しない。
　村正が確認完了。

　尚、タムラや翔京、ヨコタンなど有力チームの多く
は姿を見せなかったため未確認である。

　二。
　どのチームもこの大会にかける意気込みは盛んであ
り、「力を求めている」と云い得る。
　事前の予想通り。

　三。
　装甲競技の賭博化をめぐっての対立が存在する。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

..//フラグ分岐
//◆フラグ分岐
//◆「この場に留まる」選択をしていた場合
//嶋：フラグ名変更「$茶々丸遭遇」

//$茶々丸遭遇 = true;

if($茶々丸遭遇 == true){//if_start

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0120010a02">
「賭博化？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0120020a00">
「簡潔に言えば競馬のように、だ。
　勝馬投票券を客に売って稼ごうという事」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0120030a03">
「わたくしもそういう噂は聞きました。
　推進派の中心は翔京、反対派はタムラとか。
そして、翔京の背後には」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0120040a00">
「六波羅。
　翔京の社長は大会主催者今川雷蝶の部将と
義兄弟の関係にある……」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0120050a04">
「と、いうことのようでございますね」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0120060a02">
「ちっ。
　山犬ども、年がら年中<RUBY text="・・・・・・・">さかりっぱなし</RUBY>って
のは今更だが、場所も選ばねぇのかよ。
　こんなとこまで餌漁りに来やがって」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0120070a00">
「だが、いくら六波羅の支援があろうと客に
嫌われては賭博化は成立しない。
　そのため翔京は今大会での栄冠獲得に全力
を注いでいる。反対派のタムラもまた同様」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆終了


}else{

..//フラグ分岐
//◆フラグ分岐
//◆「この場に留まる」選択をしていない場合

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0120080a00">
「賭博化ですか。
　それは例えば、競馬のように」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0120090a03">
「ええ。そういうことなのでしょうね。
　装甲競技の人気の高さからして莫大な利益
が期待できます」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0120100a00">
「確かに。
　しかし、対立があるとのお話ですが？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0120110a03">
「はい。
　タムラを中心に、一部で」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0120120a02">
「なんで反対してるんだ？」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0120130a04">
「それこそ、競馬のようにしたくないからで
ございましょう。海外ではともかくこの国に
おける競馬はなかなかに紳士の遊戯とは呼び
にくいものになってしまいましたから」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0120140a02">
「なるほどね。そりゃそうか。
　楽しくレースをやってる連中にしてみれば、
同じテツを踏むのは勘弁ってことだな」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0120150a00">
「対立の構図及び優劣は如何なものでしょう
か。大尉殿」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0120160a03">
「申し上げました通り反対派はタムラ中心。
　一方、推進派の中核は翔京です。圧倒的に
優勢なのはこちら側。後光の輝きが強いので、
大概の関係企業は目を伏せて従っています」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0120170a02">
「後光？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0120180a03">
「あなたの大好きな六波羅様」

{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0120190a02">
「……へっ。
　金の匂いがするとどこにでも首を突っ込み
やがるな、あの山犬ども」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0120200a04">
「具体的には、小弓公方今川雷蝶さまの幕僚
との間に太いパイプがある模様でございます。
　大将領殿下のご子息の姿が背後に見え隠れ
していては、逆らうのも覚悟が要りましょう」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0120210a00">
「しかし、背後に幕府がついていようと客層
の支持がなければ賭博化は難しい筈。
　レース愛好者たちがそのような変化に背を
向けたなら、それまでの事です」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0120220a00">
「その辺りについては？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0120230a03">
「だからこそこの大会なのです、景明さま。
　ファンが待ち望んだこの大和ＧＰで勝利を
収めれば、人気はそのチームに集まります」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0120240a04">
「後は、その人気を背景に賭博化への支持を
得てゆけばよろしゅうございましょう。
　もっともこれは、反対派にも同様のことが
いえる理屈でございますが」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0120250a00">
「……成程。
　推進派の翔京、反対派のタムラ、いずれに
とってもこの大和ＧＰが天王山という事です
か」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



}//if_else_End

//◆合流



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　――大体、状況は整理がついた。

　現時点で決定的な調査成果はなし。
　だが、容疑の濃い対象は指摘できる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0120260a00">
「タムラか、翔京か」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0120270a03">
「おそらくはどちらかが……」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0120280a04">
「どちらも明日の本予選に参戦いたしますね」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0120290a02">
「なら、明日にはわかるってわけだ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　明日。
　決勝レースは明後日だ。だが、俺にとっては明日が
勝負になる――か。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0120300a02">
「……翔京の方だといいんだけどな」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0120310a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　一条が洩らした一言は、奇しくも俺の心情の率直な
部分と一致していた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(1000, 2000);

..//ジャンプ指定
//次ファイル　"ma03_013.nss"

}


