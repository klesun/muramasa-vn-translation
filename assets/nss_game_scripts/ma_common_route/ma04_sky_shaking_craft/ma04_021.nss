//<continuation number="780">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_021.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/ma04_021.nss","GunFlash",true);

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
	#bg042_江ノ島沿岸_03 = true;
	#bg040_江ノ島全景_03 = true;
	#bg046_江ノ島灯台_03 = true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma04_022.nss";

}

scene ma04_021.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_020vs.nss"

//◆分岐
//◆一条がいる場合は１７へ
//◆一条が死んでいる場合は１８へ

	//$Ichizyou_Dead=ture;

//――――――――――――――――――――――――――――――
.//●１７

//◆灯台の一条

if(!$Ichizyou_Dead){

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg046_江ノ島灯台_03.jpg");
	FadeBG(0,true);
	StR(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStR(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm26",0,1000,true);

	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210010a02">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


..//◆小分岐
...//◆両者生存ルートの場合

....//if_Start
if(!$Kanae_Dead){

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　一条は状況を把握していた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


}else{
....//else_Start

...//◆一条のみ生存ルートの場合

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　一条は状況を把握していた。
　海岸へ出てしまった以上は仕方なく、せめて情勢を
掴もうと灯台へ登り、忙しなく変転する戦いの様相を
俯瞰していたからだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

}
....//if_End

..//◆合流

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　銀色の武者――銀星号だ――が現れ、村正を取り囲
んでいた軍隊――六波羅だか進駐軍だか――は狂った。
　あれが精神汚染というやつに違いない。

　その一部が無秩序な隊伍を組んで、片瀬方面へ向か
っている。
　止めなくてはならない。大惨事になる。

　だが村正――景明はあの場を離れられない。
　他の誰かが行くしかない。

　つまり、自分だ！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆だっ。
	CreateSE("SEL01","se人体_足音_走る01_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);
	Move("@StR*", 300, @-120, @0, Axl2, false);
	DeleteStR(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　一条にとって、決断と行動の起点は同座標にある。
　躊躇い、逡巡などというエントロピーは皆無だ。

{	SetVolume("SE*", 6000, 0, null);}
　考えることがあるとすればそれは目的を達する為の
思索に限られる。
　
　――どうすれば良いか。

　片瀬まで最短距離を抜けては行けない。
　それではおそらく〝汚染〟の範囲に巻き込まれる。

　可能な限り島の外縁を経由して向かう必要がある。
　それで間に合うか。

　他に手段は？<k>
　――無し。この点の考察を打ち切る。

　辿り着いた後はどうするか。
　武装した軍隊をどう止める？

　<RUBY text="・・・・">このまま</RUBY>立ち向かう以外の方法は？<k>
　――無し。この点の考察を打ち切る。

　思考終了。
　後は可能行動を実施するだけだった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆海岸
//◆雪車町
	SetVolume("SE*", 1000, 0, null);
	CreateColorSP("絵暗転", 10000, "#000000");
	DrawTransition("絵暗転", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100,"bg042_江ノ島沿岸_03.jpg");
	FadeBG(0,true);

	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

	StL(1000, @60, @0,"cg/st/st雪車町_通常_私服.png");
	SetVolume("@mbgm*", 300, 0, null);
	CreateSE("SE01","se人体_動作_後ずさり01");
	MusicStart("SE01",0,1000,0,750,null,false);
	Move("@StL*", 300, @-60, @0, DxlAuto, false);
	FadeStL(300,false);

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210020a12">
「……おぉっと……」

{	StR(1000, @60, @0,"cg/st/st一条_通常_制服.png");
	CreateSE("SE01b","se人体_動作_後ずさり01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Move("@StR*", 300, @-60, @0, Dxl2, false);
	FadeStR(300,false);
	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210030a02">
「てめぇ。
　……なんでこんなとこにいやがる」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm24",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　出会ったのは、知っている人間だった。
　間違っても友人ではないが。

　雪車町一蔵。
　幕府御雇野木山組と進駐軍、両方の飯を食っている
チンピラヤクザ。

　なぜこんな場所にいるのか――
　
　一条の脳裏で幾つかの事実が直結した。彼の負傷。
濡れ鼠な姿。経歴。先刻の一幕。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210040a02">
「湊斗さんを襲ったのはてめェか!!」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



..//◆小分岐

...//◆一条のみ生存ルートの場合

	SetFwC("cg/fw/fw雪車町_通常.png");

....//if_Start
if($Kanae_Dead == true){

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210050a12">
「へっへ。まァ……
　この通りのザマですがねぇ」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――


}else{
....//else_Start

...//◆両者生存ルートの場合

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210060a12">
「そういや、嬢さんも来てたんでしたね……
　あの野郎と一緒に……」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210070a12">
「へ、へ。
　よりによってこんな時に鉢合わせしちまう
とは、ねぇ……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――


}
//if_End

..//◆合流

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210080a02">
「――畜生。今はいい。
　どきやがれ。あたしは忙しいんだ」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210090a12">
「おぅや？
　さいで……？」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210100a02">
「てめぇの仲間の軍隊が、とち狂って市街地
に突っ込もうとしてやがる。
　だから止めに行く。どけ」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210110a12">
「……へ、へ、へ！
　そいつは大事ですねぇ。いやはや、そんな
ことになっちまったんですか……」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210120a02">
「これで最後だ。
　どけよ」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210130a12">
「……嫌だ、と申しましたら。
　嬢さんはどうなさる？」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210140a02">
「てめぇを殺して行く。
　雪車町一蔵」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210150a12">
「さぁて……
　嬢は、人を殺したことがおありで？」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210160a02">
「ねぇよ」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210170a12">
「へ、へ……！
　それで、殺せるんですか……？」

{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210180a02">
「<RUBY text="・・・・・・・・・">首を折れば死ぬだろ</RUBY>。
　……違うのか？」

{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210190a12">
「…………」

{	FwC("cg/fw/fw雪車町_嘲笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210200a12">
「へ、へ、へ！
　ヒャァヒヒヒヒヒヒヒヒヒヒヒ!!」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210210a12">
「そう――<RUBY text="・・">そう</RUBY>！
　そうでなきゃいけねえ！」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210220a12">
「やっぱりあんたは、あたしが見込んだ通り
のお人だ……
　綾弥の嬢さん」

{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210230a02">
「――」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

//◆ざりっ。一歩進む
	CreateSE("SE01","se人体_動作_後ずさり01");
	MusicStart("SE01",0,1000,0,800,null,false);

	SetFwC("cg/fw/fw雪車町_満足.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210240a12">
「おぅ……
　恐い、恐い……」

{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210250a02">
「……」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210260a12">
「邪魔はしませんよ……。
　けど、どうするおつもりで？」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210270a12">
「相手は軍隊……。
　拳ひとつで止められるってもんでもないで
しょう……」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210280a02">
「やってみなけりゃ、わからねぇ」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210290a12">
「やらなくてもわかりませんかぃ？」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210300a02">
「あたしにわかってるのはいっこだけだ。
　そう言って、何もしないでぐずぐずしてた
ら、絶対に誰も助けられない」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210310a12">
「…………へへ」

{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210320a02">
「やってみれば、助けられるかもしれない。
　だから行くんだ」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210330a12">
「嬢さん」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210340a02">
「じゃあな」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210350a12">
「<RUBY text="・・・">ちから</RUBY>がご入用ですかぃ？」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210360a02">
「……」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210370a12">
「相手が軍隊でも蹴散らせるちから……
　今、欲しいんじゃァないですか？」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210380a02">
「何を言い出す気だ。
　てめぇは」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210390a12">
「この灯台はあたしもキャンプに使ってた所
でしてね…………丁度、あるんですよ」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210400a12">
「ここに……
　あたしに任されてる<RUBY text="・・">作戦</RUBY>の為の道具が」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210410a02">
「……？」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210420a12">
「もっとも……えいこら担いできた後に気付
いたんですがね、こいつは、<RUBY text="・・・・・">そんなこと</RUBY>には
使えやしない代物でした。
　なんせ主を選びますんで……」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210430a12">
「けれど……ねェ。
　嬢なら…………」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

//◆がさごそ。
	CreateSE("SE01","se日常_衣類_衣擦れ01");//ダミー注意
	MusicStart("SE01",0,1000,0,750,null,false);

	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210440a02">
「……鎧櫃？」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210450a12">
「……」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210460a02">
「どういうつもりだ？」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210470a12">
「このチンピラはね、嬢……
　あんたみたいな人間が好きなんで……」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210480a12">
「それだけですよ……」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210490a02">
「あたしはてめぇのようなのが嫌いだ。
　虫酸が走って、反吐が出る」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

//◆ぺっ。
	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210500a12">
「へへ……！
　だからこそ、で……」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210510a02">
「変態かよ」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210520a12">
「どうします……？
　あたしはともかく、<RUBY text="・・・">こいつ</RUBY>は嬢の好みだと
思うんですがねぇ……」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210530a12">
「こいつがあれば戦える……
　軍隊とも……<RUBY text="・・・・・・・・・・・・・">罪もない女子供を殺しちまう</RUBY>
<RUBY text="・・・・・・・・・">ような呪われた武者</RUBY>とも……！」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210540a02">
「……ふん。
　信じられねぇよ」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210550a02">
「だいたい、てめぇの施しなんぞ――」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//―――――――――――――――――――――――――

//◆キラッ。
	CreateSE("SE01","se戦闘_攻撃_刀衝突01");//ダミー注意
	MusicStart("SE01",0,1000,0,1500,null,false);
	SetVolume("@mbgm*", 100, 0, null);
	CreateColorSP("絵白", 15000, "#FFFFFF");
	Wait(1);
	FadeDelete("絵白", 200, true);

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210560a02">
「え？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆朧な輝き
	CreateSE("SEL01","se特殊_陰義_発動04");
	MusicStart("SEL01",0,1000,0,800,null,true);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 600, null, true);
	WaitKey(100);
	FadeDelete("絵フラ", 600, false);

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210570a02">
「……なんだ？
　弥源太爺さんの形見が……」

//◆顔なし
{	SetVolume("SEL01", 3000, 500, null);
	NwC("cg/fw/nwその他.png");}
　
//【正宗】
<voice name="正宗" class="正宗" src="voice/ma04/0210580b40">
　　　　　　《待ちかねたぞ》

　
//◆顔なし
//【正宗】
<voice name="正宗" class="正宗" src="voice/ma04/0210590b40">
　　　　　　《我が<RUBY text="あるじ">御堂</RUBY>！
　　　　　　　綾弥一条殿!!》

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210600a02">
「!?」

//◆顔なし
{	NwC("cg/fw/nwその他.png");}
　
//【正宗】
<voice name="正宗" class="正宗" src="voice/ma04/0210610b40">
　　　　《<RUBY text="おんみ">御身</RUBY>は問われた。
　　　　　この世に正義は有りや否や――》

//◆顔なし
　
//【正宗】
<voice name="正宗" class="正宗" src="voice/ma04/0210620b40">
　　　　《お答え仕る！
　　　　　<RUBY text="・・・・・・・・・・・・・">我らがこの世の正義とならん</RUBY>!!》

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210630a02">
「な――！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆正宗・天牛虫
//◆裂光。なんか英雄爆誕。
	SetVolume("SE*", 100, 0, null);
	CreateSE("SE01","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,750,null,false);
	CreateColorEXadd("絵白", 8000, "#FFFFFF");
	Fade("絵白", 2000, 700, null, true);
	WaitKey(300);
	Fade("絵白", 3000, 1000, null, true);
	WaitKey(1000);
	DeleteStA(0,true);
	CreateColorSPadd("絵白２", 8200, "#FFFFFF");
	CreateTextureSP("絵ＳＴ", 8100, Center, Middle, "cg/st/3d正宗天牛虫_正面.png");
	Fade("絵白２", 1250, 0, null, false);
	DrawDelete("絵白２", 1000, 1000, "zoom_01_00_1", true);

	PrintGO("上背景", 25000);

	OnBG(100,"bg042_江ノ島沿岸_03.jpg");
	FadeBG(0,true);

	OnSE("se戦闘_破壊_爆発02",1000);
	OnSE("se戦闘_動作_空上昇01",1000);

	DrawDelete("上背景", 300, 1000, "slide_02_01_0", true);



	SetFwC("cg/fw/fw雪車町_満足.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210640a12">
「へ、へ、へ……！」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210650a12">
「行けェ、嬢……
　<RUBY text="・・">正義</RUBY>をやってこい!!」

{	FwC("cg/fw/fw雪車町_嘲笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0210660a12">
「ひぃひひひヒヒヒヒヒヒ……
　ヘェアハハハははははははははははは!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}


..//ジャンプ指定？
//次ファイル　"ma04_022.nss"？　or　●１８？　要奈良原確認
//嶋：●１８に合流で設定



//――――――――――――――――――――――――――――――
.//●１８

//◆片瀬
//◆※江ノ島がぶち当たったという設定なので、江ノ島
//◆画像のアップで代用可？
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg040_江ノ島全景_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm16",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　片瀬海岸――いや元海岸と呼ぶべきか――は混乱の
只中にあった。
　江ノ島が<RUBY text="・・・・・">飛んできた</RUBY>とあっては、温かな布団の中で
安眠を貪っていられようはずもない。

　津波、地震の被害こそ（島一つが激突したにしては）
奇妙にもさしたるものではなかったものの……それは
かえって<RUBY text="・・・・・・">現実の非現実</RUBY>ぶりを強調し、人々に理解不能
の恐怖を与えずにはおかなかった。

　急報を受けて出動した警官隊とて、それと無縁では
いられない。
　混乱を鎮めるどころか、自分たちの統率を保つのが
やっとという有様だった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st署長_通常_制服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw署長_冷厳.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0210670a11">
「……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　あてにならぬ部下をどうにか取りまとめ、彼、菊池
明堯――鎌倉警察署長が島と片瀬の接点に到達した時、
しかし彼を出迎えたのは、事態の解決に至る手掛かり
ではなかった。

　新たな災厄の前触れだった。
　――重々しくも慌しい機械音。意味を為さない叫声。

　戦場経験を有する署長は即座に知る。
　軍だ。

　それも何らかの理由で統制を失い、完全な暴走状態
に陥った小規模の軍部隊。
　殺し壊し犯す餓狼の群れ。

　小規模といってもその戦力は、片瀬の一帯を焦土と
化して余りあるであろう。
　その前菜に軽武装の警官隊を蹴散らすことも<RUBY text="たやす">容易</RUBY>か
ろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0210680a11">
「<RUBY text="・・・">あいつ</RUBY>か……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　その代名詞を、署長は呻いた。
　
　――<RUBY text="あいつ">銀星号</RUBY>。

　景明を送り込んだ江ノ島で、何がどう推移したのか
はわからない。
　だがどうやら最後には<RUBY text="・・・">当たり</RUBY>を引いたようだ。

　銀星号は顕現し……
　そして、島にいた軍部隊を狂わせたのだろう。

　――今回の件は十中八九、ＧＨＱの罠。
　署長はそう見ていたが、といって銀星号が現れる事
は絶対に無いなどと思い込んではいなかった。

　かくあるも考慮の内ではあった。
　が、何が起ころうと島の中の事で済む――と、そう
踏んでいたのだ。

　市民に害が及ぶことはなかろうと。
　……甘かった。

　江ノ島と片瀬海岸が隣接するなど、予測できた筈も
ないが――
　そのような狂変が情勢を根底から覆す可能性も有り
得るとは、考えておいて然るべきであった。

　幾度も景明の報告を聞き、銀星号の尋常ならざるを
彼に次ぐほどに知る身であったのだから！
　拳が悔恨に震える。しかしもう遅い。

　署長は見た。
　背後でざわめき。彼の部下らも見たのだろう。

　黒々とした、人と車と肉と鉄の渦。
　不揃いに吠え、ばらばらに駆け、だが一塊となって
突き進む。

　あたかも<RUBY text="ジャガノート">祝福の戦車</RUBY>。
　人々を踏み殺して極楽へ送る神の輿のように、殺戮
を喜び踊りながら、それは片瀬へ向かって来る。

　署長は部下に迎撃隊形を指示した。
　その効果の程を理解しながら。

　どう足掻こうと、防ぎ止めることはできない。
　おそらく、千の死者を九百に減らすくらいが限度。

　焼け石に水だ。
　しかし液体窒素の備えを怠ったのは彼だった。

　浮き足立つ部下を抑えつつ、鎌倉署長は恥を呑み、
覚悟を決めた。
　己の無能によって千の人間を殺す、その覚悟を。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0210690a11">
「銃隊、構え――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01a","se戦闘_銃器_複数構える01");
	CreateSE("SE01b","se戦闘_銃器_複数構える01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Wait(100);
	MusicStart("SE01b",0,1000,0,800,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　そして開始する。
　ほんの一部の住民にこの夜から生きて脱する幸運を
与えるための、誰にも認められず誰にも感謝されない
であろう、ちっぽけな<RUBY text="たたかい">戦争</RUBY>を。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


..//◆一条死亡の場合

...//if_Start

if($Ichizyou_Dead){
	SetFwC("cg/fw/fw署長_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0210700a11">
「――撃て!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばんばーん。
//◆ぎゃおー。暴走軍隊突撃
//◆ブラックアウト

	CreateSE("SE01a","se戦闘_銃器_機関銃乱射01");
	CreateSE("SE01b","se戦闘_銃器_機関銃乱射01");
	MusicStart("SE01a",0,1000,0,1000,null,true);
	Wait(100);
	MusicStart("SE01b",0,1000,0,800,null,true);

//プロセスの定義
	CreateColorSP("絵フラ", 7950, "#FFFFFF");
	CreateProcess("プロフラ", 7900, 0, 0, "GunFlash");
	SetAlias("プロフラ","プロフラ");

//プロセススタート
	Request("プロフラ", Start);

	WaitKey(1000);
	SetVolume("SE*", 3500, 0, null);
	CreateColorEX("絵暗転", 8000, "#000000");
	Fade("絵暗転", 3000, 1000, null, true);
	WaitPlay("SE01a", null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　……この夜、片瀬の死者は九二六名であった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	Delete("プロ*");
	ClearWaitAll(2000, 2000);

..//ジャンプ指定
//次ファイル　"ma04_022.nss"

}else{
...//else_Start

..//◆一条生存の場合

	SetFwC("cg/fw/fw署長_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0210710a11">
「撃――」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆斬撃斬撃斬撃
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01a","se戦闘_攻撃_刀振る02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateColorSP("絵白", 6000, "#FFFFFF");
	CreateColorSP("絵黒", 5900, "#000000");
	CreateTextureSP("絵ＥＦ３", 5900, Center, Middle, "cg/ef/ef014_汎用横軌道.jpg");
	CreateTextureSP("絵ＥＦ２", 5900, Center, Middle, "cg/ef/ef013_汎用斜め軌道.jpg");
	CreateTextureSP("絵ＥＦ１", 5900, Center, Middle, "cg/ef/ef008_汎用上下軌道.jpg");
	Shake("絵ＥＦ１", 1000, 0, 10, 0, 0, 1000, null, false);
	Fade("絵白", 0, 0, null, true);
	Wait(60);

	CreateSE("SE01b","se戦闘_攻撃_刀振る01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Fade("絵白", 0, 1000, null, true);
	Delete("絵ＥＦ１");
	Shake("絵ＥＦ２", 1000, 0, 10, 0, 0, 1000, null, false);
	Fade("絵白", 0, 0, null, true);
	Wait(60);

	CreateSE("SE01c","se戦闘_攻撃_刀振る03");
	MusicStart("SE01c",0,1000,0,1000,null,false);
	Fade("絵白", 0, 1000, null, true);
	Delete("絵ＥＦ２");
	Shake("絵ＥＦ３", 1000, 0, 10, 0, 0, 1000, null, false);
	Fade("絵白", 0, 0, null, true);
	Wait(60);

	CreateSE("SE01d","se戦闘_攻撃_刀衝突01");
	MusicStart("SE01d",0,1000,0,1250,null,false);
	Fade("絵白", 0, 1000, null, true);
	Delete("絵ＥＦ３");
	Delete("絵黒");
	FadeDelete("絵白", 600, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　濃藍色の光条が、幾筋――
　夜陰を薙ぎ払った。

{	OnSE("se戦闘_破壊_建物01",1000);}
　途端、先頭を突き進んでいた車両が数台、<RUBY text="・・">沈む</RUBY>。
　<RUBY text="キャタピラ">履帯</RUBY>を、車輪を断ち切られて。

　無用の長物と化した兵器に行く手を阻まれ、後続の
兵士が怒りの絶叫を上げる。
　そこにも、<RUBY text="あお">藍</RUBY>の閃光は疾った。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆斬撃斬撃
	CreateSE("SE01a","se戦闘_攻撃_刀振る01");
	MusicStart("SE01a",0,1000,0,1100,null,false);
	CreateColorSP("絵白", 6000, "#FFFFFF");
	CreateColorSP("絵黒", 5900, "#000000");
	CreateTextureSP("絵ＥＦ２", 5900, Center, Middle, "cg/ef/ef008_汎用上下軌道.jpg");
	CreateTextureSP("絵ＥＦ１", 5900, Center, Middle, "cg/ef/ef012_汎用斜め軌道.jpg");
	Shake("絵ＥＦ１", 1000, 0, 10, 0, 0, 1000, null, false);
	Fade("絵白", 0, 0, null, true);
	Wait(60);

	CreateSE("SE01c","se戦闘_攻撃_刀振る03");
	MusicStart("SE01c",0,1000,0,900,null,false);
	Fade("絵白", 0, 1000, null, true);
	Delete("絵ＥＦ１");
	Shake("絵ＥＦ２", 1000, 0, 10, 0, 0, 1000, null, false);
	Fade("絵白", 0, 0, null, true);
	Wait(60);

	CreateSE("SE01d","se戦闘_攻撃_刀衝突01");
	MusicStart("SE01d",0,1000,0,850,null,false);
	Fade("絵白", 0, 1000, null, true);
	Delete("絵ＥＦ*");
	Delete("絵黒");
	FadeDelete("絵白", 600, false);
	OnSE("se戦闘_破壊_金属",1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　兵士の持つ銃が次々と破壊される。
　弾倉を、弾帯を正確に打ち抜かれ、人肉を穿つ力を
失う。

{	CreateSE("SEL01","se背景_ガヤ_ざわめく01_L");
	MusicStart("SEL01",2000,800,0,1000,null,true);}
　兵士は吠えた。憤怒を吠えた。
　獲物へ突き立てるべき牙を奪われた獣の怒り。

　戦車から飛び降りた兵もそれに唱和する。
　だが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 300, 0, null);
	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210720a02">
「黙れ。
　次は殺す」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景100", 8000, Center, InBottom, "cg/bg/resize/bg001_空a_03.jpg");
	Move("絵背景100", 30000, @0, InTop, DxlAuto, false);
	Fade("絵背景100", 3000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　上天から声が降った、その刹那。
　獣の群れは一様に、押し黙った。

　人としての知性を喪失し、破壊の欲望に酔うばかり
であった彼らが……
　理解もできない命令に従う。

　それは、何故か。
　
　――畏れだ。

　人食いの虎が聖人の前で<RUBY text="こうべ">頭</RUBY>を垂れるように。
　一角獣が純潔の乙女の膝で眠るように。
　
　<RUBY text="カムイ">神威</RUBY>は智恵なき獣を屈服せしめる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_冷厳.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0210730a11">
「……あ」

{	FwC("cg/fw/fw署長_警戒.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0210740a11">
「……あれ、は……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm11",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　その色。
　その<RUBY text="かたち">形状</RUBY>。

　署長には覚えがあった。
　八幡宮秘蔵の文書類の中に、見たことがある。

　古い絵巻物――
　そこに描かれていた姿。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0210750a11">
「あれは」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　――天下第一等。
　唐国の干将莫耶、吹毛太阿も之に及ばず。

　不動の利甲に異ならざる也――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆正宗登場演出開始
	PrintGO("上背景", 25000);
	CreateColorSP("絵白", 5000, "#FFFFFF");
	CreateColorSP("絵黒", 50, "#000000");
	FadeDelete("上背景", 0, true);
	Fade("絵白", 600, 0, null, true);

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210760a02">
　　　　「世に鬼あれば鬼を断つ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆テロップ「相州五郎」でかっと。
//あきゅん「SE：要望：文字を出すときの音詳細は自分に」
	CreateSE("SE01","se特殊_雰囲気_鎧登場演01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSP("絵相州", 100, Center, Middle, "cg/sys/Telop/tp_正宗登場01-相州.png");
	SetBlur("絵相州", true, 3, 500, 100, false);
	Zoom("絵相州", 0, 10000, 10000, null, true);
	Zoom("絵相州", 300, 1000, 1000, null, false);
	Move("絵相州", 300, @280, @0, nulll, true);

	Wait(300);

	CreateSE("SE01b","se特殊_雰囲気_鎧登場演01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateTextureSP("絵五郎", 100, Center, Middle, "cg/sys/Telop/tp_正宗登場01-五郎.png");
	SetBlur("絵五郎", true, 3, 500, 100, false);
	Zoom("絵五郎", 0, 10000, 10000, null, true);
	Zoom("絵五郎", 300, 1000, 1000, null, false);
	Move("絵五郎", 300, @-280, @0, null, true);

	WaitKey(1000);

	CreatePlainSP("絵字相州五郎", 200);
	Wait(1);
	Delete("絵相州");
	Delete("絵五郎");
	FadeDelete("絵字相州五郎", 1000, true);

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210770a02">
　　　　「世に悪あれば悪を断つ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆「装甲大義」「FullMetalProvidence」
	CreateSE("SE02","se特殊_雰囲気_鎧登場演01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureSP("絵字装", 100, Center, Middle, "cg/sys/Telop/tp_正宗登場02-装.png");
	SetBlur("絵字装", true, 3, 500, 100, false);
	Zoom("絵字装", 0, 2300, 2300, null, true);
	Zoom("絵字装", 200, 1000, 1000, null, false);
	Move("絵字装", 200, @327, -1, null, true);

	Wait(50);

	CreateSE("SE02b","se特殊_雰囲気_鎧登場演01");
	MusicStart("SE02b",0,1000,0,1000,null,false);
	CreateTextureSP("絵字甲", 100, Center, Middle, "cg/sys/Telop/tp_正宗登場02-甲.png");
	SetBlur("絵字甲", true, 3, 500, 100, false);
	Zoom("絵字甲", 0, 2300, 2300, null, true);
	Zoom("絵字甲", 200, 1000, 1000, null, false);
	Move("絵字甲", 200, @324, @150, null, true);

	Wait(50);

	CreateSE("SE02c","se特殊_雰囲気_鎧登場演01");
	MusicStart("SE02c",0,1000,0,1000,null,false);
	CreateTextureSP("絵字大", 100, Center, Middle, "cg/sys/Telop/tp_正宗登場02-大.png");
	SetBlur("絵字大", true, 3, 500, 100, false);
	Zoom("絵字大", 0, 2300, 2300, null, true);
	Zoom("絵字大", 200, 1000, 1000, null, false);
	Move("絵字大", 200, @-286, -2, null, true);

	Wait(50);

	CreateSE("SE02d","se特殊_雰囲気_鎧登場演01");
	MusicStart("SE02d",0,1000,0,1000,null,false);
	CreateTextureSP("絵字義", 100, Center, Middle, "cg/sys/Telop/tp_正宗登場02-義.png");
	SetBlur("絵字義", true, 3, 500, 100, false);
	Zoom("絵字義", 0, 2300, 2300, null, true);
	Zoom("絵字義", 200, 1000, 1000, null, false);
	Move("絵字義", 200, @-285, @140, null, true);

	WaitKey(300);

	CreatePlainSP("絵装甲大義", 110);
	Delete("絵字*");

	CreateWindow("絵窓右", 120, 512, 0, 512, 576, false);
	SetAlias("絵窓右","絵窓右");
	CreateTextureEX("絵窓右/絵字ＦＰ", 120, Center, Middle, "cg/sys/Telop/tp_正宗登場02-ALL.png");

	CreateWindow("絵窓左", 120, 0, 0, 512, 576, false);
	SetAlias("絵窓左","絵窓左");
	CreateTextureEX("絵窓左/絵字ＦＰ", 120, Center, Middle, "cg/sys/Telop/tp_正宗登場02-ALL.png");

	Wait(1);

	Fade("絵窓右/絵字ＦＰ", 0, 1000, null, true);
	DrawTransition("絵窓右/絵字ＦＰ", 2000, 0, 1000, 100, null, "cg/data/slide_01_00_0.png", true);

	Wait(200);

	Fade("絵窓左/絵字ＦＰ", 0, 1000, null, true);
	DrawTransition("絵窓左/絵字ＦＰ", 2000, 0, 1000, 100, null, "cg/data/slide_01_00_0.png", true);

	WaitKey(1000);

	CreatePlainSP("絵板写", 10000);
	Delete("絵窓*");
	Delete("絵装甲大義");
	FadeDelete("絵板写", 1000, true);

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0210780a02">
　　　　「ツルギの<RUBY text="ことわり">理</RUBY>ここに在り」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆「正宗」
//◆ここで全身像と。バビーン。
//あきゅん「演出：未完成」
	CreateSE("SE03","se特殊_雰囲気_鎧登場演02");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSP("絵字正宗", 100, Center, Middle, "cg/sys/Telop/tp_正宗登場03-正宗.png");
	SetBlur("絵字正宗", true, 3, 500, 100, false);
	Zoom("絵字正宗", 0, 5000, 5000, null, true);
	Rotate("絵字正宗", 200, @0, @0, @1440, null,false);
	Zoom("絵字正宗", 200, 1000, 1000, null, true);
	Wait(100);

	StC(100, @0,@0,"cg/st/3d正宗_立ち_抜刀.png");
	FadeStC(300,false);
	CreateTextureSP("絵字正宗下", 100, Center, Middle, "cg/sys/Telop/tp_正宗登場03-正宗.png");
	Zoom("絵字正宗", 300, 1200, 1200, DxlAuto, false);
	FadeDelete("絵字正宗", 400, true);
	Move("絵字正宗下", 500, @+200, @0, null, true);
	$残時間=RemainTime("SE03");
	WaitKey($残時間);

//◆剣撃一閃。ずがどーん。
	PrintGO("上背景", 25000);
	CreateColorSPadd("絵白", 5000, "#FFFFFF");
	CreateColorSP("絵黒", 100, "#000000");
	Delete("上背景");
	FadeDelete("絵白", 200, true);

	CreateSE("SE01","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE01",0,1000,0,900,null,false);
	SL_down(@0, @0,8000);
	SL_downfade2(10);

	Wait(200);

	CreateSE("SE02","se戦闘_衝撃_衝突01");
	MusicStart("SE02",0,1000,0,1000,null,false);

	Wait(300);

	OnBG(100,"bg040_江ノ島全景_03.jpg");
	FadeBG(0,true);
	CreateTextureSP("絵震", 200, Center, Middle, "cg/bg/bg040_江ノ島全景_03.jpg");
	Shake("絵震", 6000, 0, 10, 0, 0, 1000, DxlAuto, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　……爆雷の如き、その一閃は。
　江ノ島と片瀬を、再び切り離した。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}
...//if_end

}

..//ジャンプ指定
//次ファイル　"ma04_022.nss"



.//プロセス用======================================================

..//ガンフラッシュ
function GunFlash()
{
	while(1)
	{
	Fade("@絵フラ", 0, 750, null, true);
	Wait(60);
	Fade("@絵フラ", 0, 0, null, true);
	Wait(10);
	Fade("@絵フラ", 0, 750, null, true);
	Wait(60);
	Fade("@絵フラ", 0, 0, null, true);
	Wait(10);
	Fade("@絵フラ", 0, 750, null, true);
	Wait(60);
	Fade("@絵フラ", 0, 0, null, true);
	Wait(10);
	Fade("@絵フラ", 0, 750, null, true);
	Wait(60);
	Fade("@絵フラ", 0, 0, null, true);

	$GunTime = Random(5) + 1;
	$GunTime2 = $GunTime * 20;
	Wait(200);
	Wait($GunTime2);

	}
}