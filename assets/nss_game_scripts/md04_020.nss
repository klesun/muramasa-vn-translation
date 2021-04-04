//<continuation number="1970">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_020.nss_MAIN
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
	#bg015_路地裏_01=true;
	#ev106_雄飛と見下ろす村正_d=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_021.nss";

}

scene md04_020.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md04_019.nss"


//◆移動

//忠保盲目の種類が増える可能性を考慮してfw削除していません。
//また、このファイルは村正視点で進めると想定し、村正の立ち絵は使用していません inc櫻井


	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	CreateTextureEX("ue", 103, @0, @0, "cg/bg/bg015_路地裏_01.jpg");
	Fade("ue", 0, 1000, null, true);


	SoundPlay("@mbgm26", 0, 1000, true);

	Delete("上背景");

	DrawDelete("黒幕１", 1000, 100, "blind_01_00_1", true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　裏通りの小さな十字路を駆け抜けようとして……
　足を止める。

　左手の方向に、歩行者の後姿が見えていた。

　それだけならば、気に留めなかったろう。
　格好に変哲はない。普通の町民、普通の男性だ――
が、挙措が少々奇態だった。

　酩酊しているように、足元がふらふらと覚束ない。
右に揺れ左に揺れ、<RUBY text="つまづ">爪突</RUBY>いたりもする。
　……普段なら本当に酔っ払いだと思い、それきりで
思い捨てるところだ。

　けれど今は町が軍兵の支配下にある最中。
　民衆は<RUBY text="ほろよい">微酔</RUBY>機嫌で千鳥足に通りを歩けるような立場
にはない。

　とすると……あれは、一体？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ぶろー。ジープ？

	OnSE("se乗物_ジープ_走行音", 1000);

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200010a01">
（……ちょっと）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　声を掛けるべきか迷ううちに、別のものが視界内へ
現れていた。
　
　車だ。

　この時代の裕福な人々が所有し、町の中や、町と町
の間での移動に使うものとは少し違う。
　あれは本来、町の中では見ないもの。

　軍用の車だ。
　屋根の無い型で、異国人の兵士が二人乗っている。

　……通りは狭い。
　そこへあの大きな車が入ってきては、歩行者は壁に
張り付くようにしなければ避けられないだろう。

　といってそれは別に、困難なことでもないはずだが。
　
　よたよたと歩く男は、その容易な行為すらしかねる
と見えた。

　正面から車が接近して来ているのには気付いている
らしいが、動作は変わらず鈍い。
　やはり酔っているのか。身体が思うままにならない
様子だ。

　あれでは、車と当たって――――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200020a01">
「ああ、もう！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　酔漢の世話など焼いている場合ではないのに！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆走る
	CreateSE("走る", "se人体_足音_走る03");
	MusicStart("走る", 0, 1000, 0, 1000, null,false);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("ue");
	CreateTextureEX("絵背景50", 103, @0, @0, "cg/bg/bg015_路地裏_01.jpg");
	Fade("絵背景50", 0, 1000, null, true);

	WaitKey(1000);
//◆抱きかかえて車を避けた。
	SetVolume("走る", 1000, 0, null);

	OnSE("se人体_動作_抱く02", 1000);

	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);


	Wait(500);

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//◆顔グラ無し
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200030b43">
「……あ……」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200040a01">
「あ、じゃないでしょう。
　まともに動けもしないなら、こんな状況で
出歩いたりしないで」

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200050a01">
「家の中でおとなしくしていなさい。
　車に轢かれるのが趣味だっていうなら別だ
けどね」

{	NwC("cg/fw/nwその他.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200060b43">
「車に……？
　あぁ、やっぱり僕、轢かれそうになってた
のかぁ」

//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200070b43">
「ありがとうございます。
　お姉さん……で、いいんですよね？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200080a01">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　違和感を覚えて、私は抱え込む格好になっている彼
の顔を覗き込んだ。<k>
　
　そして、何も考えられなくなった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_驚きa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200090a01">
「――――――――」

{	NwC("cg/fw/nwその他.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200100b43">
「あれ……失敗したかな？　おかしいな。
　お姉さんは女性向け万能コールサインなの
に。年齢的にややアウトな人に使っても問題
無いどころかプラス効果という魔法の言葉」

//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200110b43">
「もしかして壮絶な急展開かなぁ。超人的に
女性の声色がうまい男の人ってオチですか？
　うーん、できればそういう辛い真実は秘密
にしておいて貰えると、心の健康にいいなぁ」

{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200120a01">
「……稲城、忠保……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆忠保（盲目）
//◆ここから顔グラ解禁
	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateColorEX("絵色100", 16050, "BLACK");

	CreateTextureEX("絵演窓上/絵演背景", 16100, 100, -344, "cg/bg/bg015_路地裏_01.jpg");
	Request("絵演窓上/絵演背景", Smoothing);
	Zoom("絵演窓上/絵演背景", 0, 2000, 2000, null, true);
	SetShade("絵演窓上/絵演背景", HEAVY);

	CreateTextureEX("絵演窓上/絵立絵", 16200, 50, -1450, "cg/st/resize/st忠保盲目_通常_私服l.png");
	Move("絵演窓上", 0, @0, @128, null, true);
	Request("絵演窓上/絵立絵", Smoothing);
	Zoom("絵演窓上/絵立絵", 0, 600, 600, null, true);

	Fade("絵色100", 300, 300, null, false);
	Fade("絵演窓上/絵演背景", 500, 1000, null, false);
	Fade("絵演窓上/絵立絵", 500, 1000, null, true);

	Wait(500);

	Move("絵演窓上/絵演背景", 3000, @0, 37, AxlDxl, false);
	Move("絵演窓上/絵立絵", 3000, @0, -660, AxlDxl, true);

	Wait(1000);

	FadeDelete("絵色100", 500, false);
	FadeDelete("絵演窓上*", 500, true);
	Delete("絵演窓上*");


	StL(1000, @0, @0, "cg/st/st忠保盲目_通常_私服.png");
	FadeStL(700, true);

	Wait(500);
	SoundPlay("@mbgm32", 0, 1000, true);

	SetFwC("cg/fw/fw忠保盲目_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200130b43">
「あ。僕の知り合いの方でしたか？
　すいません、ちょっと今<RUBY text="・・・">こんな</RUBY>なんで……」

{	FwC("cg/fw/fw忠保盲目_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200140b43">
「声だけだと良くわからないんです。
　ええと、どちら様でしょう？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　私の腕からふらりと離れ、彼はこちらへ向き直った。
　といっても、方向はややずれていたが。

　無理もない。
　目が見えないのだから当然だろう。

　彼は目蓋の上に厚く包帯を巻いている。
　例えそれが無くとも、彼は視覚を得られないことを、
私は知っている。

　<RUBY text="いなぎただやす">稲城忠保</RUBY>。<k>
　
　かつて〝卵〟寄生体<RUBY text="シンカイ">真改</RUBY>の事件に友人たちと一緒に
巻き込まれ、深傷を負った学生だ。

　あれからまだ、記憶が風化するほどの歳月は過ぎて
いない。
　見間違いでは、決してなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保盲目_虚脱.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200150b43">
「お姉さん？」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200160a01">
「……え、あ……
　ううん、ごめんなさい」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200170a01">
「私の方が一方的に少し知ってるだけなの。
　貴方は知らないと思う。口を利くのもこれ
が初めてだから」

{	FwC("cg/fw/fw忠保盲目_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200180b43">
「そうなんですか。
　すいません、その節は大変ご迷惑をおかけ
しまして」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200190a01">
「……その節？
　迷惑？」

{	FwC("cg/fw/fw忠保盲目_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200200b43">
「え、これっていつものパターンですよね？
　僕は別として雄飛とか小夏とかリツとかが
それぞれ独創性あるハッチャケをして知らず
知らず周りの人に大迷惑を掛けてたっていう」

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200210a01">
「…………いつもそうなの？」

{	FwC("cg/fw/fw忠保盲目_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200220b43">
「やぁ、僕も困ってるんですよね。
　初対面の人にいきなり窓ガラスを弁償しろ
とか対人恐怖症になった飼犬に謝れとか言わ
れるのが普通の生活ってどうもスリリングで」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200230a01">
「ふ、ふぅん」

{	FwC("cg/fw/fw忠保盲目_虚脱.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200240b43">
「……そうそう。
　そうだった……」

//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200250b43">
「ほんのこの間まで、そういう生活してたん
だよね……僕ら……」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200260a01">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保盲目_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200270b43">
「お姉さんは、窓ガラスコースですか？」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200280a01">
「いえ……大丈夫。
　迷惑なんて何も掛けられていないから」

{	FwC("cg/fw/fw忠保盲目_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200290b43">
「わぁ、それは有史以来まれなことですね」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200300a01">
「そこまで言わなくても」

{	FwC("cg/fw/fw忠保盲目_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200310b43">
「じゃあお礼だけしっかり言えばいいんだ。
　こういうのって何だか嬉しいなぁ」

//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200320b43">
「本当にありがとうございました、お姉さん。
　もし助けてもらえなかったら、きっと今頃
僕は死んでいて――」

//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200330b43">
「多分すごく困っていたと思います」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200340a01">
「そ、そうね。
　死ぬのはやっぱり困るんじゃないかしら」

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200350a01">
「でも大したことをしたわけじゃないし。
　お礼なんていいから……」

{	FwC("cg/fw/fw忠保盲目_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200360b43">
「ありがとうとごめんなさいはちゃんと言う
ようにしたいんです。
　友達がそういうやつでしたから」

{	FwC("cg/fw/fw忠保盲目_虚脱.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200370b43">
「今は……ちょっと色々あって、もういない
んですけど」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200380a01">
「……」

{	FwC("cg/fw/fw忠保盲目_虚脱.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200390b43">
「いないんだけど……だからかえって、なの
かな。
　あいつが僕に教えてくれたことは、大切に
しないと」

//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200400b43">
「うん。やっぱり死んだら困ってた。
　僕はあいつから受け取ったものを、なにも
活かせないまま終わることになるじゃないか」

{	FwC("cg/fw/fw忠保盲目_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200410b43">
「死ねないよ……」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200420a01">
「…………」

{	FwC("cg/fw/fw忠保盲目_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200430b43">
「すいません。
　わけのわからないこと言って」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200440a01">
「その、友達っていうのは」

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200450a01">
「もう」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆回想フラッシュ。雄飛斬殺

	EfRecoIn1(18000,600);

	CreateTextureEX("絵回想900", 2001, Center, Middle, "cg/ev/ev106_雄飛と見下ろす村正_d.jpg");
	Fade("絵回想900", 300, 1000, null, true);

	EfRecoIn2(300);

	WaitKey(1500);

	EfRecoOut1(300);

	Delete("絵回想*");

	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200460a01">
「……」

{	FwC("cg/fw/fw忠保盲目_虚脱.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200470b43">
「……ええ。そうです。
　危なっかしいやつだなぁとは前から思って
たんですけど、この間何かの拍子にうっかり
死んじゃったみたいで」

//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200480b43">
「今頃やっぱり困ってるんじゃないでしょう
か」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200490a01">
「…………」

{	FwC("cg/fw/fw忠保盲目_虚脱.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200500b43">
「でもなんでか、思うんですよ。
　あいつは、<RUBY text="・・・・・・・・・・">僕らの代わりに死んだ</RUBY>」

//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200510b43">
「死ぬのはきっと、僕でも小夏でも良かった。
　けれどあいつが選ばれて。それはきっと、
あいつの何かが悪かったからじゃない」

//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200520b43">
「その逆で……
　あいつが僕らの中で一番正しくて強かった
から、身代わりになって死んでしまったんだ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　それはどのような直感なのだろう。
　平凡な風貌の学生は、知りようもないはずの真実を
口にしていた。

　確かにそうだった。
　この彼でも、小夏という娘でも構わなかった。

　けれど新田雄飛を選んで殺したのだ。
　私は。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保盲目_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200530b43">
「だから……こんなところで車に轢かれたり
しなくて本当に良かった。
　そんなことで死んでたら、きっとあいつに
すごく怒られる」

{	FwC("cg/fw/fw忠保盲目_冷徹.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200540b43">
「僕はあいつの代わりにやらなきゃいけない。
　あいつがするはずだったことを」

//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200550b43">
「小夏を守らないと」

//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200560b43">
「僕は……
　きっと、あいつを――雄飛を犠牲にして、
生きているんだから……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　違う。

　彼を犠牲にしたのは、貴方じゃない。
　私だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保盲目_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200570b43">
「お姉さんには何度お礼を言っても言い足り
ません」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200580a01">
「……いいの」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200590a01">
「いいのよ。
　お礼なんて、本当に」

{	FwC("cg/fw/fw忠保盲目_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200600b43">
「僕の家まで足を運んで貰えませんか？
　こんな時ですから盛大にとはいかないかも
ですけど、それなりのおもてなしはできると
思います」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200610a01">
「気を遣わないで。
　家にはちゃんと送ってあげるけど……」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200620a01">
「……いえ。待って。
　貴方、どうして出歩いてるの？　目が見え
ないのに、しかもこんな時なのに」

{	FwC("cg/fw/fw忠保盲目_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200630b43">
「いやぁ。それがですね。
　昨日、早起きしてリハビリのために近所を
散歩していたら、いきなり空の上が騒がしく
なって。なんか戦争が始まっちゃって」

//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200640b43">
「すぐ家に帰ろうとしたんですけど、慌てて
いたせいか丸っきり違う方向へ行っちゃった
みたいで……。
　そうこうするうちに外出禁止の命令が出て」

{	FwC("cg/fw/fw忠保盲目_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200650b43">
「仕方なく近くの家に勝手に入らせて貰った
んですが、誰もいなくて。
　あれはお寺だったのかなぁ……」

//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200660b43">
「丸一日くらいでしょうか？　そこにいたん
ですけど、空腹に耐えられなくなっちゃって。
　帰宅は許可って放送もあったし、頑張って
家に帰ろうとしたんですが」

{	FwC("cg/fw/fw忠保盲目_笑顔b.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200670b43">
「やっぱり道がわからなくてうろうろしてる
うちに、危うく車に撥ねられそうになってた
みたいです。
　はっはっは、大笑いですね」

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200680a01">
「……大笑いではないと思うけれど」

{	FwC("cg/fw/fw忠保盲目_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200690b43">
「あっ、そうか。
　おもてなしをしようにも、僕を家に連れて
帰ってもらわないと始まらないんだ」

//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200700b43">
「そういうわけでお姉さん、もしもお急ぎで
なかったらどうかお願いします。
　うーん……お礼をするために面倒を掛ける
なんて本末転倒にもほどがあるなぁ……」

{	FwC("cg/fw/fw忠保盲目_笑顔b.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200710b43">
「はっはっは、大笑いですね」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200720a01">
「…………そうね」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　何だか屈服する心地で私は認めた。
　この饅頭を口に詰め込まれるかのような、どうにも
どうしようもない感覚は一体何なのだろうか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200730a01">
「とりあえず、家の場所を教えて。
　番地とかを言われても良くわからないから、
何か目印になるものを」

{	FwC("cg/fw/fw忠保盲目_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200740b43">
「目印ですか。
　そうだなぁ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆ぶろー。

	OnSE("se乗物_ジープ_走行音", 1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　背中の方からまた、車の音がした。
　……こんな狭い道ばかりを狙って通ることもないだ
ろうに。

　彼の話をいったん止め、腕を引いて道の脇へ寄る。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//◆ぶおー。スピードアップ。

	SetVolume("@mbgm*", 1000, 0, null);

	CreateTextureEX("絵背景100", 2000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	Fade("絵背景100", 100, 1000, null, false);
	EffectZoomadd(10000, 1000, 100, "cg/ef/ef003_汎用移動.jpg", false);

	DeleteStA(0,true);

	CreateSE("SE01","se乗物_ジープ_加速");
	MusicStart("SE01",500,1000,0,1200,null,false);


	SetFwC("cg/fw/fw村正_苦悶.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200750a01">
「!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆避け
//◆行き違う

//横フラ？ inc櫻井
	CreateColorSPadd("絵フラ", 6000, "#FFFFFF");
	CreateTextureEX("絵背景50", 103, @0, @0, "cg/bg/bg015_路地裏_01.jpg");
	Fade("絵背景50", 0, 1000, null, true);
	Delete("絵背景100");
	DeleteStL(0,true);
	DrawDelete("絵フラ", 600, 1000, "slide_01_03_0", true);

	SetFwC("cg/fw/fw忠保盲目_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200760b43">
「わっ、とっ、とっ」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200770a01">
「……」

{	StL(1000, @0, @0, "cg/st/st忠保盲目_通常_私服.png");
	FadeStL(300, false);
	FwC("cg/fw/fw忠保盲目_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200780b43">
「びっくりしましたね。今の、車が急に速度
を上げたんじゃないですか？
　急いでたのかな」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200790a01">
「……さあ。どうかしら」

{	FwC("cg/fw/fw忠保盲目_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200800b43">
「それで、僕の家なんですけど。
　湾岸に近い辺りで――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　私は聞いていなかった。

　前方を見据える。
　いま行き過ぎていった車が、幾らかの距離を置いて
停止している。

　軍用の車。
　先刻見たものと、全く同じ。

　兵士が二人、乗っているのも同じ。
　その姿形も、おそらく。

　彼らがそろってこちらを向いた。

　煙草を咥えた口で、にやにやと笑いながら。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200810a01">
（あいつら）

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ぶろー。

	OnSE("se乗物_ジープ_加速",1000);

	SoundPlay("@mbgm13", 0, 1000, true);


	SetFwC("cg/fw/fw忠保盲目_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200820b43">
「若宮大路を、」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200830a01">
「ちょっと黙って！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆抱えて避けー。

//横フラ？
	CreateTextureEX("絵背景100", 2000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	Fade("絵背景100", 100, 1000, null, false);
	EffectZoomadd(10000, 1000, 100, "cg/ef/ef003_汎用移動.jpg", false);

	DeleteStA(0,true);
	Wait(500);

	CreateColorSPadd("絵フラ", 6000, "#FFFFFF");
	Delete("絵背景100");
	DeleteStL(0,true);
	DrawDelete("絵フラ", 600, 1000, "slide_01_02_1", true);


	SetFwC("cg/fw/fw忠保盲目_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200840b43">
「……………………」

{	StL(1000, @0, @0, "cg/st/st忠保盲目_通常_私服.png");
	FadeStL(300, false);}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200850b43">
「狭い裏通りだと思ってたんですけど、実は
ここ、大通りの真ん中だったりします？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200860a01">
「私の目には、熊が二頭肩を組んで歩けるか
どうかって広さにしか見えないけど」

{	FwC("cg/fw/fw忠保盲目_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200870b43">
「それにしては車が多いですねぇ」

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200880a01">
「ええ。なんでかね」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　後進で脇を走り抜けていった車は、またほど近い所
に止まっている。
　そこが目的地、というわけでないことは明白だった。

　……理解は難しくない。
　あんなのは何処にだっている。

　弱いものを見れば虐げずにはいられない人間など、
ありふれた存在だ。
　昔からいるし、今もいるし、<RUBY text="・・">そこ</RUBY>にもいるという、
それだけのこと。

　いま鎌倉を支配している軍勢は、兵士の行動秩序を
良く引き締めている印象があったが――やはり何事も
完璧にとはいかないものなのか。
　勝利が迫っているとなれば尚更。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200890a01">
（あんなの、相手するまでもない）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　逃げるのは簡単だ。
　あえて劒冑の能力など使わなくとも、車幅より狭い
小道を探して入り込めばそれで済む。

　変に目立って要らぬ注意を引いてしまうこともなく、
無難にこの下らない一件から離れられるだろう。
　
　一人だけならば。

　稲城忠保をここへ置き捨てていけるのなら、それで
いい。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぶろー。

	OnSE("se乗物_ジープ_加速",1000);

	CreateTextureEX("絵背景100", 2000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	Fade("絵背景100", 100, 1000, null, false);
	EffectZoomadd(10000, 1000, 100, "cg/ef/ef003_汎用移動.jpg", false);


	Wait(500);

	SetFwC("cg/fw/fw村正_苦悶.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200900a01">
「……くっ！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆避け

//横フラ？

	CreateColorSPadd("絵フラ", 6000, "#FFFFFF");
	Delete("絵背景100");
	DeleteStL(0,true);
	DrawDelete("絵フラ", 600, 1000, "slide_01_03_0", true);


	SetFwC("cg/fw/fw忠保盲目_虚脱.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200910b43">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　今度は壁際すれすれを走ってきた。
　寸前まで引き付けてから反対側へ跳び、かろうじて
避けたが……次は通用しないだろう。

　車を操る兵士は、興の乗った表情をしている。
　楽しく遊ぶ子供のそれだ。

　あの様子では、とにかく一度当てるまでは止めまい。

　彼らに殺意は無かった。
　
　彼らは、<RUBY text="・・・・・・・・・・">そこまで考えていない</RUBY>。

　大きくて重い車に衝突されれば人間など簡単に死ぬ
――そんな<RUBY text="・・・">難しい</RUBY>計算は彼らには無理だ。
　彼らは必ず、やった後で理解する。

　そうかこうすると死んでしまうのか、と思う。
　そしてすぐに忘れる。
　
　だからまた同じことをする。

　あの二人はそういう種の人間だ。
　例え言語の違いが無くとも、私は彼らと意志の疎通
などできなかったろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保盲目_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200920b43">
「お姉さん」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200930a01">
「今ちょっと忙しくて……。
　家の場所は後で聞くから」

{	FwC("cg/fw/fw忠保盲目_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200940b43">
「いえ、もう結構です。
　何となく思い出しました。僕の家、ここら
へんの近くにあるんですよ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　目の見えない学生が、いい加減なことを言っていた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保盲目_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200950b43">
「送って頂かなくても平気です。
　それと、お礼の話ですけど……良く考えて
みたら今は家の中が取り込み中で」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200960a01">
「そう」

{	FwC("cg/fw/fw忠保盲目_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200970b43">
「申し訳ありません。
　次の機会にさせてください」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0200980a01">
「家はどこなの？」

{	FwC("cg/fw/fw忠保盲目_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0200990b43">
「本当にすぐ近くです。
　なので、お姉さん……もういいですから、
どうぞ行ってください」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201000a01">
「そう。
　……そんなに近くなら」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぶろー
	OnSE("se乗物_ジープ_加速",1000);
	CreateTextureEX("絵背景100", 2000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	Fade("絵背景100", 100, 1000, null, false);
	EffectZoomadd(10000, 1000, 100, "cg/ef/ef003_汎用移動.jpg", false);

	Wait(500);

	CreateColorSPadd("絵フラ", 6000, "#FFFFFF");
	Delete("絵背景100");
	DeleteStL(0,true);
	DrawDelete("絵フラ", 600, 1000, "slide_01_03_1", true);

	SetFwC("cg/fw/fw村正_優しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201010a01">
「大袈裟なお礼はいらないけど、お茶の一杯
くらい頂いていってもいいかもね。
　その程度なら、取り込んでいても邪魔には
ならないでしょう？」

{	FwC("cg/fw/fw忠保盲目_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201020b43">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　車を見据える。
　わかる――今度は、車と壁とでこちらを挟み潰そう
という気だ。

　逃げ場はない。
　彼には、何処にも。

　私だけなら話は簡単だ。
　さっさと尻に帆をかけて逃走すれば済む。

　けれど。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//	SetVolume("@mbgm*", 1000, 0, null);


	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201030a01">
（御堂なら）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　胸中に、一つの確信を抱く。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//	SoundPlay("@mbgm10", 0, 1000, true);


	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201040a01">
（稲城忠保を死なせない）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想
	EfRecoIn1(18000,600);

	CreateTextureSP("絵背景100", 5000, @0, @0, "cg/bg/bg015_路地裏_01.jpg");

	StCL(6000, @0, @0, "cg/st/st忠保盲目_通常_私服.png");
	FadeStCL(300, false);

	EfRecoIn2(300);

	SetFwC("cg/fw/fw忠保盲目_虚脱.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201050b43">
「僕はあいつの代わりにやらなきゃいけない。
　あいつがするはずだったことを」

{	FwC("cg/fw/fw忠保盲目_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201060b43">
「小夏を守らないと」

//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201070b43">
「僕は……
　きっと、あいつを――雄飛を犠牲にして、
生きているんだから……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	EfRecoOut1(300);

	Delete("絵背景100");
	DeleteStCL(0,true);
	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201080a01">
（絶対に――死なせてはならないと思う！）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　ならばここは湊斗景明の戦場だ。
　例え本人がいなくても。

　私は彼の力となり、戦う義務がある！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201090a01">
「稲城忠保」

{	FwC("cg/fw/fw忠保盲目_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201100b43">
「お姉さん……」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201110a01">
「空を飛んだことはある？」

{	FwC("cg/fw/fw忠保盲目_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201120b43">
「え？」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201130a01">
「こんな感じよ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 200, 0, null);

//◆飛翔
	OnSE("se人体_動作_跳躍01", 1000);
	OnSE("se人体_動作_跳躍02", 1000);

	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	CreateTextureSP("絵背景100", 200, Center, -576, "cg/bg/resize/bg001_空b_01l.jpg");

	DeleteStL(0,true);
	Move("絵背景100", 2000, @0, -288, Dxl2, false);

	DrawTransition("黒幕１", 200, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("黒幕１");

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　突進する車の進路から……
　自身ともう一人の人間とを、<RUBY text="・・">消失</RUBY>させる。

　その瞬間の、車に乗る兵士らの顔つきは<RUBY text="みもの">見物</RUBY>だった。
　両目を丸くし、口をぽかんと空けて――通常の人間
なら絶対に有り得ない跳躍力で頭上を越えてゆく、私
と盲目の学生の姿を見守る。

　そしてそのまま、彼らは壁に衝突した。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――
	
//◆ずごーん。

	CreateColorSP("黒幕１", 3000, "#000000");

	Delete("絵背景100");
	CreateTextureSP("絵背景50", 103, @0, @0, "cg/bg/bg015_路地裏_01.jpg");
	OnSE("se戦闘_衝撃_衝突01", 1000);
	EffectZoomDXadd(10000, 1500, 1500, "#FFFFFF", "cg/ef/ef040_汎用衝突.jpg", true);

	WaitKey(200);
	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);
	Delete("黒幕１");

//◆村正、着地

	OnSE("se人体_動作_一歩", 1000);

	WaitKey(1000);

	SetFwC("cg/fw/fw忠保盲目_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201140b43">
「……あ、あのー……」

//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201150b43">
「お姉さん、今なにか、すごいことしません
でした？」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201160a01">
「さあ？」

{	FwC("cg/fw/fw忠保盲目_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201170b43">
「本当に飛んだんですか？」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201180a01">
「だとしたら、不思議ね」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　片目をつぶる。
　見てもらえないのは残念だと思いながら。

　彼の片腕をつかんで、進むよう促す。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201190a01">
「とにかくここから離れましょ。
　貴方の家、海の方って言っていたっけ？」

{	FwC("cg/fw/fw忠保盲目_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201200b43">
「ええと……はい。でも――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぱーん。銃声。
	OnSE("se戦闘_攻撃_ライフル撃つ01", 1000);
	WaitKey(1500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　……そう簡単には済んでくれないか。
　向こうも戦争が仕事の兵士だということを失念して
いた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆兵士二人
	SoundPlay("@mbgm21",0,1000,true);


	StR(1000, @-50, @0, "cg/st/stＧＨＱ兵士_通常_制服.png");
	StCR(1000, @150, @0, "cg/st/stＧＨＱ兵士_通常_制服.png");
	FadeStR(300, false);
	FadeStCR(300, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　二人は破損した車から降りて、私を睨んでいる。
　銃口を突きつけ。憤激のあまり額まで赤く染め。

　あれは、子供の怒りだ。
　猫を苛めて遊んでいて、その猫に顔を引っ掻かれた
子供の怒り。

　自分より下等で脆弱だと信じていた相手に反撃され
傷付けられたことを、激しく怒っているのだ。
　迷いなく、恥じらいもない、真っ直ぐな憤り。

　その怒りが誤りだなどと、諭してやるつもりは全く
無かった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201210a01">
（正しいと信じていればいい）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　私が彼らに教えてやるのは、<RUBY text="・・・・・・・・・">正しいのに勝てない</RUBY>と
いう屈辱だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);
	SetFwC("cg/fw/fw忠保盲目_虚脱.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201220b43">
「お姉さ――」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201230a01">
「伏せて！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
　彼は盲目とも思えない素早さで、私の指示に従った。
　……そうだ。稲城忠保には判断力の確かなところが
あった。

　過去のわずかな観察の記憶を反芻する。
　
　その直後、衝撃に襲われた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぱんぱん。連射

	OnSE("se戦闘_攻撃_ライフル撃つ4回", 1000);
	CreateColorSPadd("絵色100", 1500, "WHITE");
	Fade("絵色100", 300, 0, null, true);
	Fade("絵色100", 0, 1000, null, true);
	Fade("絵色100", 300, 0, null, true);
	Fade("絵色100", 0, 1000, null, true);
	Fade("絵色100", 300, 0, null, true);
	Fade("絵色100", 0, 1000, null, true);
	Fade("絵色100", 350, 0, null, true);
	Delete("絵色100");
	WaitKey(200);

//画面揺らす？

	CreateColorSP("撃たれて出血的な", 1500, "#990000");
	FadeDelete("撃たれて出血的な", 1000, true);

	SetFwC("cg/fw/fw村正_苦悶.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201240a01">
「く……ぅっ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
　腹部、肩、右胸。
　三箇所を飛弾で抉られる。

　異物の侵食は、深い嫌悪感を催した。
　足元が揺らぎ、たたらを踏む。

　けれど、それだけだった。

　銃を撃ち放った二人の兵士は絶句している。
　やはり、子供のような表情だった――岩に叩きつけ
ても死なずに抗ってくる猫を見た子供の。

　この擬似肉体は銃弾を防ぎ止めるほど強固ではない。
　だが、本物の肉体ほど脆弱でもなかった。あの程度
の小玉なら<RUBY text="しんがね">心鉄</RUBY>を直撃されない限りは何発だって耐え
られる。

　……だからといって、もうやらせはしない。

　恐慌一歩手前の様子で再び銃の狙点を合わせる彼ら
に、私は片手を差し伸べた。
　肉体変成を部分解除――甲鉄に復元する。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆糸
	OnSE("se特殊_生物_蜘蛛の糸吐く01", 1000);
	CreateColorSPadd("絵フラ", 5000, "#FFFFFF");
	CreateTextureSP("絵背景20", 4900, Center, Middle, "cg/ef/ef018_蜘蛛の糸.jpg");
	Zoom("絵背景20", 0, 2000, 2000, null, true);
	SetBlur("絵背景20", true, 3, 500, 70, false);

	DeleteStA(0,true);

	Zoom("絵背景20", 700, 1000, 1000, Dxl2, false);
	DrawDelete("絵フラ", 200, 100, "beam_03_00_1", true);
	Wait(300);
	FadeDelete("絵背景20",300,true);
	SetVolume("@OnSE*", 1000, 0, null);

//◆どが。投げ飛ばした。

	CreatePlainSP("絵板写", 100);
	Fade("絵板写", 0, 1000, null, true);

	OnSE("se人体_衝撃_転倒_複数", 1000);


	Shake("絵板写", 500, 0, 30, 0, 0, 300, null, true);
	Delete("絵板写");
	OnSE("se人体_衝撃_転倒03", 1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
　飛ばした鋼糸で二人の両足を絡め取り、引き込んで
転倒させる。
　なるたけ痛みを感じるように、起き上がる気を失う
ように捻りを掛けながら。

{	OnSE("se戦闘_破壊_金属",1000);}
　ついでに、銃もへし折っておく。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201250a01">
「……ふん」

{	FwC("cg/fw/fw忠保盲目_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201260b43">
「あの……お姉さん……」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201270a01">
「なに？」

{	FwC("cg/fw/fw忠保盲目_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201280b43">
「逃げた方がいいです……」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201290a01">
「もう平気よ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
　倒れ、呻いている二人を指差す。
　彼に見えないのはわかっていたが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保盲目_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201300b43">
「そうじゃなくて」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201310a01">
「？」

{	FwC("cg/fw/fw忠保盲目_虚脱.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201320b43">
「まずい……多分、この音……」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201330a01">
「音？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
　私の間抜けな反問に――
　彼よりも、現実の方が先に答えてくれた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ひゅいーん。ずがんずがん。騎航＆着陸。
	OnSE("se戦闘_動作_鎧_着地01", 1000);

	WaitKey(1500);
	CreatePlainSP("絵板写", 200);
	Fade("絵板写", 0, 1000, null, true);
	Shake("絵板写", 500, 0, 10, 0, 0, 1000, null, true);
	Delete("絵板写");

	SetFwC("cg/fw/fw村正_凹む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201340a01">
（……馬鹿ね。私は）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
　どうしてもっと早く気付かなかったのか。
　こんなものが近付いていたのなら。

　いや、事前にこの危険を考慮するべきだった。
　兵士に銃を撃たせてはならなかったのだ。発砲音が
彼らの仲間を――<RUBY text="・・・・・・・・・">始末に負えない仲間</RUBY>を呼び寄せると
いうことは、多少考えればわかることだったのだから。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆竜騎兵三騎

	StR(1100, @50, @50, "cg/st/3dユーウォーキー_立ち_抜刀.png");
	StL(1000, @-50, @50, "cg/st/3dユーウォーキー_立ち_抜刀.png");

	OnSE("se人体_足音_鎧歩く03",1000);

	FadeStL(300, false);
	Move("@StL*", 500, @0, @-50, Dxl2, true);
	OnSE("se戦闘_動作_鎧_踏み込み01",1000);

	FadeStR(300, false);
	Move("@StR*", 500, @0, @-50, Dxl2, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
　一騎は私の背後に。
　二騎は正面に降り立った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201350a01">
（<RUBY text="まがいもの">数打武者</RUBY>ども）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
　鍛冶師の命魂が宿らぬ偽の劒冑に囲まれても、畏怖
などまるで覚えない。
　ただ、脅威は脅威に違いなかった。

　一対一なら食い下がりようもあるが、三対一では手
に余る。

　正面のうち一騎が、倒れた兵士から話を聞いていた。
　兵士はこちらを指差しつつ、早口の異国語で何やら
まくし立てている……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保盲目_虚脱.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201360b43">
「お姉さん……逃げて。
　殺されます」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201370a01">
「貴方、あいつらの言葉がわかるの？」

{	FwC("cg/fw/fw忠保盲目_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201380b43">
「少しなら。
　お姉さん、進駐軍の兵士をやっつけたんで
すね？　そいつが訴えています。反抗だとか、
武装しているとか、危険だとか」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201390a01">
「…………」

{	FwC("cg/fw/fw忠保盲目_虚脱.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201400b43">
「訴えている相手は、<RUBY text="クルセイダー">騎士</RUBY>……武者なんじゃ
ないですか？」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201410a01">
「ええ」

{	FwC("cg/fw/fw忠保盲目_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201420b43">
「逃げてください！
　僕は……たぶん、捕まってもどうにかなり
ますから！」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201430a01">
「どうなるの？
　自分は何も知りません、ただ道を歩いてた
だけなんですって言えば、あいつらは笑って
貴方を帰してくれる？」

{	FwC("cg/fw/fw忠保盲目_虚脱.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201440b43">
「…………」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201450a01">
「この状況で、それはなさそうね。
　なら、貴方を置いてはいけない」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201460a01">
「まだお礼をしてもらってないもの」

{	FwC("cg/fw/fw忠保盲目_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201470b43">
「……で、でも。
　どうするんですか？」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201480a01">
「どうにでもする。
　どうにでもして、貴方を助ける！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]
　私は思案した。
　彼を連れて、武者三騎から逃げおおせる――これは
無理だ。

　しかし、発想を転換してみればどうか？
　逃げ切れなくてもいい。策を弄して一時的に距離を
稼ぎ……その隙に彼を何処かへ隠して、私が敵を引き
付ける。

　うまくいけば、少なくとも彼は助かるだろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0690]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201490a01">
（この線ね）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0700]
　あとは策だ。
　ほんの短い時間でいい、彼らを引き離す手立ては、
何か――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw忠保盲目_虚脱.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201500b43">
「お姉さん」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201510a01">
「一人で逃げろって話は、もう聞かないから
ね」

{	FwC("cg/fw/fw忠保盲目_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201520b43">
「…………。
　質問させてください」

//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201530b43">
「一つだけ」

{	FwC("cg/fw/fw村正_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201540a01">
「？　なに？」

{	SetVolume("@mbgm*", 300, 0, null);
	FwC("cg/fw/fw忠保盲目_虚脱.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201550b43">
「あなたは、雄飛を殺した人ですか？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(1000,true);
//◆ボックス消してウェイト

	WaitKey(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
　刹那。
　私は周囲の状況を忘れた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateColorEX("絵色100", 16050, "BLACK");

	CreateTextureEX("絵演窓上/絵演背景", 16100, 0, -344, "cg/bg/bg015_路地裏_01.jpg");
	Request("絵演窓上/絵演背景", Smoothing);
	Zoom("絵演窓上/絵演背景", 0, 2000, 2000, null, true);
	SetShade("絵演窓上/絵演背景", HEAVY);

	CreateTextureEX("絵演窓上/絵立絵", 16200, 200, -745, "cg/st/resize/st忠保盲目_通常_私服l.png");
	Move("絵演窓上", 0, @0, @128, null, true);
	Request("絵演窓上/絵立絵", Smoothing);
	Zoom("絵演窓上/絵立絵", 0, 600, 600, null, true);



	Move("絵演窓上/絵演背景", 60000, -100, @0, null, false);
	Move("絵演窓上/絵立絵", 60000, -160, @0, null, false);

	Fade("絵色100", 300, 300, null, false);
	Fade("絵演窓上/絵演背景", 2000, 1000, null, false);
	Fade("絵演窓上/絵立絵", 2000, 1000, null, false);

	Wait(500);


	SetFwC("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0730]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201560a01">
「――――え？」

{	FwC("cg/fw/fw忠保盲目_冷徹.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201570b43">
「……」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201580a01">
「……あ……」

{	FwC("cg/fw/fw忠保盲目_冷徹.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201590b43">
「そうなんですか？」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201600a01">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ボックス消してウェイト

	WaitKey(2000);

	SoundPlay("@mbgm31", 0, 1000, true);

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0740]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201610a01">
「……ええ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0750]
　私は認めた。
　同じ人間に同じ質問をされたなら、湊斗景明も必ず
そうしたように。

　否定してはならなかった。
　認めなくてはならなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保盲目_虚脱.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0760]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201620b43">
「ああ……やっぱり」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201630a01">
「なぜ、そう思ったの？」

{	FwC("cg/fw/fw忠保盲目_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201640b43">
「閃き、かなぁ。
　このお姉さんはどうして僕を必死になって
救おうとするんだろうって考えてたら」

//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201650b43">
「急にこう、キュピーンと。
　脳細胞の未知の部分とかそんなものが覚醒
した感じで」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201660a01">
「…………」

{	FwC("cg/fw/fw忠保盲目_笑顔b.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201670b43">
「やぁ、でも色々と衝撃的ですね。
　雄飛を殺した人と、こんな風に会うなんて」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201680a01">
「貴方は……
　私を、憎まないの？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0770]
　愚かしいことを、私は訊いた。
　何の迷いもなく、彼が答える。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保盲目_冷徹.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0780]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201690b43">
「憎みます」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201700a01">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ビキリ。ひび割れ音


	CreateTextureEX("sita", 100, @0, @0, "cg/bg/bg015_路地裏_01.jpg");
	Fade("sita", 0, 1000, null, true);
	CreateEffect("絵背景", 101, @0, @0, 1024, 576, "Monochrome");

	Fade("ue", 1000, 700, null, false);


	OnSE("se特殊_鎧_アベンジ_ひび割れ", 400);

	WaitKey(2000);


	SetFwC("cg/fw/fw忠保盲目_冷徹.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0790]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201710b43">
「雄飛は大事な、大事な友人でした。
　彼をあなたが奪ったのなら、僕はあなたを
他の何よりも憎みます」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ビキリ。ひび割れ音


	Fade("ue", 1000, 600, null, false);

	OnSE("se特殊_鎧_ひび割れ01", 600);

	WaitKey(2000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0800]
　私は死に瀕していることを悟った。
　周囲の数打武者と戦うまでもなく。

　劒冑は不死。
　しかし、<RUBY text="こころ">心鉄</RUBY>が朽ちれば滅する。

　稲城忠保は、私を殺す力を持っていた。

　……それでも私は問いを重ねる。
　自らを滅ぼす問いを。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0810]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201720a01">
「私を、許さない？」

{	FwC("cg/fw/fw忠保盲目_冷徹.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201730b43">
「許しません」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ビキ。


	Fade("ue", 1000, 500, null, false);


	OnSE("se特殊_鎧_アベンジ_ひび割れ", 800);

	WaitKey(2000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0820]
　死ぬ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保盲目_冷徹.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0830]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201740b43">
「あなたがどれだけ謝っても。
　どんな償いをしても、許しません」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ビキ。

	Fade("ue", 1000, 400, null, false);

	OnSE("se特殊_鎧_アベンジ_ひび割れ", 1000);

	WaitKey(2000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0840]
　死ぬ……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保盲目_冷徹.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0850]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201750b43">
「雄飛を奪ったあなたを、僕は一生憎みます。
　一生、許しません」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ビキ。


	Fade("ue", 1000, 300, null, false);

	OnSE("se特殊_鎧_ひび割れ01", 1000);

	WaitKey(2000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0860]
　死。

　これは自殺ではない。
　私にはすべきことがある。死など望んではいない。

　望まない――それでも、死へ向かって私は進む。
　これは唯一の道だったから。

　逃げてはならない道だったから。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0870]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201760a01">
「貴方は」

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201770a01">
「私に、復讐する？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0880]
　最後の問いを云う。

　……これで終わりだ。
　私の<RUBY text="いのち">心鉄</RUBY>は朽ちる。

　この問いの答で……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);
	FadeDelete("絵色100", 500, false);
	FadeDelete("絵演窓上*", 500, true);
	Delete("絵演窓上*");

	SetFwC("cg/fw/fw忠保盲目_冷徹.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0890]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201780b43">
「いいえ」

{	Fade("ue", 1000, 1000, DxlAuto, false);
	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201790a01">
「――――――――」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201800a01">
「ど……どうして？」

{	FwC("cg/fw/fw忠保盲目_冷徹.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201810b43">
「意味をなくしたくないから」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201820a01">
「意味……？」

{	FwC("cg/fw/fw忠保盲目_虚脱.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201830b43">
「雄飛が死んだことの意味です」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm05", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0900]
　新田雄飛の、
　死んだ……意味？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保盲目_冷徹.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0910]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201840b43">
「……あったんでしょう？
　お姉さんのようなひとが、雄飛を殺したの
なら」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201850a01">
「それは」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0920]
　ある。あった。
〝卵〟が孵化し、銀星号が増殖するという最悪の事態
を防ぐために、彼は――

　……違う。
　そのために死んだのはあくまで真改、鈴川令法だ。

　新田雄飛を殺したものは、村正の<RUBY text="のろい">誓約</RUBY>。
　
　――善悪相殺の一理。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保盲目_冷徹.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0930]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201860b43">
「その意味がどんなものかは聞きません。
　今は……聞きたくないです」

//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201870b43">
「雄飛の命と引き換えにされたなにかのこと
なんて、僕は知りたくない」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201880a01">
「……」

{	FwC("cg/fw/fw忠保盲目_冷徹.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201890b43">
「でもお姉さんは……その意味を大事にして、
守ってください。
　<RUBY text="・・・">せめて</RUBY>」

//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201900b43">
「あなたはそのために、雄飛を犠牲にしたん
ですから」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0940]
　三方を囲む武者には欠片も感じなかった畏れを、私
はいま覚えていた。
　盲目の学生は単なる復讐心より遥かに厳酷なものを
私に向けたのだ。

　安易な赦しでは決してない。

　意味を守れと、彼は言った。
　新田雄飛の、死の意味を。

　それはつまり、新田雄飛の死を永劫背負ってゆけと
いうこと。

　……当然だ。
　当然至極の、天理に沿う、<RUBY text="おもきとが">重科</RUBY>だった。

　人を殺した者は、
　その死を生涯背負って生きねばならない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0950]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201910a01">
「稲城忠保」

{	FwC("cg/fw/fw忠保盲目_虚脱.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201920b43">
「それだけが……願いです」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201930a01">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

//◆竜騎兵、離陸
	OnSE("se特殊_鎧_駆動音02", 1000);
	WaitKey(500);
	CreateSE("飛ぶ", "se戦闘_動作_空突進01");
	MusicStart("飛ぶ", 0, 1000, 0, 1000, null,false);
	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0960]
　不意の轟音で我に返る。
　……存在を忘れかけていた武者たちが、動いていた。

　こちらに向かって――ではない。
　三騎とも、飛び立っている。

　一方向へ向かって――挙動から察するに――何やら
随分と焦りながら。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0970]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201940a01">
「……なに？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0980]
　三騎の数打武者だけではなかった。
　二人組の兵士も、もうこちらなど眼中にない様子で
走り出している。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保盲目_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0990]
//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201950b43">
「急な連絡が入ったみたいです。
　良く聴こえませんでしたけど……」

//【忠保】
<voice name="忠保" class="忠保" src="voice/md04/0201960b43">
「なんか、援軍がどうとか」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0201970a01">
「援軍？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md04_021.nss"