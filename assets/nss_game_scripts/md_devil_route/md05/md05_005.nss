//<continuation number="210">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_005.nss_MAIN
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
	#bg066_普陀楽城内のどか_03=true;
	#ev926_野太刀全容=true;
	#ev237_空に昇った金神_c=true;
	#bg106_富士山遠望a_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md05_006.nss";

}

scene md05_005.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md05_004end.nss"


//●クリア
//◆元の場所


	PrintBG("上背景", 30000);
	CreateColorSPadd("白", 15000, "WHITE");

	OnBG(100, "bg066_普陀楽城内のどか_03.jpg");
	FadeBG(0, true);
	OnSE("se特殊_鎧_装着03", 1000);

	StR(1000, @0, @250, "cg/st/3d村正蜘蛛_俯瞰.png");
	FadeStR(0, true);


	Delete("上背景");
	FadeDelete("白", 3000, true);

	Wait(1000);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0050010a00">
「…………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0050020a01">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm19", 0, 1000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　――戻ってきた。
　
　いや、元より俺達の体は最初から一歩たりと動いて
いないのだろうが。

　ともかく、無事だ。
　俺は俺の自我を保っているし、村正の甲鉄も白銀色
が抜けている。

　そして……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0050030a01">
《御堂、これ！》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0050040a00">
「……ああ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆野太刀（後期）
//◆現実の虎徹を元にデザイン。特に刃紋。資料有り。

	CreateTextureEX("のだち", 4000, @0, @0, "cg/ev/ev926_野太刀全容.jpg");
	Fade("のだち", 1000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　長大な刀身を有する太刀が、そこにあった。

　野太刀だ。
　長らく失われていた、村正の野太刀！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("のだち",1000,true);

	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0050050a00">
「ようやく取り戻せたな」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0050060a01">
《ええ！》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0050070a01">
《……？　でも、何か変……？》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0050080a00">
「変？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0050090a01">
《これ、前と少し違ってない？》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　言われてみれば、形状が変わっている気もする。
　何処がどう、と断定できる程の明確な違いではない
のだが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0050100a01">
《何かしら。
　<RUBY text="かかさま">銀星号</RUBY>の力が混じったせい……？》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0050110a01">
《ううん、他にも何か――》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0050120a00">
「…………」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0050130a00">
「そうか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_刀構え01");
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　俺は野太刀を手に取った。
　湾月形の刀身に視線を這わせてみる。

　素朴な数珠状の刃紋はどうしてか、誰かの<RUBY text="かお">貌</RUBY>を想起
させた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0050140a00">
「弱体化したわけではないだろう？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0050150a01">
《それは……うん。
　むしろ、逆なんだけど》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0050160a00">
「ならいい。
　余り気にするな」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0050170a01">
《……御堂がそう言うなら》

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0050180a00">
「それより、銘を付けよう。
　生まれ変わったようなものだからな」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0050190a01">
《銘を……？
　何か考えがあるの？》

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0050200a00">
「ああ。
　お前が構わなければ――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　胸中に湧く一語。
　それをそのまま、舌に乗せる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0050210a00">
「虎徹、と」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	SetVolume("@mbgm*", 2000, 0, null);
	ClearWaitAll(2000, 2000);


//◆謎天体、動く。降下
//◆富士山遠望・夜
//◆ホワイトアウト
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 16000, "#000000");
	Delete("上背景");

	CreateSE("ゴゴゴ", "se特殊_その他_渦巻く力");
	MusicStart("ゴゴゴ", 0, 1000, 0, 1000, null,true);


	CreateTextureEX("謎天体", 15000, @0, @0, "cg/ev/ev237_空に昇った金神_c.jpg");
	Fade("謎天体", 0, 1000, null, true);


	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("黒幕１");

	WaitKey(1500);


	OnBG(100, "bg106_富士山遠望a_03.jpg");
	FadeBG(0, true);
	
	FadeDelete("謎天体",1000,true);

	WaitKey(1500);

	OnSE("se戦闘_破壊_爆発04", 1000);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",1000,1000,null,true);

	SetVolume("SE*", 3000, 0, null);
	SetVolume("ゴゴゴ", 3000, 0, null);
	Wait(3000);

}

..//ジャンプ指定
//次ファイル　"md05_006.nss"