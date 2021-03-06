//<continuation number="500">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_011.nss_MAIN
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
	#bg085_汽車客車_01=true;



	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc03_012.nss";

}

scene mc03_011.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc03_010.nss"

//◆鉄道
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 2000, "BLACK");
	OnBG(100, "bg085_汽車客車_01.jpg");
	FadeBG(0, true);

//◆がたんごとん。注・電車ではなく汽車

	CreateSE("がたんごとん", "se乗物_汽車_走行01_L");
	MusicStart("がたんごとん", 2000, 1000, 0, 1000, null,true);

	Wait(3000);

	Delete("上背景");
	FadeDelete("黒幕１", 2000, false);

	SoundPlay("@mbgm30", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　過去、鉄道を利用する機会は少なかった。

　育った土地は文字通りの片田舎で駅も線路もなく、
長じて徴兵を受け軍役に就いた折には汽車に乗ること
もあったが、それとてせいぜい数度ばかり。
　復員して郷里に戻り、就職してからほんの二、三度。

　六波羅が政権掌握後に民間人の鉄道利用を規制して
いなければ、もう少し回数は増えていたろう。
　……会社では俺を外勤向きと評価する人などおらず、
<RUBY text="し">私</RUBY>で旅行する趣味もなかったから、高は知れているが。

　そんな次第で、俺は片手で数えて足りる程度にしか
鉄道の旅の経験がない。
　この速さも、内装も、窓の外を流れる風景も、まだ
慣れず、斬新な印象の残るものだった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("がたんごとん", 10000, 0, null);

	SetFwC("cg/fw/fwさよ_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0110010a04">
「落ち着かぬご様子で」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0110020a00">
「恥ずかしながら、少々」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0110030a04">
「しばらくの辛抱でございますよ」


{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0110040a00">
「不快を感じてはおりません。お気遣いなき
よう。
　……侍従殿は、泰然としていらっしゃる」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0110050a04">
「皺の数は経験の数でございまして。
　特にお嬢さまと欧州で暮らしていた頃は、
日常的に利用しておりましたからねぇ」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0110060a00">
「あちらでは電動の列車も普及しているとか」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0110070a04">
「左様でございますね。市街地の短距離路線
では既にそちらが主流でしょうか。
　都市間鉄道はまだまだ蒸気機関車が多数を
占めておりますが……」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0110080a04">
「一部では電気機関車などというものも使わ
れているようでございます」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0110090a00">
「？　それは、電動列車と何か違うのですか」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0110100a04">
「湊斗さまが仰られているのは、個々の車両
が動力を持つ方式のものでございましょう。
　それとは別に、電動の機関車が他の列車を
牽引する方式のものもあるのでして」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0110110a00">
「ああ……成程。
　要は従来の蒸気機関車を電動にしただけの
ものですか」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0110120a04">
「その通りなのですが湊斗さま、そういった
ことをうかうかと口外されませぬように。
　一部の<RUBY text="マニア">鉄道愛好家</RUBY>の耳に入ったが最後」


{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0110130a04">
「推定四二時間ほどの時間をかけて両方式の
発祥の経緯に始まり機構の詳細、その細かな
相違点、そして運用の実態から未来の展望に
至るまでを徹底的に講義されかねません」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0110140a00">
「？　は……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　何のことやら。

　車窓が映し出す動画はのどかな田園から、深い山野
の情景へと徐々に移り変わっている。
　しばしば、橋上を走って河川を越えることもあった。

　日差しを照り返して燦然と煌く<RUBY text="かわも">川面</RUBY>は、子供が見た
なら大いにはしゃいだのかもしれない。
　<RUBY text="ひとけ">人気</RUBY>のない客車の中で、俺はそんなことを思った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0110150a00">
「……それにしても。
　あっさりと乗車できたものですね」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0110160a04">
「会津の外へ向かう列車は開戦前に逃げ出し
たい富裕層でごった返しているそうですが。
　今、逆に会津中心部へ行きたがる民間人は
よほどの物好き」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0110170a04">
「席は取り放題でございます。
　ま、欧州に比べて馬鹿馬鹿しいほど高額な
運賃を支払えるなら、ではありますけれども」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0110180a00">
「はっ。それはそれとして、自分が気にして
いたのは別の事です。
　現在の会津は戒厳令下も同然なれば、」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0110190a00">
「列車は悉く軍に徴発されているか……ある
いはそこまでいかず民間の利用に充てる余地
を残していたとしても、乗車にあたって厳重
な審査を行うのではないか、と」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　その場合、果たして乗車を許されたかどうか。
　叩けば埃は際限なく出てくる身体だ。

　大鳥主従とて、それは同じだろう。
　いや……更に危険か。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_回顧.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0110200a04">
「そこは賭けではありましたな。
　確かに、獅子吼殿がそういった措置を命じ
ていても不思議ではございませなんだ」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0110210a04">
「されど<RUBY text="か">彼</RUBY>の男の企図は十中八九、急戦。
　必要以上に列車を確保しておく意味も、敵
の間者の侵入を極度に警戒する意味も、余り
無いと申せます」

//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0110220a04">
「そして獅子吼殿は無駄を好かぬご性根……。
　賭けとはいえ、そう分は悪くなかったので
ございますよ」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0110230a00">
「……成程」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　そんな些事に割く労力があるなら、他により有効な
使い道がいくらでもあるということか。
　その通りかもしれない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0110240a00">
「そして乗車にさえ成功してしまえば、これ
が最も高速かつ効率的な移動手段……と」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0110250a04">
「座って待っていれば着きますから。
　懸念すべきは、車内でトラブルが発生した
時に逃げるのが難しいことくらいでしょうか」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0110260a00">
「そのような危険性が？」


{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0110270a04">
「必ずしも、皆無とは。
　車両は別ですが、篠川軍の一個中隊が我々
の相客でございます」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0110280a00">
「……それは。
　顔を合わせると、些か厄介な事になる恐れ
も」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0110290a04">
「なきにしもあらずで。
　……とは申せ、あれは予備役からの召集兵」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0110300a04">
「任務はどうやら兵站、士気も装備も相応で
しかない様子。
　油断は禁物にせよ、さほど案ずるには及び
ますまいて」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　ほっほっと笑う老侍従に、俺も頷きを返した。
　そして、口を噤む。

　不意に沈黙の帳が広がった。
　<RUBY text="ホイル">鉄輪</RUBY>が<RUBY text="レール">条鉄</RUBY>の上を転がり駆けてゆく、規則的な重い
響きに耳を委ねる。

　知らず知らず、視線は乗車以来一度も口を開いてい
ない女性の上へ流れた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0110310a03">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　大鳥大尉は風景を眺めている。
　否――正確には違う。

　心ここに在らぬ<RUBY text="てい">態</RUBY>だった。
　眼差しは景色に向けられてはいるものの、その角度
は固定されて動かず、地形の移り変わりにも<RUBY text="ほとん">殆</RUBY>ど反応
しない。

　外ではなく内面を見ているのか。
　彼女の細い双眸は、今。だとすると、そこには何が
映っているのだろう。

　大鳥香奈枝という女性の、如何なる心情が――
　
　柄にもなくそんな詮索めいた欲求を起こしたのは、
沈思する彼女に心を惹かれたからかもしれない。

　普段の大尉と異なり、どうしてか、今の彼女は通俗
的な意味において女性と見えた。
　儚く、危うい。<RUBY text="そび">繊</RUBY>やかで、淡い。

　<RUBY text="かつ">嘗</RUBY>て見た、<RUBY text="コントラバス">弦楽器</RUBY>を奏でる彼女に似ている。
　似ているが――やはり違う。あの時の彼女には確か
な意思があり、それが音色を導き<RUBY text="がく">楽</RUBY>に仕上げていた。
しかし今、彼女の<RUBY text="かお">貌</RUBY>はその意思をどこか、欠いている。

　家路を見失った迷い子のようでもあった。
　
　寄る辺ない異境にただ独り、ぽつねんと佇む。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0110320a03">
「……景明さま」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0110330a00">
「…………はっ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　その名指しに、俺の<RUBY text="いらえ">応答</RUBY>は暫時、遅れた。
　不意であったせいもある。だがそれ以上に、彼女の
声は呼ばわりというよりも独白に近かった。

　相変わらず、彼女の<RUBY text="せかい">表情</RUBY>は外界から断たれている。
　……続く言葉は、会話の間と云うにはやや長過ぎる
時間を置いて<RUBY text="こぼ">零</RUBY>された。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0110340a03">
「……このまま。
　何処かに行ってしまいましょうか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　道を失った迷子が、諦めて当て<RUBY text="ど">所</RUBY>もなくとぼとぼと
歩き出すような――
　
　そんな一言を、大鳥大尉は口にした。

　何処か。
　それはきっと、<RUBY text="・・・・・・・・">真っ直ぐではない</RUBY>何処か……という
意味だろう。

　篠川公方府へ殴り込み、大鳥獅子吼を討つなどと、
馬鹿げた――だろう、客観的にはどう見ても――企て
を捨てて。
　別の何処かへ。

　目的もなく。強いて決めるなら、戦火を逃れる為に。
　いま巷間に溢れている、そんな人々の群れに混ざる。

　何者でもない、一個の人間として。
　身の程をわきまえ、己の分際に従い……

　もはや大鳥香奈枝でも湊斗景明でもなく。
　貴顕の矜持も銀星号封殺の責務もなく。
　
　自ら欲して無名の者となり、世に埋没する。

　――そうしたい、と。
　大鳥大尉は、言ったのだろうか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0110350a00">
「大尉、」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0110360a03">
「冗談でしてよ」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0110370a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　いつしか。
　彼女は首を傾け、俺に視線を向けていた。

　何処かを彷徨っていた心は、現世に戻ってきている。
　大鳥香奈枝として。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0110380a03">
「冗談です……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　繰り返される言葉に、どうしてか、頷き一つを返す
のが躊躇われた。
　
　胸腔の中心が、奇妙に痛む。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0110390a00">
「……当てのない旅というのも、案外面白い
ものかもしれません」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　痛みの意味を考えることは禁じて。
　俺はただの言葉遊びとして応じた。

　そうしなければならないという思いが、強迫観念の
ように在った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0110400a00">
「風の向くまま気の向くまま、東へ西へと。
　おそらく退屈せずに日々を過ごせます」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0110410a04">
「良いものですねぇ。
　特にこれからの季節、みちのく温泉ツアー
などするには最高でございましょう」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　それまでの経過は何も聞いていなかった風で、さよ
侍従が話に乗る。
　大鳥大尉は微笑んで、小さく首を頷かせた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0110420a03">
「……そうね。
　じゃあ……行きましょうか」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0110430a03">
「いつか」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0110440a00">
「はい」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0110450a04">
「ええ、いずれ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　全員一致で、約束する。<k>
　全員、その<RUBY text="・・・">いつか</RUBY>など来ないことを知っていた。

　ありふれた、その場限りの口約束。<k>
　世間の<RUBY text="そこかしこ">其処彼処</RUBY>で無数に交わされ、そしてそのまま
忘れ去られて二度と思い出されない。

　そんな軽い会話だ。<k>
　
　
　そんな軽い会話が、今はどうしても辛い。

　大鳥大尉の<RUBY text="きず">瑕</RUBY>なき微笑を見るのが辛かった。
　逃げるように、視線を車窓へ流す。

　変わりつつも相変わらずの風景が視界を占めた。
　そして――その手前に。<RUBY text="ガラス">硝子</RUBY>が映す、一つの影。

　男。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0110460a00">
「……ッ!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm34", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　即座に立ち上がり、背後を振り返る。
　車両の連結口からほんの一瞬、覗いたと思えた姿は
既に何処にも見当たらない。

　しかし。
　今――確かに。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0110470a04">
「湊斗さま？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　きょとんとした目で見上げられる。
　俺よりも注意力は高いであろうこの老侍従が何も気
付かなかったというのなら、いま見たと思えたものは
単なる錯覚である可能性が高い。

　だが――
　
　俺はその男に、<RUBY text="・・・">見覚え</RUBY>があったのだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0110480a00">
「……すぐに戻ります」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0110490a04">
「どちらへ？
　動かれると危のうございますよ」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0110500a00">
「重々承知！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　つい先刻、聞かされたばかりの話はまだ耳に残って
いる。
　だがそれでも、確かめないわけにはいかなかった。

　俺は制止を振り切って駆け出した。
　<RUBY text="・・">屋上</RUBY>の村正に、俺を追うよう命じておく――必要に
なるかもしれない。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//次のファイルに繋がっていることとBGMを停止させないためClearFade使用 inc櫻井
	ClearFadeAll(500);

}

..//ジャンプ指定
//次ファイル　"mc03_012.nss"