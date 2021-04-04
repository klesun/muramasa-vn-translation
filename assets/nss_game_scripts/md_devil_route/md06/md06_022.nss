//<continuation number="200">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_022.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/md06_022.nss","RandomMeimetsu_md06_022",true);
	Conquest("nss/md06_022.nss","RandomMeimetsuSet_md06_022",true);
	

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
	#bg001_空b_01=true;
	#bg034_署長宅茶の間a_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_023.nss";

}

scene md06_022.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md06_021.nss"

//◆ホワイトアウト→イン
//◆青空
	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 15010, "#000000");
	CreateColorSPadd("白", 15000, "WHITE");

	OnBG(100, "bg001_空b_01.jpg");
	FadeBG(0, true);
	CreateSE("りょうり","se擬音_コミカル_料理音01");

	Delete("上背景");
	Fade("絵色黒", 500, 0, Axl2, true);

	Wait(1000);

	MusicStart("りょうり",0,1000,0,1000,null,false);
	FadeDelete("白",1500,true);

	MusicStart("@mbgm29", 0, 1000, 0, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　朝の日差しを浴びて目覚めると、既に村正は傍らに
いなかった。
　代わりに、<RUBY text="まないた">俎板</RUBY>を打つ小気味良い音が聴こえていた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0220010a00">
「……朝食を作っているのか？」

{	FwC("cg/fw/fw村正_笑顔.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0220020a01">
「ええ。
　少し待っていて」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆署長宅
	CreateSE("りょうり","se擬音_コミカル_料理音01");
	MusicStart("りょうり",0,500,0,1000,null,true);

	CreateTextureEX("絵背景", 200, @0, @0, "cg/bg/bg034_署長宅茶の間a_01.jpg");
	Fade("絵背景", 1000, 1000, null, true);
	CreateTextureSP("ゆれよう", 900, @0, @0, "cg/bg/bg034_署長宅茶の間a_01.jpg");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　<RUBY text="つきもの">憑物</RUBY>が落ちた心地、と云うのだろうか。
　心身の軽さは、我が事ながら戸惑う程だった。

　生きている。
　ただ、そう感じる。

　そこに付加価値は何も無い。

　小さく。
　重からず。
　何者でもあり、何者でもなく。

　ただ生きている。

　……とどのつまり。
　自分は傲慢だったのかと、思う。

　等身大の自分自身を、今ようやく認めているのか。
　そう思う。

　――天道。
　昨夜聞いた一語を思い出す。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0220030a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　人の罪業が、天、そして天を映す<RUBY text="ちじょう">俗世</RUBY>の衆知の裁量
するところであるなら、俺自身、俺個人でそれを云々
する事こそ不遜。<k>
　――――か。

　おそらく……そうなのであろう。

　いずれこの身は裁かれる。
　報いの日は来ると信じる。
　
　――信じて、

　生きる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0220040a00">
（そういう事か）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　そういう事なのであろう。

　台所からの軽快な調べに耳を委ねながら。
　俺は幸福――<k>とは、異なる。しかし平穏な、静謐な
もので内面が満たされているのを感じた。

　夏の湖水に浸かる心地で、緩やかな時を過ごす……。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆空
//◆ウェイト
	Fade("ゆれよう", 1000, 0, null, false);
	Fade("絵背景", 1000, 0, null, true);
	SetVolume("@mbgm*", 1000, 0, null);
	WaitKey(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　そうして。
　一時間が経過した。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆署長宅

	Fade("絵背景", 1000, 1000, null, true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0220050a00">
「…………」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0220060a00">
「まだ……か？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("りょうり", 1000, 0, null);

//◆村正
	OnSE("se日常_建物_スライド開く01", 1000);
	WaitKey(500);

	StR(1000, @50, @0, "cg/st/st村正_通常_私服.png");
	Move("@StR*", 300, @-50, @0, null, false);

	FadeStR(300, true);

	SetFwC("cg/fw/fw村正_不機嫌.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0220070a01">
「も、もうちょっと」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0220080a00">
「そうか。
　いや、別に急かしたのではないから」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正消え
	Move("@StR*", 300, @50, @0, null, false);
	DeleteStR(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　…………。


{	SoundPlay("@mbgm22",0,1000,true);}
　そう言えば、何処かで何かの折に聞いた事がある。

　劒冑鍛冶の家門に生まれ、<RUBY text="な">銘</RUBY>の継承者と見做された
者は、ごく幼少の頃からその後の生涯ほぼ全てを鍛冶
技術の修行に費やすため――
　他の諸事を学ぶゆとりは皆無に等しく。

　日常生活の雑事は門弟、下人らに任せ切りになる。
　
　…………と。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0220090a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　以上を踏まえて考えてみる。

　村正は果たして、<RUBY text="・・・・・・・・・・・・・・">料理をした事があるのだろうか</RUBY>？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
	SetVolume("@mbgm*", 1000, 1, null);
	CreateColorEX("黒", 15000, "BLACK");
	Fade("黒", 700, 1000, null, true);

//◆ＳＥ：トントントン……
	OnSE("se擬音_コミカル_料理音01", 1000);

	WaitKey(1000);

	SetVolume("@OnSE*", 1000, 0, null);
//◆ＳＥ：↑が乱暴乱雑に
	OnSE("se擬音_コミカル_料理音02", 1000);

	WaitKey(4000);

	SetVolume("@OnSE*", 1000, 0, null);

	WaitKey(1000);

//◆フェードイン

	Fade("黒", 700, 0, null, true);
	SetVolume("@mbgm*", 2000, 1000, null);
	SetFrequency("@mbgm*", 2000, 1200, null);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0220100a00">
「……音が……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正
	CreateTextureSP("ゆれよう", 900, @0, @0, "cg/bg/bg034_署長宅茶の間a_01.jpg");

	OnSE("se日常_建物_スライド開く02", 1000);
	WaitKey(500);
	Shake("ゆれよう", 300, 5, 0, 0, 0, 1000, Dxl3, true);
	WaitKey(500);
	StR(1000, @100, @0, "cg/st/st村正_通常_私服.png");
	Move("@StR*", 200, @-100, @0, Dxl1, false);

	FadeStR(200, true);

	SetFwC("cg/fw/fw村正_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0220110a01">
「もう少し。もう少しね」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0220120a00">
「あ、ああ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正消え
	Move("@StR*", 200, @100, @0, Dxl1, false);
	DeleteStR(200,true);

//◆フェードアウト
	SetVolume("@mbgm*", 500, 1, null);
	Fade("黒", 500, 1000, null, true);

//◆ＳＥ：どったんばったん。
	OnSE("se擬音_コミカル_料理音02", 1000);

	WaitKey(4000);

	SetVolume("@OnSE*", 1000, 0, null);

	WaitKey(1000);

//◆フェードイン
	Fade("黒", 500, 0, null, true);
	SetVolume("@mbgm*", 2000, 1000, null);
	SetFrequency("@mbgm*", 2000, 1350, null);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0220130a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　この家の台所に斧やハンマーの用意は無かった筈だ
が……。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正
	OnSE("se日常_建物_スライド開く02", 1000);
	WaitKey(500);
	Shake("ゆれよう", 300, 20, 0, 0, 0, 1000, Dxl3, true);
	WaitKey(500);
	StR(1000, @100, @0, "cg/st/st村正_通常_私服.png");
	Move("@StR*", 100, @-100, @0, Dxl1, false);

	FadeStR(100, true);

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0220140a01">
「もう少し！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正消え
	Move("@StR*", 100, @100, @0, Dxl1, false);
	DeleteStR(100,true);

//◆フェードアウト
	SetVolume("@mbgm*", 300, 1, null);
	Fade("黒", 300, 1000, null, true);

//◆ＳＥ：ドララララララ。
	OnSE("se戦闘_銃器_機関銃乱射01", 1000);

	WaitKey(4000);

	SetVolume("@OnSE*", 1000, 0, null);

	WaitKey(1000);

//◆フェードイン
	Fade("黒", 300, 0, null, true);
	SetVolume("@mbgm*", 2000, 1000, null);
	SetFrequency("@mbgm*", 2000, 1500, null);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0220150a00">
「……ガトリングガン……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　いや削岩機か……？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正蜘蛛
	OnSE("se日常_建物_スライド開く02", 1000);
	WaitKey(500);
	Shake("ゆれよう", 300, 30, 0, 0, 0, 1000, Dxl3, true);
	WaitKey(500);
	OnSE("se特殊_鎧_駆動音01", 1000);

	StR(1000, @100, @250, "cg/st/3d村正蜘蛛_俯瞰.png");
	Move("@StR*", 100, @-100, @0, null, false);

	FadeStR(100, true);

	SetFwC("cg/fw/fw村正蜘蛛_焦り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0220160a01">
《すぐ！　すぐだから！》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0220170a00">
「ああ……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆消え
	OnSE("se特殊_鎧_駆動音01", 1000);
	Move("@StR*", 200, @100, @0, null, false);
	DeleteStR(200,true);

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0220180a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　今、八本の<RUBY text="あし">節足</RUBY>に鍋と包丁とおたまとその他諸々を
持った馴染み深いでっかい蜘蛛が視界を<RUBY text="よ">過</RUBY>ぎったよう
に思えたが……無論、錯覚であろう。
　俺の知る限り、料理には二本の腕で足りる筈である。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("ゆれよう", 1000, 0, null, false);
//◆空
	Fade("絵背景", 1000, 0, null, true);

//◆ＳＥ：ドララララ
//◆ＳＥ：ばったんどったん
	OnSE("se戦闘_銃器_機関銃乱射01", 1000);
	OnSE("se擬音_コミカル_料理音02", 1000);

	WaitKey(4000);

//◆静まる
	SetVolume("@OnSE*", 5000, 0, null);
	SetFrequency("@mbgm*", 5000, 1000, null);
	SetVolume("@mbgm*", 5000, 0, null);

	WaitKey(2000);

//◆部屋
	Fade("絵背景", 1000, 1000, null, true);
	Fade("ゆれよう", 0, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　……………………。

　ようやく終わったか……。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm12",0,1000,true);

	CreateSE("SE03","se特殊_電撃_放電01");
	CreateSE("SEL03","se特殊_電撃_帯電01");
	MusicStart("SE03",0,1000,0,1200,null,false);
	MusicStart("SEL03",0,1000,0,1500,null,true);

	CreateTextureSPadd("ひばな", 10000, Center, Middle, "cg/ef/ef044_火花c.png");
	Zoom("ひばな", 0, 500, 500, null, true);
	Rotate("ひばな", 0, @0, @0, 1080, null,true);

	Move("ひばな", 0, @512, @0, null, true);

	MoveFRP1("@ひばな",100,70,35);

	Zoom("ひばな", 100, 1000, 1000, null, false);
	Rotate("ひばな", 300, @0, @0, 0, null,false);
	Fade("ひばな", 0, 1000, null, true);
	Fade("ひばな", 10, 0, null, true);
	Fade("ひばな", 0, 1000, null, true);
	Fade("ひばな", 10, 0, null, true);
	RandomMeimetsu_md06_022();

	CreateColorSPadd("ばち１", 17000, "#3399FF");
	CreateColorSPadd("ばち２", 16000, "#9933FF");

	Wait(50);

	Fade("ゆれよう", 0, 500, null, false);
	Fade("ばち*", 2000, 500, null, false);
	DrawTransition("ばち１", 100, 1000, 500, 300, null, "cg/data/circle_12_00_0.png", false);
	DrawTransition("ばち２", 100, 1000, 400, 500, null, "cg/data/circle_12_00_0.png", false);
	Shake("ゆれよう", 300000, 2, 2, 0, 0, 1000, null, false);


	SetFwC("cg/fw/fw村正蜘蛛_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0220190a01">
《……<RUBY text="おわりをはじめる">蒐窮開闢</RUBY>。<RUBY text="しをおこなう">終焉執行</RUBY>。<RUBY text="そらをあらわす">虚無発現</RUBY>……》

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0220200a00">
「何故だァァァ!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("OnSE*", 1000, 0, null);
	SetVolume("SE*", 1000, 0, null);

	CreateColorSPadd("siroi", 15000, "#FFFFFF");
	DrawTransition("siroi", 500, 0, 1000, 1000, null, "cg/data/circle_12_00_0.png", true);

//◆ちゅどーん。
//◆空
	WaitKey(500);
	OnSE("se擬音_コミカル_爆発03", 1000);

	Delete("ゆれよう");
	Delete("ばち*");
	Delete("ひばな");
	Delete("絵背景");
	FadeDelete("siroi", 1500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　……結局俺が手伝い、朝食というより少し早い昼食
になった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md06_023.nss"

.//プロセス用======================================================
..ランダム明滅
function RandomMeimetsu_md06_022()
{
	CreateProcess("Ｐランダム明滅", 5000, 0, 0, "RandomMeimetsuSet_md06_022");
	SetAlias("Ｐランダム明滅","Ｐランダム明滅");
	Request("Ｐランダム明滅", Start);
}

function RandomMeimetsuSet_md06_022()
{
	begin:
	while(1)
	{
	$RFadeTimeSet = Random(3) + 2;
	$RFTS = ($RFadeTimeSet * 10);
	Fade("@ひばな", $RFTS, 1000, null, true);


	$RFadeTimeSet2 = Random(3) + 1;
	$RFTS2 = ($RFadeTimeSet2 * 10);
	Fade("@ひばな", $RFTS2, 0, null, true);

	}

}