//<continuation number="480">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb01_012.nss_MAIN
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
	#bg022_山林a_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	#av_正宗=true;

	$PreGameName = $GameName;

	$GameName = "mb01_013vs.nss";

}

scene mb01_012.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mb01_011.nss"

//◆円往寺
//◆円往寺裏（林）
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg022_山林a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	CreateEffect("絵効果雨", 9000, Center, Middle, 512, 288, "Rain");
	SetAlias("絵効果雨","絵効果雨");
	Move("絵効果雨", 0, 256, 144, null, true);
	Zoom("絵効果雨", 0, 2000, 2000, null, true);
	Fade("絵効果雨", 0, 300, null, true);

	CreateSE("SEL01","se自然_水_雨音02_L");
	FadeBG(0,true);
	Delete("上背景");
	MusicStart("SEL01",2000,500,0,1000,null,true);

	FadeDelete("絵暗転", 1500, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　林の中の空地――
　一条は既に装甲を遂げて、俺を待っていた。

　深海の底を、空の果てを想起させる甲鉄。
　錯覚であろうか……心なきはずの雨粒が、その色を
汚す行為に畏怖し、触れてはならじと避けているよう
に見える。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆正宗
	#av_正宗=true;

	StC(1000, @-30, @0,"cg/st/3d正宗_立ち_通常.png");
	CreateSE("SE01","se人体_足音_鎧歩く03_L");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(1000);

	SetVolume("SE01", 500, 0, null);
	Move("@StC*", 500, @30, @0, DxlAuto, false);
	FadeStC(500,true);

	SetVolume("SEL01", 5000, 0, null);

	SoundPlay("@mbgm17",2000,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　相州五郎入道正宗。
　<RUBY text="カムイ">神威</RUBY>の二字がこれほど相応しい劒冑も他に無かろう。

　あたかも<RUBY text="ヤマ">閻魔天</RUBY>の<RUBY text="アヴァタラ">化身</RUBY>。
　ここが円往寺の裏でなくとも、そう思えた筈だ。

　彼女は許されざる悪を裁くために、そこへ立つのだ
から。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/0120010a01">
《……相州正宗！》


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/0120020b40">
《おのれが、右衛門尉を称する村正か》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　口火を切ったのは、仕手ではなく劒冑だった。
　空気を介さぬ金打声が放たれ、互いの甲鉄面を震撼
させる。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/0120030b40">
《クハァァァァァ……
　なんと、<RUBY text="けが">穢</RUBY>らわしき甲鉄であることか》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/0120040b40">
《噂に違わぬ。否、噂にも優る。
　肥溜めの底で腐った汚泥よりも醜悪!!》


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/0120050a01">
《……御挨拶ね。
　名高い先達に敬意を表したかった、こちら
の心情も汲んで欲しいものだけれど》


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/0120060b40">
《要らぬわ。
　呪われし村正……七百年の無為の日々の中、
おのれの名を幾度も聞いたぞ》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/0120070b40">
《流血を求める劒冑。
　人心を狂わせ無為の争いに駆り立てる邪甲》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/0120080b40">
《その<RUBY text="はだ">甲鉄</RUBY>に染み付いた血臭を嗅げば……
　成程、風聞は全て事実であったと知れる》


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/0120090a01">
《……》


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/0120100b40">
《畿内の南北に帝が立ち、大和全土が混沌の
渦中に争い合ったというあの時代……
　もし吾が主を得ておれば、おのれに悪名を
立てる暇など与えず、葬ってやれたものを！》


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/0120110a01">
《……ッ!!》


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/0120120b40">
《そうできなんだのが今にして惜しいわ。
　他の劒冑どもは何をしておったか。おのれ
如きに跳梁を許すとは、不甲斐ないにも程が
あろうよ――》


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/0120130a01">
《吼えるな、名甲!!》


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/0120140b40">
《うぬ……!?》


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/0120150a01">
《貴方のような劒冑が世に出ていれば、何だ
という？
　真っ正直で世間知らずの箱入り劒冑が！》


//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/0120160a01">
《何もできはしなかった！
　七百年、安穏と<RUBY text="たからぐら">宝蔵</RUBY>の中で眠り、何の責任
もない傍観者でいられた幸運を、もっと噛み
締めることね……》


//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/0120170a01">
《天下一名物正宗！
　確かに貴方の甲鉄は美しい――一滴の血も
浴びていないのだもの。新品まっさらの美し
さよ！》


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/0120180b40">
《……抜かしおったな。
　果たすべき使命を持ちながら、何も為せず
に眠り続けねばならなかった我が七百年余の
苦衷――おのれにはわかるまい！》


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/0120190a01">
《わからないでしょうね。
　貴方に、あの時代を生きて戦っていた人々
の苦しみがわからないように！》


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/0120200b40">
《その賢しら口、封じてくれる……！
　御堂！　いざ、参らん！》


{	FwR("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0120210a02">
「……」


</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	DeleteStC(300,true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/0120220a01">
《……御堂！
　こちらも装甲を！》


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0120230a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st景明_装甲_私服a1.png");
	FadeStR(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0065]
　蜘蛛の声に打たれて、片手を持ち上げ。
　前方に佇む武者の、眼窩を覗く。

　濃藍の武者は、劒冑の訴えを聞いているのか……い
ないのか。
　その場に不動のまま、同様の眼差しをこちらへ注い
でいる。

　何を窺おうというのか。
　この四肢に染み付いた罪科を、改めて計ろうとでも
するのか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(1000, @-50, @0,"cg/st/3d正宗_立ち_通常.png");
	FadeStL(300,false);

	SetFwC("cg/fw/fw一条_憎悪a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0120240a02">
「湊斗景明」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0120250a00">
「……」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0120260a02">
「殺人者」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0120270a00">
「……」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0120280a02">
「呪われた悪鬼」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0120290a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　一条が陰々と呼ばう。
　俺は黙して聴く。

　それは単なる事実の羅列。
　異論も感想も差し挟む余地はない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_憎悪a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0120300a02">
「殺す……ぞ」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0120310a00">
「……」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0120320a02">
「できないとでも、思ってるのか」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0120330a00">
「いいや」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0120340a02">
「……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0120350a00">
「お前ならできる。
　揺るがぬ信念をもって、悪を裁くことが」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0120360a02">
「……なら、どうして黙って立ってる。
　殺されてもいいってのか」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0120370a00">
「……いいや」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0120380a00">
「俺は……死ぬわけには、ゆかぬ」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0120390a02">
「……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/0120400a01">
《御堂》


{	SetVolume("@mbgm*", 2000, 0, null);
	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0120410a00">
「鬼に逢うては鬼を斬る。
　仏に逢うては仏を斬る」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 1100);
	StR(1000, @0, @0,"cg/st/st景明_装甲_私服b1.png");
	FadeStR(0,false);
	Wait(10);
	FadeDelete("絵板写", 300, true);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0099]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0120420a00">
「ツルギの理ここに在り」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ガヒョーン。変身。
	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 25000, "#FFFFFF");

	Fade("絵フラ", 600, 1000, null, true);

	Zoom("絵効果雨", 0, 3000, 3000, null, true);
	Fade("絵効果雨", 0, 200, null, true);

	CreateWindow("絵演窓右", 4000, 512, Middle, 512, 576, false);
	SetAlias("絵演窓右","絵演窓右");

	CreateTextureSP("絵演窓右/絵演右", 4100, -835, -120, "cg/bg/resize/bg022_山林a_01.jpg");
	CreateTextureSP("絵演窓右/絵背景100", 4200, Center, Middle, "cg/st/resize/3d村正標準_立ち_通常l.png");
	Move("絵演窓右/絵背景100", 0, -313, -405, null, true);

	CreateTextureSP("絵背景200", 3100, Center, Middle, "cg/st/resize/3d正宗_立ち_通常ｌ.png");
	Move("絵背景200", 0, -1537, -610, null, true);
	CreateTextureSP("絵演左", 3000, -385, -300, "cg/bg/resize/bg022_山林a_01.jpg");

	Move("絵背景200", 3000, -1537, -550, Dxl2, false);
	Move("絵演窓右/絵背景100", 3000, -313, -465, Dxl2, false);
	Move("絵演窓右/絵演右", 3000, @0, @60, Dxl2, false);
	Move("絵演左", 3000, @0, @-60, Dxl2, false);


//	StR(1000, @50, @0,"cg/st/3d村正標準_立ち_通常.png");
//	FadeStR(0,true);

	FadeDelete("絵フラ", 1000, true);

	Wait(300);

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0120430a00">
「……村正。
　参る」


{	FwC("cg/fw/fw正宗_通常.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0120440a02">
「……それだけか」


//【一条】
<voice name="一条" class="一条" src="voice/mb01/0120450a02">
「それだけ、なのかよ」


{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0120460a00">
「……とは？」


{	FwC("cg/fw/fw正宗_通常.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0120470a02">
「……ああ、そうかよ。
　わかったよ！」


//【一条】
<voice name="一条" class="一条" src="voice/mb01/0120480a02">
「悪鬼……村正！
　てめぇを殺す!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEXadd("絵暗転", 18000, "WHITE");
	Fade("絵暗転", 150, 1000, null, true);
	ClearFadeAll(300, true);



}

..//ジャンプ指定
//次ファイル　"mb01_013vs.nss"