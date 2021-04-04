//<continuation number="110">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_022b.nss_MAIN
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

	$GameName = "ma04_023.nss";

}

scene ma04_022b.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_022.nss"

//●違う
	PrintBG("上背景", 30000);
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　――違う。

　惑わされるな。
　これはただの鉄人形。

　<RUBY text="・・">何か</RUBY>に似ているだけの、人形だ。
　そんなものでしかない。

{	CreateSE("SE01","se戦闘_動作_刀構え02");
	MusicStart("SE01",0,1000,0,1000,null,false);}
　俺は太刀を構えた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm04",0,1000,true);

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【光】
<voice name="光" class="光" src="voice/ma04/022b0010a14">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　切先を向ける。

　銀の少女は目を<RUBY text="みは">瞠</RUBY>った。
　不思議そうに、きょとんと、小首を傾げる。

　――鉄屑。

　冷えゆく胸中に、俺は一言を吐き捨てた。
　そうして、太刀を振りかぶる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【光】
<voice name="光" class="光" src="voice/ma04/022b0020a14">
「残念だ。
　どうやらおまえは気に入って貰えなかった
らしい」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆ざしゅ。手刀。
	CreateSE("SE01","se戦闘_攻撃_刀刺さる04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵色血", 4000, "#CC0000");
	CreateTextureSP("絵演銀立絵", 1000, -600, Middle, "cg/st/3d銀星号_立ち_戦闘b.png");
	FadeDelete("絵色血", 600, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　俺よりも先に――
　銀星号の手刀が、少女の胸を背後から貫いていた。

　少女が背後を向く。
　――お母さん、と言ったようだった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【光】
<voice name="光" class="光" src="voice/ma04/022b0030a14">
「うん。
　<RUBY text="グレイワンド">灰色の杖</RUBY>。我が<RUBY text="こ">娘</RUBY>よ……」

//【光】
<voice name="光" class="光" src="voice/ma04/022b0040a14">
「おまえは、<RUBY text="・・・">いらぬ</RUBY>とさ」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆ざしゅ。
	CreateSE("SE02","se戦闘_攻撃_刀刺さる05");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateColorSP("絵色血", 4000, "#CC0000");
	Delete("絵演*");
	FadeDelete("絵色血", 600, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　もう片手も、突き込む。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【光】
<voice name="光" class="光" src="voice/ma04/022b0050a14">
「娘などいらぬ。
　いらぬとよ！」

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/ma04/022b0060a14">
「いらぬでは、仕方ない――
　こうしてしまおうか！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆ざっぷり。
	CreateSE("SE03","se人体_血_血しぶき01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateColorSP("絵色血", 4000, "#CC0000");
	CreateColorEXadd("絵色白", 4000, "#FFFFFF");
	CreateTextureSPover("絵演血飛沫", 3000, Center, Middle, "cg/ef/ef007_汎用血しぶき.jpg");
	Rotate("絵演血飛沫", 0, @0, @180, @0, null,true);
	Zoom("絵演血飛沫", 0, 1100, 1100, null, true);
	Request("絵演血飛沫", Smoothing);
	FadeDelete("絵色血", 600, true);
	Fade("絵演血飛沫", 600, 0, null, false);
	DrawDelete("絵演血飛沫", 300, 100, "effect_01_00_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　……そして、引き裂いた。
　力任せに。

{	CreateSE("SE04","se特殊_雰囲気_発光03");
	Fade("絵色白", 0, 850, null, true);
	MusicStart("SE04",0,1000,0,1000,null,false);
	SetFrequency("SE04", 3000, 300, Dxl2);
	Wait(10);
	FadeDelete("絵色白", 600, false);}
　白銀の少女が<RUBY text="ほど">解</RUBY>けて散る。
　銀色の粒となって、消える。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【光】
<voice name="光" class="光" src="voice/ma04/022b0070a14">
「……これで良かろう？
　景明……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/022b0080a00">
「……いや」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/022b0090a00">
「もう一人、いるぞ」

{	SetVolume("@mbgm*", 2000, 0, null);
	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/ma04/022b0100a14">
「ふっふ……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_空突進02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetFrequency("SE01", 2000, 300, Dxl2);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　銀星号が地を蹴った。
　天へ舞い上がる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateSE("SE02","se人体_足音_鎧歩く04");
	MusicStart("SE02",0,1000,0,1000,null,false);
	StR(1000, @30, @0,"cg/st/3d村正標準_立ち_陰義.png");
	Move("@StR*", 300, @-30, @0, DxlAuto, false);
	FadeStR(300,false);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/022b0110a00">
「逃がすか！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵フラ", 5000, "#FFFFFF");
	$残時間=RemainTime("SE01");
	WaitKey($残時間);
	SetVolume("SE*", 200, 0, null);

}

..//ジャンプ指定
//次ファイル　"ma04_023.nss"