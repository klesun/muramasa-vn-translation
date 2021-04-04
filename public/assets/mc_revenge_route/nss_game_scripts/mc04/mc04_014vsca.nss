
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_014vsca.nss_MAIN
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

scene mc04_014vsca.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc04_014vsc.nss"

//●上
	PrintBG("上背景", 30000);

	SoundPlay("@mbgm08", 0, 1000, true);

	CreateTextureSP("絵背景09EX", 4101, @0, @0, "cg/ev/ev187_銘伏の妖剣_i.jpg");
	Request("絵背景09EX", Smoothing);
	Zoom("絵背景09EX", 0, 1100, 1100, null, true);

	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　上だ！
　敵の切先を外し――そのまま上空より襲う！

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆跳躍
	OnSE("se人体_動作_跳躍01", 1000);

	CreateColorSP("絵色黒", 10000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	CreateTextureSP("飛翔", 5000, Center, InBottom, "cg/ef/resize/ef001_汎用移動tl.jpg");
	Zoom("飛翔", 0, 900, 900, null, true);
	SetBlur("飛翔", true, 3, 500, 30, false);
	Request("飛翔", Smoothing);
	Move("飛翔", 650, @0, -150, Dxl2, false);

	DrawDelete("絵色黒", 150, 100, "slide_02_01_1", true);

	Wait(300);

//◆ビーム一閃。いや脇差投げたんだが。
	CreateTextureEX("脇差", 5500, @0, @0, "cg/ef/resize/ef038_汎用射撃ex01.jpg");

	OnSE("se戦闘_攻撃_脇差投げ01", 1000);
	Fade("脇差", 0, 1000, null, true);
	DrawTransition("脇差", 150, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	Wait(200);

//◆ぐさー。
	SetVolume("@mbgm*", 300, 0, null);

	Delete("脇差");

	OnSE("se戦闘_攻撃_刀刺さる05", 1000);

	CreateTextureSPmul("絵効果地", 5010, Center, Middle, "cg/anime/Left/blood_C_6.png");

	CreatePlainEX("絵板写", 9990);
	Wait(10);
	FadeFR2("絵板写",0,500,500,@0,@0,40,Dxl2, true);
	Delete("絵板写");

	SetFwL("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0670a00">
「……な」

{	FwL("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0680a00">
「……ぁ……」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆落ちた。
//◆血
	CreateTextureSP("絵演背景", 6000, Center, Middle, "cg/bg/bg090_大鳥邸通路d_01.jpg");
	Wait(10);

	CreatePlainSP("絵板写", 6100);
	OnSE("se戦闘_衝撃_鎧転倒01", 1000);
	Shake("絵板写", 300, 0, 10, 0, 0, 1000, Dxl2, true);
	Delete("絵板写");

	Wait(500);

	CreateTextureEX("血", 6500, @0, @0, "cg/ef/ef004_汎用血雫.jpg");
	Fade("血", 1500, 1000, null, true);
	Delete("絵演背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　……苦痛の時間は、長くなかった。
　飛来した<RUBY text="・">矢</RUBY>に喉仏を撃ち抜かれ――床へ落ちた俺が
息絶えるまで、おそらくはほんの数秒であったろう。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 1500);

//◆ゲームオーバー

}

..//ジャンプ指定
//次ファイル