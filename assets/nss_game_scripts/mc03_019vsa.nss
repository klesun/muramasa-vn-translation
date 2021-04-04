
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;

//あきゅん「ＣＰ：デバッグ用」
		$GameDebugSelect = 1;

		Reset();
	}

}

scene mc03_019vsa.nss_MAIN
{

	//CP_AllSet("村正");

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

//あきゅん「ＣＰ：超速用熱量計算式」
	if($mc03_kacl_Frag==ture){
		$mc03_kacl_Frag=false;
	}else{
		$mc03kacl++;
	}

	$PreGameName = $GameName;

	Cockpit_AllFade0();

	$GameName = "mc03_020vs.nss";

}

scene mc03_019vsa.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc03_019vs.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}

//●総力攻撃１
	SoundPlay("@mbgm10",0,1000,true);

	PrintBG("上背景", 19999);
	CreateColorSP("絵色黒", 10, "#000000");

	Fade("@box*", 0, 0, null, true);

	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵黒幕", 50000, "#000000");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("絵色黒");
	Delete("上背景");

	CreateTextureSPadd("絵演上", 3100, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	CreateTextureSP("絵演", 3000, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	Zoom("絵演上", 0, 1300, 1300, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 1000, 0, 10, 0, 0, 1000, Dxl3, false);

	Move("絵演*", 150, -615, @0, Dxl2, false);

	DrawDelete("絵黒幕", 150, 100, "slide_01_03_1", true);

	FadeDelete("絵演上", 200, true);

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/019vs0020a00">
「しゃあッッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　――対手を凌ぐ暴威で応ず！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆袈裟斬りずがーん。
	CreateSE("SE02","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE02",0,1000,0,1500,null,false);
	CreateTextureSPadd("絵演上", 3100, -220, -30, "cg/ev/resize/ev947_村正斬撃汎用_l.jpg");
	CreateTextureSP("絵演", 3000, -220, -30, "cg/ev/resize/ev947_村正斬撃汎用_l.jpg");
	Zoom("絵演上", 0, 1500, 1500, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 0, 50, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	Wait(280);

	CreateSE("SE03a","se戦闘_攻撃_鎧攻撃命中03");
	MusicStart("SE03a",0,1000,0,1000,null,false);

	CreateSE("SE03b","se戦闘_攻撃_鎧_打撃02");
	MusicStart("SE03b",0,1000,0,1000,null,false);

	CreateColorSP("絵色白", 20000, "#FFFFFF");

	Delete("絵演*");

	Wait(10);

//あきゅん「ＣＰ：必須定義まとめ」
	Cockpit_AllFade2();

	MyLife_Count(0,360);
	CP_IHPChange(0,5,null,false);
	CP_PowerChange(0,300,null,false);

	CP_SpeedChange(0,558,null,false);
	MyTr_Count(0,451);

	CP_HighChange(0,1119,null,false);
	CP_AziChange(0,135,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,null,true);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/resize/bg002_空a_01.jpg");

	FadeDelete("絵色白", 300, true);

//あきゅん「ＣＰ：総力攻撃をしたので熱量を消費」
	$mc03kacl++;
	$mc03_kacl_Frag=ture;
	$熱量基礎=300;
	$熱量計算値=$熱量基礎-($mc03kacl*250);
	CP_PowerChange(300,$熱量計算値,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　紙一重。
　俺は敵騎の撃閃を掻い潜り、我が一刀を叩き込んだ。

　手応え、充分……！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/019vs0030a01">
《あと一撃、同じ箇所に打てれば！》


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/019vs0040a00">
「戦闘能力を奪えそうだな」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　あれが四騎合体であろうと、攻撃力の中核はやはり
豪腕を備えた胴体部と見られる。
　そこが脱落しては、残った三騎で交戦を継続すると
いうわけにもゆくまい！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/circle_01_00_1.png", true);

//◆→●第２Ｒ

..//ジャンプ指定
//次ファイル　"mc03_020vs.nss"

}


