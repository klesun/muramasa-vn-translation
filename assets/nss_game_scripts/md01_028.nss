//<continuation number="250">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_028.nss_MAIN
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
	#ev953_護氏装甲_a=true;
	#ev953_護氏装甲_b=true;
	#bg096_八幡宮地下岩窟_01a=true;
	#bg032_八幡宮奥舞殿内a_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	#av_髭切=true;

	$PreGameName = $GameName;

	$GameName = "md01_029vs.nss";

}

scene md01_028.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_027.nss"

//◆鬚切・馬
	PrintBG("上背景", 30000);
	CreateColorSPadd("絵白転", 15000, "#FFFFFF");
	OnBG(100,"bg096_八幡宮地下岩窟_01a.jpg");
	CreateSE("SE01","se戦闘_動作_鎧_着地02");
	StC(1000, @0, @0,"cg/st/st護氏_通常_私服.png");
	FadeStA(0,true);
	FadeBG(0,true);
	Delete("上背景");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("絵白転", 1000, true);

	SetNwL("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0280010a01">
「!!」

{	FwL("cg/fw/fw護氏_怒り.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0280020a05">
「源氏の至宝を雑兵の血で汚すは心苦しいが。
　予の首を狙った糞度胸に免じて、水も溜ま
らぬ刃味というものを味わわせてやるわ」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆護氏＆鬚切、装甲アクション
	CreateSE("SE00","se人体_動作_跳躍03");
	CreateSE("SE00a","se特殊_鎧_装着04");
	MusicStart("SE00",0,1000,0,1000,null,false);
	MusicStart("SE00a",0,1000,0,1000,null,false);
	CreateTextureEXadd("絵ＥＶ上", 4110, Center, InBottom, "cg/ev/resize/ev953_護氏装甲_al.jpg");
	CreateTextureEX("絵ＥＶ", 4100, Center, InBottom, "cg/ev/resize/ev953_護氏装甲_al.jpg");
	SetVertex("絵ＥＶ*", center, bottom);
	Request("絵ＥＶ*", Smoothing);
	SetBlur("絵ＥＶ上", true, 2, 500, 180, false);

	Zoom("絵ＥＶ*", 600, 510, 510, Dxl3, false);
	Fade("絵ＥＶ*", 300, 1000, null, true);
	FadeDelete("絵ＥＶ上", 300, true);

	SetFwL("cg/fw/fw護氏_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0280030a05">
「帰命頂礼八幡大菩薩！
　我、<RUBY text="みうつわ">御器</RUBY>と罷り成る!!」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆装甲
//◆武者・鬚切
	#av_髭切=true;

	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);

	CreateTextureSP("絵ＥＶ", 4100, Center, Middle, "cg/ev/ev953_護氏装甲_b.jpg");

	FadeDelete("絵フラ", 1000, true);

	SetNwL("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0280040a01">
「御堂！」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　……逃げ道はない。
　俺個人にはともかく、舞殿宮には。

　既にこちらの正体は割れているのだ。
　大将領を生かして帰せば、親王は罪を問われ、無為
の死を遂げるだろう。

　最早これまで。
　覚悟を決めるしかない！

　足利護氏を……斬る!!
　
　そして――――

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆回想
	SetVolume("SE*", 100, 0, null);
	OnSE("se擬音_回想_フラッシュバック01",1000);
	CreateColorEXadd("絵白転", 10000, "#FFFFFF");
	Fade("絵白転", 600, 1000, null, true);

	CreateTextureSP("絵回想", 8000, Center, Middle, "cg/bg/bg032_八幡宮奥舞殿内a_01.jpg");
	CreateColorEXmul("絵回想幕", 8100, "#847000");
	Fade("絵回想幕", 0, 400, null, true);

	Fade("絵白転", 300, 100, null, true);

	SetFwC("cg/fw/fw署長_冷厳.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【署長】
<voice name="署長" class="署長" src="voice/md01/0280050a11">
「その時は私を斬れ」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0280060a11">
「いいな」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	Fade("絵白転", 400, 1000, null, true);
	Delete("絵回想*");
	FadeDelete("絵白転", 600, true);

	SetNwL("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0280070a00">
「――――村正ァッ!!」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆ばっ。装束脱いだ。
//◆景明と村正。以降、顔グラ使う
	CreateSE("SE01","se人体_動作_外套纏う01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("絵ＥＶ*");
	DeleteStA(0,true);
	DrawDelete("黒幕１", 150, 100, "slide_01_03_1", true);

	StR(1000, @30, @0,"cg/st/st景明_通常_私服.png");
	StL(1000, @30, @0,"cg/st/st村正_通常_私服.png");
	Move("@StR*", 300, @-30, @0, null, false);
	FadeStR(300,false);

	WaitKey(200);

	Move("@StL*", 300, @-30, @0, null, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw髭切_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0280080a05">
「そちらは蝦夷の女であったか……。
　うまく装束で隠していたな」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0280090a05">
「しかし、姿を見せたところで何ができる？」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0280100a01">
「決まってるでしょ」

{	FwC("cg/fw/fw村正_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0280110a01">
「その大名物――
　鬚切の劒冑と、太刀打するのよ」

{	FwC("cg/fw/fw髭切_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0280120a05">
「……」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0280130a00">
「……」

{	FwC("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0280140a01">
「……ちょっと、御堂。
　あちらはともかく、どうして貴方までなに
言ってるんだこの女みたいな顔するの！」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0280150a00">
「す、済まん。
　お前のその格好を見ていると、未だにピン
と来ないものが――」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0280160a01">
「わけのわからないこと言ってないで。
　さっ、<RUBY text="カマエ">装甲ノ構</RUBY>を！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正蝦夷→蜘蛛→分解？
	SoundPlay("@mbgm04",0,1000,true);
	CreateSE("SE02","se特殊_鎧_装着04");
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	StL(1000, @0, @160,"cg/st/3d村正蜘蛛_正面.png");
	FadeStL(0,true);
	FadeDelete("絵フラ", 300, true);

	SetFwC("cg/fw/fw髭切_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0280170a05">
「な……何ィ!?」

{	CreateSE("SE02b","se特殊_鎧_装着03");
	MusicStart("SE02b",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 100, 1000, null, true);
	DeleteStL(0,true);
	FadeDelete("絵フラ", 300, false);}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0280180a05">
「劒冑だと!?
　貴様――――武者かッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆装甲アクション１
	CreatePlainSP("絵演板", 3000);
	StR(1000, @0, @0,"cg/st/st景明_装甲_私服a.png");
	FadeStR(0,true);
	FadeDelete("絵演板", 300, true);

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0280190a00">
「鬼に逢うては鬼を斬る。
　仏に逢うては仏を斬る」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆装甲アクション２
	CreatePlainSP("絵演板", 3000);
	StR(1000, @0, @0,"cg/st/st景明_装甲_私服b.png");
	FadeStR(0,true);
	FadeDelete("絵演板", 300, true);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0280200a00">
「ツルギの理ここに在り！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆装甲ガキーン
	CreateSE("SE01","se特殊_鎧_装着02");
	MusicStart("SE01",0,1000,0,850,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	StR(1000, @0, @0,"cg/st/3d村正標準_立ち_通常.png");
	FadeStA(0,true);
	Wait(300);
	FadeDelete("絵フラ", 600, true);

	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0280210a00">
「………………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0280220a01">
《なに？》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0280230a00">
「いや……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　奇妙な安堵を得て、苦笑する。

　装甲してみてわかった。
　
　……村正は別に何も変わっていない。

　俺の劒冑だ。

　見てくれに惑わされて悩む必要などなかったのだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0280240a00">
「――行くぞ！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0280250a01">
《諒解！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆一度シーン切り
	ClearWaitAll(2000, 1000);

}

..//ジャンプ指定
//次ファイル　"md01_029vs.nss"