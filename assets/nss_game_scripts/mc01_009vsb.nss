

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_009vsb.nss_MAIN
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
	$First_Battle_Defense = true;

	Cockpit_AllFade0();

	$PreGameName = $GameName;

	$GameName = "mc01_010vs.nss";

}

scene mc01_009vsb.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_009vs.nss"

//●ひとまず防御
	PrintBG("上背景", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	CreateTextureSP("絵演", 18000, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	Move("絵演*", 0, -615, @0, Dxl2, false);
	FadeDelete("上背景", 0, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010a]
　素性も目的も知れない敵だ。
　慎重にしてし過ぎるという事はないだろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵演村正", 17100, Center, Middle, "cg/st/3d村正標準_騎航_戦闘a.png");
	CreateTextureSP("絵背景", 17000, InRight, Middle, "cg/bg/resize/bg002_空a_01.jpg");

	Request("絵背景", Smoothing);
	Request("絵演村正", Smoothing);
	Move("絵演村正", 0, @-160, @120, null, true);
	Zoom("絵演村正", 0, 1300, 1300, null, true);

	CreateSE("SE01","se戦闘_動作_刀構え02");

	Shake("絵演村正", 2160000, 1, 1, 0, 0, 1000, null, false);
	Zoom("絵背景", 0, 1500, 1500, null, true);
	Move("絵背景", 60000, 0, @0, null, false);

	Move("絵演", 300, @60, @0, DxlAuto, false);
	Move("絵演村正", 300, @60, @0, DxlAuto, false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("絵演", 300, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010b]
　勝負を急ぎたい気持ちはあったが、俺は一旦それを
抑え込んだ。
　太刀を上段に構える。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵背景", 2000, 1000, 1000, null, false);
	Zoom("絵演村正", 2000, 260, 260, DxlAuto, false);
	BezierMove("絵演村正", 2000, (@0,@0){@-600,@-90}{@+330,@-210}(@400,@-300), DxlAuto, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010c]
　そのまま進み――激突の瞬間、俺は深く沈む進路を
取った。
　敵騎の攻撃範囲を脱する。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

//◆そーいう回避動作
	CreateSE("SE01a","se戦闘_動作_空突進02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	SetBlur("絵演村正", true, 2, 500, 40, true);
	Move("絵演村正", 300, @-1024, @576, Dxl2, true);

	WaitKey(300);

	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	CreateTextureSP("絵演合体", 17100, Center, Middle, "cg/st/3dガッタイダー_騎突_戦闘a.png");
	CreateTextureSP("絵背景", 17000, InLeft, Middle, "cg/bg/resize/bg002_空a_01.jpg");

	Request("絵背景", Smoothing);
	Request("絵演合体", Smoothing);

	Shake("絵演合体", 2160000, 1, 1, 0, 0, 1000, null, false);
	Zoom("絵背景", 0, 1500, 1500, null, true);

	Move("絵演合体", 300, @0, @-30, DxlAuto, false);
	Zoom("絵背景", 150000, 1100, 1100, null, false);

	DrawDelete("絵色黒", 150, 100, "slide_01_03_1", true);

	SetFwR("cg/fw/fwガッタイダー_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc01/009vs0520b33">
《股ぐらから手を突っ込んでぇ背骨を抜いて
あげるのねぇぇぇぇぇっ!!》

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

//◆斧の一撃
	CreateColorSP("絵色黒", 20000, "#000000");
	CreateSE("SE01","se戦闘_攻撃_斧振る01");
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_down2(20010,@0, @-200,2000);
	SL_downfade2(10);

	CreateColorSP("絵色白", 20010, "#FFFFFF");
	Wait(10);

	Delete("絵色黒");
	Delete("絵演*");
	Delete("絵背景*");

	WaitKey(200);

	CreateSE("SE01a","se戦闘_動作_空突進01");
	CreateTextureSP("絵演背景", 18000, Center, -900, "cg/bg/bg201_旋回演出背景市街地_01.jpg");

	MusicStart("SE01a",0,1000,0,1000,null,false);
	Move("絵演背景", 1500, @0, @-180, Dxl2, false);
	Fade("絵色白", 850, 0, DxlAuto, false);
	DrawDelete("絵色白", 1000, 100, "slide_06_00_0", true);

	CreateSE("SEL01","se戦闘_動作_空走行02_L");
	MusicStart("SEL01",3000,1000,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　……<RUBY text="かす">掠</RUBY>りもしない。
　敵は単純に、斧を打ち下ろしてきただけだった。

　その一撃も力任せで、精緻な技とは縁遠い。
　別に後悔はしていないが……少々、この恐ろしげな
見掛けの敵を警戒し過ぎたか。

　などと考えた瞬間だった。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	SetVolume("SEL*", 100, 1, null);

//◆ガリッ。攻撃が甲鉄をかする。
//◆ちょっと揺れて、交差
	CreateColorSP("絵白転", 20000, "#FFFFFF");
	CreateSE("SE01","se戦闘_攻撃_鎧攻撃命中");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreatePlainSP("絵板写", 18010);
	FadeDelete("絵白転", 300, false);
	FadeFR2("絵板写",0,1000,300,0,0,30,Dxl3, true);
	Delete("絵板写");

	SetVolume("SEL*", 3000, 1000, null);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0530a00">
「……!?
　何だ？」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0540a00">
「攻撃を受けたのか？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/009vs0550a01">
《……そ、そうみたい。
　損傷は無いけど》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/009vs0560a01">
《どうやって……!?》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　今のは敵の攻撃だった。
　<RUBY text="・・・・・">つつかれた</RUBY>方向を思えば、それは間違いない。

　だが手段が不明だった。
　斧の一撃は完全に躱していた筈……。

　何なのか。
　隠し武器か、それとも何らかの体術か。

　……いずれにしろ、慎重な対応を選んだのは誤りで
はなかったらしい。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SEL*", 300, 0, null);
	CreateSE("SE01","se戦闘_動作_空突進02");
	CreateColorSP("絵色黒", 20000, "#000000");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);

	WaitPlay("SE*", null);

..//ジャンプ指定
//次ファイル　"mc01_010vs.nss"


}