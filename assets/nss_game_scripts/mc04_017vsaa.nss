
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_017vsaa.nss_MAIN
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
	#ev186_村正ＶＳ銘伏_l=true;
	#bg090_大鳥邸通路c_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc04_018.nss";

}

scene mc04_017vsaa.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc04_017vsa.nss"

//●下
	PrintBG("上背景", 30000);

	SoundPlay("@mbgm13",0,1000,true);
	CreateTextureSP("絵背景08EX", 6000, -1730, -750, "cg/ev/resize/ev186_村正ＶＳ銘伏_klm.jpg");

	Delete("上背景");

//◆画像を下へスクロール。
	Move("絵背景08EX", 6000, @0, -1620, DxlAuto, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010a]
　敵に気取られぬよう、そっと視線を下へ落とす。
　そこには――俺の求めるものがあった。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	WaitAction("@絵背景08EX", null);
	SetVolume("@mbgm*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010b]
　影!!

　床面に描かれた、黒い人物像。
　廊下の電灯が映し出すそれを足元まで辿ってゆけば、
対敵の立つ位置は赤裸々であった。


</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm12",0,1000,true);

	PrintGO("上背景", 20000);

	CreateTextureSP("絵演", 5000, Center, InBottom, "cg/ev/ev186_村正ＶＳ銘伏_k.jpg");

	FadeDelete("上背景", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
　獅子吼は気付いていない。

　初歩的な失態、とは思わなかった。
　本来、有り得ない事なのだから――夜闇の懐で刃を
振るう暗殺者が、地面に影を落とすなど。

　本分に背いて光明の下へ出てしまったがための欠陥。
　彼はこれまで、その点に気付く機会を持たなかった
のだろう。

　俺が得た唯一最大の<RUBY text="ラック">奇貨</RUBY>であった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw獅子吼_影人.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/017vs0650a06">
「――――」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0660a00">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　それを活かし切る。

　間合の接触――――<k>
　その瞬機に、

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆獅子吼接近
	CreateTextureEX("絵背景09", 5800, @0, InBottom, "cg/ev/ev186_村正ＶＳ銘伏_l.jpg");
	Fade("絵背景09", 1000, 1000, null, true);
	Delete("絵演");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　斬る!!

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆獅子吼斬撃
//◆電磁抜刀
//◆激突ぞごーん。
	CreateColorSP("色黒", 20000, "#000000");
	CreateColorSP("色黒地", 10, "#000000");

	Delete("絵*");

	SL_rightdown(@0, @0,1500);

	CreateTextureEXadd("絵演上", 8100, Center, Middle, "cg/ef/ef030_汎用電磁抜刀a.jpg");
	CreateTextureEX("絵演", 8000, Center, Middle, "cg/ef/ef030_汎用電磁抜刀a.jpg");
	Zoom("絵演上", 0, 8000, 8000, null, false);

	Delete("色黒");

	CreateSE("SE01","se戦闘_攻撃_野太刀振る01");
	CreateSE("SE01a","se特殊_電撃_放電01");

	MusicStart("SE01",0,1000,0,1000,null,false);
	SL_rightdownfade(0);

	Wait(150);

	MusicStart("SE01a",0,1000,0,1000,null,false);
	Fade("絵演上", 0, 450, null, true);
	Fade("絵演", 0, 1000, null, true);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演上", 500, 0, 30, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	CreateColorEXadd("絵色白", 29000, "#FFFFFF");
	Fade("絵色白", 150, 1000, null, true);

	Wait(600);

	SetVolume("@mbgm*", 2500, 0, null);


//◆闇
	PrintGO("上背景", 30000);
	CreateColorSP("絵色黒", 5000, "#000000");

	Delete("@slash*");
	Delete("@Slash*");

	FadeDelete("上背景", 2000, true);

	WaitPlay("@mbgm*", null);
	WaitPlay("SE*", null);


	Wait(2000);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/017vs0670a01">
《……御堂！》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/017vs0680a01">
《御堂、ねえ》

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0690a00">
「う……む」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆どが。瓦礫を押し退けて立つ
	OnSE("se人体_動作_瓦礫を押しのける", 1000);

	OnBG(100, "bg090_大鳥邸通路c_03.jpg");
	FadeBG(0, true);

	CreatePlainEX("絵板写", 110);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 800, 0, 30, 0, 0, 1000, Dxl2, false);
	FadeDelete("絵色黒", 1000, true);

	OnSE("se特殊_鎧_駆動音01", 1000);

	StR(1000, @-20, @50, "cg/st/3d村正標準_立ち_通常.png");
	Move("@StR*", 600, @20, @-50, DxlAuto, false);
	FadeStR(600, true);

	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　身体に<RUBY text="の">圧</RUBY>し掛かっていたものを押し退けながらに、
立つ。
　見れば、壁か何かの残骸だった。

　周囲の様相の変化を確認する。
　……どうやら俺は、壁を幾枚か突き破りつつ結構な
距離を吹き飛ばされたらしい。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm16", 0, 1000, true);


	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0700a00">
「相打ちだったか……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/017vs0710a01">
《ええ。
　こっちも重いのを一つ貰った》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　背骨が<RUBY text="・・・・">きりきり</RUBY>と痛むのはその所為だろう。
　骨格が歪むほどの打撃だったようだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/017vs0720a01">
《抜刀を一瞬早く打ち込めたのが幸いね。
　それでいくらか威力を殺せたんでしょう》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0730a00">
「敵騎は？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/017vs0740a01">
《この近くには反応なし。
　あちらも豪快に飛んでいったみたいだけど》


//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/017vs0750a01">
《探す？》


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0760a00">
「真逆」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　即答して首を左右する。
　あんな難敵との戦いを、わざわざ求める嗜好は無い。

　今のうちに離脱する一手だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0770a00">
「村正。
　先刻の位置と現在位置、双方を確認しろ。
階段への道筋を調べ直す」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//嶋：修正（ことしなくて）【090930】
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/017vs0780a01">
《そんなことをしなくても大丈夫。
　……後ろを見て》


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0790a00">
「ん？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);

	CreateColorSP("絵色黒", 19000, "#000000");
	DrawTransition("絵色黒", 600, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　言われるまま、振り返る。

　……地下へ延びる階段が、そこにあった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"mc04_018.nss"