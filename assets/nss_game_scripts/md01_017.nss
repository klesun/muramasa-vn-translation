//<continuation number="150">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_017.nss_MAIN
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
	#ev211_大仏の上に立つ銀星号_a=true;
	#ev211_大仏の上に立つ銀星号_b=true;
	#ev211_大仏の上に立つ銀星号_c=true;
	#bg095_高徳院の境内_02=true;
	#bg002_空a_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_018.nss";

}

scene md01_017.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_016vs.nss"

//◆たったっ。誰か来るＳＥ
//◆ＥＶ：見合う両者。見上げる景明の大仏の上の光
//◆光の姿は明示しない
	PrintBG("上背景", 30000);

	OnBG(100,"bg095_高徳院の境内_02.jpg");
	StL(1000, @0, @0,"cg/st/st二世村正_通常_私服.png");
	FadeBG(0,true);
	FadeStL(0,true);

	CreateTextureEX("絵ＥＶ", 4000, -180, InBottom, "cg/ev/resize/ev211_大仏の上に立つ銀星号_bm.jpg");

	StR(1000, @90, @0,"cg/st/st景明_通常_囚人.png");

	Delete("上背景");


	CreateSE("SE01","se人体_足音_走る03");
	CreateSE("SE01a","se人体_動作_後ずさり01");

	MusicStart("SE01",0,1000,0,1000,null,false);

	WaitKey(2000);

	SetVolume("SE01", 300, 0, null);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Move("@StR*", 300, @-90, @0, Dxl2, false);
	FadeStR(300,true);

	WaitKey(1000);

	Move("絵ＥＶ", 8000, @0, -50, DxlAuto, false);
	Fade("絵ＥＶ", 1000, 1000, null, true);

	SoundPlay("@mbgm14",0,1000,true);

	WaitAction("絵ＥＶ", null);
	DeleteStA(0,true);

	SetFwC("cg/fw/fw光影_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【光】
<voice name="光" class="光" src="voice/md01/0170010a14">
「景明」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0170020a00">
「……光……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);

//◆ウェイト
//◆境内
	WaitKey(2000);
	FadeDelete("絵ＥＶ", 1000, true);

	Wait(300);

	StL(1000, @0, @0,"cg/st/st二世村正_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw二世村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0170030a15">
「……どうするのだ？　御堂」

{	FwC("cg/fw/fw光影_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0170040a14">
「今日はもう良い。
　顔を見たら、気が済んだ」

//【光】
<voice name="光" class="光" src="voice/md01/0170050a14">
「景明も、劒冑がその<RUBY text="ざま">態</RUBY>では遊べまいしな」

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0170060a15">
「承知」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆二世、女王蟻に戻る。飛ぶ
	CreateSE("SE01","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵色白", 5000, "#FFFFFF");

	DeleteStA(0,true);

	CreateTextureSP("絵立絵左", 1000, Center, Middle, "cg/st/3d二世女王蟻_煽り.png");
	Request("絵立絵左", Smoothing);
	Rotate("絵立絵左", 0, @0, @180, @0, null,true);
	Move("絵立絵左", 0, @-256, @0, null, true);

	FadeDelete("絵色白", 1000, true);

	Wait(300);

	CreateSE("SE02","se人体_動作_跳躍02");
	MusicStart("SE02",0,1000,0,1000,null,false);

	Move("絵立絵左", 300, @0, @-600, Axl2, false);
	Fade("絵立絵左", 300, 0, null, true);
	Delete("絵立絵左");

//◆ＥＶ：見合う両者。差分、光の背後に二世蟻
	CreateTextureEX("絵ＥＶ", 4000, Center, InTop, "cg/ev/ev211_大仏の上に立つ銀星号_c.jpg");
	Fade("絵ＥＶ", 1000, 1000, null, true);

	SetFwL("cg/fw/fw光影_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【光】
<voice name="光" class="光" src="voice/md01/0170070a14">
「景明。
　おまえに伝えておくぞ」

{	FwL("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0170080a00">
「……」

{	FwL("cg/fw/fw光影_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0170090a14">
「おれは八幡宮へゆく」

{	FwL("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0170100a00">
「……!?」

{	FwL("cg/fw/fw光影_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0170110a14">
「少し、面白い趣向を考えついてな」

//【光】
<voice name="光" class="光" src="voice/md01/0170120a14">
「我が父に我が覇道を捧げる……。
　そのために相応しい時と場を選んだ」

{	FwL("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0170130a00">
「……父に……？」

{	FwL("cg/fw/fw光影_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md01/0170140a14">
「近いうちだ。
　待っているがいい！」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆装甲・銀星号
//◆飛び去る
	CreateSE("SE01","se特殊_鎧_装着04");
	MusicStart("SE01",0,1000,0,1250,null,false);
	CreateColorSP("絵色白", 5000, "#FFFFFF");
	CreateTextureSP("絵ＥＶ", 4000, Center, InTop, "cg/ev/ev211_大仏の上に立つ銀星号_a.jpg");
	OnBG(100,"bg002_空a_02.jpg");
	FadeBG(0,true);
	Fade("絵色白", 300, 0, null, true);

	Wait(700);

	CreateSE("SE01b","se戦闘_動作_空上昇01");

	Fade("絵色白", 0, 1000, null, true);
	MusicStart("SE01b",0,1000,0,1250,null,false);
	SetVolume("@mbgm*", 2000, 0, null);

	Delete("絵ＥＶ*");

	FadeDelete("絵色白", 1000, true);

	SetFwL("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0170150a00">
「…………」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md01_018.nss"