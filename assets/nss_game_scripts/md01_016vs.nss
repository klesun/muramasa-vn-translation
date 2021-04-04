//<continuation number="1360">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_016vs.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/md01_016vs.nss","DenziBladeCharge",true);
	Conquest("nss/md01_016vs.nss","DenziBladeChargeSet",true);
	

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
	#bg095_高徳院の境内_02=true;
	#bg001_空a_02=true;
	#ev212_二世村正戦闘体勢=true;
	#ev502_村正抜刀片手=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_017.nss";

}

scene md01_016vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_015.nss"


//◆村正と二世
	PrintBG("上背景", 30000);
	OnBG(100,"bg095_高徳院の境内_02.jpg");
	StL(1000, @0, @0,"cg/st/st二世村正_通常_私服.png");
	StR(1100, @0, @0,"cg/st/3d村正標準_立ち_抜刀.png");
	FadeStA(0,true);
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0010a01">
《そ、そんな芸……無意味よ！
　劒冑の戦力はこの<RUBY text="かたち">騎形</RUBY>が最も高い》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0020a01">
《戦えば私が勝つ！》

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0030a15">
「さて？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0040a01">
《この――》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

	SoundPlay("@mbgm13",0,1000,true);

//◆剣撃
//◆すかすか。避ける二世
	CreateSE("SE01","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE01",0,1000,0,1250,null,false);
	CreateTextureEXadd("絵演上", 3100, Center, Middle, "cg/ef/ef010_汎用斜め軌道.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ef/ef010_汎用斜め軌道.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Fade("絵演上", 0, 450, null, true);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演上", 500, 0, 30, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	CreateColorSP("絵色白", 5000, "#FFFFFF");
	Wait(10);
	Delete("絵色白");

	CreateSE("SE01a","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE01a",0,1000,0,1250,null,false);
	CreateTextureEXadd("絵演上", 3100, Center, Middle, "cg/ef/ef015_汎用横軌道.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ef/ef015_汎用横軌道.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Fade("絵演上", 0, 450, null, true);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演上", 500, 0, 30, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	CreateColorSP("絵色白", 5000, "#FFFFFF");
	DeleteStA(0,true);
	Delete("絵演*");
	Delete("絵色白");

	SetFwC("cg/fw/fw二世村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0050a15">
「ふん……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0060a01">
《――っ――》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆剣撃
//◆すかすか。
	CreateSE("SE01a","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateTextureEXadd("絵演上", 3100, Center, Middle, "cg/ef/ef012_汎用斜め軌道.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ef/ef012_汎用斜め軌道.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Fade("絵演上", 0, 450, null, true);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演上", 500, 0, 30, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	CreateColorSP("絵色白", 5000, "#FFFFFF");
	Delete("絵演*");
	DeleteStR(0,true);
	Delete("絵色白");

	SetFwC("cg/fw/fw二世村正_侮蔑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0070a15">
「……蝿でも追っているのか？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0080a01">
《ちょこまかとっ！》

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0090a15">
「まだ気付かぬか……。
　ほとほと血巡りの悪い娘だ」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0100a15">
「冑が素早いのではない。
　なれが――」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0110a01">
《ッ！》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

	StC(1000, @0,@20,"cg/st/st二世村正_通常_私服.png");
	Move("@StC*", 300, @0, @-20, Dxl2, false);
	FadeStC(300,true);

//◆二世踏み込み。拳打
//◆ずがーん。
	PrintGO("上背景", 10000);
	CreateColorSP("絵白転", 5000, "#FFFFFF");
	CreateSE("SE01","se戦闘_攻撃_鎧攻撃命中");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetBlur("上背景", true, 3, 300, 50, false);

	CreateSE("SE02","se人体_動作_跳躍03");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Zoom("上背景", 100, 2000, 2000, Dxl2, true);
	Delete("上背景");

	WaitKey(10);
	OnBG(100,"bg095_高徳院の境内_02.jpg");
	FadeBG(0,true);
	FadeDelete("絵白転", 300, false);
	CreatePlainSP("絵板写", 4999);
	FadeFR2("絵板写",0,1000,300,0,0,30,Dxl3, true);
	Delete("絵板写");

	StL(1000, @30, @0,"cg/st/st二世村正_通常_私服.png");

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0120a01">
《くはっ!?》

{	Move("@StL*", 300, @-30, @0, DxlAuto, false);
	FadeStL(300,false);
	FwC("cg/fw/fw二世村正_冷笑.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0130a15">
「あまりに<RUBY text="・・・・・">とろくさい</RUBY>だけだ。
　そんな動きでは蝿はおろか、牛も捕まえら
れん」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0140a01">
《……勝ち誇らないで！
　まだよ！》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆剣撃
//◆二世回避
	CreateSE("SE02","se人体_動作_跳躍02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	SetBlur("@StL*", true, 3, 300, 10, false);
	DeleteStL(150,false);
	Move("@StL*", 150, @60, @0, Dxl2, false);

	CreateSE("SE01","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_rightup(@-256, @0,1200);
	SL_rightupfade(0);

	StC(1000, @-60,@0,"cg/st/st二世村正_通常_私服.png");
	SetBlur("@StC*", true, 3, 300, 10, false);
	Move("@StC*", 150, @60, @0, Dxl2, false);
	FadeStC(150,true);

//◆剣撃
//◆二世回避
	CreateSE("SE02a","se人体_動作_跳躍01");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	DeleteStC(150,false);
	Move("@StC*", 150, @60, @0, Dxl2, false);

	CreateSE("SE01a","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE01a",0,1000,0,1500,null,false);
	SL_down(@0, @0,1200);
	SL_downfade(0);

	StR(1000, @-60,@0,"cg/st/st二世村正_通常_私服.png");
	SetBlur("@StR*", true, 3, 300, 10, false);
	Move("@StR*", 150, @60, @0, Dxl2, false);
	FadeStR(150,true);


	WaitAction("@Slash*", null);
	Delete("@Slash*");
	Delete("@slash*");

	SetFwC("cg/fw/fw二世村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0150a15">
「流石にそろそろ理解できような？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0160a01">
《…………》

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0170a15">
「おのれの、その……
　<RUBY text="・・・・・">ぎくしゃく</RUBY>とした醜態が」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0180a01">
《どうして……》

{	FwC("cg/fw/fw二世村正_叱咤.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0190a15">
「どうもこうもない」

{	FwC("cg/fw/fw二世村正_侮蔑.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0200a15">
「<RUBY text="むしゃなり">武者形</RUBY>は確かに至強の姿。
　しかしそれも、仕手と共にあればのことだ」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0210a15">
「中身の無い鎧が何だという？
　張子の虎に過ぎまいが……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0220a01">
《……》

{	FwC("cg/fw/fw二世村正_侮蔑.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0230a15">
「太刀の<RUBY text="わざ">術技</RUBY>もなく。
　熱量の供給もなく」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0240a15">
「無駄に膨れた<RUBY text="からだ">騎体</RUBY>を持て余すだけ。
　重いわ、鈍いわ、良いこと無し」

{	FwC("cg/fw/fw二世村正_冷笑.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0250a15">
「そんな虚仮威しに比べれば――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 100, 0, null);

//◆ＥＶ：二世村正戦闘形（古流拳法）
	Move("@StR*", 500, @-200, @0, Axl2, false);

	CreateSE("SE01","se人体_動作_跳躍01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
	DeleteStA(0,true);
	CreateTextureSP("絵ＥＶ", 100, -130, -30, "cg/ev/resize/ev212_二世村正戦闘体勢m.jpg");
	Move("絵ＥＶ", 450, -385, @0, AxlDxl, false);
	DrawDelete("絵黒幕", 300, 100, "slide_01_01_1", true);
	
	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0260a01">
《……っ!?》

{	FwC("cg/fw/fw二世村正_叱咤.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0270a15">
「この方がはるかに効率的。
　そういうことだ！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆拳＆蹴り。コンビネーション
//◆村正吹っ飛び
	CreateSE("SE03","se戦闘_攻撃_鎧_打撃02");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 3100, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");
	Rotate("絵演", 0, @180, @0, @0, null,true);
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演上", 500, 0, 50, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	CreateSE("SE03a","se戦闘_攻撃_鎧_打撃01");
	MusicStart("SE03a",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 3100, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演上", 500, 50, 0, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	CreateColorSP("絵白転", 5000, "#FFFFFF");
	CreateSE("SE03b","se戦闘_攻撃_鎧攻撃命中");
	MusicStart("SE03b",0,1000,0,1000,null,false);

	PrintGO("上背景", 10000);
	CreateColorSP("絵白転", 5000, "#FFFFFF");
	Delete("上背景");
	WaitKey(10);
	OnBG(100,"bg095_高徳院の境内_02.jpg");
	FadeBG(0,true);
	FadeDelete("絵白転", 300, false);
	CreatePlainSP("絵板写", 4999);
	FadeFR2("絵板写",0,1000,300,0,0,30,Dxl3, true);
	Delete("絵板写");

	StR(1000, @60, @0,"cg/st/st二世村正_通常_私服.png");

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0280a01">
《がっ……》

{	Move("@StR*", 300, @-60, @0, Dxl2, false);
	FadeStR(150,false);
	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0290a15">
「この形なら心鉄の熱量だけで充分に戦える」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆二世、瞬速接近
	CreateSE("SE01","se人体_動作_跳躍02");
	MusicStart("SE01",0,1000,0,1500,null,false);
	CreatePlainSP("絵板写", 5000);
	Fade("絵板写", 150, 1000, null, false);
	DrawTransition("絵板写", 150, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", false);
	SetBlur("絵板写", true, 3, 500, 50, false);
	Move("絵板写", 150, -300, 58, null, false);
	Zoom("絵板写", 150, 2000, 2000, null, true);

	CreateSE("SE01b","se戦闘_攻撃_鎧_打撃02");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateTextureSP("絵演震用", 5100, Center, Middle, "cg/bg/resize/bg095_高徳院の境内_02lmex01.jpg");
	Shake("絵演震用", 300, 30, 0, 0, 0, 1000, Dxl3, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0300a01">
《!!》

{	FwC("cg/fw/fw二世村正_侮蔑.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0310a15">
「<RUBY text="・・・">落ちよ</RUBY>」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆二世、捕まえて投げ
//◆ずがーん。
	CreateSE("SE01c","se人体_動作_跳躍03");
	MusicStart("SE01c",0,1000,0,1000,null,false);
	SetBlur("絵演震用", true, 3, 500, 30, false);
	Rotate("絵演震用", 150, @0, @0, @180, Axl2,false);
	Wait(150);
	CreateSE("SE01","se戦闘_破壊_建物02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵白転", 5000, "#FFFFFF");
	Wait(1);
	PrintGO("上背景", 10000);
	CreateColorSP("絵白転", 5000, "#FFFFFF");
	Delete("上背景");
	WaitKey(10);
	OnBG(100,"bg001_空a_02.jpg");
	FadeBG(0,true);
	FadeDelete("絵白転", 300, false);

	CreatePlainSP("絵板写", 4999);
	Shake("絵板写", 600, 0, 100, 0, 0, 1000, Dxl2, true);
	Delete("絵板写");

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0320a01">
《……は……》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0330a01">
《かっ……つッ……！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正、武者形態から蜘蛛へ
//◆ダメージでそうなったので、それっぽく演出。
	PrintBG("上背景", 30000);
	OnBG(100,"bg095_高徳院の境内_02.jpg");
	StL(1000, @0, @0,"cg/st/st二世村正_通常_私服.png");
	FadeStL(0,true);
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);

	SetVolume("SE*", 1000, 0, null);

	CreateSE("SE01","se特殊_鎧_駆動音02");
	MusicStart("SE01",0,1000,0,500,null,false);
	StR(1100, @10, @60,"cg/st/3d村正標準_立ち_通常.png");
	Shake("@StR*", 600, 2, 0, 0, 0, 1000, null, false);
	Move("@StR*", 600, @-10, @-60, DxlAuto, false);
	FadeStR(600,true);

	WaitKey(2000);

	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 100, 1000, null, true);
	StR(1000, @0, @230,"cg/st/3d村正蜘蛛_俯瞰.png");
	FadeStR(0,true);
	SetVolume("@mbgm*", 2000, 0, null);
	FadeDelete("絵フラ", 2000, true);

	SetFwC("cg/fw/fw二世村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0340a15">
「…………」

{	SoundPlay("@mbgm32",2000,1000,true);
	FwC("cg/fw/fw二世村正_侮蔑.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0350a15">
「駄作。
　なれは<RUBY text="おと">御父</RUBY>の名を辱める気か？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0360a01">
《……そっ……》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0370a01">
《そんなこと……母様には言わせない！》

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0380a15">
「……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0390a01">
《私が駄作なら、母様はなんなの！》

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0400a15">
「何か不服があるのか。
　この母に」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0410a01">
《あるに決まってるでしょう!?
　なんで――どうして、》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0420a01">
《<RUBY text="・・">また</RUBY>災いを振り撒いているの!!》

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0430a15">
「それを冑に訊いてどうする。
　劒冑は仕手に従うもの――知りたくば、上
で退屈げにしている<RUBY text="あるじ">御堂</RUBY>に問うがいい」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0440a01">
《そうじゃない！
　狂人の考えなんかどうでもいい》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0450a01">
《その<RUBY text="・">前</RUBY>の話よ！
　母様はどうして、あんな人間を<RUBY text="あるじ">仕手</RUBY>にした
の！》

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0460a15">
「…………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0470a01">
《<RUBY text="じじさま">始祖</RUBY>の失敗で学ばなかったの!?
　私たち村正は武人の独善を戒める為の劒冑
――けれどたった一つの間違いで災いの化身
になりおおせる》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0480a01">
《だから……母様はもう誰とも結縁するべき
じゃなかった！
　するにしても、よほど慎重に選ばなくちゃ
いけなかった》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0490a01">
《意志の弱い人が村正を帯びて武者になれば、
善悪相殺の掟に耐えられず、狂うこともある
……それがわかっていたんだから！
　なのにどうしてまた、そんな人間を選んで》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0500a01">
《むざと狂わせたの！
　五百年前と同じように狂気を広めて、殺戮
を煽る羽目になっているのはなんでよ!?》

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0510a15">
「……」

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0520a15">
「そうか。
　……どうもいくつか、誤解があるようだな」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0530a01">
《誤解……？》

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0540a15">
「まず。
　<RUBY text="あ">冑</RUBY>が仕手は、狂っておらぬ」

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0550a15">
「いや……狂っているのやもしれぬが。
　いずれにせよ、あの者は元々<RUBY text="・・">ああ</RUBY>だった」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0560a01">
《……!?》

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw二世村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0570a15">
「冑はあの者の人格を承知した上で、仕手と
認め、縁を結んだ……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0580a01">
《ど、どうして！》

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0590a15">
「三世……
　なれは封印より放たれてから、大和の歴史
を学んだか？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0600a01">
《……》

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0610a15">
「驚くべきこと……信じ難いことだが……
　あの南北朝の争乱、冑ら村正がもたらした
絶滅的な殺し合いの上に築かれた平和の時代
は、」

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0620a15">
「百年と保たれなかったらしい」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0630a01">
《…………戦国時代？》

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0640a15">
「そう呼ばれているな。
　南北朝にも劣らぬ混沌の大乱世が、ほんの
数十年を隔てて再び訪れたようだ……」

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0650a15">
「これをどう考える？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0660a01">
《…………》

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0670a15">
「足りなかった」

{	FwC("cg/fw/fw二世村正_叱咤.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0680a15">
「<RUBY text="・・・・・・">足りなかった</RUBY>のだ!!」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0690a15">
「あれほどの戦！
　あれほどの殺戮！
　あれほどの大地獄をもってしても！」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0700a15">
「諸人に戦の醜さ、愚劣さ、その独善を知ら
しめるには、全く足りなかったのだ!!
　武とは常に善悪相殺、戦には正義なし――
村正が示した真理は瞬く間に忘れ去られた!!」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0710a15">
「人々は飽きもせずまた独善の渦に浸り切り、
戦い、殺し……南北朝の時代よりも長い時を、
無為の争乱に費やしたのだ!!」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0720a01">
《か……母様……》

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0730a15">
「人の愚かさを甘く見ていたわ」

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0740a15">
「冑ら劒冑は魂を甲鉄に打ち込める、ゆえに
不変の理念を持つが……
　肉の脳髄は真理を刻んでも、刻むそばから
忘れてゆくようだ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0750a01">
《だから……だから？
　<RUBY text="・・・・・・">もう一度やる</RUBY>って言うの!?》

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0760a15">
「そうだ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0770a01">
《本末転倒じゃないの！
　そんなこと、爺様だって望まない！》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0780a01">
《爺様はあくまで、善悪相殺の戒めを人々に
広めて、争いを<RUBY text="・・・">未然に</RUBY>治めようとしただけで
――》

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0790a15">
「なれは考えが浅い」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0800a01">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

	SetFwC("cg/fw/fw二世村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0810a15">
「先程、口にしたな。<RUBY text="・・・・・">始祖の失敗</RUBY>がどうのと。
　……それも誤解だ」

{//◆笑い
	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0820a15">
「御父は失敗など一つもしておらぬ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0830a01">
《!?
　……な、何を！》

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0840a15">
「御父は端から<RUBY text="・">表</RUBY>と<RUBY text="・">裏</RUBY>を考えていた」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0850a15">
「表。仕手が尋常な人物であり、善悪相殺の
理を解して、世に広めるならばそれで良し。
　そして裏。仕手が戒律に縛られてなお見境
なく、殺しに殺しを重ねるなら、それも良し」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0860a15">
「その有様を見た人々は、武の罪悪を自ずと
悟るであろうからだ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0870a01">
《……!!》

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0880a15">
「御父の思慮の深さがわかったか」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0890a15">
「仕手が如何なる人物であろうと……
　冑ら村正は、世に戦と武の真相を告示する
宿願を果たせるのよ！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0900a01">
《……で、でも！
　それでも〝銀星号〟はやり過ぎでしょう!?》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0910a01">
《母様の仕手は強さにしても凶暴さにしても
法外に過ぎる！
　放っておいたらどこまで人間を殺し尽くす
か――》

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0920a15">
「一向に構わぬ」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0930a15">
「人間とは度し難い<RUBY text="もの">存在</RUBY>。
　南北朝の<RUBY text="わざわい">災禍</RUBY>からさえ何も学ばなんだ」

{	FwC("cg/fw/fw二世村正_冷笑.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0940a15">
「一度絶滅に瀕するところまでゆかねば大悟
を得られまい！
　いや……もはやこの際、絶滅しても良しと
しよう」

{	FwC("cg/fw/fw二世村正_侮蔑.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0950a15">
「人が滅びれば争いも無くなる。
　御父の望みが果たされるわ!!」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0960a01">
《―――――――――――――――――――
――――――――――――――――――――
――――――――――――――――――――
――――――――――――――――――――》

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

	SetFwC("cg/fw/fw二世村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0970a15">
「狂っている、とでも云いたいか」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs0980a01">
《……狂ってるでしょう……》

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs0990a15">
「なれが道理をわからぬだけだ。
　人の業深さを甘く見ているのよ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs1000a01">
《…………》

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs1010a15">
「ふん」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs1020a15">
「理を知らず。
　世を知らず。
　人を知らず。
　己も知らず……」

{	FwC("cg/fw/fw二世村正_侮蔑.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs1030a15">
「仕手をよそへ置いて先走った挙句、かよう
に這い<RUBY text="つくば">蹲</RUBY>って泣き言を<RUBY text="さえず">囀</RUBY>るのみとは、な。
　これが……三世村正、<RUBY text="あ">冑</RUBY>が娘か」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs1040a01">
《母様……》

{	FwC("cg/fw/fw二世村正_侮蔑.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs1050a15">
「戯けめ。
　<RUBY text="あ">冑</RUBY>が<RUBY text="はら">胎</RUBY>がなれのような駄作を産み落とした
とあっては、御父に顔向けできぬ」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs1060a15">
「なれ如きは……
　<RUBY text="・・・・・">鋳潰されて</RUBY>、<RUBY text="・・・・・・・・・・">仏像にでもなるがいい</RUBY>」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs1070a01">
《!!》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//―――――――――――――――――――――――――――――

//◆村正帯電
//◆違法変身再び
	CreateSE("SE01","se特殊_電撃_放電01");
	MusicStart("SE01",0,1000,0,1500,null,false);
	CreatePlainEXadd("絵板写", 5000);
	SetVertex("絵板写", 740, 480);
	Zoom("絵板写", 600, 1200, 1200, Dxl2, false);
	Fade("絵板写", 600, 800, null, true);
	WaitKey(100);
	FadeDelete("絵板写", 600, true);

	CreateSE("SE01a","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	CreateSE("SE03","se特殊_鎧_駆動音01");
	MusicStart("SE01a",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);

	MusicStart("SE03",0,1000,0,750,null,false);
	StR(1100, @10, @60,"cg/st/3d村正標準_立ち_通常.png");
	FadeStR(0,true);
	Move("@StR*", 1200, @-10, @-60, DxlAuto, false);
	FadeDelete("絵フラ", 1000, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs1080a01">
《か――母様ァ……！》

{	FwC("cg/fw/fw二世村正_冷笑.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs1090a15">
「ふん、立ったか」

{	FwC("cg/fw/fw二世村正_侮蔑.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs1100a15">
「ま……立たねばなるまいな？
　これを言われて、相手を捨て置くようでは、
劒冑の一分が守れん」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs1110a15">
「自ら屑鉄と認めるに等しい……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs1120a01">
《……》

{	FwC("cg/fw/fw二世村正_冷笑.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs1130a15">
「されど、口惜しきかな。
　娘よ……」

{	FwC("cg/fw/fw二世村正_侮蔑.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs1140a15">
「なれは、屑鉄だ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs1150a01">
《黙れェ!!》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆電磁抜刀準備
	CreateColorEXadd("絵色白", 5000, "#FFFFFF");
	CreateSE("SE01","se人体_足音_鎧歩く03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StR*", 600, @150, @0, AxlDxl, false);
	Fade("絵色白", 300, 1000, null, true);

	CreateTextureEX("絵演", 4000, -440, -40, "cg/ev/resize/ev902_村正電磁抜刀レールガン_cm.jpg");
	FadeDelete("絵色白", 1000, false);
	Move("絵演", 300, @60, @0, Dxl2, false);
	Fade("絵演", 300, 1000, null, true);

	CreateSE("SEL01","se特殊_電撃_帯電02");
	MusicStart("SEL01",0,1000,0,1000,null,true);
	CreateTextureEXadd("プロ絵上", 4020, -380, -40, "cg/ev/resize/ev902_村正電磁抜刀レールガン_dm.jpg");
	CreateTextureEXsub("プロ絵", 4010, -380, -40, "cg/ev/resize/ev902_村正電磁抜刀レールガン_dm.jpg");
	SetVertex("プロ絵", 1160, 470);

	DenziBladeCharge();

	SetFwC("cg/fw/fw二世村正_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs1160a15">
「磁気引斥を利する抜刀術……
　なれの<RUBY text="・・・">仕手が</RUBY>完成させた至芸だな」

{	FwC("cg/fw/fw二世村正_侮蔑.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs1170a15">
「できるつもりでいるのか？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs1180a01">
《斬る……！》

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs1190a15">
「……く」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆二世戦闘絵
	CreateSE("SE03","se人体_動作_跳躍03");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演弐上", 5100, Center, Middle, "cg/ev/ev212_二世村正戦闘体勢.jpg");
	CreateTextureSP("絵演弐", 5000, Center, Middle, "cg/ev/ev212_二世村正戦闘体勢.jpg");
	Zoom("絵演弐上", 0, 1200, 1200, null, false);
	Zoom("絵演弐上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演弐上", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	DrawDelete("絵演弐上", 200, 100, "zoom_01_00_1", true);

	SetFwR("cg/fw/fw二世村正_叱咤.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs1200a15">
「参れ」

{	FadeDelete("絵演弐", 300, false);
	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs1210a01">
《ッ、ぁぁぁあああああ!!》

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

//◆電磁抜刀
//◆ずぎゅーん。
//◆光が収まってゆくと
//◆二世戦闘絵。そのまんま。無事。
	SetVolume("SE*", 1000, 0, null);
	CreateColorEXadd("絵色白", 10000, "#FFFFFF");
	Fade("絵色白", 1000, 1000, Axl2, true);

	MovieSESet(15000,"mv電磁抜刀_禍","se特殊_mv用_電磁抜刀_禍");
	MovieSEStart(1500);

	PrintGO("上背景", 30000);
	CreateColorSPadd("絵暗転", 15000, "#FFFFFF");
	CreateTextureSP("絵ＥＶ", 4000, -397, InBottom, "cg2/ev/resize/ev212_二世村正戦闘体勢_bm.jpg");
	Delete("上背景");
	Delete("Ｐ*");
	Delete("プロ*");
	SetVolume("@mbgm*", 3000, 0, null);
	Move("絵ＥＶ", 5000, @0, -154, DxlAuto, false);
	FadeDelete("絵暗転", 3000, true);

	Wait(2000);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs1220a01">
《……ッッ!?》

{	FwC("cg/fw/fw二世村正_叱咤.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs1230a15">
「知恵なき者は白日のもと闇を歩く！
　なれのことだ!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆一撃
	//CreatePlainSP("絵板写", 5000);
	PrintGO("絵板写", 5000);
	SetBlur("絵板写", true, 3, 500, 50, false);
	SetVertex("絵板写", 410, 250);//ダミー注意
	CreateSE("SE01","se人体_動作_跳躍03");
	CreateTextureSPadd("絵演効果", 6000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	Zoom("絵演効果", 0, 1000, 1000, null, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵板写", 300, 1500, 1500, Dxl2, false);
	Zoom("絵演効果", 300, 2000, 2000, AxlDxl, false);
	Fade("絵演効果", 300, 0, null, false);
	DrawDelete("絵演効果", 300, 100, "circle_01_00_1", true);

//◆どぎゃーん。
	CreateSE("SE01a","se戦闘_破壊_建物02");
	CreateSE("SE01b","se戦闘_攻撃_鎧攻撃命中03");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	MusicStart("SE01b",0,1000,0,1000,null,false);


	CreateTextureSPadd("絵演上", 7100, Center, Middle, "cg/ef/resize/ef042_汎用打撃tl.jpg");
	CreateTextureSP("絵演", 7000, Center, Middle, "cg/ef/resize/ef042_汎用打撃tl.jpg");
	Move("絵演", 3000, @0, @200, null, false);
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演上", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

//◆村正、瀕死
	Delete("絵板写");
	Delete("絵ＥＶ");
	OnBG(100,"bg095_高徳院の境内_02.jpg");
	FadeBG(0,true);
	FadeDelete("絵演", 1000, true);

	CreateSE("SE01c","se戦闘_衝撃_鎧転倒01");
	MusicStart("SE01c",0,1000,0,1000,null,false);
	CreatePlainSPadd("絵板写", 110);
	SetBlur("絵板写", true, 3, 500, 200, false);
	Shake("絵板写", 300, 0, 20, 0, 0, 1000, Dxl2, true);
	Delete("絵板写");

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs1240a01">
《……ぁっ……グ……》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆ばちばち。故障っぽい帯電
	CreateSE("SE02","se日常_機械_電気ショート帯電01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 200, 600, null, true);
	WaitKey(100);
	FadeDelete("絵フラ", 600, false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs1250a01">
《……ぅ……》

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs1260a15">
「熱量が尽き果て、再生も利くまい。
　……身に過ぎた<RUBY text="わざ">武技</RUBY>を使うからだ」

{	FwC("cg/fw/fw二世村正_侮蔑.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs1270a15">
「<RUBY text="サイ">才</RUBY>なく<RUBY text="シン">心</RUBY>なく刀刃を弄んだ愚物！
　相応の惨めさで果てるがいい！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/016vs1280a01">
《…………》

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs1290a15">
「最後の情けだ。
　引導はこの母が渡してくれる」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);

//◆二世戦闘絵
	CreateSE("SE01","se人体_動作_跳躍01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureEX("絵ＥＶ", 4000, Center, Middle, "cg/ev/ev212_二世村正戦闘体勢.jpg");
	Zoom("絵ＥＶ", 0, 1500, 1500, null, true);
	SetBlur("絵ＥＶ", true, 3, 500, 60, false);
	Zoom("絵ＥＶ", 300, 1000, 1000, Dxl2, false);
	Fade("絵ＥＶ", 200, 1000, null, true);

	SetFwR("cg/fw/fw二世村正_叱咤.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs1300a15">
「逝けい」

{	FwR("cg/fw/fw光影_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md01/016vs1310a14">
「――待て。村正」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆高徳院境内＋二世
	PrintBG("上背景", 30000);
	OnBG(100,"bg095_高徳院の境内_02.jpg");
	StL(1000, @0, @0,"cg/st/st二世村正_通常_私服.png");
	FadeBG(0,true);
	FadeStL(0,true);
	FadeDelete("上背景", 1000, true);

	SetFwC("cg/fw/fw二世村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs1320a15">
「御堂？
　止めてくれるな。身内の恥は雪ぎたい」

{	FwC("cg/fw/fw光影_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md01/016vs1330a14">
「うむ。その気持ちはわかるが……
　仕方あるまい」

//【光】
<voice name="光" class="光" src="voice/md01/016vs1340a14">
「座興はここまでと、<RUBY text="・・・">あちら</RUBY>が言うのだ」

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs1350a15">
「…………」

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/016vs1360a15">
「待ち人か……折良く。
　知恵なきこやつにも、いくばくかの天運は
あったと見ゆる」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//――――――――――――――――――――――――



}

..//ジャンプ指定
//次ファイル　"md01_017.nss"

.//プロセス用======================================================

..//電磁抜刀放電ループ
function DenziBladeCharge()
{
	CreateProcess("Ｐ電磁抜刀放電ループ", 5000, 0, 0, "DenziBladeChargeSet");
	SetAlias("Ｐ電磁抜刀放電ループ","Ｐ電磁抜刀放電ループ");
	Request("Ｐ電磁抜刀放電ループ", Start);
}

function DenziBladeChargeSet()
{
	begin:
	while(1)
	{
	$RZoomSet = Random(3) + 3;
	$RZS = $RZoomSet * 10 +1000;
	Shake("@プロ絵", 300, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@プロ絵上", 300, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@プロ絵*", 300, $RZS, $RZS, null, false);
	Fade("@プロ絵*", 50, 800, null, true);
	Fade("@プロ絵*", 250, 0, null, true);
	Wait(50);
	Zoom("@プロ絵*", 0, 1000, 1000, null, false);

	$RZoomSet = Random(3) + 3;
	$RZS = $RZoomSet * 10 +1000;
	Shake("@プロ絵", 200, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@プロ絵上", 200, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@プロ絵*", 200, $RZS, $RZS, null, false);
	Fade("@プロ絵*", 50, 800, null, true);
	Fade("@プロ絵*", 150, 0, null, true);
	Wait(10);
	Zoom("@プロ絵*", 0, 1000, 1000, null, false);

	$RZoomSet = Random(3) + 3;
	$RZS = $RZoomSet * 10 +1000;
	Shake("@プロ絵", 150, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@プロ絵上", 150, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@プロ絵*", 150, $RZS, $RZS, null, false);
	Fade("@プロ絵*", 50, 800, null, true);
	Fade("@プロ絵*", 150, 0, null, true);
	Wait(10);
	Zoom("@プロ絵*", 0, 1000, 1000, null, false);

	}

}