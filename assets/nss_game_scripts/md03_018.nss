//<continuation number="800">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_018.nss_MAIN
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
	#bg028_横浜ＧＨＱ基地_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md03_019.nss";

}

scene md03_018.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md03_017.nss"


//◆横浜進駐軍基地・夜

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");


	OnBG(100, "bg028_横浜ＧＨＱ基地_03.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm21", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒",2000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　――横浜。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StR(1000, @50, @0, "cg/st/stウォルフ_通常_私服.png");
	StL(1000, @0, @0, "cg/st/st茶々丸_通常_私服.png");
	FadeStL(300, false);
	FadeStR(300, false);



	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0180010a00">
「ＧＨＱの学術顧問？」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180020a13">
「そうだよ。
　何だ、聞いていなかったのか」

{	FwC("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180030a13">
「茶々丸、君も気が利かないなぁ。
　これだからパンツ脱がない少女は……」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180040a07">
「パンツ関係ねえ。
　あと、おめー学術顧問ったってろくに仕事
なんかしてねえだろ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　ウォルフ教授に会うと聞いて、連れて来られたのは
進駐軍基地だった。
　理由は――そういう事であったらしい。

　つまり六波羅における緑龍会の代表者が茶々丸なら、
ＧＨＱにおけるそれがウォルフ教授だというわけか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwウォルフ_思索.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180050a13">
「で……
　宣下式典の日取りが決まり」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180060a13">
「銀星号が目覚めるのは、その前日？
　間違いないのかね」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180070a07">
「確実」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0180080a00">
「どうしてわかる？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180090a07">
「あての<RUBY text="スペシャルパワー">特殊能力</RUBY>。
　人や物の内部構造や状態を<RUBY text="・・">感知</RUBY>できます」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180100a07">
「時間を掛けて診断すれば、精度はほとんど
一〇〇％」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0180110a00">
「……何故、そんな能力が」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180120a07">
「乙女のヒミツ☆」

{	FwC("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180130a13">
「恥ずかしいやつだな……君は……」

{	FwC("cg/fw/fw茶々丸_泣き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180140a07">
「うわ、おめーに言われるとなんかほんとに
恥ずかしいよ！
　言うんじゃなかった！」

{	FwC("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180150a13">
「しかし困ったな。
　一日ずれているのか」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180160a07">
「贅沢言うなよ。こんなもん、本当なら丁度
良く合うわけないんだから。
　京都の<RUBY text="なかま">同志</RUBY>が頑張って、どーにかこーにか
こっちの要求に近付けてくれたんだ」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180170a07">
「宣下式典と<RUBY text="おひめ">銀星号</RUBY>の覚醒、ずれが一日だけ
で済んだのは上出来だろ」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180180a13">
「確かにね。
　まぁ、一日早いくらいなら、どうにかなる
かな？」

{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180190a13">
「キャノン中佐は式典の当日、ないし翌日の
作戦決行を考えているみたいだが……何とか
言いくるめよう。
　うまい理由を探してね」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180200a07">
「頑張れよ」

{	FwC("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180210a13">
「あっさり言ってくれるな君は。
　キャノン中佐を口先で誤魔化すのが、どの
くらい大変だと思ってるんだ」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180220a07">
「知らねー」

{	FwC("cg/fw/fwウォルフ_怒り.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180230a13">
「ムカ。怒った。
　パンツ脱げ！」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180240a07">
「脱がねーよ」

{	FwC("cg/fw/fwウォルフ_絶叫.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180250a13">
「湊斗君！」

{	FwC("cg/fw/fw景明汚染_冷笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0180260a00">
「脱げ。茶々丸」

{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180270a07">
「えっ……えーーー!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆少女（鍛造雷弾）

	StCR(1000, @-50, @0, "cg/st/st鍛造雷弾_通常_私服.png");
	FadeStCR(300, true);


//◆ウェイト
	WaitKey(800);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0180280a00">
「……？」

{	FwC("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180290a13">
「おや、〝<RUBY text="リトルガール">少女</RUBY>〟……
　またこんなところをうろうろして」

{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180300a13">
「後でじっくりパンツ脱がさねばならんな」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180310a07">
「脱がせ脱がせ。
　あて以外ならもう好きにしてくれ」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180320a07">
「……ってちょっと待て。
　爆弾の管理はしっかりしとけよ！　なんで
勝手にふらふらしてんだ！」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180330a13">
「彼女単独なら全く無害だからね。
　心配はいらないよ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0180340a00">
「爆弾？」

{	FwC("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180350a13">
「これ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



//◆ボックス消して小ウェイト

	SetVolume("@mbgm*", 1000, 0, null);


	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateColorEX("絵色100", 16050, "BLACK");
	CreateTextureEX("絵演窓上/絵演背景", 16100, -100, -300, "cg/bg/bg028_横浜ＧＨＱ基地_03.jpg");
	SetShade("絵演窓上/絵演背景", HEAVY);
	Zoom("絵演窓上/絵演背景", 0, 2000, 2000, null, true);


	CreateTextureEX("絵演窓上/絵立絵", 16200, 60, -130, "cg/st/resize/st鍛造雷弾_通常_私服l.png");
	Move("絵演窓上", 0, @0, @128, null, true);

	Request("絵演窓上/絵演背景", Smoothing);
	Request("絵演窓上/絵演背景", Smoothing);

	Move("絵演窓上/絵演背景", 60000, @-100, @0, null, false);
	Move("絵演窓上/絵立絵", 60000, @-200, @0, null, false);

	Fade("絵色100", 300, 300, null, false);
	Fade("絵演窓上/絵演背景", 500, 1000, null, false);
	Fade("絵演窓上/絵立絵", 500, 1000, null, true);



	WaitKey(800);

	SoundPlay("@mbgm02", 0, 1000, true);


	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0180360a00">
「――――」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0180370a00">
「何だと？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180380a07">
「説明するよ。
　そのつもりもあったから、今日ここに来て
もらったんだ」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180390a07">
「こいつは進駐軍の最高機密。
　――<RUBY text="フォージド・ボム">鍛造雷弾</RUBY>」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180400a07">
「普陀楽城を<RUBY text="・・">一掃</RUBY>する破壊力を備えた、新型
爆弾だよ」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0180410a00">
「……………………」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180420a13">
「正しくはその半分だがね。
　彼女は信管に近いものだ」

{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180430a13">
「火薬にあたる金属は別にある……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0180440a00">
「…………」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180450a07">
「信じられない、お兄さん？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0180460a00">
「俺の脳の消化力を過大評価するな」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180470a07">
「でも、これがヒトじゃないのは見てわかる
でしょ？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ボックス消して小ウェイト
	WaitKey(800);

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0180480a00">
「……ああ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　やむなく認めて、首肯する。
〝少女〟の眼はまさしく<RUBY text="ガラス">硝子</RUBY>玉のようだった。

　確かに――これは、違う。

　純粋な意味での人では……
　生物ではない。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵色100", 500, false);
	FadeDelete("絵演窓上*", 500, true);
	Delete("絵演窓上*");

	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180490a07">
「半分はヒト……<RUBY text="ユーデア">白蝦夷</RUBY>だけど。
　残り半分は、一種の器械なんだ」

{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180500a13">
「彼女が<RUBY text="プルートニアノア">冥府鉱</RUBY>の崩壊現象を導く。
　そして……何もかも破壊する」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180510a13">
「鍛造雷弾。
　人類史上最大最強の破壊行使力だよ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0180520a00">
「…………。
　それを、どうすると？」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180530a07">
「宣下式典の前日。
　ＧＨＱのキャノン中佐率いる奇襲部隊が、
普陀楽上空を襲う」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180540a07">
「<RUBY text="こいつ">鍛造雷弾</RUBY>を落とす。
　式典に備えて結集してる六波羅の軍戦力を
一撃で抹殺して、大和の支配権を握るために」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180550a07">
「でも、本当の目的は――
　<RUBY text="こっち">緑龍会</RUBY>の目的は、そんなことじゃない」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0180560a00">
「……」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180570a13">
「鍛造雷弾と銀星号を、出会わせるのだ」

{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180580a13">
「破壊と破壊を結びつけるのだよ」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0180590a00">
「……何!?」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0180600a00">
「そんな事をすれば、」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　爆弾で普陀楽城と六波羅全軍が消し飛ばされるのは、
別に構わない。鎌倉市ごと焦土と化そうが問題はない。
　が……それでは、光までも――――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180610a07">
「お兄さん。
　正直に言うね」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180620a07">
「こいつは、賭けだ。
　お兄さんがいま危惧した通り、御姫が吹っ
飛んで終わりって可能性もある」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180630a07">
「……むしろ……そうなる見込みの方が強い
のかもしれない」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0180640a00">
「茶々丸――」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180650a07">
「でも何もしなければ、湊斗光は確実に死ぬ」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0180660a00">
「…………」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180670a07">
「唯一の可能性なんだ」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180680a07">
「鍛造雷弾と銀星号。
　極限と極限を掛け合わせて一一五キロの壁
を越える」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0180690a07">
「神への道を切り開く」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0180700a00">
「…………できるのか？」

//【景明】
<voice name="景明" class="景明" src="voice/md03/0180710a00">
「本当に、それはできる事なのか？」

{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180720a13">
「可能性はある」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180730a13">
「湊斗光が神に至る可能性。
　我々が神に出会う可能性」

{	FwC("cg/fw/fwウォルフ_絶叫.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180740a13">
「可能性はある!!」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0180750a00">
「…………」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180760a13">
「僕は挑むよ。
　茶々丸もだ」

{	FwC("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180770a13">
「君はどうする？
　やめるかね？」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0180780a13">
「湊斗光の生命を、諦めるかね？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0180790a00">
「――――」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0180800a00">
「諦められる……わけが、あるか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　ここに選択など存在しない。

　それがどれほど曖昧で、蜘蛛の糸にも劣る可能性で
あろうとも。
　それだけが光を救い得る道であるのなら。

　全てを賭け、全てを犠牲にして、掴み取るまでだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 1500);

}

..//ジャンプ指定
//次ファイル　"md03_019.nss"