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

scene mb01_008.nss_MAIN
{

	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼雨降らしフラグの解除
	$AmeHure = false;
	Request("@絵効果雨落下風", UnLock);

	//▼イベントＣＧ
	#bg058_曇空c_01=true;
	#bg060_円応寺境内_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb01_009.nss";

}

scene mb01_008.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mb01_007a.nss"
//前ファイル　"mb01_007b.nss"

//◆戻り

	PrintBG("上背景", 30000);

/*
	if($AmeHure == true){
	Delete("@絵新背景");
	Delete("@Fw*");
	}else{
	PrintBG("上背景", 30000);
	$SYSTEM_effect_rain_speed = 128;
	$SYSTEM_effect_rain_dencity = 64;
	$AmeHure = true;
	CreateEffect("絵効果雨落下風", 5500, 256, 0, 512, 288, "Rain");
	SetAlias("絵効果雨落下風", "絵効果雨落下風");
	Request("絵効果雨落下風", Lock);
	Rotate("絵効果雨落下風", 0, @-60, @0, @0, null,true);
	Zoom("絵効果雨落下風", 0, 3000, 3500, null, true);
	Fade("絵効果雨落下風", 0, 500, null, true);

	}

*/
	$SYSTEM_effect_rain_speed = 128;
	$SYSTEM_effect_rain_dencity = 32;
	CreateEffect("絵効果雨", 2000, 256, 144, 512, 288, "Rain");
	SetAlias("絵効果雨","絵効果雨");
	Zoom("絵効果雨", 0, 2000, 2000, null, true);
	Fade("絵効果雨", 0, 500, null, true);

	CreateTextureSP("絵背景", 5000, Center, Middle, "cg/bg/bg058_曇空c_01.jpg");
	OnBG(100,"bg060_円応寺境内_01.jpg");
	StR(1000, @0, @0,"cg/st/st一条_通常_制服b.png");
	FadeStR(0,true);
	FadeBG(0,true);
	Delete("上背景");
	SoundPlay("@mbgm32",0,1000,true);

	Request("@絵効果雨落下風", UnLock);
	Fade("@絵効果雨落下風", 1000, 0, null, false);
	FadeDelete("絵背景", 1000, true);
	Delete("@絵効果雨落下風");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　俺の言葉は、一条を納得させただろう。
　少女の切な願いとは、完全に逆の意味で。

　全て、事実の羅列に過ぎないから。
　淡白で、簡素で。疑うべき余地などない。

　それは真実。
　少女が望まなかった真実。

　最後の問いを発してしまった綾弥一条が、受け止め
ねばならない答えだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0080010a02">
「……どうして……」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0080020a00">
「理由か。
　そんなものはない」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　無い。
　殺戮を免罪するに足る理由など、何も。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0080030a00">
「強いて言えば、俺がそういう<RUBY text="・・">もの</RUBY>だからだ。
　それだけだ」


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0080040a02">
「……………………」


{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0080050a02">
「許さない」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0080060a00">
「……」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0080070a02">
「裏切られた、なんて……思わねぇ。
　そうだ。あんたは最初から言ってた」


//【一条】
<voice name="一条" class="一条" src="voice/mb01/0080080a02">
「正義の味方なんかじゃないって。
　ただの人殺しだって」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0080090a00">
「ああ」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0080100a02">
「あたしが勝手に勘違いしてたわけだ。
　勝手に思い込んで……勝手に信じて」


{	FwC("cg/fw/fw一条_笑顔b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0080110a02">
「勝手に憧れてたんだ！
　あははははははははハハハハハハハハ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　<RUBY text="・・・・・・・・">逆上して哄笑する</RUBY>。
　そんな感情表現も人間には可能なのだと、今初めて
知った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悔しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0080120a02">
「けど許さない」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0080130a00">
「……」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0080140a02">
「湊斗景明。
　あたしはあんたを許さない」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0080150a02">
「あんたを殺す」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0080160a00">
「どうやって」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　期待のように、その反問は唇から零れた。
　だがきっと、一条には挑発と聞こえたろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);
	SetFwC("cg/fw/fw一条_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0080170a02">
「こうやってだ！
　正宗ェェェッッッッ!!」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0080180a00">
「!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//おがみ：立ち絵来たら調整
//◆正宗・天牛虫登場
	CreateSE("SE01","se戦闘_動作_空突進01");
	CreateSE("SE01b","se戦闘_動作_空突進03");
	CreateSE("SE02","se戦闘_動作_鎧_踏み込み01");
	CreateSE("SE03","se戦闘_攻撃_鎧_吹っ飛ぶ01");
	MusicStart("SE01",0,1000,0,800,null,false);
	MusicStart("SE01b",0,1000,0,1400,null,false);
	CreateColorSPadd("絵色白", 5000, "#FFFFFF");
	StL(1000, @50, @370,"cg/st/3d正宗天牛虫_正面.png");
	Rotate("@StL*", 0, @0, @180, @0, null,true);
	FadeStL(0,true);

	Wait(1500);

	MusicStart("SE02",0,1000,0,800,null,false);
	MusicStart("SE03",0,1000,0,800,null,false);

	Shake("@StL*", 700, 0, 5, 0, 0, 1000, Dxl2, false);

	DrawDelete("絵色白", 2000, 100, "effect_01_00_0", false);
	Fade("絵色白", 1000, 0, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　<RUBY text="あお">藍</RUBY>が飛来する。

　深い硬質の輝きを湛えたカタマリ。
　三対の脚と長い触角が生えている。

　<RUBY text="カミキリムシ">天牛虫</RUBY>。

　<RUBY text="つるぎ">劒冑</RUBY>であった。
　その巨躯と鋼の外骨格が物語る。

　雨天の下、暗色の甲鉄はしかし景色の中に沈むこと
もない。
　傲然たる異彩を放っている。

　人の眼差しを強奪するまでの光沢は、一つの事実を
明確に指摘するものだった。
　――――最上大業物。

　勢洲千子村正と同等。
　<RUBY text="・・・・・・">あるいは凌ぐ</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm14",1000,1000,true);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0080190a00">
「正宗……だと？」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0080200a00">
「天下第一等……
　相州五郎入道正宗だと云うのか!?」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/0080210b40">
《悪鬼に呼ばわれるべき名など無い》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　冷厳を窮める、
　こちらに対して一片の情誼も持たない<RUBY text="メタルエコー">金打声</RUBY>が脳髄
を刺した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/0080220b40">
《吾が名乗る。<RUBY text="マサムネ">正宗</RUBY>と。
　吾が斬る。<RUBY text="な">銘</RUBY>に懸けて》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/0080230b40">
《邪悪はただ、聴いて散れ。
　他には何も許さぬ……》


{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0080240a02">
「何も許さない」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/0080250b40">
《この世に跡形も残させはせぬ》


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0080260a02">
「全て、消し去る」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/0080270b40">
《滅ぼし尽くす》


{	FwC("cg/fw/fw一条_怒りc.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0080280a02">
「邪悪を」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb01/0080290b40">
《全て》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　それがどれほど有り得なかろうとも、ここに至れば
事実を事実と認めるほかはなかった。

　濃藍の劒冑はかの正宗であり。
　その仕手はこの綾弥一条である。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0080300a00">
「何故だ。
　いつ」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0080310a02">
「そんな事はどうだっていい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　今や少女の声の冷たさは、劒冑にも劣らなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_怒りc.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0080320a02">
「あたしはあんたを殺せるんだ。
　悪鬼、村正」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0080330a00">
「……」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0080340a02">
「明日だ」


//【一条】
<voice name="一条" class="一条" src="voice/mb01/0080350a02">
「明日の早朝、ここの裏手にある林へ来い。
　劒冑と一緒に」


{	FwC("cg/fw/fw一条_怒りc.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0080360a02">
「殺してやる」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0080370a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_足音_歩く07_L");
	CreateSE("SE02","se人体_足音_鎧歩く03_L");
	MusicStart("SE01",0,1000,0,1100,null,true);
	MusicStart("SE02",0,500,0,1200,null,true);


	CreatePlainSP("絵板写", 3000);
	DeleteStA(0,true);
//	StR(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeDelete("絵板写", 600, false);
	SetVolume("@mbgm*", 3000, 0, null);

	Wait(500);

	SetVolume("SE*", 3000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　そう宣告して、一条は踵を返した。
　門に向かい歩んでゆく。

　劒冑と共に、大きくもない背中が遠ざかる。
　その足が、ふと止まった。

　振り返る。

　視線が絡む。

　雨靄に遮られ、俺に少女の瞳は窺えなかった。
　向こうからは――どうだろうか。

　一条が右腕を持ち上げる。
　人差し指を鋭く立てて。

　爪の先端が、俺の<RUBY text="みぞおち">鳩尾</RUBY>を正確に指した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0080380a02">
「殺してやるッッッ!!」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0080390a00">
「……………………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateSE("SEL01","se自然_水_雨音01_L");
	MusicStart("SEL01",2000,1000,0,1000,null,true);

	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);

	WaitKey(4000);
	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb01_009.nss"