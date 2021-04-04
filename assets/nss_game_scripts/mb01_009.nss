//<continuation number="30">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb01_009.nss_MAIN
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
	#bg013_鎌倉俯瞰a_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb01_010.nss";

}

scene mb01_009.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb01_008.nss"


//◆鎌倉市
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg013_鎌倉俯瞰a_02.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/0090010a01">
《……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　――武者と劒冑は不離一体。

　遠く隔てられていようとも。
　同じ物を見、同じ声を聞くことが可能である。

　故に、彼女も聴いた。
　その宣告を。

　憎悪を。
　殺意を。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/0090020a01">
《…………》


//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/0090030a01">
《……御堂……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正と正宗
	PrintGO("上背景", 30000);
	CreateColorSP("絵上暗転", 5000, "#000000");
	CreateColorSP("絵暗転", 100, "#000000");
	StL(1000, @0, @150,"cg/st/3d正宗天牛虫_俯瞰.png");
	Rotate("@StL*", 0, @0, @180, @0, null,true);
	StR(1000, @150, @0,"cg/st/3d村正蜘蛛_俯瞰.png");
	FadeStA(0,true);
	FadeDelete("上背景", 1500, true);
	WaitKey(1000);
	FadeDelete("絵上暗転", 1500, true);

	SoundPlay("@mbgm19",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　俗説に曰く……

　大和に冠たる二人の劒冑鍛冶、村正と正宗は同じ師
のもとで業を窮めた。
　どちらも出色の才を示し、いずれ希代の名物を打ち
上げるだろうと嘱望されたが、性質は全く異なった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵黒幕", 1500, "#000000");
	CreateTextureEX("絵演村正", 2000, Center, Middle, "cg/st/resize/3d村正蜘蛛_俯瞰m.png");

	Fade("絵黒幕", 500, 750, null, true);

	Move("絵演村正", 0, @254, @60, null, true);
	Move("絵演村正", 5000, @0, @-120, null, false);
	Fade("絵演村正", 1000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041a]
　村正は人品卑しく、己の業への驕り深く、師に対し
てさえ時に傲慢な振舞いをした。
　また劒冑は殺人の道具としか考えず、少しでも硬く、
少しでも強くすることにのみ執心した。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	WaitFade("絵演村正", null);
	FadeDelete("絵演村正", 500, true);

	CreateTextureEX("絵演正宗", 2000, Center, Middle, "cg/st/resize/3d正宗天牛虫_俯瞰ex.png");
	Request("絵演正宗", Smoothing);
	Zoom("絵演正宗", 0, 600, 600, null, true);
	Rotate("絵演正宗", 0, @0, @180, @0, null,true);

	Fade("絵黒幕", 500, 750, null, true);

	Move("絵演正宗", 0, @-254, @-360, null, true);
	Move("絵演正宗", 5000, @0, @120, null, false);
	Fade("絵演正宗", 1000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041b]
　一方正宗は生来の気品があり、人柄は穏やかで、誰
が相手でも態度は丁重であった。
　また、劒冑とは正しき武の象徴であり、強いのみな
らず美しさをも備えていなくてはならぬと考えていた。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	WaitFade("絵演正宗", null);
	FadeDelete("絵演正宗", 500, true);

	FadeDelete("絵黒幕", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041c]
　ある日、師は二人の弟子に刀を打たせた。
　そして、彼らが刀を打ち上げると、それを川へ突き
立てるよう命じた。

　まず、村正が刀を刺した。
　そうして待っていると、やがて落葉が流れてきて、
刃先に触れた。

　あろうことか。
　その刹那、ただ立っているだけの刀に当たった葉は、
音もなく二つに切り裂かれて、下流へと漂っていった。

　見守っていた弟子達は驚嘆し、村正は刀の恐るべき
切れ味を誇って反り返った。
　師は何も言わず、続いて正宗に試させた。

　しばらく待つと、やがて同じように、川面を落葉が
流れてきた。
　人々は、正宗の刀も村正に匹敵する刃味を見せよう
かと、固唾を呑んで見守った。

　しかし、葉は刀に近付くと、まるで逃げるかの如く
向きを変え、傷つかずに漂い去っていった。
　それは幾度繰り返しても同じであった。正宗の刀は
落葉を一枚たりと斬ることがなかった。

　師は告げた。

　――刃とは、斬るべきを自ずと斬り、斬らぬべきは
自ずと斬らぬが最上である。
　只の落葉を斬った村正は、葉を一枚も斬らなかった
正宗の足元にも及ばぬと知るが良い――

　その言の通り。
　正宗は天下一の名甲と尊ばれ、他方村正は呪われし
妖甲と忌み嫌われ、後の世の評価に明暗を分けたので
あった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 100, "#000000");
	FadeDelete("上背景", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　
　…………俗説である。

　村正と正宗が同一の師を戴いた事実はない。
　両者の登場年代には隔たりがある。

　これは後世の数寄者が創作した物語に過ぎない。
　
　だが――村正と正宗、両者の真実の一端を伝えてい
ないとは、おそらく言い得ぬであろう。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb01_010.nss"