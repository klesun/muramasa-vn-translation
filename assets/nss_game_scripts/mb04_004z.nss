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

scene mb04_004z.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "mz00_000.nss";

}

scene mb04_004z.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb04_004baa.nss"
//前ファイル　"mb04_004bab.nss"
//前ファイル　"mb04_004bac.nss"


//◆共通結末
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureSP("絵演背景", 100, Center, Middle, "cg/ef/ef004_汎用血雫.jpg");
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm32",0,1000,true);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/004z0010a00">
「あ――」


{	FwC("cg/fw/fw景明_狂怒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/004z0020a00">
「あああああ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　俺の迷いが。
　躊躇いが。

　養母を死なせた。

　俺は助けられたのに！
　助ける力があったのに！

　ただ無意味に力を持ったまま、
　養母の、罪もなき死を看過した。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
	ClearWaitAll(2000, 0);
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 150, "#000000");
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　意識が沈む。
　絶望の底へ。

　…………ああ。
　でも、良かった。

　今にして気付いた。
　これは夢だ。

　もう目覚める。
　本当の<RUBY text="せかい">現実</RUBY>へ戻れる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/004z0030a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　――もっとも。
　その現実でも、俺はやがて絶望へ沈むのだろう。

　この夢と同じように。
　俺は迷いを抱え、抱えたまま、何もできずに佇むの
だろうから。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(0, 5000);

//◆タイトルへ

}

..//ジャンプ指定
//次ファイル