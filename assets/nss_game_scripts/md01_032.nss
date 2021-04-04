//<continuation number="680">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_032.nss_MAIN
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
	#bg022_山林a_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_033vs.nss";

}

scene md01_032.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_031.nss"

//◆bg022？
//◆護氏（鬚切）
//◆よたよた
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg022_山林a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SoundPlay("@mbgm20",0,1000,true);

	CreateSE("SE01","se特殊_鎧_駆動音01");
	MusicStart("SE01",0,1000,0,750,Dxl2,false);
	StL(1000, @60, @10,"cg/st/3d髭切_立ち_通常.png");
	Shake("@StL*", 300, 4, 0, 0, 0, 1000, DxlAuto, false);
	Move("@StL*", 600, @-60, @-10, DxlAuto, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw護氏_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320010a05">
「……く……」

{	FwC("cg/fw/fw護氏_困惑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320020a05">
「愚弄……しおって……！」

{	FwC("cg/fw/fw護氏_怒り.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320030a05">
「このままでは済まさぬ……
　痴れ者どもが……すぐにも、普陀楽の兵を
呼び……切り刻んでくれる……！」

{	FwC("cg/fw/fw護氏_困惑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320040a05">
「おのれ……！」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320050a07">
「まぁまぁおじじ。そんな下向いてうじうじ
やってないでさー。
　ちょっと顔を空に向けてみ？　滅多に見ら
れないもん拝めるから」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆茶々丸
	StR(1100, @0, @0,"cg/st/st茶々丸_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw護氏_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320060a05">
「……茶々丸!!」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320070a07">
「村正<RUBY text="バーサス">対</RUBY>村正、夢の頂上決戦。
　もう始まってるよー」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320080a07">
「うーん、やっぱ<RUBY text="おひめ">御姫</RUBY>の優勢は固いか……。
　けど御姫もわざわざ地雷踏んでるからな。
ひょっとすると番狂わせもある……か？」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320090a05">
「貴様……
　やはり、貴様が……」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320100a07">
「ん？」

{	FwC("cg/fw/fw護氏_怒り.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320110a05">
「貴様が銀星号の飼い主だったのか！」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320120a07">
「そりゃ違うけど。
　身柄を預かってたって意味なら、ま、そー
かな？」

{	FwC("cg/fw/fw護氏_困惑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320130a05">
「何故だッ!?
　何故、貴様が予に弓引く！」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320140a05">
「何の不服があった!?」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320150a07">
「んにゃ別にィ。
　おじじも六波羅もあては好きだよ？」

{	FwC("cg/fw/fw護氏_困惑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320160a05">
「ならば、これは如何なる仕儀か！」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320170a05">
「あのような怪物を操り、予の首を狙うとは
……。
　親殺しの重罪人に過ぎぬ貴様を引き立てて
やったのが誰か、忘れたとは言うまいな！」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320180a07">
「その節はお世話になりまして。
　いやほんと、恩に着てるんだけどね」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320190a05">
「ぬけぬけと言いおる……
　だが、貴様が何を企むにしろ、そううまく
ゆくか」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320200a05">
「童心坊にせよ、獅子吼にせよ、容易く貴様
の風下につく者どもではないぞ！」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320210a07">
「あんたの<RUBY text="ムスコ">雷蝶</RUBY>も入れてやれよ。一応。
　……まっ、それはおじじの言う通りだ」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320220a07">
「おじじが今ここで死んでも、あてには何の
メリットもないやね。
　つーか面倒な手間が増えるだけなんだよな
……」

{	FwC("cg/fw/fw護氏_困惑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320230a05">
「……何だと？
　ならば貴様、なぜ予を狙う！」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320240a07">
「あてはなんもしてないっしょ。
　やったのは御姫だよ」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320250a05">
「姫？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320260a07">
「<RUBY text="ギンセーゴー">銀星号</RUBY>」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw護氏_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320270a05">
「…………。
　では……貴様はどうする気なのだ」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320280a05">
「この期に及んで、予に手出しするつもりは
ないと言うのか」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320290a07">
「…………あー。うん。
　そうもいかんかな、やっぱし」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320300a07">
「ここまでやっちまった以上はね。
　きちんと片付けとかないと、全部御破算に
なっちまう」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320310a05">
「……」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320320a07">
「御姫も世話を焼かせてくれるよ」

{	FwC("cg/fw/fw護氏_困惑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320330a05">
「……どういう事だ。
　貴様の方があの魔物に従っていると、そう
聞こえるぞ」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320340a07">
「確かな耳してんね」

{	FwC("cg/fw/fw護氏_怒り.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320350a05">
「巫山戯るでない！
　貴様は竜軍中将、堀越公方たる身であろう
が！」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320360a05">
「万騎を指揮する貴様がどうして、あのよう
な愚かしい賊に従う!?」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320370a07">
「……愚か、かぁ。
　うん。愚かだよな」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320380a07">
「<RUBY text="・・">恋心</RUBY>ひとつで、世界を敵に回すか普通。
　乙女にもほどがあるだろ」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320390a05">
「……？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320400a07">
「でも、そんなんだから惚れちゃった。
　何もしない賢者よりなんかするバカの方が
好きなんだ、あて」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320410a07">
「しかも御姫はバカの桁が違うしね。
　バカの一念で江ノ島蹴り飛ばすってレベル
のバカ。人類史上前例がありません」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320420a07">
「ぞっこん惚れずにいられるかってーの。
　それに何より、御姫があのまま突き進んで
くれると、あての願いも叶いそうだ」

{	FwC("cg/fw/fw護氏_困惑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320430a05">
「願い……？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320440a07">
「神だよ」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320450a07">
「神に現れて欲しいんだ。あては」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320460a05">
「…………。
　よもや貴様が、そんな妄念に取り憑かれて
いたとはな」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320470a07">
「あのな。あてには切実な問題なんですよ？
　いつもいつも耳元で喧しいし、<RUBY text="・・・・">神の野郎</RUBY>」

{	FwC("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320480a05">
「もう良い。
　全ては予の不覚とわかった……」

{	FwC("cg/fw/fw護氏_怒り.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320490a05">
「貴様のような蒙昧を買っていたのが誤りで
あった。
　足利一族の血を半分受けても、残り半分に
卑しき蝦夷の血が混ざればこうなるのだな！」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320500a07">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//――――――――――――――――――――――――

//◆鬚切抜刀
	CreateSE("SE01","se擬音_雰囲気_抜刀01");
	MusicStart("SE01",0,1000,0,800,null,false);
	CreatePlainSP("絵板写", 5000);
	StL(1000, @0, @0,"cg/st/3d髭切_立ち_戦闘.png");
	FadeStL(0,true);
	FadeDelete("絵板写", 300, true);

	SetFwC("cg/fw/fw護氏_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320510a05">
「配下も連れず、丸腰で現れおって。
　予を手負いと侮ったか」

{	FwC("cg/fw/fw護氏_大笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320520a05">
「馬鹿め！
　貴様一人の始末に手間など掛けぬわ！」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320530a07">
「……はてさて。おかしいな。
　あんたは<RUBY text="・・・・">知ってる</RUBY>と見込んでたんだけど」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320540a07">
「買いかぶりだったんかね。
　そんな台詞が出てくるようじゃ、あての事、
何にも知らんてことだよな……？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320550a07">
「それとも、知りはしたけど信じなかった？」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320560a05">
「何が言いたい」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320570a07">
「あては<RUBY text="ハーフドワーフ">半人半蝦夷</RUBY>じゃないよ、おじじ」

{	FwC("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320580a05">
「ふん……。
　今更、薄汚れた出生を隠してどうする？」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320590a07">
「あらま。
　こりゃ、だめだ」

{	FwC("cg/fw/fw護氏_大笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320600a05">
「死ねィ!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//――――――――――――――――――――――――

//◆一撃
//◆ホワイトアウト
//◆がちーん
//◆ホワイトイン
//◆茶々丸・右腕が甲鉄化
	CreateColorSP("絵色黒幕", 5000, "#000000");
	Wait(1);

	CreateSE("SE01","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE01",0,1000,0,900,null,false);
	SL_rightdown2(5500,@0, @0,2000);
	SL_rightdownfade2(10);

	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01b","se戦闘_攻撃_剣戟弾く03");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateColorEXadd("絵色白幕", 6000, "#FFFFFF");
	CreateTextureSP("絵演", 5100, Center, Middle, "cg/ef/ef040_汎用衝突.jpg");
	Rotate("絵演", 0, @0, @180, @0, null,true);
	Shake("絵演", 300, 0, 10, 0, 0, 1000, Dxl2, false);
	Zoom("絵演", 300, 2000, 2000, Axl2, false);
	Fade("絵色白幕", 300, 1000, null, true);

	WaitKey(500);

	StC(1000, @0,@0,"cg/st/st茶々丸_戦闘_私服.png");
	FadeStA(0,true);

	CreateWindow("絵窓", 5000, 342, Middle, 340, 580, false);
	SetAlias("絵窓","絵窓");
	CreateTextureSP("絵窓/絵演背景", 5010, Center, Middle, "cg/bg/bg022_山林a_01.jpg");
	SetShade("絵窓/絵演背景", HEAVY);
	Zoom("絵窓/絵演背景", 0, 2000, 2000, null, true);

	CreateTextureSP("絵窓/絵演立絵装甲", 5100, 120, -125, "cg/st/resize/st茶々丸_戦闘_私服l.png");

	Delete("絵演");
	Delete("絵色黒幕");
	FadeDelete("絵色白幕", 1000, true);

	Wait(1000);

	Move("絵窓/絵演背景", 3000, @120, 0, DxlAuto, false);
	Move("絵窓/絵演立絵装甲", 3000, 360, -223, DxlAuto, true);

	Wait(1000);

	CreatePlainSP("絵板写", 20000);
	Delete("絵窓");
	FadeDelete("絵板写", 500, true);

	SetFwL("cg/fw/fw護氏_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320610a05">
「――――なァッ!?」

{	FwL("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320620a07">
「あばよ、おじじ」

{	FwL("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320630a07">
「……あんたさ。
　あての実の父親に比べたら、よっぽど親父
らしくしてくれたよ」

</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(150,0);//――――――――――――――――――――――――

//◆刺突アニメ？
//◆ぐっさり。血。

	SetVolume("SE*", 100, 0, null);
	PrintGO("上背景", 10000);
	CreateColorSP("絵色黒下", 50, "#000000");
	Delete("上背景");
	CreateSE("SE01","se戦闘_攻撃_振る03");
	MusicStart("SE01",0,1000,0,1200,null,false);

	CreateTextureSPadd("絵演上", 1100, Center, Middle, "cg/ef/ef043_爪攻撃.jpg");
	CreateTextureEX("絵演", 1010, Center, Middle, "cg/ef/ef043_爪攻撃.jpg");
	CreateTextureSP("絵演下", 1000, Center, Middle, "cg/ef/ef043_爪攻撃.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Fade("絵演", 0, 500, null, true);

	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);
	FadeDelete("絵演*", 200, true);

	CreateSE("SE01b","se戦闘_攻撃_刀刺さる05");
	MusicStart("SE01b",0,1000,0,1200,null,false);
	SL_centerdamN(@0, @0,1000);
	SL_centerdamfadeN2(10);

	SetFwC("cg/fw/fw護氏_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320640a05">
「がッ……はァ……」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320650a07">
「盛者必衰の理、ってか。
　おじじも例外にはなれんかったね……」

{//◆笑い
	FwC("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0320660a05">
「……はッ。
　我が運命……呪ったは、我が言葉かよ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆どさ。
	CreateSE("SE01","se戦闘_衝撃_鎧転倒01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	$残時間=RemainTime("SE01");
	WaitKey($残時間);

	WaitKey(500);

	PrintGO("上背景", 5000);

	OnBG(100,"bg022_山林a_01.jpg");
	StL(1000, @0, @0,"cg/st/st茶々丸_戦闘_私服.png");
	FadeBG(0,true);
	FadeStL(0,true);

	FadeDelete("上背景", 1000, true);

	SetFwC("cg/fw/fw茶々丸_寂寥.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320670a07">
「…………」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0320680a07">
「……お？
　<RUBY text="あっち">上空</RUBY>もちょうど幕間かな」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(1000, 1000);

}

..//ジャンプ指定
//次ファイル　"md01_033vs.nss"