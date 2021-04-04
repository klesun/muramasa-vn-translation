//<continuation number="100">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_033.nss_MAIN
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
	#bg073_海a_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md05_034.nss";

}

scene md05_033.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md05_032vs.nss"

//◆決戦・最終局
//◆暁の海上

	PrintBG("上背景", 30000);

	Wait(1000);

	OnBG(100, "bg073_海a_02.jpg");
	FadeBG(0, true);

	CreateTextureSPadd("光源100", 1000, Center, Middle, "cg/data/circle_04_00_1.png");
	Fade("光源100", 0, 700, null, true);

	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg073_海a_02.jpg");
	Zoom("絵背景50", 0, 1200, 1200, null, true);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg073_海a_02.jpg");
	Zoom("絵背景100", 0, 1400, 1200, null, true);
	Fade("絵背景100", 0, 600, null, true);
	CreateTextureSP("絵背景200", 100, Center, Middle, "cg/bg/bg073_海a_02.jpg");
	Zoom("絵背景200", 0, 1200, 1200, null, true);
	DrawTransition("絵背景200", 0, 500, 500, 200, null, "cg/data/slide_02_00_0.png", true);
//	DrawEffect("絵背景100", 50, "LowWave ", 0, 100, null);
	DrawEffect("絵背景100", 500, "SuperWave", 40, 40, null);


	//徒歩：前のファイルからの繋ぎの関係で海の音だけがいいと
	//SoundPlay("@mbgm01", 0, 1000, true);
	CreateSE("サウンド１","se自然_水_浜辺の波01_L");
	CreateSE("サウンド２","se自然_水_浜辺の波02_L");
	SoundPlay("サウンド１",2000,1000,true);
	SoundPlay("サウンド２",2000,1000,true);

	Wait(1000);


	Move("絵背景*", 12000, @-100, @0, null, false);

	Zoom("光源100", 12000, 1300, 1300, null, false);
	Fade("光源100", 12000, 200, null, false);
	FadeDelete("上背景",3000,true);

	Wait(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　俺が落とされたのは、<RUBY text="うなばら">海原</RUBY>の只中だった。

　沈み――浮き上がる。
　そこまで生命が持続した事は、奇跡だった。

　身体のあらゆる箇所が壊れている。
　まともに動く部位は一つも無い。

　血は止め処なく流れて海水を汚す。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//◆ノイズ交じり
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0330010a01">
《……ご……
　ごめんなさい……御堂……》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0330020a01">
《私が……貴方を……
　……<RUBY text="・・・">望んだ</RUBY>ばかりに……》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0330030a00">
「……いや……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　虫の息の金打声に、己の耳でも聞き取れないほどの
声を返す。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0330040a00">
「これで……いい。
　……<RUBY text="・・・">これで</RUBY>……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0330050a01">
《…………》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0330060a00">
「後は……任せろ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　返答はなかった。
　俺の劒冑は、もうそうするだけの力を失っていた。

　心甲一致を破られ。
　俺の肉体は砕かれ。
　村正も、既に瀕死。

　もはや戦う事はできない。

　だが、<k>
　
　
　…………これでいい。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("サウンド*", 3000, 0, NULL);

	Wait(1500);
	SoundPlay("@mbgm14", 0, 1000, true);

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0330070a00">
（あいつは）

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0330080a00">
（本当に、陰謀に向いていなかった）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　これは呪いだ――などと。
　言うべきではなかったのだ。

　世界を壊したかったのなら。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0330090a00">
（茶々丸め）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　あれは忠告だった。
　あの一言が無ければ、俺はきっと、最後まで気付か
なかった。

　無我を実現し。
　純粋に世界を守るべく戦う<RUBY text="もの">英雄</RUBY>となり。

　そして。

　世界を殺戮せんとしたであろう。

　何故ならば、<k>
　――――村正の掟は善悪相殺。

　何かを守るために敵を殺せば、
　守ろうとしたものをも失う宿命。

　魔王を討った英雄は、
　新たな魔王と化して世界を襲う。

　英雄になっては、いけなかったのだ。

　無我で敵を討ってはならない。
　自我で敵を討たねばならない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0330100a00">
（…………）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　己を振り返れば、苦い嘲笑で唇が歪む。
　……そも何をとち狂い、世界を守って戦おうなどと
身に過ぎた念を抱いたのやら。

　それが俺の分際に相応かどうか――物を考える頭が
あればわかりそうなものだ。

　選び得る道は元より一つきりだった。

　無我ではない。
　英雄ではない。

　俺はあくまでも、<k>
　湊斗景明として、<k>
　湊斗光を、殺すのだ。

　そう。<k>
　湊斗光の、唯一の家族として。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 500, 0, 1000, 500, null, "cg/data/slide_02_01_0.png", true);

	Delete("絵演光");

}

..//ジャンプ指定
//次ファイル　"md05_034.nss"