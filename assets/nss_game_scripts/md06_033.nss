//<continuation number="760">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_033.nss_MAIN
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
	#bg002_空a_02=true;
	#ev006_景明の狂相=true;
	#ev264_景明VS雪車町=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene md06_033.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md06_032.nss"


//◆夕空

//冒頭はBGMは流さずSEを流します inc櫻井

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 15000, "BLACK");

	CreateTextureSP("絵背景", 100, InRight, InBottom, "cg/bg/bg204_横旋回背景b_02.jpg");
	Move("絵背景", 400000, 0, @0, DxlAuto, false);

	Delete("上背景");
	FadeDelete("黒",1500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　伝言に示された場所に向かい。
　走る。走る。走る。

　時間は経った――経ち過ぎた。
　村正を奪われてから、何時間になるだろう。

　陽は傾き、空は赤らみ始めている。

　無事だ。まだ無事、その筈だ。
　雪車町の目的が何であろうと、村正を殺す必要など
無い筈だ。

　だから無事でいる。
　そう信じる。

　例え未だ村正との通信が途絶したままでも。
　幾ら呼び掛けてもいっかな反応が無くとも。

　生きていてくれる。
　きっと。絶対に。必ず。

　だから急がなくてはならない。
　一秒でも早く。村正のもとへ。助け出すために。

　走る――――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆bg003_夕
	CreateColorEX("黒幕", 25000, "#000000");
	Fade("黒幕", 1500, 1000, null, true);

	CreateTextureSP("背景", 100, @-520, @-300, "cg/bg/resize/bg003_荒れ野_02.jpg");
	Request("背景", Smoothing);
	Zoom("背景", 0, 700, 700, null, true);

	Delete("絵背景");

	Wait(1000);

	CreateSE("歩く", "se人体_足音_歩く04_L");
	MusicStart("歩く", 0, 1000, 0, 700, null,true);

	Wait(500);

	FadeDelete("黒幕", 1500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　そこはただの荒地だった。
　草が<RUBY text="ぼうぼう">苞々</RUBY>に生え、大小の<RUBY text="いしころ">石塊</RUBY>も無数に転がっている。

　そんな中で枯れ木のように、雪車町一蔵はいた。
　岩に預けていた腰を持ち上げ、俺の方へ数歩、歩み
寄る。

　そこで止まった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("歩く", 1000, 0, null);

	CreateTextureEX("そりまち", 1000, @-45, @-210, "cg/st/resize/st雪車町_通常_私服_l.png");
	Request("そりまち", Smoothing);

	Zoom("そりまち", 0, 485, 485, null, true);

	Fade("そりまち", 300, 1000, null, true);

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330010a12">
「よう」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0330020a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("風", "se自然_風_荒野_L");
	MusicStart("風", 2000, 800, 0, 800, null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　……村正の姿は見当たらない。

　人質に取り、何かを要求するのではないかと思った
が。どういうつもりだろう。
　連れていては即座に奪回される恐れもあると踏んで、
別の所へ隠しているのか……？

　冷静に。
　冷静にならねば。

　まずは安否を確かめよう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0330030a00">
「村正は何処だ」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330040a12">
「江ノ島以来……だなァ？
　こうやって、不細工な<RUBY text="つら">面</RUBY>を突きつけ合うの
は……」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330050a12">
「け、け……！
　まあ俺の方は、その貧乏神も寄り付かねえ
ような面、陰から拝ませてもらってたがよぅ」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0330060a00">
「村正は何処だ！」

{	FwC("cg/fw/fw雪車町_嘲笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330070a12">
「け、け、けェ……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　死体漁りの鴉が笑うに酷似した声。
　
　落ち着け……落ち着け！

　切札は向こうの手にある。
　焦ってはならない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330080a12">
「ご執心じゃねェか。
　たかが劒冑に……何をそんな、入れ込んで
やがるんだァ？」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0330090a00">
「お前に説明する必要はない。
　村正を返せ」

{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330100a12">
「こっちも惚気なんか聞く義理も<RUBY text="ね">無</RUBY>ぇなァ。
　さて、返せ……返せとくらァ」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330110a12">
「へへ、どう返そうかねえ？」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0330120a00">
「…………。
　お前は、俺に報復したいのだろうが」

//【景明】
<voice name="景明" class="景明" src="voice/md06/0330130a00">
「どんな要求でも聞いてやる」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330140a12">
「ふへっ、へへェ……！
　そいつはありがてえ。何でもしてくださる
ってかァ」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330150a12">
「へッ、へッ……馬鹿くせえや。
　てめェなんぞに何ができる？　てめェに何
の値打ちがあるってんだァ？」

{	FwC("cg/fw/fw雪車町_嘲笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330160a12">
「けけ……けけけ！」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0330170a00">
「……っ。
　なら、目的は何だ！」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0330180a00">
「お前はどうするつもりだ!?」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330190a12">
「どうするも……こうするも。
　ひェッ、ヘヘ」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330200a12">
「もうやるこたァ、やっちまったさ」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0330210a00">
「何が言いたい」

{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330220a12">
「脳味噌あるだろう？
　使ってみたらどうだ？」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330230a12">
「くけっ、ケケ……！」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0330240a00">
「答えろ！
　村正は、何処だ!!」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330250a12">
「ヒヒ……」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330260a12">
「いねぇよ」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0330270a00">
「……何？」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330280a12">
「いねぇ」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330290a12">
「もう、何処にも、いねぇ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　雪車町が繰り返す単純な言葉。
　その意味が理解できない。

　いない？
　<RUBY text="・・・・・">もういない</RUBY>……？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0330300a00">
「何を言っている」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330310a12">
「クヒ、ヒヒ……！
　どうやら脳味噌、腐り切って溶けちまった
らしいや」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330320a12">
「こんなこともわからねえたァなァ」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0330330a00">
「…………」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330340a12">
「わかってるだろうが」

{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330350a12">
「殺した。
　もう殺したって、言ってんだよ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);
	SetVolume("風", 100, 0, null);

	CreateColorEX("赤", 15000, "#990000");
	OnSE("se人体_体_心臓の音02", 1000);

	Fade("赤", 0, 1000, null, true);

	CreateColorSP("絵色黒", 14900, "#000000");

	FadeDelete("赤", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　
　　　　　　　　　　　殺した。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵色黒", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　その一語を、<k>誤解するのは不可能だった。

　殺した。
　この男が。

　殺した。
　村正を。

　<RUBY text="・・・・・・">村正を殺した</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0330360a00">
「……嘘を言うな」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330370a12">
「ヒヒッ、ふヘ……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0330380a00">
「嘘だ。お前は嘘を」

{	FwC("cg/fw/fw雪車町_嘲笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330390a12">
「クヒヒヒヒヒヒヒ」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0330400a00">
「嘘を、」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	OnSE("se日常_金属落ちる", 1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　雪車町が上着の裏から何かを取り出し、投げた。
　人の手より一回り大きい程度のもの。

　赤い。
　鮮血を思わせる真紅。

　鈍い輝き。
　金属の光沢。

　甲鉄。

　村正の甲鉄。

　その、――――断片。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0330410a00">
「村正」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0330420a00">
「村正！」

{	FwC("cg/fw/fw景明_恐怖.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0330430a00">
「村正ァ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　その<RUBY text="な">銘</RUBY>を呼ぶ。

　劒冑と仕手は不離一体。
　遠く隔てられていても呼び声は必ず届く。

　届けば、応えてくれる。
　応えが来る――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0330440a00">
「…………」

{	FwC("cg/fw/fw雪車町_嘲笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330450a12">
「ひ……ひひ……」

{	FwC("cg/fw/fw景明_悲しみ.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0330460a00">
「……………………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　俺の足元に投げ捨てられた甲鉄は、そのまま。
　屑のように転がっている。

　屑のように。
　そこらの石と同じ、何の生命も宿らぬもののように。

　赤い甲鉄。

　それは今、<k>ただの残骸で、

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フラッシュバック。村正（蝦夷）
//◆パリーンと割れて散る

	CreateColorEX("フラッシュ白", 16000, "WHITE");

//嶋SE；フラッシュバック用ＳＥの違うバージョン
	OnSE("se擬音_フラッシュバック01",1000);

	Fade("フラッシュ白",0,1000,null,true);
	CreateColorSP("絵背景黒", 1000, "Black");
	StC(1100, @0, @0, "cg/st/st村正_通常_私服.png");
	FadeStC(0, true);
	Fade("フラッシュ白",200,0,null,true);

	Wait(1000);

	OnSE("se日常_建物_照明破損", 1000);

	DrawEffect("@StC*", 3000, "HardSplit", 30, 30, null,false);

	Fade("フラッシュ白",300,1000,null,true);
	DeleteStC(0,true);
	Delete("絵背景黒");
	FadeDelete("フラッシュ白",1000,true);

//◆ＢＧＭ

//個人的には11のほうが良いと思いますが、お互い憎悪ありなので08で
	SoundPlay("@mbgm08", 0, 1000, true);


	SetFwC("cg/fw/fw景明_狂怒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0330470a00">
「オアアアアアアアアアアアアアア!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_空突進01");
	SetBlur("背景", true, 3, 500, 30, false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("背景", 150, 1200, 1200, Dxl2, false);
	Zoom("そりまち", 150, 1200, 1200, Dxl2, false);
	Move("そりまち", 150, 50, 110, Dxl2, false);
	Move("背景", 150, @250, @-100, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　血という血が<RUBY text="は">爆</RUBY>ぜた。

　草の上を飛ぶ。飛んで駆ける。
　その男を狙って疾走する。

　雪車町の手が仕込み杖に伸びた。
　遅い――俺の方が早い。

　指呼の間へ飛び込む。
　右拳を振りかぶり。

　殴る。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆どご。
	OnSE("se戦闘_攻撃_殴る01", 1000);


	CreateTextureSP("絵背景500", 9000, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");
	Request("絵背景500", Smoothing);
	Zoom("絵背景500", 0, 1100, 1100, null, true);
	Rotate("絵背景500", 0, @0, @180, @0, null,true);

	Delete("そりまち");

	CreatePlainEX("絵板写", 9000);
	Fade("絵板写", 0, 500, null, true);
	Zoom("絵板写", 0, 1400, 1400, null, false);
	Zoom("絵板写", 200, 1000, 1000, Dxl2, false);
	Shake("絵板写", 500, 0, 30, 0, 0, 1000, DxlAuto, true);

	Delete("絵板写");

	FadeDelete("絵背景500", 300, true);

	OnSE("se人体_衝撃_転倒04", 1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　痩せぎすの体が吹き飛んだ。
　杖が落ちる。

　追う。

　大股に一歩を踏み込んで。
　もう一度。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	OnSE("se人体_動作_一歩", 1000);

	SetFwC("cg/fw/fw雪車町_哄笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330480a12">
「けェッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆がす。

	OnSE("se戦闘_攻撃_殴る02", 1000);

	CreateTextureSP("絵背景500", 9000, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");

	CreatePlainEX("絵板写", 9000);
	Fade("絵板写", 0, 500, null, true);
	Zoom("絵板写", 0, 1400, 1400, null, false);
	Zoom("絵板写", 200, 1000, 1000, Dxl2, false);
	Shake("絵板写", 500, 0, 30, 0, 0, 1000, DxlAuto, true);

	Delete("絵板写");

	FadeDelete("絵背景500", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　その出鼻に、叩き込まれた。
　雪車町の拳が俺の頬を抉り、視界が火花の渦と化す。

　構わない。
　膝にまで響く打撃を無視して、返しの一撃。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆どか。
	OnSE("se戦闘_攻撃_殴る01", 1000);

	CreatePlainEX("絵板写", 9000);
	Fade("絵板写", 0, 500, null, true);
	Zoom("絵板写", 0, 1400, 1400, null, false);
	Zoom("絵板写", 200, 1000, 1000, Dxl2, false);
	Shake("絵板写", 500, 0, 30, 0, 0, 1000, DxlAuto, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　数歩、たたらを踏み。
　それでも雪車町は倒れなかった。

　俺の両肩を掴んで、信じ難い剛力で引き込み、腹に
膝頭を突き入れてくる。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆どす。
	OnSE("se戦闘_攻撃_キック02", 1000);

	CreatePlainEX("絵板写", 9000);
	Fade("絵板写", 0, 500, null, true);
	Zoom("絵板写", 0, 1400, 1400, null, false);
	Zoom("絵板写", 200, 1000, 1000, Dxl2, false);
	Shake("絵板写", 500, 30, 0, 0, 0, 1000, DxlAuto, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　大量の苦汁が喉を越え、口腔に湧き出す。
　吐く。

　更に雪車町は、俺の背へ肘を打った。
　連続して。鋭い衝撃に背骨が歪む。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0330490a00">
「ぐァァァァ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　吼えた。
　前屈した体勢のまま、死力を尽くす。

　強引な投げ。
　無理矢理に、雪車町の体を地面へ倒す。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se人体_衝撃_転倒_複数", 1000);

	CreatePlainEX("絵板写", 9990);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 300, 0, 30, 0, 0, 500, null, false);

	CreateColorSP("黒幕１", 10000, "#000000");
	DrawTransition("黒幕１", 150, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	Delete("絵板写");

	CreateColorEX("絵色白", 10100, "#FFFFFF");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0261]
　俺も諸共に引き倒された。
　組み合ったまま、殴り合う。

{	CreateSE("乱闘", "se戦闘_攻撃_殴打連撃01_L");
	MusicStart("乱闘", 0, 1000, 0, 1000, null,false);}
　殴る。
　殴られる。

　雪車町一蔵は俺を憎悪していた。
　俺は雪車町一蔵を憎悪していた。

{	CreateSE("SE01","se戦闘_攻撃_殴る01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵色白", 0, 1000, null, true);
	Wait(10);
	Fade("絵色白", 100, 0, null, false);}
　殴る。

　憎い。
　この男が憎い。

　理由は何処かに吹き飛んでいた。

　憎い。
　ただ憎い。

{	CreateSE("SE01a","se戦闘_攻撃_殴る01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Fade("絵色白", 0, 1000, null, true);
	Wait(10);
	Fade("絵色白", 100, 0, null, true);}
　殴る。
{	CreateSE("SE01b","se戦闘_攻撃_殴る02");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Fade("絵色白", 0, 1000, null, true);
	Wait(10);
	Fade("絵色白", 100, 0, null, true);}
　殴る。
{	CreateSE("SE01c","se戦闘_攻撃_キック02");
	MusicStart("SE01c",0,1000,0,1000,null,false);
	Fade("絵色白", 0, 1000, null, true);
	Wait(10);
	Fade("絵色白", 100, 0, null, true);}
　殴る。
{	CreateSE("SE01d","se戦闘_攻撃_殴る01");
	MusicStart("SE01d",0,1000,0,800,null,false);
	Fade("絵色白", 0, 1000, null, true);
	Wait(10);
	Fade("絵色白", 100, 0, null, true);}
　殴る。

　いつしか、殴っているのは俺だけだった。

　雪車町は動かない。
　俺に殴られ、殴られながら笑っている。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("乱闘", 1000, 0, null);

//◆ev264
	CreateSE("SE01","se戦闘_攻撃_キック02");
	MusicStart("SE01",0,1000,0,800,null,false);
	Fade("絵色白", 0, 1000, null, true);
	Delete("黒幕*");

	CreateTextureSP("絵イベＥＸ", 5010, -300, InBottom, "cg/ev/resize/ev264_景明VS雪車町l.jpg");
	CreateTextureSP("絵イベ", 5000, Center, Middle, "cg/ev/ev264_景明VS雪車町.jpg");

	FadeDelete("絵色白", 1000, true);

	SetFwC("cg/fw/fw雪車町_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330500a12">
「へっ……へへ」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330510a12">
「いい、面だ」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330520a12">
「それでいい」

{	Move("絵イベＥＸ", 8000, -1022, -300, DxlAuto, false);
	FadeDelete("絵イベＥＸ", 7800, false);
	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330530a12">
「わっかりやすいぜぇ……」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330540a12">
「俺が憎くて、殺したいんだろう？」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330550a12">
「てめぇは今……俺を殺したくて、殺そうと
してる」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330560a12">
「それでいいんだァ……」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330570a12">
「今までは、そうじゃなかった」

{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330580a12">
「てめぇは嫌々、殺してた……」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330590a12">
「いつも、そうだったんだろう？」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330600a12">
「みっともなかったぜぇ……」

{	FwC("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330610a12">
「人を、殺しておいて……
　本当はこんなことしたくなかったんだって
言いたくて、泣く」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330620a12">
「じゃあ、やるなってんだァ……。
　てめぇに殺された奴はみんな、そう言うぜ」

{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330630a12">
「呪いの<RUBY text="つるぎ">村正</RUBY>を抱えてどっかに引き篭もって
りゃあ良かった……」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330640a12">
「それを、てめぇはしゃしゃり出てきて……
　世界のためだか、より多くの人を救うため
だか、<RUBY text="・・・・・・・">誰も頼んでねえ</RUBY>使命を勝手に背負って、
本当は殺したくないくせに殺して……泣いた」

{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330650a12">
「くだらねえ」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330660a12">
「勝手に殺しておいて、自分を憐れみやがる
たァ……」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330670a12">
「胸糞悪い」

{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330680a12">
「反吐が、出るぜ」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330690a12">
「今はいい」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330700a12">
「いい面だ」

{	FwC("cg/fw/fw雪車町_嘲笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330710a12">
「憎んで憎んで、殺したくて殺したくて堪ら
なくて殺す面だァ」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330720a12">
「みんなそうやって、殺しゃあ良かった」

{	FwC("cg/fw/fw雪車町_哄笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330730a12">
「……あの蝦夷の餓鬼共もなァ！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　五月蝿い。
　黙れ。

　貴様の声など聞きたくない。

　殴る。
　黙らせたくて、殴る。

　止まらない。
　雪車町は笑い続ける。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330740a12">
「殺せ」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330750a12">
「殺せェ……」

{	FwC("cg/fw/fw雪車町_哄笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0330760a12">
「その面で、殺してみせろォ！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("黒", 6000, "BLACK");
	Fade("黒", 500, 1000, null, true);

	OnSE("se人体_体_心臓の音02", 1000);

	CreateColorSP("絵色血覆", 20000, "#990000");

	CreateColorSP("絵色血", 15300, "#990000");
	CreateTextureSPadd("汚染", 15400, @0, @0, "cg/ef/ef034_精神汚染.jpg");
	CreateTextureEXmul("狂相", 15500, @0, @0, "cg/ev/ev006_景明の狂相.jpg");

	FadeDelete("絵色血覆", 300, true);

	Fade("狂相", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]

　殺す。


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0301]
　石を、掴んだ。
　硬く、尖った石だ。

　これなら殺せる。

　額に叩き付ければ、一撃だ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se人体_体_心臓の音02", 1000);
	CreateColorSP("殺す", 20000, "#990000");

	FadeDelete("汚染",1000,false);
	Fade("殺す", 300, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0302]

　殺す。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0303]
　俺は、
　石を振りかぶって、

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆選択：殺す／……殺せない

}

..//ジャンプ指定
//◆殺す　"md06_033a.nss"
//◆……殺せない　"md06_033b.nss"



//★選択肢シーン
scene md06_033.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintBG("背景０", 30000);

	SoundPlay("@mbgm08",0,1000,true);

	CreateColorSP("絵色血", 5000, "#990000");
	CreateTextureSPmul("狂相", 5100, @0, @0, "cg/ev/ev006_景明の狂相.jpg");

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("殺す","……殺せない");
	select
	{
		//カーソル用
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @選択肢１
		{
			ChoiceA02();
//◆殺す　"md06_033a.nss"
				$GameName = "md06_033a.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆……殺せない　"md06_033b.nss"
				$GameName = "md06_033b.nss";
		}
	}
}