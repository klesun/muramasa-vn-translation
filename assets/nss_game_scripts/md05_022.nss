//<continuation number="700">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_022.nss_MAIN
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
	#ev238_地球と太陽と月と金神_a=true;
	#bg109_宇宙空間=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md05_023.nss";

}

scene md05_022.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md05_021.nss"


//◆はい地球。月軌道の辺りから。ev238a



	PrintBG("上背景", 30000);
	CreateColorSP("下黒", 90, "BLACK");

	CreateTextureSP("地球", 1000, @0, @0, "cg/ev/ev238_地球と太陽と月と金神_b.jpg");


	FadeDelete("上背景",0,true);

	Wait(1000);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0220010a01">
《私達の世界があんな風に見える辺り》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　……………………………………………………………
………………………………………………………………
………………………………………………………………
………………………………………………………………。

　飛ばされ過ぎだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220020a00">
（……宇宙かよ……）

{	FwC("cg/fw/fw村正蜘蛛_冷汗.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0220030a01">
《これってさりげなく人類史上の偉大な一歩
だったりするんじゃないかしら》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　その一歩を自ら踏み出したのなら感慨も湧こうが。
　蹴り飛ばされての事では、何とも感想の述べようが
ない。

　しかし青い。
　しかし遠い。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	OnBG(100, "bg109_宇宙空間.jpg");
	FadeBG(0, true);

	FadeDelete("地球", 1000, true);


	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220040a00">
（あの方向へ<RUBY text="・・・">落ちて</RUBY>いかない……という事は
つまり、俺は地球の引力圏外へ脱出したのか？
　どんな速度で飛ばされたのだ）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0220050a01">
《完全に脱出したわけでもないみたいよ。
　まだ少し、地球からの辰気を感じるもの》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　では衛星軌道の近辺か？
　
　それにしても相当な速度でなければ到達できない筈
――<k>そうか、それで全身の火傷か。

　速度の代償、大気との摩擦の結果がこれなら納得は
いく。
　……いやむしろ、ここは燃え尽きなかった事にこそ
疑問を抱かねばならないのかもしれないが。

　磁気障壁、甲鉄の強度、全てを考慮に入れても蹴り
の威力と大気の摩擦熱に耐えられたのはまったく僥倖
と言いようがない。
　それとも〝虎徹〟による性能強化が働いたか……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220060a00">
（しかし宇宙は真空ないし真空に近い筈だが。
　なぜ俺は窒息せずにいられる？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0220070a01">
《合当理の熱量変換を応用して酸素を作って
供給してるの。
　……空の果てには空気が無いなんて知らな
かったから、ちょっと慌てたけど》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220080a00">
（成程）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　声は出せなくとも、酸素欠乏の懸念は無用なのか。
　水もない場所で溺死しなくて済むのなら何にしても
有難い。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0220090a01">
《ただ、あまり長くは続かないから。
　承知しておいて》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220100a00">
（力尽きる前に、大気圏内へ帰還する方策を
考えろというわけだな？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0220110a01">
《ええ》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ピピ。

	OnSE("se特殊_コックピット_アラーム", 1000);
	Wait(500);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0220120a01">
《――いえ。
　その前に一悶着ありそう》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220130a00">
（…………）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm01", 0, 1000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　そうか。
　地上へ戻るには、決着をつけねばならないと。

　――――否。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220140a00">
（こうなれば、あえて帰還の手立てを考える
必要もない）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0220150a01">
《……そうね》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　飛来する白銀の彗星。
　あれを打倒する――その一事が全て！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銀星号飛来。ズギョー。

	CreateColorSP("絵黒", 20000, "#000000");
	DrawTransition("絵黒", 200, 0, 1000, 500, null, "cg/data/slide_01_02_0.png", true);

	CreateSE("SE01","se戦闘_動作_空突進04");
	CreateSE("SE05","se戦闘_動作_空突進02");
	CreateSE("SE06","se戦闘_動作_空突進02");
	CreateSE("SE10","se戦闘_動作_空突進05");
	CreateSE("SE11","se戦闘_動作_空突進05");


	CreateTextureSP("絵背景100", 100, Center, -700, "cg/bg/bg109_宇宙空間.jpg");
	Zoom("絵背景100", 0, 2000, 2000, null, true);

	CreateTextureEX("絵演村正", 1010, Center, Middle, "cg/st/3d銀星号_騎突_通常.png");
	Request("絵演村正*", Smoothing);
	Rotate("絵演村正*", 0, @0, @0, @20, null,true);
	Zoom("絵演村正*", 0, 5, 5, null, true);

	SetBlur("絵演村正", true, 1, 300, 70, false);
	Move("絵演村正", 0, 177,-213, null, true);

	CreateTextureEXadd("絵背景効果線", 17500, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	$効果ナット名 = @絵背景効果線;
	CreateProcess("プロセス１", 150, 0, 0, "TurboBlur");
	SetAlias("プロセス１","プロセス１");

	CreateColorEXadd("絵色200", 18500, "WHITE");
	CreateTextureEXadd("絵背景勢い", 18000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	MusicStart("SE01",0,1000,0,900,null,false);
	MusicStart("SE10",0,1,0,1250,null,true);
	MusicStart("SE11",0,1,0,1200,null,true);

	Request("プロセス１", Start);

	Move("絵背景100", 3000, @0, @-200, Axl1, false);
	DrawTransition("絵黒", 200, 1000, 0, 500, null, "cg/data/slide_01_02_1.png", true);
	Delete("絵黒");

	SetVolume("SE10", 800, 1000, null);

	SetVolume("SE10", 1000, 1, null);
	SetFrequency("SE10", 1000, 800, null);
	Shake("絵演村正", 2000, 1, 0, 0, 0, 1000, Axl2, false);
	Rotate("絵演村正", 1100, @0, @0, @-30, Axl3,false);
	Zoom("絵演村正", 1100, 5000, 5000, Axl3, false);
	BezierMove("絵演村正", 1100, (-277,-213){-280,-250}{-260,-250}(7000,-148), Axl1, false);
	Fade("絵演村正", 300, 1000, null, false);

	Wait(800);

	SetVolume("SE11", 600, 0, null);
	SetFrequency("SE11", 1000, 800, null);
	MusicStart("SE06",0,1000,0,950,null,false);
	Shake("絵背景100", 500, 50, 30, 0, 0, 1000, Dxl2, false);

	Wait(200);

	Fade("絵演村正", 100, 0, null, false);
	Fade("絵色200", 200, 1000, null, true);
	SetFrequency("SE10", 0, 1200, null);

	Delete("プロセス１");
	Delete("絵背景*");
	CloudZoomDelete(0,true);
	Delete("絵背景効果線");
	Delete("絵演*");

	CreateTextureSP("gin", 1200, 400, 200, "cg/ev/resize/ev901_銀星号天座失墜小彗星_am.jpg");
	SetBlur("gin", true, 3, 500, 50, false);
	Zoom("gin", 0, 2000, 2000, null, true);

	DrawDelete("絵色200", 200, 500, "slide_01_02_1", false);
	Wait(100);
	CreateSE("SE03","se戦闘_動作_空上昇01");
	MusicStart("SE03",0,1000,0,1000,null,false);

	Zoom("gin", 600, 1000, 1000, Dxl2, false);
	Move("gin", 600, @-800, @-400, Dxl2, true);

	Wait(600);

	SetFwC("cg/fw/fw光_好戦.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【光】
<voice name="光" class="光" src="voice/md05/0220160a14">
《ふふふ……
　まだまだ健勝そうだな景明！》

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0220170a14">
《地球を回る、物言わぬ赤い衛星にしてやれ
なんだとは残念無念！》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220180a00">
《……それは生憎だったな》

{	FwC("cg/fw/fw光_慈愛.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0220190a14">
《然らば稀有な体験を楽しめよう。
　天界の居心地はどんなものだ？》

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0220200a14">
《おまえはそこで何を思う？
　青い故郷を見て帰りたいと思うか――それ
とも深遠の星々を見て更に先へ、果てまでも
旅してみたいと思うか！》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220210a00">
《……どちらも違うな。
　ここで俺が思う事は、一つだけだ》

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0220220a14">
《云え！》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220230a00">
《銀星号。
　最早お前を地上へ帰したくはない》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　人々の住まう世界には。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【光】
<voice name="光" class="光" src="voice/md05/0220240a14">
《――良くぞ言ったり。
　ならば景明、力ずくで光を<RUBY text="とど">留</RUBY>めてみせよ!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//ここで遠くに銀星号置いておく？ inc櫻井

	CreateTextureSP("迫る銀星号", 1000, @0, @-100, "cg/st/3d銀星号_騎突_通常.png");
	Zoom("迫る銀星号", 0, 100, 100, null, true);
	Rotate("迫る銀星号", 0, @0, @0, @-5, null, true);

	FadeDelete("gin", 1000, true);
	Zoom("迫る銀星号", 150000, 500, 500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　猛気を<RUBY text="たぎ">滾</RUBY>らせ、星の輝きを放つ騎体が迫り来る。
　凄まじいまでの<RUBY text="スピード">速度</RUBY>。空恐ろしいまでの<RUBY text="パワー">勢威</RUBY>。

　あのままに俺を襲い、一撃をもって砕くのであろう。

　――今度こそ斃される。

　迎撃の方法はなく、防御の方法もない。
　あらゆる意味で、対抗の方法がない。

　五分の勝負であった先刻さえ、遂に競り負けた。
　今度は五分ではない。俺と村正は大きく損傷し戦闘
能力を減じている一方、銀星号は全くの無傷。

　これでどうすれば立ち向かえるのか。

　どうすれば勝てるのか。

　そんな魔法か奇跡のような方法があるのか？

　無い。<k>
　
　――――――――――――――――――否。

　有る。

　魔法でもなければ奇跡でもないが。
　勝つ方法はある。

　たった一つ。

　――そう。
　湊斗景明が湊斗光を殺す方法は一つだけ。

　この戦いに臨む前、それを知った。
　知っていたのに、最後の決断を欠いた。

　今なら間に合う。
　まだ。

　まだ俺は戦える。

　だから今、やらなくてはならない。

　――――やろう。

　たった一つの方法を行おう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220250a00">
（村正）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0220260a01">
《待って。
　交戦圏に入るまでの時間で、何とか回復を
進めてみる》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0220270a01">
《上手くいけば、いくらかましな状態に――》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220280a00">
（それはいい。
　そんな事をしても勝てはしない）

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220290a00">
（勝つ為の手は一つだ……）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0220300a01">
《……？　なに？》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　押し寄せる獰猛な戦気を味わい、肌が粟立つ。
　もう敵は近い。もう時間がない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220310a00">
（村正。
　今、すぐに）

{	SetVolume("@mbgm*", 1000, 1, null);
	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220320a00">
（俺を精神汚染しろ）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト

	WaitKey(800);
	SetVolume("@mbgm*", 1000, 1000, null);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0220330a01">
《――――――――――――え？》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220340a00">
（精神支配だ。
　<RUBY text="おまえ">劒冑</RUBY>の精神で<RUBY text="おれ">仕手</RUBY>の精神を潰し、同化して
取り込め）

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220350a00">
（……いつか拘置所でやろうとしたようにだ）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0220360a01">
《な――なっっ、なんで!?》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220370a00">
（野太刀を再生させた時の事を思い出せ。
　あれが答えだ）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　奇怪な心象世界の中で得た解答。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト

	CreateColorEX("黒", 4000, "BLACK");
	Fade("黒", 1000, 1000, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　――湊斗景明は湊斗光を殺せない。

　――だから。
　最初に湊斗景明を、殺す。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードイン
	FadeDelete("黒", 1000, true);

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220380a00">
（俺がいる限り、銀星号には……
　光には勝てない）

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220390a00">
（どうしようとも）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0220400a01">
《そんなこと……》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220410a00">
（いや事実だ。
　さっきもそうだった）

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220420a00">
（確実に斬れる筈だったあの瞬間、俺の意識
に光の面影が過ぎった……。
　あれさえ無ければ、空間歪曲の発動に先ん
じて刃が届いていたかもしれない）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0220430a01">
《…………》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220440a00">
（俺自身が最大の敗因だ）

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220450a00">
（だから俺を殺せ）

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220460a00">
（俺の意思を潰せ）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵背景100");

	CreateTextureSP("宇宙", 4900, -200, @0, "cg/bg/bg204_横旋回背景_04.jpg");
	CreateTextureSP("宇宙2", 4900, -200, @0, "cg/bg/bg204_横旋回背景_04.jpg");
	CreateTextureSP("絵背景100", 5000, 110, -240, "cg/st/3d村正最終_騎航_通常b.png");

	CreateSCR1("@宇宙","@宇宙2",20000,-50,@0);

	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0245]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0220470a01">
《……む、無理よ》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0220480a01">
《仕手の心をなくしてしまったら、戦いよう
がないもの》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220490a00">
（普通の武者ならそうなる。
　だが村正、お前は使命あって生まれた劒冑）

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220500a00">
（その使命は俺の使命と今や同一のもの。
　俺の心が消えようと、お前の使命が残って
いれば同じ事だ）

//【景明】
<voice name="景明" class="景明" src="voice/md05/0220510a00">
（戦える）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0220520a01">
《……で……でも》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0220530a01">
《でも、私は》

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220540a00">
（村正！）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0220550a01">
《私は……貴方の意志を守りたくて、》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銀星号肉迫

	CreateColorSP("上黒", 15000, "BLACK");
	DrawTransition("上黒", 200, 0, 1000, 100, Dxl3, "cg/data/circle_01_00_0.png", true);

	Delete("宇宙*");
	Delete("絵背景100");

	CreateColorSP("黒", 3000, "BLACK");
	CreateTextureSP("絵背景100", 3100, Center, Middle, "cg/bg/bg109_宇宙空間.jpg");

	CreateTextureEX("gin", 3500, @-400, @-500, "cg/st/resize/3d銀星号_騎突_通常l.png");
	Zoom("gin", 0, 500, 500, null, true);
	Request("gin", Smoothing);
	SetBlur("gin", true, 3, 500, 50, false);
	Fade("gin", 0, 1000, null, true);

	OnSE("se戦闘_動作_空突進03", 1000);

	FadeDelete("上黒", 200, false);


	Zoom("gin", 300, 1000, 1000, Dxl3, true);




	SetFwR("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220560a00">
（急げ！）

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0220570a01">
《できないっ！
　だって、私――！》

{	FwR("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220580a00">
（忘れるな村正。
　俺達は、屍を踏んで歩いてきた）

{	FwR("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220590a00">
（ここに至るため、幾多の命を踏み砕いた）

//【景明】
<voice name="景明" class="景明" src="voice/md05/0220600a00">
（……俺を汚染から救い出してくれたあの時。
　お前自身が、俺に言った事だ）

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0220610a01">
《――――》

{	FwR("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220620a00">
（他人に<RUBY text="・・・・・・・">支払わせてきた</RUBY>犠牲、そのすべてを
無駄とするか否か、今が瀬戸際だ。
　迷う必要はない……迷う事など許されない）

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0220630a01">
《御堂……》

{	FwR("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220640a00">
（やれ）

{	FwR("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220650a00">
（これは俺の責務だ）

{	FwR("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220660a00">
（これはお前の責務だ）

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0220670a01">
《……》

{	FwR("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220680a00">
（村正）

{	FwR("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0220690a00">
（俺の意思を奪え!!）

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0220700a01">
《……っ……ぁぁあああ!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆精神汚染ずばー。
	SetVolume("@mbgm*", 500, 0, null);

	CreateColorEXadd("汚染", 15000, "#990000");
	CreateColorEX("下敷き", 3200, "BLACK");

	OnSE("se特殊_雰囲気_共鳴01", 1000);
	Fade("汚染", 500, 700, null, true);
	CreateTextureEX("汚染波", 14000, @0, @0, "cg/ef/ef034_精神汚染.jpg");
	Fade("汚染波", 1000, 1000, null, false);

	EffectZoomadd(15000, 1000, 1000, "cg/ef/ef034_精神汚染.jpg", true);

	DeleteStA(500,true);
	Fade("下敷き", 1000, 1000, null, false);
	Fade("汚染", 1000, 0, null, true);
	Delete("gin");
	CreateSE("SE01", "se戦闘_銀星号_精神汚染波_L");
	MusicStart("SE01", 0, 1000, 0, 1000, null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　血と肉と何かで出来ていた心が、
　打ち上げられ。鍛え上げられ。

　漆黒の鋼に変わってゆく。

　固く。
　硬く。

　強く。
　<RUBY text="つよ">靭</RUBY>く。

　揺れ動かぬ、鉄の塊に。

　……これで良い。

　これで正真の無我境へ至る。

　全ての愚念は消え、残るは唯一義。

　本来それとは誰よりも縁遠い湊斗景明が、
　自己の抹殺という儀礼を経て、<k>
　
　英雄たるものに曲がり成る。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆汚染完了


	OnSE("se特殊_雰囲気_崩壊音", 1000);

	CreateColorEX("汚染完了", 15000, "#990000");

	OnSE("se特殊_その他_卵生成01", 1000);

	Zoom("汚染波", 1500, 2000, 2000, null, false);

	Fade("汚染完了", 500, 1000, null, false);
	DrawTransition("汚染完了", 1500, 0, 1000, 200, null, "cg/data/zoom_01_00_0.png", true);

	FadeDelete("迫る銀星号", 1000, false);

	Delete("@OnBG*");
	Delete("汚染波");

//念のための黒 inc櫻井

	FadeDelete("汚染完了",1500,true);
	SetVolume("SE*", 1000, 0, null);

	WaitKey(1500);

//◆※以後、テキストボックス変更。汚染時用に
//◆フェードアウト

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md05_023.nss"