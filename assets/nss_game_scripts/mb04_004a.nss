
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_004a.nss_MAIN
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
	#bg054_湊斗家祭殿b_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "mz00_000.nss";

}

scene mb04_004a.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb04_004.nss"
//前ファイル　"mb04_004bb.nss"

//●このまま斬る
//◆ずばしゃー。
	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 100, "#000000");
	CreateTextureSP("絵演背景", 3000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	Delete("上背景");

	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("絵演背景", 150, 100, "circle_01_00_1", true);

	CreateSE("SE01b","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	SL_leftdown(@0, @0,1500);
	SL_leftdownfade2(10);

	CreateSE("SE01c","se人体_血_血しぶき01");
	MusicStart("SE01c",0,1000,0,1000,null,false);
	SL_centerdamN(@0, @0,1000);
	SL_centerdamfadeN2(10);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　斬った――――
　斬った！

　悪を、斬った！
　養母を救った！

　正義が勝利した……！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 30000);
	SoundPlay("@mbgm28",3000,1000,true);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg054_湊斗家祭殿b_02.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	Wait(500);

	SetFwC("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0040510b40">
《そう、それで良いのだ御堂。
　それが正しいのだ》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0040520b40">
《邪悪を断ち切ること――
　それは間違いなく、正義なのだから！》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040530a00">
「……ああ。そうだ。
　それだけは真実だ」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040540a00">
「だから――
　これで、いい」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆ホワイトアウト
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 1000, "#FFFFFF");
	FadeDelete("上背景", 2000, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　俺は全てを理解した。<k>
　……これが夢である事も、既に悟っている。

　だが、虚しいとは思わない。

　この夢は間もなく醒める。
　目覚めてから、何をするべきなのか――
　
　今の俺は、それを知っているのだから。

　もう迷いはない。

　さぁ、行かねば。
　この光の向こうへ。

　そこでは、共に戦うべき少女が、
　俺と力を合わせ、二人で一つの正義の剣となるべき
者が――

　綾弥一条が、俺の目覚めを待っている。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(5000, 5000);

//◆タイトルへ

}

..//ジャンプ指定
//次ファイル