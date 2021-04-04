//<continuation number="1270">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_002.nss_MAIN
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
	#bg025_坑道山脈と森b_02=true;
	#bg020_山脈坑道_01=true;
	#bg093_山間の村a_01=true;
	#bg023_弥源太の家_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_始祖村正=true;
	#voice_on_飽間=true;

	$PreGameName = $GameName;

	$GameName = "md01_003.nss";

}

scene md01_002.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_001.nss"

//◆※以下、過去パートの絵には全てモノクロマスク施す
//あきゅん「演出：どこまでマスク？　シーンもそうだし、顔窓までモノクロ？　とりあえず背景と立絵だけ」

//◆bg025b
//◆合戦ＳＥ
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");

	CreateEffect("絵演モノクロ", 19998, 0, 0, 1030, 580, Monochrome);
//	CreateEffect("絵演モノクロ", 10000, Center, Middle, 1030, 580, "Monochrome");
	SetAlias("絵演モノクロ","絵演モノクロ");
	OnBG(100,"bg025_坑道山脈と森b_02.jpg");
	CreateSE("SEL01","se背景_ガヤ_合戦01");
	MusicStart("SEL01",2000,1000,0,1000,null,true);
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　天と地で、争いが繰り広げられていた。
　血で血を洗う――屍山を築くという表現がまさしく
相応しい。

　地上では、射手が矢を射かけ、敵陣に間隙を穿つや、
騎馬の将帥率いる兵の群れが長物を連ねて押し進む。
　天空では、互いを好敵と見定めた武者同士が名乗り
合い、雲を裂き風に乗って、激しく太刀を打ち交わす。

　戦争の光景だ。
　中世……そう呼ばれる時代の。

　詳細に観察すれば、より正確な区分も可能だった。
　劒冑の形状、武者の戦闘形式、歩兵の武器装束――
それらはこの戦争が源平合戦でも戦国大名の抗争でも
ないことを如実に語っている。

　何よりも、戦場に散見する旗……
　赤地に金で日輪を描いた豪奢な錦織。

　それが、<RUBY text="・・・・・・・・・・・・">どちらの陣営にも存在する</RUBY>。
　そんな事態、そんな戦争が起きた時代は、大和史上
にも稀であった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);

	SetFwC("cg/fw/fw二世村正_通常.png","Monoc");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0020010a15">
「<RUBY text="おと">御父</RUBY>」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　傍らの声に、俺の首が独りでにそちらへ向く。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆bg020a
//◆二世村正
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateEffect("絵演モノクロ", 10000, 0, 0, 1024, 576, "Monochrome");
	SetAlias("絵演モノクロ","絵演モノクロ");
	OnBG(100,"bg020_山脈坑道_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);
	FadeDelete("絵暗転", 1000, true);

	StL(1000, @0, @0,"cg/st/st二世村正_通常_私服.png");
	FadeStL(500,true);

	SoundPlay("@mbgm23",0,1000,true);
	Wait(500);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　小柄な蝦夷の女性だった。
　その顔を隣から見上げる――見上げている。つまり
俺の背は彼女よりも低かった。

　彼女が声を投じたのは俺にではない。
　前方に立つ、男の背へ向けていた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆始祖村正
	StR(1000, @0, @0,"cg/st/st始祖村正_通常_私服.png");
	FadeStR(500,true);

	SetFwC("cg/fw/fw始祖村正_通常.png","Monoc");

	#voice_on_始祖村正=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020020b30">
「流れが、見えたか」

{	FwC("cg/fw/fw二世村正_通常.png","Monoc");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0020030a15">
「<RUBY text="あ">吾</RUBY>が方の負けであろう」

{	FwC("cg/fw/fw始祖村正_通常.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020040b30">
「そうさな。
　……佐々木めがまたしても得意の寝返りを
打ちおった」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　忌々しげな男の声。
　それを聞いて、俺も気付いた。

　一隊が鉾の向きを逆さにし、先刻までの仲間に攻め
掛かっている……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw始祖村正_険しい.png","Monoc");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020050b30">
「どうにもならぬ」

{	FwC("cg/fw/fw二世村正_通常.png","Monoc");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0020060a15">
「<RUBY text="あきま">飽間</RUBY>様も、支え切れぬようだ」

{	FwC("cg/fw/fw始祖村正_通常.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020070b30">
「……」

{	FwC("cg/fw/fw二世村正_通常.png","Monoc");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0020080a15">
「あの方の赤心忠義も、佐々木の裏切り根性
には敵わぬか」

{	FwC("cg/fw/fw始祖村正_険しい.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020090b30">
「左様なことはない！」

{	FwC("cg/fw/fw二世村正_疑念.png","Monoc");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0020100a15">
「現に敗れている……」

{	FwC("cg/fw/fw始祖村正_険しい.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020110b30">
「一時の事だ。
　うてらが奉ずる吉野の主上こそ正当の帝、
いま京に御座すは尊き血筋ではあれど僭帝に
過ぎぬ」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020120b30">
「最後には正しき者が勝つ。
　世は、そう出来ている」

{	FwC("cg/fw/fw二世村正_通常.png","Monoc");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0020130a15">
「……」

{	FwC("cg/fw/fw始祖村正_大悟.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020140b30">
「信じられぬか」

{	FwC("cg/fw/fw二世村正_疑念.png","Monoc");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0020150a15">
「信じられぬ」

{	FwC("cg/fw/fw始祖村正_通常.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020160b30">
「信じねばならぬ」

{	FwC("cg/fw/fw二世村正_疑念.png","Monoc");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0020170a15">
「<RUBY text="あれ">吾</RUBY>が信ずるは、天上天下に御父のみよ」

{	FwC("cg/fw/fw始祖村正_通常.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020180b30">
「……」

{	FwC("cg/fw/fw二世村正_疑念.png","Monoc");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0020190a15">
「御父に教えられた鍛冶の技を信じている。
　御父が<RUBY text="・・・・">これから</RUBY>見つけ出す、劒冑の極みも
信じようぞ」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0020200a15">
「そうして、御父の跡を継ぐ。
　それだけが、吾の天命と思うている」

{	FwC("cg/fw/fw始祖村正_通常.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020210b30">
「……そうか」

{	FwC("cg/fw/fw二世村正_通常.png","Monoc");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0020220a15">
「帰ろう、御父。
　戦は終わりだ」

{	FwC("cg/fw/fw始祖村正_通常.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020230b30">
「うむ……」

{//◆顔ＣＧ無し。ネームプレート「？」
	NwC("cg/fw/nwその他.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0020240a01">
「おわり？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　不意に、<RUBY text="・・">俺は</RUBY>声を発した。
　俺のものではない声で。

　我が身から生じる異質な声を聴く……
　
　それはしかし、良く慣れ親しんだ感覚だった。

　装甲する都度、これと同じ体験をしている。
　ただ今の声は、いつもと比べると、<RUBY text="いささ">些</RUBY>か幼かった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ネームプレート「村正」
//◆以下、過去パートは全て同様
	SetNwC("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0020250a01">
「かかさま。いくさ、おわったの？
　もう、やらない？」

{	FwC("cg/fw/fw二世村正_通常.png","Monoc");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0020260a15">
「……」

{	FwC("cg/fw/fw始祖村正_沈鬱.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020270b30">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　ニュアンスの齟齬は、部外者である俺の耳にも明白
だった。
　幼い声の主――俺の良く知る者――は、二人の会話
を誤解している。

　女性の方が、小さく首を振った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw二世村正_疑念.png","Monoc");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0020280a15">
「まだだ。
　まだ、続く」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0020290a01">
「いつまで？」

{	FwC("cg/fw/fw二世村正_通常.png","Monoc");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0020300a15">
「わからぬ」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0020310a01">
「……いくさは、いつからしてるの？」

{	FwC("cg/fw/fw二世村正_通常.png","Monoc");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0020320a15">
「なれの生まれる前から、ずっとだ」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0020330a01">
「あてのうまれるまえ？」

{	FwC("cg/fw/fw二世村正_通常.png","Monoc");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0020340a15">
「そうだ」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0020350a01">
「かかさまは？
　かかさまのうまれたころは？」

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0020360a01">
「いくさ、なかった？」

{	FwC("cg/fw/fw二世村正_通常.png","Monoc");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0020370a15">
「……あった」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0020380a01">
「じじさまは？」

{	FwC("cg/fw/fw始祖村正_沈鬱.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020390b30">
「……」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0020400a01">
「じじさまのうまれたころは？
　いくさ、なかった？」

{	FwC("cg/fw/fw始祖村正_沈鬱.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020410b30">
「……」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020420b30">
「あったよ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　その戦嵐は、百年に渡って大和全土を吹き荒れたと
伝えられている。

　南北朝争乱。
　
　俺の劒冑――村正が、生きていた世界。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆蝦夷村。bg093
//◆村正家。bg023
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	CreateEffect("絵演モノクロ", 10000, 0, 0, 1024, 576, "Monochrome");
	SetAlias("絵演モノクロ","絵演モノクロ");
	OnBG(100,"bg093_山間の村a_01.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

	WaitKey(1000);

	CreateColorSP("絵暗転", 10000, "#000000");
	DrawTransition("絵暗転", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	OnBG(100,"bg023_弥源太の家_01.jpg");
	FadeBG(0,true);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

	Wait(1000);

	SetFwC("cg/fw/fw二世村正_通常.png","Monoc");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0020430a15">
「御父。
　飽間様がお越しだ」

{	FwC("cg/fw/fw始祖村正_通常.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020440b30">
「おう」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆飽間
	StR(1000, @0, @0,"cg/st/st飽間_通常_私服.png");
	FadeStR(500,true);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　<RUBY text="ひな">鄙</RUBY>びた蝦夷村の素朴な屋敷。
　そこに現れたのは、堂々たる風情の武人だった。

　一郡一軍を預かる将領に違いない。
　一介の蝦夷とは天と地ほどの身分差がある……筈だ
が、家主は立ち上がりもせず、挨拶らしき挨拶もしな
かった。

　武人に、それを不快がる気色はない。
　……そういう間柄なのか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw始祖村正_通常.png","Monoc");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020450b30">
「無事で、何よりだ」

{	#voice_on_飽間=true;
	FwC("cg/fw/fw飽間_通常b.png","Monoc");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020460b50">
「見ていたか」

{	FwC("cg/fw/fw始祖村正_通常.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020470b30">
「うむ」

{	FwC("cg/fw/fw飽間_通常a.png","Monoc");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020480b50">
「佐々木も大した奴よ。
　裏切る時と場所を決して間違えん」

//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020490b50">
「吉野山の方々は位階くらい気前良くくれて
やるべきだった。
　奴の訴えを聞き流していたばかりに、この
ざまだ」

{	FwC("cg/fw/fw始祖村正_通常.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020500b30">
「欲得ずくの輩など要るまい。
　どうせ寝返る男なら、最初から敵に回して
おいた方がましだ」

{	FwC("cg/fw/fw飽間_通常b.png","Monoc");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020510b50">
「……あれはあれで筋は通しているがな。
　領地を求め官位を求め、北から南南から北
へと忙しく立ち回るのも、一族を守るためだ」

{	FwC("cg/fw/fw始祖村正_険しい.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020520b30">
「本末転倒であろう。
　将ならば、大義を守護するために一族の力
を用いるべき」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020530b30">
「一族を守るために大義を捨てて、何の武人
か」

{	FwC("cg/fw/fw飽間_沈鬱.png","Monoc");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020540b50">
「うむ……」

{	FwC("cg/fw/fw始祖村正_通常.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020550b30">
「飽間様は、たとえ一族郎党悉く死に絶える
始末となろうが、北朝方へ鞍替えなどなさる
まい」

{	FwC("cg/fw/fw飽間_通常b.png","Monoc");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020560b50">
「当然だ」

{	FwC("cg/fw/fw始祖村正_通常.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020570b30">
「この伊勢國は神宮の膝元。
　民が帝を崇め、逆賊を憎む気持ちは、どの
國よりも強い」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020580b30">
「断じて偽帝に頭は下げられぬ」

{	FwC("cg/fw/fw飽間_通常b.png","Monoc");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020590b50">
「うむ」

{	FwC("cg/fw/fw始祖村正_険しい.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020600b30">
「勝たねばならぬ……」

{	FwC("cg/fw/fw飽間_通常a.png","Monoc");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020610b50">
「そのためには、だ。
　村正。ぬしの力が要る」

{	FwC("cg/fw/fw始祖村正_大悟.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020620b30">
「……」

{	FwC("cg/fw/fw飽間_通常a.png","Monoc");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020630b50">
「口にはされぬが、帝は待ちかねておられる
ようだ。
　楠木殿もな」

{	FwC("cg/fw/fw始祖村正_通常.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020640b30">
「うむ……」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw飽間_通常b.png","Monoc");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020650b50">
「勢州桑名、千子村の<RUBY text="かじおさ">鍛冶長</RUBY>は、五郎正宗の
再来ならん……。
　その風評が帝のお耳に届き、劒冑鍛造の勅
が下って――早三年」

//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020660b50">
「まだ出来ぬか」

{	FwC("cg/fw/fw始祖村正_大悟.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020670b30">
「まだだ」

{	FwC("cg/fw/fw飽間_通常b.png","Monoc");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020680b50">
「ぬしの劒冑を楠木殿が身に纏い、南朝全軍
を率いて押し出せば、北朝など一夜のうちに
滅び去ろう」

{	FwC("cg/fw/fw飽間_沈鬱.png","Monoc");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020690b50">
「大和の民の待ち望む平穏がようやく訪れる
であろう……」

{	FwC("cg/fw/fw始祖村正_大悟.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020700b30">
「うても、そうあらねばならぬと思うておる。
　だからこそ、軽々しく鍛造に踏み切れぬ」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020710b30">
「やり直しは利かんからの……」

{	FwC("cg/fw/fw飽間_通常b.png","Monoc");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020720b50">
「まだ工夫がつかぬか」

{	FwC("cg/fw/fw始祖村正_大悟.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020730b30">
「というよりも、方向よな」

{	FwC("cg/fw/fw飽間_通常b.png","Monoc");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020740b50">
「方向？」

{	FwC("cg/fw/fw始祖村正_通常.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020750b30">
「飽間様は、至高の劒冑とは如何なるものだ
と思われる？」

{	FwC("cg/fw/fw飽間_通常a.png","Monoc");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020760b50">
「力が強く、甲鉄は硬く、翼は鋭く速く――」

{	FwC("cg/fw/fw始祖村正_大悟.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020770b30">
「出来るとお思いか？」

{	FwC("cg/fw/fw飽間_沈鬱.png","Monoc");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020780b50">
「……いや」

{	FwC("cg/fw/fw始祖村正_通常.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020790b30">
「どれほど力量ある鍛冶師でも、万能の劒冑
は打てぬ。
　何かを選び、何かを捨てねばならぬ」

{	FwC("cg/fw/fw飽間_通常b.png","Monoc");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020800b50">
「その選択が、定まらぬのか」

{	FwC("cg/fw/fw始祖村正_通常.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020810b30">
「うむ」

{	FwC("cg/fw/fw飽間_通常a.png","Monoc");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020820b50">
「何が最善、何が至高か……か？」

{	FwC("cg/fw/fw始祖村正_大悟.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020830b30">
「至高の劒冑とはな、飽間様。
　<RUBY text="・・・・・・・・">役目を遂げる劒冑</RUBY>に他ならぬ」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020840b30">
「如何なる者の助けとなり、
　如何なる者を討ち滅ぼすのか、
　……まずそれを見定めねば、何も始まらぬ」

{	FwC("cg/fw/fw飽間_通常b.png","Monoc");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020850b50">
「味方は南朝、敵は北朝であろう？」

{	FwC("cg/fw/fw始祖村正_大悟.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020860b30">
「より深く。より細かくだ。
　役目が明確であればあるほど、劒冑の性能
を特化できる」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

	SetFwC("cg/fw/fw飽間_沈鬱.png","Monoc");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020870b50">
「……成程のぅ」

{	FwC("cg/fw/fw始祖村正_大悟.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020880b30">
「<RUBY text="はたらき">機能</RUBY>を定めるにはまず目的を定める必要が
ある。要はそういうことだ」

{	FwC("cg/fw/fw飽間_通常b.png","Monoc");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020890b50">
「それで<RUBY text="いくさば">戦場</RUBY>巡りか」

{	FwC("cg/fw/fw始祖村正_大悟.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020900b30">
「うむ」

{	FwC("cg/fw/fw飽間_通常b.png","Monoc");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020910b50">
「結論は出せそうか？」

{	FwC("cg/fw/fw始祖村正_通常.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020920b30">
「まだ、掛かるな。
　まだ……倒すべき敵の姿が見えぬ」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020930b30">
「佐々木如きでは不足だしの」

{	FwC("cg/fw/fw飽間_通常a.png","Monoc");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020940b50">
「そうか……。
　わかった。ぬしの存念はそれとなく楠木殿
にお伝えしておく」

//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020950b50">
「帝のお耳にも入ろう。
　お二方とも納得される筈だ」

{	FwC("cg/fw/fw始祖村正_大悟.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020960b30">
「済まぬ」

{	FwC("cg/fw/fw飽間_通常a.png","Monoc");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020970b50">
「なに。ぬしとわしの仲だ。
　水臭い言葉などいらぬ」

//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0020980b50">
「ぬしは心ゆくまで工夫を続けろ。
　その間は、わしが賊軍どもから吉野を守り
通してみせる」

{	FwC("cg/fw/fw始祖村正_大悟.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0020990b30">
「……頼む」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――


//◆フェードアウト
//◆フェードイン
	ClearWaitAll(2000, 0);
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	CreateEffect("絵演モノクロ", 10000, 0, 0, 1024, 576, "Monochrome");
	SetAlias("絵演モノクロ","絵演モノクロ");
	OnBG(100,"bg023_弥源太の家_01.jpg");
	StR(1000, @0, @0,"cg/st/st始祖村正_通常_私服.png");
	FadeStR(0,true);
	FadeBG(0,true);
	Delete("上背景");

	Wait(1000);
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm26",0,1000,true);

	Wait(1000);

	SetFwC("cg/fw/fw始祖村正_険しい.png","Monoc");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0021000b30">
「…………」

{	FwC("cg/fw/fw二世村正_通常.png","Monoc");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0021010a15">
「どうした、御父。
　大層機嫌が悪いようだが」

{	FwC("cg/fw/fw始祖村正_険しい.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0021020b30">
「…………」

{	FwC("cg/fw/fw二世村正_通常.png","Monoc");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0021030a15">
「<RUBY text="かか">御母</RUBY>？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st始祖妻_通常_私服.png");
	FadeStL(500,true);

	SetFwC("cg/fw/fw始祖妻_嘆き.png","Monoc");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0195]
//【始祖妻】
<voice name="始祖妻" class="その他女声" src="voice/md01/0021040b29">
「京の都が奪われたそうです」

{	FwC("cg/fw/fw二世村正_叱咤.png","Monoc");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0021050a15">
「……何!?
　先月、楠木様が攻め落とし、帝は八年ぶり
の帰京を果たされたばかりではないか！」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0021060a15">
「洛中守護を拝命せし赤松の軍勢は何をして
いたのだ」

{	FwC("cg/fw/fw始祖妻_嘆き.png","Monoc");}
//【始祖妻】
<voice name="始祖妻" class="その他女声" src="voice/md01/0021070b29">
「その赤松が、寝返ったのです」

{	FwC("cg/fw/fw二世村正_通常.png","Monoc");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0021080a15">
「……何と」

{	FwC("cg/fw/fw始祖村正_怒り.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0021090b30">
「北朝に売りよったのよ！
　都と、帝をな」

{	FwC("cg/fw/fw二世村正_疑念.png","Monoc");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0021100a15">
「帝が北朝の手に!?」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw始祖村正_険しい.png","Monoc");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0021110b30">
「……」

{	FwC("cg/fw/fw二世村正_通常.png","Monoc");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0021120a15">
「では……南朝は、これから」

{	FwC("cg/fw/fw始祖村正_通常.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0021130b30">
「吉野の<RUBY text="みこ">皇子</RUBY>が即位されると、飽間様は言う
ておられた」

{	FwC("cg/fw/fw二世村正_通常.png","Monoc");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0021140a15">
「……」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0021150a01">
「みやこのおはなし？」

{	FwC("cg/fw/fw始祖妻_嘆き.png","Monoc");}
//【始祖妻】
<voice name="始祖妻" class="その他女声" src="voice/md01/0021160b29">
「……」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0021170a01">
「ととさまは？
　ととさま、みやこでしょ？」

{	FwC("cg/fw/fw始祖村正_通常.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0021180b30">
「……」

{	FwC("cg/fw/fw二世村正_通常.png","Monoc");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0021190a15">
「……御父」

{	FwC("cg/fw/fw始祖村正_険しい.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0021200b30">
「……<RUBY text="あやつ">婿殿</RUBY>が……
　御番鍛冶の端に加えられる栄に浴しながら、
帝を捨てて逃げると思うか」

{	FwC("cg/fw/fw二世村正_疑念.png","Monoc");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0021210a15">
「…………」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0021220a01">
「かかさま。
　ねえ、ととさまは？」

{	FwC("cg/fw/fw二世村正_通常.png","Monoc");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0021230a15">
「……………………」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0021240a01">
「ばばさま……
　ととさまは？」

{	FwC("cg/fw/fw始祖妻_嘆き.png","Monoc");}
//【始祖妻】
<voice name="始祖妻" class="その他女声" src="voice/md01/0021250b29">
「…………」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0021260a01">
「……じじさま……？」

{	FwC("cg/fw/fw始祖村正_険しい.png","Monoc");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0021270b30">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――


//◆フェードアウト
	ClearWaitAll(2000, 5000);

}

..//ジャンプ指定
//次ファイル　"md01_003.nss"