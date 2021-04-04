//<continuation number="510">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_023.nss_MAIN
{

	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//☆超速全読み設定解除
	//Conquest($ConGameName,$GameName,true);

	//▼イベントＣＧ
	#イベントファイル名=true;
	#ev160_玉簪=true;

	#bg047_景明故郷町b_02=true;
	#bg002_空a_02=true;
	#ev160_玉簪=true;
	#ev148_一条Ｈ１_a=true;
	#ev144_女官達の戯れを見据える一条_d=true;
	#ev141_正宗ＶＳ村正初戦_a=true;
	#ev112_一条をお姫様だっこする村正=true;
	#ev161_一条の口元アップ_a=true;
	#ev161_一条の口元アップ_b=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb04_024.nss";

}

scene mb04_023.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb04_022.nss"

//◆町。焼け跡。bg047a夕
//◆正宗
//◆六波羅兵らの死体
//◆解甲する
//◆一条
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg047_景明故郷町b_02.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	StL(1000, @0, @0,"cg/st/3d正宗_立ち_通常.png");
	CreateSE("SE01","se人体_足音_鎧歩く03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StL*", 300, @30, @0, Dxl1, false);
	FadeStL(300,true);

	WaitPlay("SE*", null);
	WaitKey(500);

//あきゅん「演出：六波羅兵の死体だと！？」

	CreateSE("SE01b","se特殊_陰義_発動03");
	CreateSE("SE01c","se戦闘_攻撃_剣戟弾く02");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	MusicStart("SE01c",0,1000,0,1000,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	DeleteStA(0,true);
	WaitKey(100);
	FadeDelete("絵フラ", 600, true);

	SetFwC("cg/fw/fw一条_正義.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0230010a02">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆天牛虫正宗
	StL(1000, @0, @370,"cg/st/3d正宗天牛虫_正面.png");
	Rotate("@StL*", 0, @0, @180, @0, null,true);
	FadeStL(300,true);

	SetFwC("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0230020b40">
《……御堂。
　東の方で、この者どもの仲間が別の軍勢と
争っておるようだ……》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0230030b40">
《如何する？》


{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0230040a02">
「……」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0230050b40">
《――むっ？》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

//◆ざっざっ。集団が駆け寄ってくる
	CreateSE("SE01","se人体_足音_兵士集合01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	$残時間=RemainTime("SE01");
	WaitKey($残時間);

	SetFwC("cg/fw/fw黒瀬_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb04/0230060b26">
「正宗殿！
　ようやくお会いでき申した」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0230070a02">
「……え？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆黒瀬童子、桜子
	StR(1000, @0, @0,"cg/st/st桜子_通常_私服a.png");
	StL(1000, @0, @0,"cg/st/st黒瀬_通常_私服.png");

	SetVolume("SE*", 1000, 0, null);
	FadeStR(300,false);
	WaitKey(100);
	FadeStL(300,true);

	SetFwC("cg/fw/fw桜子_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb04/0230080b28">
「町に火の手が上がっているのが見えたので、
もしやと思ったのですが……
　確かめに来て良かった」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0230090a02">
「姫さま……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm19",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　……岡部の桜子姫。その義弟。
　背後には更に数人の武人が続いている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb04/0230100b28">
「よくぞご無事で――」


{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb04/0230110b26">
「いや、お待ちあれ義姉上。
　今は再会を祝している場合ではござらん」


//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb04/0230120b26">
「正宗殿とこうして出会えた上は、すぐにも
去就を定めねば……。
　近くには六波羅のみならず進駐軍もおるの
ですぞ」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb04/0230130b28">
「……そうですね。
　正宗様、現在の政情はご存知ですか？」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0230140a02">
「……いや。たぶん何も知らない。
　ずっと銀星号を追っていたから……」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb04/0230150b28">
「では手短にご説明します。
　わたくしどもは計画通り、鎌倉から舞殿宮
殿下をお救いするべく準備を整えたのですが
――」


{	FwC("cg/fw/fw桜子_悲哀.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb04/0230160b28">
「実行に移す直前、建朝寺炎上の報を受けま
した」


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0230170a02">
「――――」


{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb04/0230180b26">
「舞殿宮殿下のご生死は定かならず。
　そして奇怪なことに、建朝寺へ襲撃を仕掛
けた当の堀越公方足利茶々丸もその日を境に
行方を晦ました様子……」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb04/0230190b28">
「ともかくもそんな情況ではどう動くもまま
ならず、潜伏して情報収集に努めていたので
すが……そうこうするうちに今度は房総半島
で銀星号事件がかつてない連続発生を始めて」


{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb04/0230200b26">
「その異変に乗ずる格好で進駐軍が動き出し、
六波羅はこれを看過せず、両者は各地で衝突。
　……現今、関東一円は斯様な混沌たる情勢
の只中にござる」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb04/0230210b28">
「わたくしどもはせめてできる事だけはして
おこうと、宮殿下のご無事を信じて探す一方、
正宗様たちの行方も追っていたのです。
　……ここでお会いできて良かった」


{	FwC("cg/fw/fw黒瀬_瞑目.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb04/0230220b26">
「まことに。ろくろくあてもない探索でした
からな。
　それはさておいて、今は今後の事でござる」


{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb04/0230230b26">
「正宗殿。我らは既に御身を頭領として仰い
でおり申す。故にご意思を承りたい。
　我らは――香取に集結せし同志一千名は、
これより<RUBY text="いずこ">何処</RUBY>を目指すべきでござろう」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb04/0230240b28">
「……今はまさしく五里霧中です。
　宮殿下の捜索を続けながら、機を窺うべき
でしょうか……？」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0230250a02">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　――そうか。
　そんな事になってしまっているのか。

　平穏は失われた。
　戦乱が始まったのだ。

　多くの人間が既に死に果て、これからは更に多くが
死に続ける。
　それが誰かの故意でもたらされたものであるなら、
途方もない悪業だ。

　そして事実、それはあたしの意思がもたらしたのだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0230260b40">
《……だが。
　悔いはせず、立ち止まりもせぬ》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0230270b40">
《そうなのだな？　御堂……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　ああ。
　……そうだ。

　あたしは全ての罪を抱えて、この道を進み続ける。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm17",0,1000,true);

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0230280a02">
「何も変わらない。
　親王さまがいなくなっても、あたしの――
あたし達のやることは同じだ」


{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb04/0230290b26">
「……正宗殿」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb04/0230300b28">
「では……」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0230310a02">
「戦う」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0230320a02">
「進駐軍が侵略するなら進駐軍と戦う。
　六波羅が町を焼くなら六波羅と戦う」


//【一条】
<voice name="一条" class="一条" src="voice/mb04/0230330a02">
「大和に仇為す全てが敵だ」


{	FwC("cg/fw/fw黒瀬_驚き.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb04/0230340b26">
「おお……」


{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0230350a02">
「暴君も侵略者もいらない。誰も傷つけず誰
からも奪わない人間だけが残ればいい。
　この国をそうするのが、あたし達の目指す
処だ」


//【一条】
<voice name="一条" class="一条" src="voice/mb04/0230360a02">
「あたし達の……正義だ」


{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb04/0230370b26">
「そのお言葉を頂きとうござった！
　家も名も失いし我ら岡部の一党……かかる
大義の為に命を擲てるのであればこそ、生き
永らえた甲斐もありまする！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　黒瀬童子が吼える。
　その隣で、桜子姫も頷いた。

　彼らはあたしを信頼している。
　……あたしのゆく道についてくる。

　彼らはこれから戦うだろう。あたしを信じたが為に。
　殺し、殺されるだろう。あたしの正義の為に。

　それは――絶対に、正しくなんかない。
　例え敵が言語道断の悪であっても、それに戦い殺す
という手段で報いる者はまた別の悪でしかないのだと、
あたしは知っている。

　決して正義たり得ないのだと知っている。
　知っていながら――その二文字を掲げて、あたしは
彼らを戦場へ<RUBY text="いざな">誘</RUBY>うのだ。

　正しい事であるはずがない。
　恐ろしい過ちだ。許されない誤りだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0230380b40">
《それでも》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　それでも――――
　
　そうしてあたし達が戦った果てに。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆空？
	CreateTextureEX("絵演背景", 4000, Center, Middle, "cg/bg/bg002_空a_02.jpg");
	Fade("絵演背景", 2000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
〝正義〟を掲げて〝悪〟を討ち続ける事ができたなら。
　いつか――それは生まれ出ずるのではないか。

　この世には正義があるのだと、
　悪を許さぬ正義があるのだと、
　
　――誰もがそう信じた時。

　人々は自らの意思で、悪を捨て去るのではないか。
　綾弥一条のような者に害されるまでもなく、邪悪と
離別できるのではないか。

　そうなるなら……
　
　それは、
　争わずして人を正しく導く心の法の完成だ。

　<RUBY text="・・・・・・">真実の正義だ</RUBY>。

　あたしはそこへゆく。
　その場所を、目指す。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆画面戻り
	FadeDelete("絵演背景", 2000, true);

	SetFwC("cg/fw/fw黒瀬_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb04/0230390b26">
「では、直ちに参りましょうぞ！
　香取で同胞達が待っておりまする」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0230400a02">
「うん。
　……悪いけど、少し待っててくれ」


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0230410a02">
「その前に、やらないといけないことがある
んだ」


{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb04/0230420b26">
「は。
　それは……？」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb04/0230430b28">
「……」


//【桜子】
<voice name="桜子" class="桜子" src="voice/mb04/0230440b28">
「正宗様……
　<RUBY text="・・・">あの方</RUBY>はどうなされたのです？」


//【桜子】
<voice name="桜子" class="桜子" src="voice/mb04/0230450b28">
「ご一緒ではないのですか……？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆二人、消す
	CreateEffect("絵板写", 4000, Center, Middle, 1024, 576, "Plain");
	SetAlias("絵板写","絵板写");
	Request("絵板写",Passive);
	DeleteStA(0,true);
	FadeDelete("絵板写", 500, true);

	Wait(200);

	CreateSE("SE01","se人体_足音_歩く03_L");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Wait(1000);
	SetVolume("SE*", 4000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　応えずに、あたしは歩き出した。
　
　――その方角だと知っていた。

　正宗が示したのかもしれない。
　示されるまでもなく、わかったのかもしれない。

　あの人が来る。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ＳＥ：かちゃっ
	CreateSE("SE01","se戦闘_動作_刀構え02");
	MusicStart("SE01",0,1000,0,1300,null,false);

	SetFwC("cg/fw/fw一条_正義.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0230460a02">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆髪挿
	CreateTextureEX("絵ＥＶ", 4000, Center, Middle, "cg/ev/ev160_玉簪.jpg");
	Fade("絵ＥＶ", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　捨てねばならないものがあった。
　手に取って、その形を確かめる。

　漆塗りの<RUBY text="たまかんざし">玉簪</RUBY>。

　あの人から贈られたもの。

　湊斗景明。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆回想。ＥＶＣＧを連続で何枚か。
//◆最後は第二話、一条を救う村正の絵。
//あきゅん「演出：まだまだ仮組みＥＶ見てから要検討」
	OnSE("se擬音_回想_フラッシュバック01",1000);
	CreateColorEXadd("絵白転", 10000, "#FFFFFF");
	Fade("絵白転", 600, 1000, null, true);
	CreateTextureSP("絵回想", 8000, Center, Middle, "cg/ev/ev148_一条Ｈ１_a.jpg");
	Fade("絵白転", 150, 200, null, true);
	WaitKey(300);
	Fade("絵白転", 150, 1000, null, true);

	Fade("絵白転", 150, 1000, null, true);
	CreateTextureSP("絵回想", 8000, Center, Middle, "cg/ev/ev144_女官達の戯れを見据える一条_d.jpg");
	Fade("絵白転", 150, 200, null, true);
	WaitKey(300);
	Fade("絵白転", 150, 1000, null, true);

	Fade("絵白転", 150, 1000, null, true);
	CreateTextureSP("絵回想", 8000, Center, Middle, "cg/ev/ev141_正宗ＶＳ村正初戦_a.jpg");
	Fade("絵白転", 150, 200, null, true);
	WaitKey(300);
	Fade("絵白転", 150, 1000, null, true);

//あきゅん「演出：２編でフラグを取得していた場合」
	if($Fla_ev115pass == true){
		Fade("絵白転", 150, 1000, null, true);
		CreateTextureSP("絵回想", 8000, Center, Middle, "cg/ev/ev115_一条の髪に触れる景明_b.jpg");
		Fade("絵白転", 150, 200, null, true);
		WaitKey(300);
		Fade("絵白転", 150, 1000, null, true);
	}else{

	}

	Fade("絵白転", 150, 1000, null, true);
	CreateTextureSP("絵回想", 8000, Center, Middle, "cg/ev/ev112_一条をお姫様だっこする村正.jpg");
	Fade("絵白転", 150, 200, null, true);
	WaitKey(1000);
	Fade("絵白転", 150, 1000, null, true);

	WaitKey(500);

	Delete("絵回想*");
	FadeDelete("絵白転", 1000, true);

	SetFwC("cg/fw/fw一条_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0230470a02">
「……っ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　記憶のすべてがそこにある。
　止め処なく溢れる想いがそこにある。

　それは決して、辛くはなかった。
　痛みはあっても、苦くはなかった。

　今ならわかる。
　あの人も迷っていたのだと。綾弥一条と同じように。
きっとそれ以上に。

　なのに、あの人はいつも全力で応えてくれた。
　あたしが<RUBY text="なじ">詰</RUBY>っても。頼っても。問い掛けても。

　どうして、あの人を恨めるだろう。

　振り返ってみれば長くもない、あの人と共に歩んだ
日々を、どうして忘却の淵に沈めてしまえるだろう。

　今は感謝の念しか湧かないというのに。
　
　けれど、これはこの先へ持って行くことができない
ものだった。

　この髪挿――
　この記憶、この想いは、ここへ置いてゆかねばなら
ないものだ。

　訣別のために。

　あの人が全力であたしに応えてくれたように、
　あたしも全力であの人に応えるために。

　別れよう。
　前へ踏みしめる一歩をためらわせる、この想いと。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);
	FadeDelete("絵ＥＶ", 1000, true);

	SetFwC("cg/fw/fw一条_正義.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0230480a02">
「――――――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぎゅっと握り締め。ＳＥで表現か。
	CreateSE("SE01","se人体_動作_締める01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	$残時間=RemainTime("SE01");
	WaitKey($残時間);

//◆一条、口元周辺アップ
//◆ウェイト置いて
	CreateTextureEX("絵ＥＶＡ", 4000, Center, Middle, "cg/ev/ev161_一条の口元アップ_a.jpg");
	Fade("絵ＥＶＡ", 1000, 1000, null, true);

	WaitKey(1000);

	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0230490a02">
「…………ッッ！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆唇に髪挿くわえて
	CreateTextureSP("絵ＥＶＢ", 3990, Center, Middle, "cg/ev/ev161_一条の口元アップ_b.jpg");
	FadeDelete("絵ＥＶＡ", 2000, true);

	WaitKey(1000);

//◆ＳＥ、ばきーん。噛み砕いた音。
//◆要するに食った。
	CreateSE("SE01","se人体_動作_簪噛み砕く");
	CreateSE("SE02","se人体_動作_簪噛み砕く");
	CreateSE("SE03","se人体_動作_簪噛み砕く");
	CreateSE("SE04","se人体_動作_簪噛み砕く");
	CreateColorSP("絵色白", 5000, "#FFFFFF");
	CreateColorSP("絵色黒", 4990, "#000000");

	FadeDelete("絵色白", 2000, false);

	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(250);
	MusicStart("SE02",0,800,0,1000,null,false);

	Wait(250);
	MusicStart("SE03",0,500,0,1000,null,false);

	Wait(250);
	MusicStart("SE04",0,200,0,1000,null,false);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　噛み砕いた。
　粉々にして、胃の腑に落とした。

　捨てられない。忘れられない。
　けれど、持ってはいられない。

　――だから、こうするしかなかった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg047_景明故郷町b_02.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SetFwC("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0230500b40">
《御堂……》


{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0230510a02">
「行こう。正宗」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　あの人はもう、そこにいる。

　そこに佇んで、あたしが来るのを待っている。

　戦うために。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb04_024.nss"