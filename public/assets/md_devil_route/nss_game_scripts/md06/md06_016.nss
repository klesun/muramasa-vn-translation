//<continuation number="1100">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_016.nss_MAIN
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
	#bg016_公園c_01=true;
	#bg112_川沿いの道a_01=true;
	#bg112_川沿いの道b_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_017.nss";

}

scene md06_016.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md06_015.nss"


//◆難民キャンプ

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");
	OnBG(100, "bg016_公園c_01.jpg");
	FadeBG(0, true);
	Delete("上背景");
	DrawDelete("黒", 1000, 100, "blind_01_00_1", true);

	SoundPlay("@mbgm30", 0, 1000, true);

	SetNwC("cg/fw/nw小柄な難民.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0160010e228">
「橋を……？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160020a00">
「はい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SEL01","se背景_ガヤ_ざわめく01_L");
	MusicStart("SEL01",0,800,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　再度訪れた俺を、先刻の男性はまたかという表情を
しながらも迎えてくれた。
　幾らか警戒が薄れたのか、他にも数人がその後ろに
姿を現している。

　俺の言葉を聞いて、彼らは一様に虚を衝かれた様子
だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 2000, 0, null);

	SetNwC("cg/fw/nw大柄な難民.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0160030e227">
「橋を建て直す、って」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160040a00">
「そうです。
　材木や道具は自分に少々ツテがあるので、
そちらから調達します」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160050a00">
「金銭面の心配は要りません」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0160060e228">
「……と言われてもな」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0160070e227">
「なんで俺達がそんなことしなきゃいけない？
　あの橋を壊したのは俺達じゃないんだ！」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160080a00">
「はい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　半分以上は勘だが、その点には同意できた。
　おそらく橋を壊したのは全く別の人間だろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160090a00">
「贖罪として再建するのではありません」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0160100e227">
「じゃあ、何のために」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160110a00">
「誠意です」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0160120e228">
「……誠意？」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160130a00">
「はい。
　この町の厄介者になるのではなく、住民と
なって貢献する意欲を示すべきと考えます」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0160140e228">
「…………」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0160150e227">
「それこそ、なんでだ！
　俺達は戦に逐われてようやくここまで辿り
着いただけなんだぞ!?」

//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0160160e227">
「何も悪いことはしてねえ。
　なのになんで、この上そんな苦労を背負い
込まないとならないんだ……！」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160170a00">
「……お気持ちは理解できます。
　しかし、貴方がたが流入した事で、現在の
ところ旧来の住民の生活環境が悪化している
のも事実なのです」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0160180e227">
「……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160190a00">
「貴方がたに罪は無い。
　住民側もそれは同じ」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160200a00">
「双方が自分は悪くないと意地を張り合って
いる限り、問題は解決しません。
　譲歩し合う必要があります」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160210a00">
「そして――」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0160220e228">
「先に譲歩するのは、俺達か」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160230a00">
「……はい」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0160240e227">
「……ッ……なんで……」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0160250e228">
「腐るなよ。
　それは仕方ない。俺達は後から来たんだ」

//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0160260e228">
「受け入れて貰うために努力が必要ってのは、
当然と言えば当然の話だ」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0160270e227">
「……」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0160280e228">
「このまま住民に睨まれ続ければ……いずれ
俺達は追い出される。
　そうなったら、野垂れ死にするしかない」

//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0160290e228">
「けれど、うまく住民側と和解できれば――」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160300a00">
「その事実は行政や警察の判断にも強く影響
するでしょう。
　受け入れ、保護する方向へ方針が傾く一因
となります」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　鎌倉署長は公人として必ずしも甘い温情家ではない。
　が、難民対策を決めるに当たって、もし『住民との
良好な関係』という一事実があるのなら、決して軽視
はしない筈だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw大柄な難民.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0160310e227">
「……あの橋を建て直せば、住民側は俺達を
認めるのか？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160320a00">
「確約は致しかねます」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0160330e227">
「あてにならねえ……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160340a00">
「申し訳ありません。
　自分にお約束できるのは、認められるよう
働き掛ける事だけです」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0160350e227">
「……」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0160360e228">
「橋造りは俺達だけで？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160370a00">
「はい。
　自分はお手伝いしますが……外部に人手を
求めるべきではないでしょう」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160380a00">
「業者を頼むには金が掛かりますし、それに
他人の手で建て直しても意味がありません」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0160390e228">
「確かにそうだな」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0160400e227">
「おい……やるつもりなのか？」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0160410e228">
「……ああ。
　どうせ体は空いてるんだ」

//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0160420e228">
「お前だって、日雇い仕事が週に一度あるか
無いかだろう」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0160430e227">
「…………」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0160440e228">
「やっても無駄かもしれないが……やらなく
たって無駄に時間を過ごすだけなんだ。
　だったら、いくらかは見込みのありそうな
方を試してみてもいい」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0160450e227">
「……」

//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0160460e227">
「かもな……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160470a00">
「やって頂けますか」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0160480e228">
「ああ。俺は乗るよ。
　若い連中にも声を掛けてみる」

//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0160490e228">
「ただ、そんなには集まらないと思う……。
　あまり期待しないでくれ」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160500a00">
「結構です。
　宜しくお願いします」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆川沿い

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100, "bg112_川沿いの道a_01.jpg");
	FadeBG(0, true);


	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

	StR(1000, @0, @0, "cg/st/st村正_通常_私服.png");
	FadeStR(300, true);


	SetFwC("cg/fw/fw村正_優しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0160510a01">
「うまくいったようね」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160520a00">
「ひとまずはな」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0160530a01">
「けれど、こんな小川でも橋を架けるのって
わりあい大変なんじゃない？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160540a00">
「俺もそう思う。
　大工の経験者がいれば良いのだが……」

{	FwC("cg/fw/fw村正_笑顔.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0160550a01">
「私は手伝ってもいいの？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160560a00">
「……いや。
　それは無しだ」

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0160570a01">
「やっぱり」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　村正は大工ではないが、劒冑の異能を行使できる。
　橋の再建に役立つ事は間違いないだろう。
　
　しかし、作業仲間にどう説明したものか。

　一介の警官が劒冑を持つ筈はない。
　強引に言い繕えば不審を買い、折角まとまった話も
水泡に帰す恐れがある。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160580a00">
「お前には別件を頼みたい」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0160590a01">
「なに？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆川沿い

	CreateColorEX("黒幕１", 25000, "#000000");
	Fade("黒幕１", 1000, 1000, null, true);

	DeleteStR(0,true);

	Fade("黒幕１", 1000, 0, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　資材の調達は滞りなく済んだ。
　その翌日、早速作業を開始する。

　集まった人員は総勢六人。
　本当はもう少し手が欲しいところだったが、贅沢を
言っても仕方ない。

　まずは現場の検分から始める。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160600a00">
「やはり……深い」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0160610e228">
「真ん中辺りは腰まで沈みそうだな」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160620a00">
「もっと深い場所もあるかもしれません」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　川に入ってみてほんの数分で、ここが子供の遊び場
にされていない理由は察しがついた。
　危険過ぎるのだ。

　深い上に川底はぬかるみ、しかも流れは速い。
　重要な橋というわりに即席の浮橋を仕立てて代用に
する様子がないのも、この川並なら当然だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw小柄な難民.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0160630e228">
「楽じゃないのはわかってたが……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160640a00">
「何方か、橋を建てた経験のある方はおられ
ますか？」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0160650e227">
「……いや……」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0160660e228">
「……それは中々いないだろう。
　一応確かめるが、あんたは？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160670a00">
「未経験です。
　建築業に関わった事はありますが……橋と
いうのは」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0160680e227">
「いきなり前途多難じゃねえか……」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0160690e228">
「……まっ、川幅は大したことないんだ。
　素人でも何とかならないことはないだろう」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160700a00">
「はい。
　時間は掛かるかもしれませんが」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0160710e227">
「……」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0160720e228">
「まずはやってみるさ。な？」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0160730e227">
「……わかったよ。
　文句ばっか言ってても始まらないしな」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆転換

	CreateColorSP("黒幕２", 25000, "#000000");
	DrawTransition("黒幕２", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);




	DrawTransition("黒幕２", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕２");

	SetNwC("cg/fw/nw太った男.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0160740e109">
「……？
　おい、今日は何やってんだよお巡り。川に
浸かったりして」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0160750e110">
「また酔っ払ってんのか？」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160760a00">
「いえ。
　橋を建て直すため、調査をしているところ
です」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0160770e110">
「橋を建て直す？
　あんたが？」

//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0160780e110">
「そいつら使ってか」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0160790e227">
「…………」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0160800e109">
「はッ。そりゃあいい。
　警察も結構やってくれるじゃねえか」

//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0160810e109">
「橋を壊した奴らに罪を認めさせて、償いを
させてるってわけだ」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0160820e227">
「何だと!?」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0160830e228">
「止せよ……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160840a00">
「それは違います。
　この方々と橋の破壊とは関係ありません」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160850a00">
「また、自分に命令されて働いているのでも
ありません。
　単に善意から橋の再建を思い立ってくれた
だけです」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0160860e109">
「善意ね……。
　どうだかね」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0160870e227">
「…………」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0160880e109">
「まぁいいさ。
　てめぇで壊したもんをてめぇで直すってん
なら邪魔することもねえ」

//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0160890e109">
「せいぜい頑張ってやりな」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0160900e227">
「……っ……」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0160910e228">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　二人連れは去っていった。
　しかし彼らが契機となったのか、周辺の住民達から
視線が集まり始めている。

　温かくはない。冷淡と言っていい。
　さもあろう――一度抱かれた悪感情は、そう簡単に
覆らないものだ。

　ひとまず気にせずにおくしかない。
　後でそれとなく皆に言っておこう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw老人.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0160920e307">
「…………」

//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0160930e307">
「……ふん……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆川沿い
//◆とんてんかん
	Fade("黒幕１", 1000, 1000, null, true);

	Wait(1000);

	CreateSE("橋", "se背景_ガヤ_橋建設中01_L");
	MusicStart("橋", 0, 1000, 0, 1000, null,true);

	OnBG(100, "bg112_川沿いの道b_01.jpg");
	FadeBG(0, true);

	Fade("黒幕１", 1000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　数日は瞬く間に過ぎたが、過ぎた時間に見合うほど
作業は進んでいなかった。
　有体に言えば、遅々としている。

　素人集団のやる事であるから仕方ない。
　それでも、基部は<RUBY text="ようよ">漸</RUBY>う出来上がりつつあった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("橋", 1000, 0, null);


	SetNwC("cg/fw/nw小柄な難民.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0160940e228">
「やっぱり<RUBY text="はしげた">橋桁</RUBY>は要るか」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0160950e227">
「土台の上に板を渡して終わりってわけにも
いかないだろ」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160960a00">
「は。安全性に問題があります」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0160970e228">
「なら、真ん中に<RUBY text="・">脚</RUBY>も造るか？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160980a00">
「それは……さて……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　川幅を見るに、不要とも思える。
　しかし、あった方が安定感は高まりそうだ。

　資材にはまだゆとりがある。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0160990a00">
「造るだけ造ってみても良いかと」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0161000e227">
「そうだな。
　邪魔にはならないだろうし」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0161010e228">
「<RUBY text="きょうだい">橋台</RUBY>が出来たらやるか」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0161020a00">
「ええ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆とんかん
	CreateSE("橋", "se背景_ガヤ_橋建設中01_L");
	MusicStart("橋", 0, 1000, 0, 1000, null,true);

	WaitKey(800);

	SetNwC("cg/fw/nw老人.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0161030e307">
「…………」

//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0161040e307">
「あー……おい……」

{	SetVolume("橋", 1000, 0, null);
	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0161050a00">
「？　は、何でしょう」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　小声で呼ばれたように思えて振り返ると、果たして
そこには老人が一人いた。
　難民の服装ではない。煙管を咥えてこちらを眺めて
いる。

　煙が立っていないところを見ると、中身は空っぽの
ようだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw老人.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0161060e307">
「…………」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0161070a00">
「……御老人？」

{	NwC("cg/fw/nw老人.png");}
//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0161080e307">
「……いや……」

//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0161090e307">
「何でもねえ。余計なこった」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0161100a00">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md06_017.nss"