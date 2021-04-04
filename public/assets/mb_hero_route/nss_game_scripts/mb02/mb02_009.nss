//<continuation number="690">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_009.nss_MAIN
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
	#ev144_女官達の戯れを見据える一条_a=true;
	#ev144_女官達の戯れを見据える一条_b=true;
	#ev144_女官達の戯れを見据える一条_c=true;
	#ev144_女官達の戯れを見据える一条_d=true;
	#ev160_玉簪=true;

	#bg066_普陀楽城内のどか_01=true;
	#ev144_女官達の戯れを見据える一条_a=true;
	#ev160_玉簪=true;
	#ev144_女官達の戯れを見据える一条_b=true;
	#ev144_女官達の戯れを見据える一条_c=true;
	#ev144_女官達の戯れを見据える一条_d=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb02_010.nss";

}

scene mb02_009.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb02_008.nss"


//◆城内
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg066_普陀楽城内のどか_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);
	SoundPlay("@mbgm26",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　心ここにあらぬ<RUBY text="てい">態</RUBY>となってしまった四郎邦氏の御前
から退出し、城内の探査へ戻る。
　南方面の曲輪を一巡りし、それから西へ。

　西側の外郭には田畑や蔵、工場施設などが多い。
　比較的重要度が低く、そのぶん<RUBY text="のどか">長閑</RUBY>な区域だ。十歩
進むたびに巡邏兵の疑り深い目と遭遇するような面倒
はない。

　それはつまり、俺にとってあまり意味を持たないと
いう事でもある。
　早足に進み、より機密性の高い北部へ向かう。時間
とは黄銅めいた黄金、浪費など許されない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090010a00">
（奇縁か……宿縁か）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateColorSP("絵色黒地", 10, "#000000");
	StL(50, @0, @0,"cg/st/st邦氏_通常_私服.png");
	StR(50, @0, @0,"cg/st/st桜子_通常_私服a.png");
	FadeStA(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　回顧してそう想う。

{	FadeDelete("@OnBG*", 2000, DxlAuto);}
　足利邦氏と岡部桜子――勝者と敗者。滅ぼした者と
滅ぼされた者。憎まれるべき者と憎むべき者。
　一人の少年と一人の娘。

　全く期せずして、その邂逅に立ち会ってしまった。
　両者の住まう世界は俺には遠く、できる事など何も
ない。だが考えさせられずにはいられない。

　どちらも背負うものが重過ぎる。年齢からすれば、
苛酷なまでに。
　二人の出会いはその難苦を少しでも和らげる結果に
繋がるのだろうか。それともその逆となるか。

　――前者であれば良い。
　我が立場も忘れ、俺はふとそう願っていた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆花畑
//おがみ：一旦背景に戻します
//	CreateTextureEX("絵ＥＶ", 2000, Center, Middle, "cg/ev/ev144_女官達の戯れを見据える一条_a.jpg");
//	Fade("絵ＥＶ", 1000, 1000, null, true);


	PrintGO("上背景", 5000);
	OnBG(100,"bg066_普陀楽城内のどか_01.jpg");
	FadeBG(0,true);
	DeleteStA(0,true);

	FadeDelete("上背景", 1000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　花畑を見下ろす峠道で、俺は足を止めた。

　女性が数人、賑々しく嬌声を上げながら花を摘んで
いる。
　農業に従事する下級労働者の作業という趣ではない。
それなりに地位ある女官の戯れと見られた。

　最初に注意を引かれたのはその光景のためである。
　しかし注意を持続させねばならなかったのは、やや
離れて彼女らを眺める孤影があったからだった。

　他の誰でもない。
　あれは、一条だ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵ＥＶ", 2000, Center, Middle, "cg/ev/ev144_女官達の戯れを見据える一条_a.jpg");
	Fade("絵ＥＶ", 1000, 1000, null, true);

	Wait(500);

	OnBG(100,"bg066_普陀楽城内のどか_01.jpg");
	FadeBG(0,true);
	DeleteStA(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]
　少女は静かな視線をその凡庸な光景に注いでいる。
　静けさは、無感動を意味するものとは違ったけれど
も――<k>一見してそうと知れるほどには関係を蓄積して
いるのだと不意に理解して、俺は感慨を抱いた。

　時間を云えば、まだ然程長くはない筈だが。
　長さに見合わぬ多くの機会があった。綾弥一条なる
<RUBY text="ヒト">人間</RUBY>を知る為の。

　あれは、奇妙な娘だと思う。

　<RUBY text="・・・・・">つくりもの</RUBY>めいていると、そう感じる。
　人形のよう、という印象とはまた違う。

　<RUBY text="キカイ">器械</RUBY>のようだと言い表すのが最も近い。

　人形じみた人間は、まず第一に虚ろである。
　器の大きさに比してちっぽけな心しか感じられない
から、ぽっかりと広い余剰空間が目に付くのだ。

　だから人間の抜け殻――人形だと見られる。
　
　一条は違う。
　<RUBY text="・・・・・・・">余剰空間が無い</RUBY>。

　正義の一念に固執するあの心は矮小にして狭小だ。
　だが、それが<RUBY text="・・・・・・">相応に見える</RUBY>のである。

　少女の肉体は一つの意思、一つの理念、一つの目的
を収める為だけのものなのだ。最初から。
　それは人間ではない。
　それは人形ではない。

　それは器械だ。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090020a00">
（あいつは、不幸なのだろうか）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　かつて胸に去来しなかったわけではないが、明確に
言語化するのは今が初めてだった。
　その一問。器械は不幸であるか。

　人形は、きっと不幸であろう。
　人の形に整えられながら人になれないのだから。

　しかし器械はどうか。
　器械として作られ器械として機能する器械。

　それは不幸であるのか。
　
　俺には答えを出せなかった。

　わかる事は一つきりだ。
　それが不幸であろうと幸福であろうと、器械は己に
与えられた単一機能を果たし続ける。

　壊れるまでずっと。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆近付く
	StL(1000, @0, @0,"cg/st/st一条_通常_変装.png");
	FadeStL(0,true);

	FadeDelete("絵ＥＶ*", 1000, true);

	SetFwC("cg/fw/fw一条_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090030a02">
「あっ……湊斗さん」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　足音を聞いて振り返った一条が声を上げる。
　呼んだのは実名の方だった。注意しておかねばなら
ない――だが今はそんな気になれず、俺は黙って頷き
返すに留めた。

　どうせ誰も聞いてはいない。
　花摘み娘の一団は自分達の会話に夢中だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090040a00">
「東側はもう一通り見たのか」


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090050a02">
「いえ、まだ途中です」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　当たり前のように答える一条。
　……ここは城の西部である。一条に割り当てた調査
区域とは全く反対だ。が、俺はこれもいちいち指摘は
せずにおいた。

　彼女を一人で行かせた時点で予測していた事だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090060a02">
「湊斗さんの方はどうですか？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090070a00">
「それなりに収穫はあった。
　詳しくは後で話そう」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090080a02">
「はい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　快活な声だ。
　しかし、間近で見ればさなきだに特異な少女の印象
は更に明瞭だった。

　一条を良く観察する者が一人でもこの城にいれば、
<RUBY text="たちま">忽</RUBY>ちに正体は全て露見するのではないか。
　……そう思いかけたのは流石に偏執的であったろう
けれども。視線を戻して、花畑の娘を見る。

　<RUBY text="サン・スーシ">無憂</RUBY>を唄って笑いさざめく彼女らとこの一条。距離
はせいぜいが一〇メートル程だ。が――
　精神の地平における隔たりは如何ばかりであろう。

　傍らを見やれば、一条も俺の視線を追っていた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵ＥＶ", 2000, Center, Middle, "cg/ev/ev144_女官達の戯れを見据える一条_a.jpg");
	Fade("絵ＥＶ", 1000, 1000, null, true);

	SetFwR("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090090a02">
「……どう思いますか」


{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090100a00">
「あの女官達か」


{	FwR("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090110a02">
「この光景です」


{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090120a00">
「平和、且つ幸福」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　この空間、この時間だけを切り出すことがもし<RUBY text="あた">能</RUBY>う
なら、その世界はただ二語で描写が足りよう。
　他の表現は特に要らない。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw一条_正義.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090130a02">
「あたしもそう思います」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　けっ、という不穏な音が言葉に続く。
　少女は文字通り唾棄していた。

　路傍で名も知れぬ草が抗議する。
　左右に広げた葉を激しく揺らし。それは怒って腕を
振り回しているように見えた。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw一条_照れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//◆赤面
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090140a02">
「……観察しないで下さい。
　ついやっちゃっただけです」


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090150a00">
「余り、役人らしくはないな」


{	FwR("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090160a02">
「すいません」


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090170a00">
「不愉快か。
　平和と幸福は」


{	FwR("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090180a02">
「はい。
　<RUBY text="・・">あの</RUBY>平和と幸福は」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　噛み締める声音で、少女が応える。
　<RUBY text="ひとみ">眸</RUBY>は<RUBY text="・">敵</RUBY>を見ていた。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090190a00">
「…………。
　羨むのか？　あの光景を」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　まるで挑発のような問いを、特に工夫も加えず投げ
掛けてみる。
　他の人間なら意図が伝わらぬところだが、一条なら
取り違えもすまい。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw一条_悔しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090200a02">
「……羨む。
　そうですね」


{	FwR("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090210a02">
「あれは人に羨まれる暮らしです」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　案の定、一条は口調を波立たせることもなく答えて
きた。
　しかし、そこに怒りはあった――矛先は俺ではない
が。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090220a00">
「……」


{	FwR("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090230a02">
「ただそれだけなら別にいい。
　世間には貧富の差があるってだけの話です。
それはそういうものだとしか思いません」


{	FwR("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090240a02">
「あたしはプレハーノフじゃありませんから」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　半世紀ほど昔、欧州で<RUBY text="コミュニズム">共産主義</RUBY>なる思想に基づいて
国家を創ろうとする運動があった。
　資本主義と決別し<RUBY text="まった">全</RUBY>き平等社会を生み出さんとする
理想……それはだが余りに現実から乖離していたため、

　救おうと願った貧民層の支持すら得られず、権力者
層からは当然の弾圧を受けて、既に滅び去っている。
　処刑場の露と散る間際、指導者は名言を遺した――
この世に<RUBY text="クルス">十字架</RUBY>と<RUBY text="クルス">劒冑</RUBY>さえ無かったなら、と。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw一条_悔しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090250a02">
「でも、その豊かな人間が<RUBY text="・・">強盗</RUBY>なら別です。
　人の財産を腕ずくでふんだくって恵まれた
生活を送る……そんなのは悪に決まってます」


{	FwR("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090260a02">
「しかも」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　少女は繊弱な指先を、さして変わらぬ年頃であろう
花畑の女官へ向けた。
　裁判官が罪人を指名するにも似た姿だった。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw一条_正義.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090270a02">
「あいつらはその悪を知りもしない。
　この城の平和と幸福が何を代償にしている
のか考えもしないで……浸りきっている」


{	FwR("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090280a02">
「不愉快です」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　繰り返す一条。
　その口調もやはり、判事が判決文を読み上げる<RUBY text="さま">様</RUBY>に
似ていた。

　そんな少女を見詰めて思う。
　<RUBY text="・・・・・・・・・・">何を思うべきなのかと</RUBY>、思う。

　懊悩は平凡な言葉だけを弾き出した。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090290a00">
「それは何処の国でも同じ事だ。
　どんな社会でも」


//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090300a00">
「資本主義自体が収奪を効率的に行う<RUBY text="システム">機構</RUBY>に
過ぎない」


{	FwR("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090310a02">
「ええ」


{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090320a00">
「強い者が弱い者から搾取するのは、恐らく
<RUBY text="・・・">自然な</RUBY>事ではあるのだ。
　自然界の法則そのものがそうである以上」


//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090330a00">
「あらゆる動物が弱者を捕食している。
　そしていちいち食べた相手の事など顧みて
はいない……」


//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090340a00">
「そう考えれば、誰もがあの娘達と同じだ」


{	FwR("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090350a02">
「はい。
　<RUBY text="・・・・">それでも</RUBY>奪うことは悪で、悪に無自覚なら
それは恥知らずです」


{	FwR("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090360a02">
「違いますか」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　一条は真っ直ぐに俺を見上げた。
　この少女にしかできない眼差し。

　何を思うべきなのか。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090370a00">
「違わない」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　俺は答えた。
　
　――そう。それはその通り。

　罪は罪。
　悪は悪。
　如何なる論理によっても正当化は不可能である。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090380a00">
「お前の言う通りだ。一条」


{	FwR("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090390a02">
「はい」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　少女が微笑する。
　美しい、女の<RUBY text="かお">貌</RUBY>だった。

　一条にもこんな表情ができるのだ――
　愛を囁かれた時ではなく、子犬を抱き上げた時でも
なく、<RUBY text="・・・・・">こんな時に</RUBY>。

　何を思うべきなのか。
　
　何も思うべきではないのか。

　綾弥一条は器械なのだと、それだけ認めて。
　今この刹那、俺の胸を途轍もない握力で締め付けた
何かの想念は忘れ去るべきなのか。

　答えは出せない。
　出せないままに、俺は行動した――先刻買い求めた
ばかりのものを取り出す。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090400a00">
「一条。
　お前は一振りの刀だ」


{	FwR("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090410a02">
「？　はい」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　唐突な俺の言い草に一条は小首を傾げ、しかしすぐ
にまた微笑した。
　最高の賞賛を聞いたかのように。

　また瞬時、胸腔が圧搾される。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090420a00">
「……だがその印象は時に人を<RUBY text="おのの">慄</RUBY>かせる。
　現状においては望ましくない」


{	FwR("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090430a02">
「う……そうですね。
　でも、どうしたら」


{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090440a00">
「刀には目貫がある。縁がある。
　それが彩りとなって凶器の色を和らげる」


{	SetVolume("@mbgm*", 2000, 0, null);
	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090450a00">
「お前にも……少し、華を添えてみようか」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

	OnSE("se人体_動作_荷物あさる03",500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　俺は紙包みを解いた。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵ＥＶ上", 5000, Center, Middle, "cg/ev/ev160_玉簪.jpg");
	Fade("絵ＥＶ上", 1000, 1000, null, true);

	Wait(500);

	SetFwR("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090460a02">
「……これ……」


{	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090470a00">
「<RUBY text="かんざし">髪挿</RUBY>だ」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　見ればわかる事を言う。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵ＥＶ２", 2100, Center, Middle, "cg/ev/ev144_女官達の戯れを見据える一条_b.jpg");
	Fade("絵ＥＶ２", 0, 1000, null, false);
	FadeDelete("絵ＥＶ上", 1000, true);

	SoundPlay("@mbgm27",2000,1000,true);

	SetFwL("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090480a02">
「……」


//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090490a02">
「あの……」


{	FwL("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090500a02">
「……これ……
　あたしに？」


{	FwL("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090510a00">
「ああ」


{	FwL("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090520a02">
「…………」


{	FwL("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090530a02">
「――――」


{	FwL("cg/fw/fw一条_照れ.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090540a02">
「――――――――」


{	FwL("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090550a00">
「……気に入らんか？」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　血行と心肺機能に重大な異常を起こした風の素振り
の後、少女が最終的に硬直するのを見てやや戸惑う。
　漆塗りの小さな玉簪。安物ではないと思うが誇れる
ほどの高級品でもない。

　迷った挙句、最も変哲の無い品にしてしまったのだ
が……
　本人に選ばせた方が良かったろうか。考えてみれば、
そうしていけなかった理由も別にない。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――


	CreateTextureSP("絵ＥＶ", 2000, Center, Middle, "cg/ev/ev144_女官達の戯れを見据える一条_c.jpg");

	SetFwL("cg/fw/fw一条_慌て.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090560a02">
「ち……違います！
　あの、これ……湊斗さんが選んで……？」


{	FwL("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090570a00">
「ああ」


{	FwL("cg/fw/fw一条_慌て.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090580a02">
「あたしのために……」


{	FwL("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090590a00">
「そうなる」


{	FadeDelete("絵ＥＶ２", 1000, false);
	FwL("cg/fw/fw一条_照れ.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090600a02">
「わ……」


{	FwL("cg/fw/fw一条_慌て.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090610a02">
「な、な、なに言えばいいんだろう。
　ええとあのあたし男の人にこんなことして
貰ったの初めてで」


{	FwL("cg/fw/fw一条_照れ.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090620a02">
「あ、あ……ありがとうございます」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　礼なのか、ただ俯いたのか、判別に迷う挙措で一条
が顔を伏せる。
　耳まで赤くなっていた。

　……何やらこちらまで気恥ずかしいが。
　とにかく、喜んでは貰えたらしい。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090630a00">
「……」


{	FwL("cg/fw/fw一条_照れ.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090640a02">
「あ……」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵ＥＶ２", 2100, Center, Middle, "cg/ev/ev144_女官達の戯れを見据える一条_d.jpg");
	Fade("絵ＥＶ２", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　髪挿を、一条の髪の中へ収める。
　おとなしく、彼女はされるままになった。

　少し乱れた髪を、指先で整え。
　改めて少女を見やる。

　そして、すぐに気付いた。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 1, null);

	SetFwL("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090650a00">
「――――」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　少女は上目遣いに、俺の言葉を待っている。

　良く似合っていた。
　愛らしくもあった――歳相応に。花畑の女官達にも
劣らぬ程に。

　だが、それは綾弥一条ではなかった。
　凡百の、何処にでもいる誰かだった。

　あの美しい女はここにいなかった。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw一条_照れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090660a02">
「……どうですか？」


{	FwL("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090670a00">
「ああ」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 1000, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　俺は微笑んだ。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090680a00">
「良く似合う」


{	FwL("cg/fw/fw一条_照れ.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090690a02">
「――!!」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	DeleteStA(0,true);
	Delete("絵ＥＶ");
	FadeDelete("絵ＥＶ２", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　少女がまた、俯いてしまう。
　両目まで固く閉ざし。そうやって押し込めなくては
心が溢れ出してしまうと、そう言いたげに。

　だから――
　その一瞬間、俺の双眸に何が現れていたとしても、
きっと少女には見られていないだろう。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb02_010.nss"