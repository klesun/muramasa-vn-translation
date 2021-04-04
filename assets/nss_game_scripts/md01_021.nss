//<continuation number="490">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_021.nss_MAIN
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
	#bg032_八幡宮奥舞殿内a_01=true;
	#ev131_景明が湊斗家に来た日=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_022.nss";

}

scene md01_021.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_020.nss"

//◆回想・八幡宮
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg032_八幡宮奥舞殿内a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm16",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　<RUBY text="げんじのちょうじゃ">源氏長者</RUBY>が八幡宮に<RUBY text="もう">詣</RUBY>でて武運隆盛を祈る年例行事、
奉刀参拝。
　これを、襲い、

　正三位六衛大将領、<k>
　元帥<RUBY text="ろくはら">竜軍</RUBY>大将、<k>
　大和の覇者、<k>
　足利護氏を――――討つ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0210010a00">
「……そして」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0210020a00">
「大きく動揺するであろう幕府を朝廷権威で
補強してやり――反面、朝廷の発言力を増す。
　この公武合体による新体制で官民の対立を
緩和、治政に安定をもたらし」

//【景明】
<voice name="景明" class="景明" src="voice/md01/0210030a00">
「ＧＨＱの介入する隙を無くしてゆく……」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0210040a10">
「まとめると、そういうことやねぇ」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0210050a11">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　雄略と呼ぶべきだろう。
　徒手空拳に等しい身で強大な軍事政権に挑み、その
体質を改めさせようというのであるから。

　成就する見込みの程は知れない。
　が、何もせず情況を見守れば、進駐軍は時節が到来
次第六波羅の排除に乗り出し――これを遂げて大和を
完全な占領下に置くか。

　それとも六波羅が勝利を得て大和唯一の支配権者と
なりおおせるか。
　この国はどちらかの結末を迎えるだろう。……苛烈
な交戦の後に。

　いや、可能性はもう一つある。
　両者の相克に決着がつかず、延々と戦争が続く――
という最悪の展開も起こり得る。

　喜ばしからざる運命を拒否し、<RUBY text="・・・">比較的</RUBY>にでも良好な
未来を手に入れたいと望むなら、やはり行動は必要だ。
　親王と署長、この二人の構想は、暴挙といえば暴挙
であったが至当といえば至当に違いなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0210060a10">
「どやろ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　暗殺を実行できる者は、俺しかいない。
　足利護氏は戦歴余る武者。銃一丁で倒せるような男
ではない。同じ武者だけがその首級を狙える。

　<RUBY text="はるひろ">春煕</RUBY>親王は大仰に頭を下げたりしなかった。
　大和のため国民のためと、くどく言い重ねることも。

　説明は全てした。
　後は自分自身の判断で決めろ――そういうことか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0210070a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　親王の企図こそ大和を救う。
　そう信じるのに、苦労は要らなかった。

　容易な計画ではなかろう。齟齬もあろうし見落とし
もあろう。きっと困難は多い――が、この人ならばと
思わせるものが、親王には確かにあった。
　署長という補佐役もいるのだ。

　何より俺の頭では親王のそれに優る計画を思いつか
ないのだから、価値を否定できる筋合いではなかった。
　
　親王が間違っているとは、どの角度からも言えない。

　……ならばできるか。
　足利護氏を襲い、命を奪えるか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0210080a00">
（大和のために）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　多くの善き人々を救うために、
　一人の悪しき者を殺す。

　…………それは、
　
　
　俺が既に幾度も、幾度も、繰り返してきた所業だ。

　<RUBY text="わざわい">銀星号</RUBY>の拡大を阻止すべく、
〝卵〟に寄生された武者を幾人となく斬り殺した。

　一悪を断ち多善を残す。

　まるで同じだ。
　何処にも違いなど無い。

　どちらも、<k>
　
　――――独善に過ぎない。

　国のため。人のため……
　そんな聞こえの良い<RUBY text="かわ">外面</RUBY>を一枚剥けば、そこに真実
の姿が覗く。

　親王の動機が実は私利私欲だとか、間の抜けた事を
言うつもりはない。
　しかし、対立者を暴力で挫くという道を選ぶのなら、
動機がどうあれそれはやはり独善の行いなのだ。

　我の善のため、
　彼の善を悪と称して葬る。
　
　<RUBY text="いっけんいっさつこれぜんあくそうさい">一剣一殺是善悪相殺</RUBY>。

　俺の返答は定まった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0210090a00">
「行きましょう。
　奉刀参拝の日、足利護氏の前へ」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0210100a10">
「……やってくれるんか？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　むしろ意外そうな、親王の声だった。
　顔色こそ変えていないが、脇の署長も内心は同じと
見える。

　俺はかぶりを振った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0210110a00">
「今はお約束致しかねます」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0210120a11">
「……何？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0210130a00">
「本人と<RUBY text="まみ">見</RUBY>えてから決します。
　斬るか、斬らぬか」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0210140a00">
「足利護氏は殺さねばならない男なのか。
　この目で、見て……決めたく思います」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0210150a10">
「…………」

{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0210160a11">
「…………」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0210170a00">
「却って御迷惑とあれば無論、強いて望みは
致しません。
　ここで聞いた事はすべて忘れ、直ちに立ち
去りましょう」

//【景明】
<voice name="景明" class="景明" src="voice/md01/0210180a00">
「如何か――」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0210190a10">
「ええよ」

{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0210200a11">
「宮殿下……」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0210210a10">
「計画を打ち明ける段階で、景明くんを信頼
するちゅうことは決めてたんや。
　ならとことん信じ切ろうやないか」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0210220a10">
「景明くんの判断を信じて、任せるわ」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0210230a00">
「……御高配痛み入ります」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0210240a10">
「斬ったらあかん、思うたらそれでええ。
　その時は、後で景明くんの考えをわしらに
聞かせてくれな」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0210250a00">
「はっ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　……過分なまでの信頼を抱かれている。
　有難くも、両肩に重かった。

　しかも俺は、この信頼に刃で応えなくてはならない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0210260a00">
「もう一つ、お断りしておかねばならぬ事が
あります」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0210270a10">
「うん？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0210280a00">
「我が劒冑……
　村正の<RUBY text="ルール">掟</RUBY>はご存知であられる筈」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　敵を斬らば友も斬らん。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【署長】
<voice name="署長" class="署長" src="voice/md01/0210290a11">
「…………」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0210300a00">
「舞殿宮殿下。
　もしも自分が、足利護氏を斬った暁には」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0210310a00">
「貴方の御命をも頂かねばなりません」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　それが<RUBY text="おれ">村正</RUBY>の掟。
　善悪相殺の律法。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0210320a00">
「宜しいか」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト
	WaitKey(1000);

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0210330a10">
「承知したえ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0210340a00">
「……」

{	FwC("cg/fw/fw親王_笑い.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0210350a10">
「このアホが大将領と差し違えるわけやな。
　……大儲けやないか」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0210360a10">
「わしの代わりなら、何処にでもおるわ」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0210370a00">
「宮殿下……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　嘘の響きは聞き取れなかった。
　……それはもしかすると、俺の耳が騙されただけで、
親王はいま内心で用が済んだら俺を始末しようと決意
しているのかもしれない。

　どちらが真実か。
　
　どちらであっても、舞殿宮春煕親王という人物は、
心底からの敬意を払うに値する。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【署長】
<voice name="署長" class="署長" src="voice/md01/0210380a11">
「景明」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0210390a00">
「はい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　厳しい声に視線を動かす。

　この人が口を開くことは予測していた。
　何を言うのかも。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_冷厳.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【署長】
<voice name="署長" class="署長" src="voice/md01/0210400a11">
「その時は私を斬れ」

{	FwC("cg/fw/fw親王_驚き.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0210410a10">
「菊池」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0210420a11">
「いいな」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　御簾の方を振り返らず、俺だけを見据えて、署長は
<RUBY text="おもし">重石</RUBY>のような声で告げた。
　不動の意思がそこにあった。

　――善悪相殺。

　足利護氏を斬るなら、この人も斬らねばならない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0210430a00">
「署長……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想・明堯との出会い
//◆戻り
//回想シーンまとめ
	OnSE("se擬音_回想_フラッシュバック01",1000);
	CreateColorEXadd("絵白転", 10000, "#FFFFFF");
	Fade("絵白転", 600, 1000, null, true);

	CreateTextureSP("絵回想", 8000, Center, Middle, "cg/ev/ev131_景明が湊斗家に来た日.jpg");
	CreateColorEXmul("絵回想幕", 8100, "#847000");
	Fade("絵回想幕", 0, 400, null, true);

	Fade("絵白転", 300, 100, null, true);

	WaitKey(500);

	Fade("絵白転", 400, 1000, null, true);
	Delete("絵回想*");
	FadeDelete("絵白転", 600, true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0210440a00">
「明堯様」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　何年ぶりにか、<RUBY text="ちち">養父</RUBY>の名を呼ぶ。
　応えはなかった。

　……殺せない。
　殺せるわけがない。

　大恩あるこの人を、どうして我が手で斬れよう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0210450a00">
（だが）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　そう思う一方、足利護氏は構わず斬れるのか。

　同じ人間である。
　善あり悪あり功あり罪ある、同じ<RUBY text="ただびと">只人</RUBY>である。

　単に俺の立つ位置からは署長の善ばかりが、護氏の
悪ばかりが目立つというだけに過ぎない。
　異なる位置に立つ者には、異なる見方があるだろう。

　なのに一方のみ悪として斬り、もう一方を善として
生かすのは、
　
　――独善である。

　村正は言った。
　独善こそ争いの根源。殺し合いを正当化し、際限も
なく続けさせる元凶――と。

　そう。
　それは、その通りなのだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【署長】
<voice name="署長" class="署長" src="voice/md01/0210460a11">
「景明」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0210470a00">
「諒解しました」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0210480a11">
「……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0210490a00">
「大将領を斬った、その時は……
　貴方を」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　斬る。

　この養父を斬る。

　斬らねばならぬ。

　……斬れぬのなら、
　足利護氏もまた、斬ってはならないのだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想終了
	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);

	WaitKey(1000);

}

..//ジャンプ指定
//次ファイル　"md01_022.nss"