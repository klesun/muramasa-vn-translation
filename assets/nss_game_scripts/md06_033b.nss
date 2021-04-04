//<continuation number="60">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_033b.nss_MAIN
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
	#ev139_統を殺害_a=true;
	#ev106_雄飛と見下ろす村正_d=true;
	#bg023_弥源太の家_03a=true;
	#bg037_競技場ガレージa_01=true;
	#bg043_江ノ島山林_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_034.nss";

}

scene md06_033b.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md06_033.nss"

//●……殺せない
	PrintBG("上背景", 30000);

	CreateColorSP("黒１", 1000, "BLACK");

	SetVolume("@m*", 100, 0, null);
	Delete("上背景");

//BGMなしはわざとです。 inc櫻井

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　憎い。

　憎いから、殺す。

　これは復讐だ。

　村正はこの男に殺された。

　殺されたから、殺し返す。

　当然の法だ。

　だから、殺す。

　だから、<k>
　だから、<k>
　
　だが、

　俺は、
　その当然の復讐を、誰かに許した事があるだろうか？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想：各種殺害記憶
	EfRecoIn1(18000,600);

	CreateTextureSP("絵回想100", 15000, @0, @0, "cg/ev/ev139_統を殺害_a.jpg");


	EfRecoIn2(300);
	
	WaitKey(1000);
	
	EfRecoIn1(18000,600);

	Delete("絵回想*");
	CreateTextureSP("絵回想100", 15000, @0, @0, "cg/ev/ev106_雄飛と見下ろす村正_d.jpg");


	EfRecoIn2(300);

	WaitKey(1000);
	
	EfRecoIn1(18000,600);

	Delete("絵回想*");
	CreateTextureSP("絵回想100", 15000, @0, @0, "cg/bg/bg023_弥源太の家_03a.jpg");
	StL(16000, @0, @0, "cg/st/stふき_通常_私服.png");
	StR(16100, @0, @0, "cg/st/stふな_通常_私服.png");
	FadeStA(0, true);


	EfRecoIn2(300);

	WaitKey(1000);
	
	EfRecoIn1(18000,600);

	Delete("絵回想*");
	DeleteStA(0,true);
	CreateTextureSP("絵回想100", 15000, @0, @0, "cg/bg/bg037_競技場ガレージa_01.jpg");
	StL(16000, @0, @0, "cg/st/st皇路_通常_私服.png");
	StR(16100, @0, @0, "cg/st/st操_通常_私服.png");
	FadeStA(0, true);


	EfRecoIn2(300);

	WaitKey(1000);


	EfRecoIn1(18000,600);

	Delete("絵回想*");
	DeleteStA(0,true);
	CreateTextureSP("絵回想100", 15000, @0, @0, "cg/bg/bg043_江ノ島山林_03.jpg");
	StR(16000, @0, @0, "cg/st/stガーゲット_通常_制服a.png");
	FadeStR(0, true);


	EfRecoIn2(300);

	WaitKey(1000);

	EfRecoOut1(300);

	DeleteStA(0,true);
	Delete("絵回想*");

	EfRecoOut2(600,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　何人も、何人も殺してきた。
　その死を深く悲しんだ人の数は、幾倍になるだろう。

　どれ程の人が、殺害者への復讐を望んでいるだろう。

　だがその中の誰一人、宿願を遂げてはいない。
　俺がこうして生きているのだから。

　自分への復讐を許さない俺が、自分の復讐で誰かを
殺せるのか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_狂相.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/md06/033b0010a00">
（殺したい）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　深く思う。
　村正を奪った男が、余りにも憎い。

　だが――村正を殺したのは、<RUBY text="・・・・・">この男だけ</RUBY>なのか。

　雪車町のした事はある意味、復讐だ。
　俺の殺人を憎み、俺への報復を望んだ。

　俺が契機だ。

　俺がこの男に、村正を殺させた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_狂相.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md06/033b0020a00">
（殺す）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　そうして尚、思う。
　この男を殺したい。

　この男の手で村正が殺されたのだから！

　殺す。
　殺せる。

　事の理非など知らぬ。
　俺は元より、血に<RUBY text="つ">浸</RUBY>かった殺人鬼。

　女子供老人に至るまで殺してきたのだ。
　今更、こんな世間の場所塞ぎのようなちんぴらを、
殺せない筈があろうか。

　殺せる。
　迷いなく殺せる。

　これまでやってきたように。

　殺せる。<k>
　だが。<k>
　
　過去、俺が人を殺したのは――

　災いを封じたかったから。

　目の前の一人を殺すことで、大勢の人の死が未然に
防がれると信じたから。

　――だから殺した。

　新田雄飛も、<k>ふきとふなも。<k>
　皇路卓も、<k>ガーゲット少佐も。<k>
　
{
	EfRecoIn1(18000,600);
	CreateTextureSP("絵回想100", 15000, @0, @0, "cg/ev/ev256_銀星号の最期_b.jpg");
	EfRecoIn2(300);
}
　光も。

　だから殺したのだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	EfRecoOut1(300);
	Delete("絵回想*");
	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/md06/033b0030a00">
（そうだ）

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/033b0040a00">
（そうだった）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　その原点――
　己が選んだ道を思い出す。

　<RUBY text="・・・・・・・・・・・">人を殺して平和を求める</RUBY>。
　そんな道に、俺は立っていたのだ。

　今は、どうか。

　この男を殺して、誰が救われるだろう。

　誰も救われない。

　俺の復讐心が満たされるだけ。

　……それでも殺せるか。

　俺は、<k>
　俺の憎しみを晴らし、<k>
　俺自身を救うためだけに、<k>
　人の命を奪えるか。

　奪えるのか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/md06/033b0050a00">
「…………」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/033b0060a00">
「……く……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆石を振り下ろす
//◆ごす。土を打つ音

	OnSE("se戦闘_攻撃_野太刀振る01", 1000);

	WaitKey(1000);

	OnSE("se人体_衝撃_転倒05", 1000);

	WaitKey(1000);

	ClearWaitAll(1500, 1000);

}

..//ジャンプ指定
//次ファイル　"md06_034.nss"