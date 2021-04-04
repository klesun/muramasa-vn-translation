//<continuation number="80">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_034a.nss_MAIN
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
	#bg003_荒れ野_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mz00_000.nss";
}

scene md06_034a.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md06_034.nss"

//●逃げる
	PrintBG("上背景", 30000);
	OnBG(100, "bg003_荒れ野_02.jpg");
	FadeBG(0, true);

	CreateSE("SE風", "se自然_風_荒野_L");
	MusicStart("SE風", 2000, 800, 0, 800, null,true);

	Delete("上背景");

//BGMなしはわざとです。 inc櫻井

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　疲労していた。

　最後の支えを失い、俺が感じるものはもうそれだけ
だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md06/034a0010a00">
「ああ……」

{	FwC("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034a0020a12">
「……」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/034a0030a00">
「何処かへ……行く。
　もう何とも、関わらなくて済むような所へ」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034a0040a12">
「……へぇ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　重い足を引いて歩く。

　何処かの逃げ場へ。
　願わくば、何も無い場所へ。

　背後から声。
　――引き止める響きでは、なかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034a0050a12">
「いいぜ……」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034a0060a12">
「逃がしてやらァ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　立ち上がる気配。

　そして、<k>
{	CreateSE("SE01","se戦闘_動作_刀構え01");
	MusicStart("SE01",0,1000,0,1000,null,false);}
　刃音。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ざしゅ。
//◆ばた。
	CreateSE("SE02","se戦闘_攻撃_刀刺さる05");
	MusicStart("SE02",0,1000,0,1000,null,false);

	CreateColorSP("絵色血", 4000, "#990000");
	Wait(100);
	FadeDelete("絵色血", 600, true);

	Move("@OnBG*", 500, @0, @-50, null, false);
	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	OnSE("se人体_衝撃_転倒04", 1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　冷えた草地に倒れ伏す。

　……ああ。
　遠くなる。何もかも。

　望んだ通りに。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034a0070a12">
「湊斗……」

{	FwC("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/034a0080a12">
「てめぇは最後まで、つまらねえ奴だったよ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　侮蔑の声。
　それを聴いて思う。

　――真逆。
　夢だに考えもしなかった。

　この男が、こんな……優しい人間だったとは。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(3000, 1000);

//◆ゲームオーバー

}

..//ジャンプ指定
//次ファイル