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

scene md03_025vs.nss_MAIN
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
	#bg001_空c_03=true;
	#bg001_空a_03=true;
	#ev917_正宗朧焦屍剣=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md03_026vs.nss";

}

scene md03_025vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md03_024vs.nss"


//◆膝丸ＶＳ正宗

	PrintBG("上背景", 30000);
	CreateTextureSP("bg", 1000, Center, @200, "cg/bg/bg001_空c_03.jpg");
	Request("bg", Smoothing);
	Zoom("bg", 0, 2000, 2000, null, true);
	Fade("bg", 0, 1000, null, true);



//	Move("bg", 0, @0, @200, null, false);
//	Zoom("bg", 0, 2000, 2000, null, false);


	CreateColorSP("黒幕１", 20000, "BLACK");
	Delete("上背景");
	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", true);

//	CreateTextureSP("絵ＳＴＣ100", 1500, Center, @400, "cg/st/3d正宗_騎突_戦闘.png");
//	Zoom("絵ＳＴＣ100", 0, 20, 20, null, false);
//	Move("絵ＳＴＣ100", 1500, @0, @-1200, Dxl3, false);

	Move("bg", 1000, @0, @-10, Axl1, false);
	Zoom("bg", 1000, 1900, 1900, Axl1, false);
	WaitKey(900);
	SoundPlay("@mbgm13", 0, 1000, true);
	CreateSE("SE01","se戦闘_動作_空突進03");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateTextureEX("絵ＳＴＣ100", 1500, Center, @-400, "cg/st/3d正宗_騎突_戦闘.png");
	Request("絵ＳＴＣ100", Smoothing);
	Zoom("絵ＳＴＣ100", 0, 100, 100, null, false);
	SetBlur("絵ＳＴＣ100", true, 2, 500, 50, false);
	Move("bg", 500, @0, 0, Dxl1, false);
	Zoom("bg", 500, 1000, 1000, Dxl1, false);
	Zoom("絵ＳＴＣ100", 500, 3000, 3000, Dxl1, false);
	Fade("絵ＳＴＣ100", 450, 1000, null, true);
	Delete("黒幕１");
	FadeDelete("絵ＳＴＣ100",250,false);

	SetFwL("cg/fw/fw一条_憎悪b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【一条】
<voice name="一条" class="一条" src="voice/md03/025vs0010a02">
「つぁぁぁぁらァァァァァ!!」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆正宗猛攻


	WaitKey(500);

	CreateSE("SE001","se戦闘_動作_空突進01");
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);
	CreateTextureSP("bg", 1000, Center, Middle, "cg/bg/bg001_空a_03.jpg");

	CreateTextureSP("絵演空立絵", 1000, -2713, -465, "cg/st/resize/3d正宗_騎航_戦闘al_ex.png");
	MusicStart("SE001",0,1000,0,750,null,false);
	Request("絵演空立絵", Smoothing);
	Move("絵演背景", 10000, @-1024, @0, null, false);
	Move("絵演空立絵", 300, @600, @-10, DxlAuto, false);
	Shake("絵演空立絵", 2160000, 0, 1, 0, 0, 1000, null, false);

	DrawDelete("絵黒幕", 150, 100, "slide_01_03_1", true);
	WaitKey(650);


	CreateSE("SE01","se戦闘_動作_空突進02");
	MusicStart("SE01",0,1000,0,900,null,false);
	SetBlur("絵演空立絵", true, 1, 500, 60, true);
	Move("絵演空立絵", 200, @5000, @5000, Axl2, false);
	Zoom("絵演空立絵", 200, 800, 800, Axl2, true);

	CreateTextureEX("絵EF01", 10000, Center, Middle, "cg/ef/ef008_汎用上下軌道.jpg");
	CreateTextureEX("絵EF02", 10000, Center, Middle, "cg/ef/ef010_汎用斜め軌道.jpg");
	CreateTextureEX("絵EF03", 10000, Center, Middle, "cg/ef/ef015_汎用横軌道.jpg");
	CreateTextureEX("絵EF04", 10000, Center, Middle, "cg/ef/ef014_汎用横軌道.jpg");
	CreateTextureEX("絵EF05", 10000, Center, Middle, "cg/ef/ef017_汎用正面軌道.jpg");
	CreateTextureEX("絵EF06", 10000, Center, Middle, "cg/ef/ef013_汎用斜め軌道.jpg");
//	OnSE("se戦闘_攻撃_刀連撃01",1000);

	Fade("絵EF01", 50, 1000, null, true);
	CreateColorSP("黒幕１", 9999, "BLACK");




	CreateTextureSP("bg", 1000, Center, Middle, "cg/bg/bg001_空c_03.jpg");
	Request("bg", Smoothing);
	Zoom("bg", 0, 1200, 1200, null, false);
//	Fade("bg", 0, 1000, null, true);


	CreateTextureSP("絵演空立絵", 1000, -120, -250, "cg/st/3d正宗_騎航_戦闘a.png");
	Shake("絵演空立絵", 2160000, 0, 1, 0, 0, 1000, null, false);

	OnSE("se戦闘_攻撃_鎧_剣戟04",1000);
	Fade("絵EF02", 100, 1000, null, false);
	EffectZoomadd(10000, 200, 100, "cg/ef/ef040_汎用衝突.jpg", true);


	OnSE("se戦闘_攻撃_剣戟弾く02",1000);
	Fade("絵EF03", 50, 1000, null, false);
	EffectZoomadd(10000, 400, 100, "cg/ef/ef044_火花a.jpg", true);


	OnSE("se戦闘_攻撃_鎧_剣戟03",1000);
	Fade("絵EF04", 50, 1000, null, false);
	EffectZoomadd(10000, 300, 100, "cg/ef/ef042_汎用打撃.jpg", true);

	OnSE("se戦闘_攻撃_刀衝突01",1000);
	Fade("絵EF05", 50, 1000, null, false);
	EffectZoomadd(10000, 200, 100, "cg/ef/ef001_汎用移動.jpg", true);

	OnSE("se戦闘_攻撃_剣戟弾く01",1000);
	Fade("絵EF06", 50, 1000, null, false);
	EffectZoomadd(10000, 200, 100, "cg/ef/ef002_汎用移動.jpg", true);

	OnSE("se戦闘_攻撃_鎧_剣戟04",1000);
	Fade("絵EF0*", 0, 0, null, false);
	EffectZoomadd(10000, 200, 100, "cg/ef/ef003_汎用移動.jpg", true);


/*
	Fade("絵EF01", 50, 1000, null, true);
	Fade("絵EF02", 50, 1000, null, true);
	Fade("絵EF03", 50, 1000, null, true);
	Fade("絵EF04", 50, 1000, null, true);
	Fade("絵EF05", 50, 1000, null, true);
	Fade("絵EF06", 50, 1000, null, true);
	Fade("絵EF0*", 0, 0, null, true);
	Fade("絵EF01", 50, 1000, null, true);
	Fade("絵EF02", 50, 1000, null, true);
	Fade("絵EF03", 50, 1000, null, true);
	Fade("絵EF04", 50, 1000, null, true);
	Fade("絵EF05", 50, 1000, null, true);
	Fade("絵EF06", 50, 1000, null, true);
	Fade("絵EF0*", 0, 0, null, true);
	Fade("絵EF01", 50, 1000, null, true);
	Fade("絵EF02", 50, 1000, null, true);
	Fade("絵EF03", 50, 1000, null, true);
	Fade("絵EF04", 50, 1000, null, true);
	Fade("絵EF05", 50, 1000, null, true);
	Fade("絵EF06", 50, 1000, null, true);

*/

	SetVolume("@SE01*", 100, 0, null);
	CreateColorEX("黒幕２", 10001, "BLACK");
	Fade("黒幕２", 500, 1000, null, true);
	FadeDelete("絵EF0*", 0, false);
	DrawDelete("黒幕*", 200, 100, "slide_01_01_1", true);


	SetFwL("cg/fw/fw一条_冷笑.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【一条】
<voice name="一条" class="一条" src="voice/md03/025vs0020a02">
「は――！
　偉そうなこと言っといて、手も出せねえの
か!?」

{	FwL("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/025vs0030a08">
「…………」

{	FwL("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/025vs0040a02">
「てめぇらは結局そうだ。糞っ垂れな権力で
他人をこき使うだけが芸だ。
　自分一人じゃ何もできやしねえ」

{	FwL("cg/fw/fw一条_憎悪b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/025vs0050a02">
「下らねえよ！　死ね！
　正宗ッ!!」

{	FwL("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/md03/025vs0060b40">
《七機巧が一……
　朧――焦屍剣!!》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆ヒートソード
//◆ずしゃーん
	CreateSE("SE01","se戦闘_正宗_朧焦屍剣");
	CreateSE("SE02","se戦闘_攻撃_火炎放射");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateTextureEX("絵正宗演出用", 10000, Center, Middle, "cg/ev/resize/ev917_正宗朧焦屍剣l.jpg");
	CreateTextureEXadd("絵正宗炎", 10000, Center, Middle, "cg/ef/ef028_汎用火炎放射.jpg");
	CreateTextureEX("絵正宗２", 10000, Center, Middle, "cg/ev/ev917_正宗朧焦屍剣.jpg");
	SetBlur("絵正宗演出用", true, 1, 500, 70, false);
//	SetBlur("絵正宗炎", true, 2, 500, 200, false);
	Zoom("絵正宗炎", 0, 2000, 2000, null, true);
	Rotate("絵正宗炎", 0, @0, @0, @-30, null,true);

	DrawEffect("絵正宗炎", 50, "LowWave ", 0, 100, null);

	Delete("絵背景効果線");
	Request("プロセス*", Stop);
	Delete("プロセス*");
	Fade("絵正宗炎", 200, 1000, null, false);
	Fade("絵正宗演出用", 200, 1000, null, false);
	Move("絵正宗演出用", 500, -1024, 0, Dxl2, true);

	Delete("絵正宗");

	WaitKey(300);

	MusicStart("SE02",0,1000,0,1000,null,false);
	FadeDelete("絵正宗炎", 1000, false);
	Zoom("絵正宗演出用", 800, 500, 500, Axl3, false);
	Move("絵正宗演出用", 800, -512, -288, Axl3, false);

	Wait(500);

	EffectZoomDXadd(13000, 1000, 100, "#FFFFFF", "cg/ev/ev917_正宗朧焦屍剣.jpg", false);
	Fade("絵正宗２", 200, 1000, null, true);
	Delete("絵背景効果線");
	Delete("絵正宗");



	WaitKey(1000);

	OnSE("se戦闘_動作_突進01",1000);
	OnSE("se戦闘_攻撃_鎧_剣戟01",1000);
	CreateColorSP("絵黒幕", 19000, "WHITE");
	DrawTransition("絵黒幕", 300, 0, 1000, 500, null, "cg/data/slide_03_01_1.png", true);

	Delete("絵正宗*");

	OnSE("se戦闘_動作_突進01",1000);
	CreateSE("SE03","se戦闘_衝撃_鎧散華");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPover("絵演上", 18500, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	CreateTextureSP("絵演", 18000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	SetVertex("絵演上", 474, 293);
//	SetBlur("絵演上", true, 3, 300, 30, false);

	Wait(200);

	Zoom("絵演上", 4000, 1200, 1200, Dxl2, false);
	DrawTransition("絵黒幕", 300, 1000, 0, 500, null, "cg/data/circle_01_00_1.png", false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, true);
	WaitKey(2000);
	Delete("絵黒幕");


	SetFwL("cg/fw/fw一条_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【一条】
<voice name="一条" class="一条" src="voice/md03/025vs0070a02">
「……へっ……」

{	FwL("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/md03/025vs0080b40">
《クッ、クフフフ――》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆膝丸。超健在

	CreateTextureEX("絵ＳＴＣ200", 1500, Center, -277, "cg/st/3d膝丸_騎突_戦闘.png");
	Move("絵ＳＴＣ200", 0, @0, @50, null, true);

$ループムーブナット名 = "@絵ＳＴＣ200";
$ループムーブタイム = 30000;

	CreateProcess("プロセス", 150, 0, 0, "FlyMoving");
	SetAlias("プロセス","プロセス");

	Request("プロセス", Start);

	Fade("絵ＳＴＣ200", 250, 1000, null, true);
//	Shake("絵ＳＴＣ200", 2160000, 0, 1, 0, 0, 1000, null, false);

	CreateColorSP("絵色100", 1500, "BLACK");

	CloudZoomSet(1000);
	CloudZoomStartB(1000,800,800,1000,1000);


	FadeDelete("絵演*", 3000, false);
	DrawTransition("絵色100", 3000, 1000, 0, 200, null, "cg/data/effect_01_00_0.png", true);

	SetFwL("cg/fw/fw一条_憎悪a.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【一条】
<voice name="一条" class="一条" src="voice/md03/025vs0090a02">
「……なにぃ!?」

{	FwL("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/md03/025vs0100b40">
《む、無傷だとォォォ!?》

{	FwL("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/025vs0110a08">
「……ふぅ。
　おまえの言い草ではないけれど……本当に
下らないわね……」

{	FwL("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/025vs0120a08">
「もういいわ」

{	FwL("cg/fw/fw一条_苦痛.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/025vs0130a02">
「――――」

{	FwL("cg/fw/fw雷蝶_軍将.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/025vs0140a08">
「散りなさい」

{	FwL("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/025vs0150a08">
「虫ケラァァァァァァァァァァ!!」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆ずごらごーん

	OnSE("se特殊_鎧_駆動音01",1000);
	WaitKey(800);
	OnSE("se戦闘_動作_空突進02",1000);
//	Move("絵ＳＴＣ200", 200, @5000, @-5000, Axl2, true);

	Zoom("絵ＳＴＣ200", 300, 5000, 5000, Axl3, false);

	CreateColorSP("黒幕１", 20000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	SetVolume("SE*", 1000, 0, null);
	Delete("プロセス");
	CloudZoomDelete(0,true);
	Delete("絵ＳＴＣ200");
	Wait(1000);
//	ClearWaitAll(1500, 1500);


}

..//ジャンプ指定
//次ファイル　"md03_026vs.nss"