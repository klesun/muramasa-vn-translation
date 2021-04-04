//<continuation number="140">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb03_006.nss_MAIN
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
	#bg034_署長宅茶の間a_01=true;
	#ev158_一導の最期=true;
	#bg072_火災で倒壊した和風建築_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb03_007.nss";

}

scene mb03_006.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb03_005.nss"

//◆部屋
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureEX("絵演眩暈", 500, Center, Middle, "cg/bg/bg034_署長宅茶の間a_01.jpg");
	SetShade("絵演眩暈", HEAVY);
	OnBG(100,"bg034_署長宅茶の間a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm27",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　湊斗さんの家――ではなく。鎌倉署長の役宅は悪く
ない居心地だった。療養中の身体には特に。
　自宅の安アパートで過ごしていたら、火傷の治りは
もっと遅かったかもしれない。

　ここで休めるよう手配してくれた湊斗さんには感謝
しないといけないだろう。
　あと一応、家主にも。それと牧村って言ったっけか、
無口だけどやたら気の回る使用人の人も。

　体を動かすたびあちこちが引きつれて、痛みが走る。
それもあまり気にはならない。
　庭の植物から送り込まれる空気が心地良いお陰だ。

　いや。違うか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_正義.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0060010a02">
（……やった）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　胸に満ちる達成感の前には、痛みなんて海洋深層水
みたいなものだった。遠いどこかで存在しているだけ。
　ともすれば怪我ごと忘れそうになる。

　何やらもうもどかしくて落ち着かない。
　手足にあといくらか力が入るなら、その辺を無闇に
走り回って発散もできるのに。つい今朝まで寝たきり
だった身では部屋の中をぐるぐる歩くのが精一杯だ。

　それにも飽きて、仕方ないから座り込む。
　でもじっとしていられない。意味もなく手を握って
また開き、理由もなく足を伸ばしてはまた戻す。

　そんな傍目には単なる挙動不審な奴になってしまう
ほど、心気が昂りに昂っていた。
　でも当然だろう。

　あたしは、やった。
　六波羅四大公方の一人、遊佐童心を倒した。

　もうあたしは題目だけ立派で中身のないカカシ野郎
じゃない。
　正しいことのために戦う――<RUBY text="・・・・・">戦っている</RUBY>んだと、胸
を張って語れる人間になった。

　この手で、悪を倒したんだから！
　まだ一つだけだけど。でかいやつを一つ。あの坊主
はきっと<RUBY text="このよ">現世</RUBY>にのさばっている限り、岡部の姫さまの
ような目に遭う人を増やし続けたに違いない。

　それをあたしが止めたんだ……
　
　そう考えると嬉しかったし、誇らしかった。

　ようやく父の教えに恥じない娘になれたように思う。
　父様は言った。悪を憎め、認めるな、決して許して
はならないと。

　正義とは、人として正しい在り方。人の原則。正道。
　邪悪とは、それに背くことを云う。人の逸脱。外道。

　悪を滅ぼしてこそ、世は正しく導かれる。
　だから命に懸けて否定する。否定して戦う。戦って
滅ぼす。

　例えその悪にやむなき理由があろうと、見逃しては
ならない。
〝必要悪〟を認めてはならない。これを許す限り悪は
絶対に滅びない。

　正義が邪悪に勝利する日は来ない。
　悪の犠牲になる人も絶えない。

　――滅ぼすのだ。
　悪はすべて。理由を問わず。一切。

　わけてもあの遊佐童心のように、悪のため悪を行う
奴輩は。
　人の世界から追い出して相応の地獄へ突き落とすに
如かず、だ。

　父様はきっと褒めてくれる。
　よくやったって言ってくれる。<k>
　
　あの時――初めて悪をこｒ　　たときのように

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆短くレッドアウト
//◆レッドイン
	CreateSE("SE01","se特殊_ノイズ01");
	MusicStart("SE01",0,500,0,1250,null,false);
	CreateColorEX("絵色赤", 5000, "#CC0000");
	Fade("絵色赤", 200, 850, null, false);
	Fade("絵演眩暈", 200, 1000, null, true);
	Wait(50);
	Fade("絵演眩暈", 200, 0, null, false);
	Fade("絵色赤", 200, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　興奮し過ぎて、頭に血が昇ったみたいだ。
　軽い<RUBY text="めまい">眩暈</RUBY>。あたしは額を押さえた。

　……少し、熱いような気がする。
　もしかすると微熱があるのかもしれない。

　ここまで回復しておいて、明日からは風邪で改めて
寝込み、なんて御免だ。
　後で泣きを見ないためには、用心して休んでおいた
方がいい。湊斗さんにも無理は厳禁と言われているし。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0060020a02">
（……その前に新聞読もうかな）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　寝床へ向けた足をふと止める。
　それは良い思いつきだった。

　まだあたしは自分のやり遂げたことを、新聞の記事
という形では目にしていない。
　新聞は毎日読んでいるけど、載っていなかったのだ。

　幕府が報道規制をしているのだと湊斗さんは言って
いた。さもありなん。
　たった二人の敵にカチ込まれて領袖を失ったなんて
話、六波羅は封印でもしてしまいたいところだろう。

　けれど幕府の統制力は弱まっている。それにこの手
の事件は隠して隠し通せるものでもない。
　そろそろどこかの新聞がすっぱ抜くかも――とは、
今朝のあの人の言。

　見回すと、夕刊が抜かりなく戸口の脇に差し入れら
れている。
　まだ日没前、配達員が走り回っているくらいの時間
なのに。本当にあの使用人の人はソツがない。

　あたしはいそいそと新聞を手に取った。
　動悸が急に激しくなり、早鐘を打つ。

　記事はもしあったとしても、ただ判明している事実
を並べただけのものだろう。
　あたしへの賞賛があるわけじゃない。名前すらない。

　それはわかっている。そんなこと期待もしていない。
　けれどそれは、あたしのした事に対する社会の<RUBY text="・・">承認</RUBY>
なのだ。あたしが正義を実行した事実を事実と認める
ものなのだ。

　あたしと正宗の存在を認める、社会の宣言なのだ。
　言ってしまえば表彰状のようなもの。どんな競技も
これを受け取らなければ優勝したことにならない。

{	CreateSE("SE01","se日常_物_紙を置く");
	MusicStart("SE01",0,1000,0,1000,null,false);}
　まさしく表彰台に登るような心地で、あたしは新聞
を開いた。
　
　そこに、<RUBY text="・・">事実</RUBY>はあった。

　
　　　　古河公方遊佐童心中将<k>
{	SetVolume("@mbgm*", 1000, 0, null);}
　　　　　　　　　　　　　　殺害さる

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆ＣＧ：赤字で「殺害」
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,500,0,1000,null,false);
	CreatePlainSP("絵板写", 5000);
	Wait(10);
	CreateColorSP("絵色黒", 3000, "#000000");

	SetFont("@ＭＳ 明朝", 60, #FF0000, #000000, HEAVY, RIGHTDOWN);
	CreateText("絵文字殺害",30411,Center,Middle,auto,auto,"殺 害");
	Rotate("絵文字殺害", 0, @0, @0, @90, null,true);
	Request("絵文字殺害",NoLog);
	Move("絵文字殺害", 0, @20, @0, null, false);

//	CreateTextureSP("絵文字殺害", 3100, Center, Middle, "cg/sys/Telop/tp_陸奥.png");//ダミー注意
	FadeDelete("絵板写", 50, true);
	Wait(10);
	CreatePlainSP("絵板写", 5000);
	Delete("絵色黒");
	Delete("絵文字殺害");
	WaitKey(100);
	FadeDelete("絵板写", 300, true);

	SetFwC("cg/fw/fw一条_憎悪a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0060030a02">
「…………………………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　一面記事だった。
　夕刊の第一頁はその一事件で征服し尽くされている。
いや、この分だときっと、中の紙面もこれに関連する
記述で一杯だ。

　でも、あたしに読めたのは見出しまでだった。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆ＣＧ：赤字で「殺害」
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,750,0,1000,null,false);
	CreatePlainSP("絵板写", 5000);
	Wait(10);
	CreateColorSP("絵色黒", 3000, "#000000");

//	CreateTextureSP("絵文字殺害", 3100, Center, Middle, "cg/sys/Telop/tp_陸奥.png");//ダミー注意
//	CreateTextureSP("絵文字殺害面", 3200, Center, Middle, "cg/sys/Telop/tp_陸奥.png");//ダミー注意

	SetFont("@ＭＳ 明朝", 60, #FF0000, #000000, HEAVY, RIGHTDOWN);
	CreateText("絵文字殺害",30411,Center,Middle,auto,auto,"殺 害");
	Rotate("絵文字殺害", 0, @0, @0, @90, null,true);
	Request("絵文字殺害",NoLog);
	Move("絵文字殺害", 0, @20, @0, null, false);

	SetFont("@ＭＳ 明朝", 60, #FF0000, #000000, HEAVY, RIGHTDOWN);
	CreateText("絵文字殺害面",30411,Center,Middle,auto,auto,"殺 害");
	Rotate("絵文字殺害面", 0, @0, @0, @90, null,true);
	Request("絵文字殺害面",NoLog);
	Move("絵文字殺害面", 0, @20, @0, null, false);

	FadeFR2("絵文字殺害面",0,750,250,0,0,10,DxlAxl,false);
	FadeDelete("絵板写", 50, true);
	Wait(200);
	CreatePlainSP("絵板写", 5000);
	Delete("絵色黒");
	Delete("絵文字殺害*");
	WaitKey(100);
	FadeDelete("絵板写", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　おかしい。
　……なんで、あたしは動揺するんだろう。

　この記事はさっきまであたしが胸中で反芻していた
事実を文章にしただけ。
　鎌倉市民にとっては驚天動地の内容でも、あたしに
とっては目新しい発見なんて一つもない。

　なのに、なんで。
　
　この指先は<RUBY text="・・・・">がくがく</RUBY>震えているんだろう。

　今更、何を驚くのか。
　ここにある事実はとっくに知っていたことだ。

　――あたしは遊佐童心を倒した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//◆赤色フォント
　
　　　　　　　　　　　<FONT incolor="#CC0000">違う。</FONT>

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　そう。
　ハイエナにも劣る<RUBY text="スカベンジャー">腐肉喰らい</RUBY>の分際で悠々と天上へ
舞いやがったあの野郎を、似合いの地べたへ叩き落と
してやったのだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//◆赤色フォント
　
　　　　　　　　　　　<FONT incolor="#CC0000">違う。</FONT>

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　忘れてはいないし、目を背けてもいない。
　改めて他人の言葉で知らされたからって、驚く理由
は何も、

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//◆赤色フォント
　
　　　　　　　　<FONT incolor="#CC0000">違う。
　　　　　　　　<RUBY text="・・・">倒した</RUBY>んじゃない。
　　　　　　　　<RUBY text="・・・・">落とした</RUBY>んじゃない。</FONT>

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　何も、

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//◆赤色フォント
　　　　　　　　<FONT incolor="#CC0000">あたしは、
　　　　　　　　あの人間を、<k>
　
　　　　　　　　<RUBY text="・・・">殺した</RUBY>んだ。

//◆赤色フォント
　
　　　　　　　　　　殺したんだ。</FONT>

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＣＧ：父の死
	CreateSE("SE01","se特殊_ノイズ01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureEX("絵回想", 5000, Center, Middle, "cg/ev/ev158_一導の最期.jpg");
	SetTone("絵回想", Monochrome);
	Fade("絵回想", 0, 1000, null, true);
	Wait(50);
	Delete("絵回想");

//◆回想・遊佐童心
	OnSE("se擬音_回想_フラッシュバック01",1000);
	CreateColorEXadd("絵白転", 10000, "#FFFFFF");
	Fade("絵白転", 600, 1000, null, true);

	CreateTextureSP("絵回想", 8000, Center, Middle, "cg/bg/bg072_火災で倒壊した和風建築_03.jpg");
	CreateColorEXmul("絵回想幕", 8100, "#847000");
	Fade("絵回想幕", 0, 400, null, true);

	Fade("絵白転", 600, 200, null, true);

	SetFwC("cg/fw/fw童心_通常.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【童心】
<voice name="童心" class="童心" src="voice/mb03/0060040a09">
「おぬしは正義を掲げ。
　奸悪なるこの遊佐童心と戦い」

//【童心】
<voice name="童心" class="童心" src="voice/mb03/0060050a09">
「勝利し」

{	FwC("cg/fw/fw童心_バサラ.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb03/0060060a09">
「殺したのだ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆血飛沫
	CreateSE("SE01","se人体_血_血しぶき01");
	SL_centerdamN(@0, @0,1200);
	CreateColorEX("絵色血", 20000, "#CC0000");

	Fade("絵色血", 500, 1000, null, false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	SL_centerdamfadeN2(10);

	Wait(500);

	PrintGO("上背景", 25000);
	CreateColorSP("絵色黒", 100, "#000000");
	FadeDelete("上背景", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　
　　　　　古河公方遊佐童心中将殺害さる

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆ＣＧ：赤字で「殺害」
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreatePlainSP("絵板写", 5000);
	Wait(10);
	CreateColorSP("絵色黒", 3000, "#000000");

//	CreateTextureSP("絵文字殺害", 3100, Center, Middle, "cg/sys/Telop/tp_陸奥.png");//ダミー注意
//	CreateTextureSP("絵文字殺害面", 3200, Center, Middle, "cg/sys/Telop/tp_陸奥.png");//ダミー注意



	SetFont("@ＭＳ 明朝", 60, #FF0000, #000000, HEAVY, RIGHTDOWN);
	CreateText("絵文字殺害",30411,Center,Middle,auto,auto,"殺 害");
	Rotate("絵文字殺害", 0, @0, @0, @90, null,true);
	Request("絵文字殺害",NoLog);
	Move("絵文字殺害", 0, @20, @0, null, false);


	SetFont("@ＭＳ 明朝", 60, #FF0000, #000000, HEAVY, RIGHTDOWN);
	CreateText("絵文字殺害面",30411,Center,Middle,auto,auto,"殺 害");
	Rotate("絵文字殺害面", 0, @0, @0, @90, null,true);
	Request("絵文字殺害面",NoLog);
	Move("絵文字殺害面", 0, @20, @0, null, false);

//	Zoom("絵文字殺害", 0, 1200, 1200, null, true);
//	Zoom("絵文字殺害面", 0, 1200, 1200, null, true);


	FadeFR3("絵文字殺害面",0,750,250,0,0,30,DxlAxl,false);
	FadeDelete("絵板写", 50, true);
	Wait(200);
	CreatePlainSP("絵板写", 5000);
	Delete("絵色黒");
	Delete("絵文字殺害*");
	WaitKey(100);
	FadeDelete("絵板写", 300, true);

//◆童心
	CreateTextureEX("絵演", 4000, Center, Middle, "cg/ev/ev158_一導の最期.jpg");
	CreateTextureEX("絵演面", 4100, Center, Middle, "cg/ev/ev158_一導の最期.jpg");
	StR(1000, @0, @0,"cg/st/st童心_通常_私服a.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【童心】
<voice name="童心" class="童心" src="voice/mb03/0060070a09">
「誇るがいい。
　笑うがいい」


//【童心】
<voice name="童心" class="童心" src="voice/mb03/0060080a09">
「この敗者を嘲り無慈悲に哄笑するがいい！」

{	FwC("cg/fw/fw童心_バサラ.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb03/0060090a09">
「<RUBY text="・・・・・・・・・・">おぬしは完璧に正しく</RUBY>、
{
//◆ＣＧ：父の死
	WaitKey(2200);
	OnSE("se特殊_ノイズ01",1000);
	Fade("絵演", 0, 1000, null, true);
	FadeFR2("絵演面",0,500,300,0,0,30,DxlAxl, true);
	Delete("絵演*");
}
　<RUBY text="・・・・・・・・・・・・・・・・・・・">その正しさをもってわしを殺したのだから</RUBY>
<RUBY text="・・">のう</RUBY>!!」


{	FwC("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb03/0060100a09">
「く、く、く……
　ふわっはっはっはっはっはっはっは!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆署長宅。部屋
	PrintBG("上背景", 30000);
	CreateColorSP("絵白転", 15000, "#FFFFFF");
	OnBG(100,"bg034_署長宅茶の間a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	Wait(50);
	FadeDelete("絵白転", 50, true);

	SetFwC("cg/fw/fw一条_悔しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0060110a02">
「…………ッッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//◆どったんばったん。椅子とか蹴倒してるような音。
	CreateSE("SE01","se人体_動作_室内暴れる");
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　なんで。
　なんで。

　あたしは何をしてる。
　なんで、こんなことになってる？

　どうして<RUBY text="むせ">咽</RUBY>ぶのか。
　どうして縁側へ這い出して<RUBY text="・・・・">げぇげぇ</RUBY>言っているのか。

　わけがわからない。
　何やってんのあたし。

　あたしは何も恥じるようなことはしていない。
　正義を貫いて、悪と戦って、勝ったんだ。

　恥じるどころか、父様に褒めて貰えるようなことを
したんだ。
　その証拠に……<k>父様の声が聴こえる。

　よくやったって、褒めてくれている。
　……聴こえる。あの時の言葉。

　あの時の――言葉が――――

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆ＣＧ：父の死
	CreateColorSP("絵色黒", 3000, "#000000");
	CreateTextureSP("絵演", 4000, Center, Middle, "cg/ev/ev158_一導の最期.jpg");
	CreateTextureSP("絵演面", 4100, Center, Middle, "cg/ev/ev158_一導の最期.jpg");
	OnSE("se特殊_ノイズ01",1000);
	FadeFR2("絵演面",0,500,300,0,0,30,DxlAxl, true);
	Fade("絵色黒", 0, 1000, null, true);
	Delete("絵演*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　
　　　　　　　　　　　そうだ。
　　　　　　　　　　それでいい。

　
　　　　　　　　　よくやったな。
　　　　　　　　　　　一条。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆部屋
	FadeDelete("絵色黒", 600, true);

	SetFwC("cg/fw/fw一条_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0060120a02">
「うっ……あぁ……」


//【一条】
<voice name="一条" class="一条" src="voice/mb03/0060130a02">
「…………みなと、さん……」

{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0060140a02">
「湊斗さんっ……！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb03_007.nss"