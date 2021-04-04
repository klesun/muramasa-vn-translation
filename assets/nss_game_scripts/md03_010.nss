//<continuation number="390">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_010.nss_MAIN
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
	#ev220_茶々丸の世界=true;
	#bg088_高級ホテルのホール_01b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md03_011.nss";

}

scene md03_010.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md03_009.nss"


//◆茶々丸の世界
//◆ＳＥ：金神魔王尊の声（どういう音にするか一考）
//◆魔王尊の姿もちらっと出すか。

//■あえてBGMなし inc櫻井

/*
	PrintBG("上背景", 30000);
	CreateColorSP("白", 5000, "WHITE");

	CreateTextureSP("茶々丸", 1000, @0, @0, "cg/ev/ev220_茶々丸の世界.jpg");


	Delete("上背景");
	DrawDelete("白", 1000, 100, "zoom_01_00_0", true);

*/

	PrintBG("上背景", 30000);
	CreateColorSPadd("黒幕１", 20000, "WHITE");
	CreateTextureSP("茶々丸の世界", 15000, @0, @0, "cg/ev/ev220_茶々丸の世界.jpg");
	Zoom("茶々丸の世界", 0, 1500, 1500, null, true);
	CreateTextureEX("茶々丸の世界２", 15000, @0, @0, "cg/ev/ev220_茶々丸の世界.jpg");
	Zoom("茶々丸の世界２", 0, 1500, 1500, null, true);
	DrawEffect("茶々丸の世界", 50, "LowWave ", 0, 100, null);
	DrawEffect("茶々丸の世界２", 50, "SuperWave", 0, 500, null);
	Delete("上背景");

	OnBG(100, "bg088_高級ホテルのホール_01b.jpg");
	FadeBG(0, true);

	CreateSE("SE01", "se特殊_その他_神の声01");
	CreateSE("ぼえー", "se特殊_その他_神の声02");
	CreateSE("ノイズ１", "se日常_機械_ノイズ03");
	CreateSE("ノイズ２", "se日常_機械_ノイズ02");
	CreateSE("ノイズ３", "se日常_機械_ノイズ03");
	CreateSE("ノイズ４", "se日常_機械_ノイズ03");
	MusicStart("ぼえー",2000,1000,0,500,null,true);

	FadeDelete("黒幕１",2000,false);


	Wait(100);

	MusicStart("ノイズ１",0,1000,0,1000,null,false);
	Wait(100);
	Fade("茶々丸の世界２", 0, 1000, null, true);
	Wait(100);
	Fade("茶々丸の世界２", 0, 0, null, true);
	SetVolume("ノイズ１", 0, 0, null);

	Wait(200);

	MusicStart("ノイズ２",0,1000,0,1000,null,false);
	Wait(100);
	Fade("茶々丸の世界２", 0, 1000, null, true);
	Wait(100);
	Fade("茶々丸の世界２", 0, 0, null, true);
	SetVolume("ノイズ２", 0, 0, null);

	Wait(50);
	MusicStart("ノイズ３",0,1000,0,1000,null,false);
	Wait(100);
	Fade("茶々丸の世界２", 0, 1000, null, true);
	Wait(150);
	Fade("茶々丸の世界２", 0, 0, null, true);
	SetVolume("ノイズ３", 0, 0, null);

	Wait(100);

	MusicStart("ノイズ４",0,1000,0,1000,null,true);
	Wait(100);
	Fade("茶々丸の世界２", 0, 500, null, true);

	SetVolume("ノイズ４", 3000, 100, null);


	MusicStart("SE01", 1000, 1000, 0, 1000, null,false);


	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0100010a00">
「……ッッッ……!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　何だ――これは。

　声？

　音なのか、これは？

　脳髄を金槌で念入りに打ち砕いたうえ石臼にかけて
すり潰しペースト状になったところを焙り焼きにする
ようなこの衝撃、感触――――<k>これが音声!?

　<RUBY text="・・">誰の</RUBY>!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateSE("SE02", "se特殊_その他_神の声02");
	MusicStart("SE02", 1000, 1000, 0, 1000, null,false);
	CreateTextureEXover("神", 15000, @0, @0, "cg/ev/ev241_森で発光する金神_a.jpg");
	Fade("神", 1000, 1000, null, true);
	FadeDelete("神", 1000, false);



	SetNwC("cg/fw/nw緑龍会Ｉ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／緑龍会Ｉ】
<voice name="ｅｔｃ／緑龍会Ｉ" class="その他男声" src="voice/md03/0100020e298">
「……おお……」

{	NwC("cg/fw/nw緑龍会Ａ.png");}
//【ｅｔｃ／緑龍会Ａ】
<voice name="ｅｔｃ／緑龍会Ａ" class="その他男声" src="voice/md03/0100030e290">
「神よ！」

{	NwC("cg/fw/nw緑龍会Ｄ.png");}
//【ｅｔｃ／緑龍会Ｄ】
<voice name="ｅｔｃ／緑龍会Ｄ" class="その他女声" src="voice/md03/0100040e293">
「何という雄々しさ……畏ろしさ」

{	NwC("cg/fw/nw緑龍会Ｇ.png");}
//【ｅｔｃ／緑龍会Ｇ】
<voice name="ｅｔｃ／緑龍会Ｇ" class="その他男声" src="voice/md03/0100050e296">
「ケッ、ケケ……
　毎度毎度、吐き気がする声だぁ……」

{	NwC("cg/fw/nw緑龍会Ｅ.png");}
//【ｅｔｃ／緑龍会Ｅ】
<voice name="ｅｔｃ／緑龍会Ｅ" class="その他男声" src="voice/md03/0100060e294">
「おぞましい！」

{	NwC("cg/fw/nw緑龍会Ｈ.png");}
//【ｅｔｃ／緑龍会Ｈ】
<voice name="ｅｔｃ／緑龍会Ｈ" class="その他女声" src="voice/md03/0100070e297">
「熱い……なんて熱いの……！」

{	NwC("cg/fw/nw緑龍会Ｋ.png");}
//【ｅｔｃ／緑龍会Ｋ】
<voice name="ｅｔｃ／緑龍会Ｋ" class="その他男声" src="voice/md03/0100080e300">
「ああ……我が神……！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE03", "se特殊_その他_神の声01");
	MusicStart("SE03", 1000, 1000, 0, 1000, null,false);

	CreateTextureEXover("神", 15000, @0, @0, "cg/ev/ev237_空に昇った金神_b.jpg");
	Fade("神", 1000, 1000, null, true);
	FadeDelete("神", 1000, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　……神……？

　違う。
　<RUBY text="・・">これ</RUBY>はそんなものではない。

　これは、ただの――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0100090a07">
「そうだよ、お兄さん」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　茶々丸が、俺にだけ届く声で囁いた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE04", "se特殊_その他_神の絶叫");
	MusicStart("SE04", 1000, 1000, 0, 1000, null,false);

	CreateTextureEXover("神", 15000, @0, @0, "cg/ev/ev241_森で発光する金神_a.jpg");
	Fade("神", 1000, 1000, null, true);
	FadeDelete("神", 1000, false);

	SetFwC("cg/fw/fw茶々丸_冷酷.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0100100a07">
「これは<RUBY text="・・・・">ただの力</RUBY>だ。
　神なんて大層なもんじゃねえ。知性なんて
あるもんか」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0100110a07">
「こいつは力の塊で、それ以外に何もありゃ
しない。
　途方もなく強大で……ただ強大なだけで、
何もできやしないんだ」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0100120a07">
「何の意味もない。
　虫ケラにも劣る」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0100130a07">
「だからこいつは欲しいんだ。
　自分に意味を与える<RUBY text="ユーザー">仕手</RUBY>が」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0100140a00">
「…………」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0100150a07">
「だからずっと、四六時中、休みなしに吼え
猛っていやがる。
　……人の迷惑も考えずにね……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　最後の呟きは――
　憤怒と憎悪、そして絶望のカクテルだった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateSE("SE02", "se特殊_その他_神の声02");
	MusicStart("SE02", 1000, 1000, 0, 1000, null,false);
	CreateTextureEXover("神", 15000, @0, @0, "cg/ev/ev237_空に昇った金神_b.jpg");
	Fade("神", 1000, 1000, null, true);
	FadeDelete("神", 1000, false);

	SetFwC("cg/fw/fwウォルフ_思索.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0100160a13">
「神を追い求める探求者であった僕。
　神の声を伝える預言者であった彼女」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0100170a13">
「僕らは巡り合った」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0100180a13">
「彼女と会い、僕は自分の推論に根拠を得た。
　僕と会って、彼女は自分が感覚したものを
理解した」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0100190a13">
「今や神の座標は特定されている。
　<RUBY text="・・・・・・・・">大和帝国相模玉縄</RUBY>、<RUBY text="・・・・・・・・・・">普陀楽城から地球中心</RUBY>
<RUBY text="・・・・・・・・">方向へ一一五キロ</RUBY>!!」

{	FwC("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0100200a13">
「そこに神はいる。
　そして、そこへ到る道を開く方法もある！」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0100210a13">
「銀星号！
　至上の劒冑、最も<RUBY text="おや">祖</RUBY>に近き子が、今という
時代には存在するのだ！」

{	FwC("cg/fw/fwウォルフ_絶叫.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0100220a13">
「条件はここまで整っている!!
　ならば、我々は何をすべきだ!?」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwウォルフ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0100230a13">
「諸君！」

{	NwC("cg/fw/nw緑龍会Ｂ.png");}
//【ｅｔｃ／緑龍会Ｂ】
<voice name="ｅｔｃ／緑龍会Ｂ" class="その他男声" src="voice/md03/0100240e291">
「呼べ!!」

{	NwC("cg/fw/nw緑龍会Ｅ.png");}
//【ｅｔｃ／緑龍会Ｅ】
<voice name="ｅｔｃ／緑龍会Ｅ" class="その他男声" src="voice/md03/0100250e294">
「神を呼べ!!」

{	NwC("cg/fw/nw緑龍会Ｊ.png");}
//【ｅｔｃ／緑龍会Ｊ】
<voice name="ｅｔｃ／緑龍会Ｊ" class="その他女声" src="voice/md03/0100260e299">
「この地上に神を呼び出せ!!」

{	NwC("cg/fw/nw緑龍会Ａ.png");}
//【ｅｔｃ／緑龍会Ａ】
<voice name="ｅｔｃ／緑龍会Ａ" class="その他男声" src="voice/md03/0100270e290">
「識るために!!」

{	NwC("cg/fw/nw緑龍会Ｃ.png");}
//【ｅｔｃ／緑龍会Ｃ】
<voice name="ｅｔｃ／緑龍会Ｃ" class="その他男声" src="voice/md03/0100280e292">
「暴くために!!」

{	NwC("cg/fw/nw緑龍会Ｄ.png");}
//【ｅｔｃ／緑龍会Ｄ】
<voice name="ｅｔｃ／緑龍会Ｄ" class="その他女声" src="voice/md03/0100290e293">
「崇めるために!!」

{	NwC("cg/fw/nw緑龍会Ｇ.png");}
//【ｅｔｃ／緑龍会Ｇ】
<voice name="ｅｔｃ／緑龍会Ｇ" class="その他男声" src="voice/md03/0100300e296">
「罵るために!!」

{	NwC("cg/fw/nw緑龍会Ｆ.png");}
//【ｅｔｃ／緑龍会Ｆ】
<voice name="ｅｔｃ／緑龍会Ｆ" class="その他男声" src="voice/md03/0100310e295">
「嗤うために!!」

{	NwC("cg/fw/nw緑龍会Ｉ.png");}
//【ｅｔｃ／緑龍会Ｉ】
<voice name="ｅｔｃ／緑龍会Ｉ" class="その他男声" src="voice/md03/0100320e298">
「憎むために!!」

{	NwC("cg/fw/nw緑龍会Ｋ.png");}
//【ｅｔｃ／緑龍会Ｋ】
<voice name="ｅｔｃ／緑龍会Ｋ" class="その他男声" src="voice/md03/0100330e300">
「呼べッ!!」

{	NwC("cg/fw/nw緑龍会Ｄ.png");}
//【ｅｔｃ／緑龍会Ｄ】
<voice name="ｅｔｃ／緑龍会Ｄ" class="その他女声" src="voice/md03/0100340e293">
「神をッ!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);
	SetVolume("ノイズ*", 1000, 0, null);
	SetVolume("ぼえー", 1000, 0, null);
	OnSE("se戦闘_攻撃_鎧_吹っ飛ぶ02",1000);

	Fade("茶々丸*", 400, 0, Axl2, false);
	EffectZoomDXadd(20000, 1000, 0, "#FFFFFF", "cg/ef/ef034_精神汚染.jpg", false);

	Wait(3500);
	Delete("茶々丸*");

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0105]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0100350a00">
「――――――――」

{	FwC("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0100360a13">
「新たなる友よ。
　我々は歓迎する。心より歓迎する」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0100370a13">
「黄金の夜明けを求める同志！」

{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0100380a13">
「ようこそ――」

{	FwC("cg/fw/fwウォルフ_笑顔.png");}
　
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0100390a13">
　　　　　　「<RUBY text="グリューネドラヘ・ゲゼルシャフト">〝緑龍会〟</RUBY>へ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md03_011.nss"