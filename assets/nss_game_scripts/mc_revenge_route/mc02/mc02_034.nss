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

scene mc02_034.nss_MAIN
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
	#ev174_鍛造雷弾投下=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc02_035.nss";

}

scene mc02_034.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc02_033.nss"

//◆普陀楽。騒乱中
//◆銀星号
	PrintBG("上背景", 30000);
	SoundPlay("@mbgm12",0,1000,true);
	CreateColorSP("黒幕１", 15000, "BLACK");
	CreateTextureSP("絵背景10", 1000, Center, Middle, "cg/bg/bg026_普陀楽山塞a_01.jpg");
	Delete("上背景");
	
	CreateSE("悲鳴", "se背景_ガヤ_悲鳴01");
	MusicStart("悲鳴", 0, 1000, 0, 1000, null,true);

	FadeDelete("黒幕１", 1500, true);

	Wait(1000);

	SetVolume("悲鳴", 5000, 0, null);
	CreatePlainSP("絵板写", 19990);
	CreateTextureSP("絵背景10", 1000, Center, Middle, "cg/bg/bg001_空b_01.jpg");
	FadeDelete("絵板写", 1000, true);

	CreateWindow("絵窓", 5000, 48, 0, 340, 576, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 0, 1000, null, true);
	CreateColorSP("絵窓/絵演色", 5010, "#CC0000");
	CreateTextureSPmul("絵窓/絵演背景", 5020, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	Move("絵窓/絵演背景", 0, @-512, @0, null, true);

	CreateTextureSP("絵窓/絵演立絵装甲", 5100, Center, Middle, "cg/st/resize/3d銀星号_騎突_通常l.png");
	Request("絵窓/絵演立絵装甲", Smoothing);
	Rotate("絵窓/絵演立絵装甲", 0, @0, @180, @0, null,true);
	Move("絵窓/絵演立絵装甲", 0, @-250, @0, null, true);

	Move("絵窓/絵演立絵装甲", 600, @-30, @0, Dxl1, false);
	Zoom("絵窓", 300, 1000, 1000, Dxl2, true);

	SetFwR("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【光】
<voice name="光" class="光" src="voice/mc02/0340010a14">
「――――」


{	FwR("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/mc02/0340020a15">
《……御堂？
　如何した》

{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mc02/0340030a14">
「<RUBY text="そら">天</RUBY>より来たる」

//【光】
<voice name="光" class="光" src="voice/mc02/0340040a14">
「……<RUBY text="ちから">破壊</RUBY>の<RUBY text="たまり">果</RUBY>」


{	FwR("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/mc02/0340050a15">
《――!?》


{	FwR("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/mc02/0340060a14">
「うぬ!!」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,150);//―――――――――――――――――――――――――――――

//◆雷弾襲来
	CreateSE("SE01","se戦闘_破壊_爆発07");
	MusicStart("SE01",0,1000,0,850,null,false);
	CreateTextureSPadd("絵演上", 11100, Center, Middle, "cg/ef/ef031_鍛造雷弾襲来.jpg");
	CreateTextureSP("絵演", 11000, Center, Middle, "cg/ef/ef031_鍛造雷弾襲来.jpg");
	SetVertex("絵演*", 340, 430);
	Zoom("絵演", 0, 1100, 1100, null, true);
	Zoom("絵演上", 0, 1400, 1400, null, false);

	Delete("絵演型*");
	Delete("絵窓*");

	Fade("絵演上", 0, 500, null, true);
	Zoom("絵演上", 400, 1000, 1000, Dxl2, false);
	FadeFR2("絵演",0,1000,500,@0,@0,50,Dxl2, false);
	FadeDelete("絵演上", 1000, true);

//◆銀星号、飢餓虚空・魔王星発動
//◆力が鬩ぎ合う感じのＳＥとか
//◆黒い闇
//◆に、白くひび割れ一筋。ビキッと。
	CreateColorSP("絵色黒", 19900, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	PrintGO("上背景", 20000);
	CreateColorSP("絵色黒", 19900, "#000000");

	CreateTextureSP("絵背景", 100, Center, InTop, "cg/bg/bg202_旋回演出背景山_01.jpg");
	CreateTextureSP("絵立絵", 1000, Center, Middle, "cg/st/3d銀星号_騎突_通常.png");
	Move("絵立絵", 0, @60, @0, null, true);
	Request("絵立絵", Smoothing);
	Rotate("絵立絵", 0, @0, @180, @0, null,true);

	Delete("上背景");

	Move("絵立絵", 600, @-60, @0, Dxl2, false);
	DrawDelete("絵色黒", 150, 100, "slide_02_01_0", true);

	WaitAction("絵立絵", null);

	CreateSE("SE06","se戦闘_銀星号_飢餓虚空魔王星_準備");
	MusicStart("SE06",0,1000,0,1000,null,true);
	CreateColorSPadd("絵色白", 19900, "#FFFFFF");

	CreateTextureSP("絵演効果", 4100, Center, Middle, "cg/ef/ef037_飢餓虚空魔王星a.jpg");
	Request("絵演効果", Smoothing);
	Zoom("絵演効果", 0, 1000, 10000, null, true);
	SetBlur("絵演効果", true, 3, 500, 60, false);

	Wait(200);
	Delete("絵背景*");
	Delete("絵立絵*");
	Zoom("絵演効果", 2000, 1000, 1000, DxlAuto, false);

	Fade("絵色白", 300, 0, null, false);
	WaitAction("絵演効果", null);


	SetVolume("SE06", 2000, 0, null);
	OnSE("se戦闘_銀星号_飢餓虚空魔王星_発動", 1000);

	Fade("絵色白",100,1000,null,true);
	Delete("絵演効果*");
	CreateTextureSP("絵背景30", 1100, Center, Middle, "cg/ef/ef037_飢餓虚空魔王星b.jpg");
	Fade("絵背景30",1000,500,null,true);
	Zoom("絵背景30", 0, 1050, 1050, null, true);
	Wait(200);
	Zoom("絵背景30", 50000, 1500, 1500, null, false);
	MoveFFP1("@絵背景30",1000);
	Fade("絵色白",300,0,null,true);

	WaitKey(1000);

	CreateSEEX("鬩ぎあい", "se戦闘_攻撃_エネルギー鬩ぎ合い01_L");
	MusicStart("鬩ぎあい", 0, 1000, 0, 1000, null,true);

	OnSE("se特殊_鎧_ひび割れ01", 1000);

	SetFwR("cg/fw/fw二世女王蟻_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/mc02/0340070a15">
《かッ》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/mc02/0340080a15">
《く――<?>
{Wait(500);}
ああああああああああああああああ
あああアアアアアアアアアアアアアアアＡＡ
ＡＡＡＡＡＡＡＡＡＡＡＡＡＡＡＡＡＡＡＡ》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆もう一筋。ビキ。
	Fade("絵色白",100,1000,null,true);

	OnSE("se特殊_鎧_ひび割れ02", 1000);

	OnSE("se戦闘_破壊_銀星号破壊", 1000);

	OnSE("se特殊_電撃_放電02", 1000);
	CreateTextureSP("絵背景30", 1100, Center, Middle, "cg/ef/ef037_飢餓虚空魔王星c.jpg");
	Zoom("絵背景30", 0, 1050, 1050, null, true);
	Zoom("絵背景30", 50000, 1500, 1500, null, false);
	MoveFFP1("@絵背景30",750);
	Fade("絵色白",300,0,null,true);

	SetFwR("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【光】
<voice name="光" class="光" src="voice/mc02/0340090a14">
「この光を！」

//【光】
<voice name="光" class="光" src="voice/mc02/0340100a14">
「この<RUBY text="ひかる">銀星号</RUBY>を――」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆更に。ビキビキ。

	Fade("絵色白",100,1000,null,true);
	OnSE("se特殊_電撃_放電02", 1000);

	CreateTextureSP("絵背景30", 1100, Center, Middle, "cg/ef/ef037_飢餓虚空魔王星d.jpg");
	Zoom("絵背景30", 0, 1050, 1050, null, true);
	Zoom("絵背景30", 50000, 1500, 1500, null, false);
	MoveFFP1("@絵背景30",500);
	Fade("絵色白",300,0,null,true);

	SetFwR("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【光】
<voice name="光" class="光" src="voice/mc02/0340110a14">
「凌辱するかッッッ!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ビキビキビキ。
//◆バキーン。砕け散った。
//◆核爆発。ちゅどーん。
	SetVolume("@mbgm*", 2500, 0, null);
	Fade("絵色白",2500,1000,null,true);
	SetVolume("鬩ぎあい", 1000, 0, null);

	OnSE("se特殊_鎧_ひび割れ02", 1000);

	WaitKey(1500);

	OnSE("se特殊_陰義_発動03", 1000);

	OnSE("se戦闘_神_グラビティブラスト_発射", 1000);
	OnSE("se戦闘_銀星号_ブレイジングストリーム", 1000);
	OnSE("se特殊_陰義_発動02", 1000);

	Delete("絵背景*");
	Wait(2400);

	SetVolume("@mbgm*", 300, 0, null);
	SetVolume("SE*", 300, 0, null);
	SetVolume("@OnSE*", 300, 0, null);

	Wait(2000);

	OnSE("se戦闘_破壊_爆発09", 1000);
	CreateTextureSP("絵効果", 19000, Center, InBottom, "cg/ef/ef046_炎a.jpg");
	SetVertex("絵効果", center, bottom);
	Zoom("絵効果", 0, 600, @0, Dxl1, true);
	Zoom("絵効果", 3000, @0, 10000, Dxl1, false);

	Fade("絵色白",300,0,null,true);

	Wait(2000);


	CreateTextureSP("絵背景50", 18000, Center, Middle, "cg/ev/ev174_鍛造雷弾投下.jpg");
	CreatePlainEX("絵板写", 18100);
	Zoom("絵背景50", 0, 1050, 1050, null, true);
	Zoom("絵板写", 0, 1100, 1100, null, true);
	Zoom("絵背景50", 50000, 1500, 1500, null, false);
	Fade("絵板写", 0, 500, null, true);
	MoveFFP1("@絵板写",250);

	FadeDelete("絵効果", 1000, true);

	Wait(3000);

	ClearWaitAll(2000, 2000);



}

..//ジャンプ指定
//次ファイル　"mc02_035.nss"