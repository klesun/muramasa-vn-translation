//<continuation number="120">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_006.nss_MAIN
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
	#bg001_空a_03=true;
	#bg101_小弓情景_04=true;
	#bg102_昼古河情景_04=true;
	#bg041_片瀬海岸_01=true;
	#bg025_坑道山脈と森a_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_007.nss";

}

scene md04_006.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md04_005.nss"


//◆夜空→早朝の小弓
//◆テロップ「小弓」
//◆ずがーんずがーん。湾岸から艦砲射撃


	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 15000, "BLACK");
	OnBG(90, "bg001_空a_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm34", 0, 1000, true);

	CreateTextureSP("上敷き", 10000, Center, Middle, "cg/bg/bg001_空a_01.jpg");
//	CreateTextureSPadd("光源100", 1000, Center, Middle, "cg/data/circle_04_00_1.png");
	Fade("光源100", 0, 700, null, true);

	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg101_小弓情景_04.jpg");
	Zoom("絵背景50", 0, 1200, 1200, null, true);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg101_小弓情景_04.jpg");
	Zoom("絵背景100", 0, 1400, 1200, null, true);
	Fade("絵背景100", 0, 600, null, true);
	CreateTextureSP("絵背景200", 100, Center, Middle, "cg/bg/bg101_小弓情景_04.jpg");
	Zoom("絵背景200", 0, 1200, 1200, null, true);
	DrawTransition("絵背景200", 0, 600, 600, 200, null, "cg/data/slide_02_00_0.png", true);
//	DrawEffect("絵背景100", 50, "LowWave ", 0, 100, null);
	DrawEffect("絵背景100", 50, "SuperWave", 0, 200, null);

	Delete("上背景");
	FadeDelete("黒幕１",1500,true);


/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0001]
　
　　　　　　　　　一一月三〇日
　　　　　　　　　午前五時五七分

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――
*/
	WaitKey(1000);

	SetFont("@ＭＳ 明朝", 30, #FFFFFF, #000000, HEAVY, RIGHTDOWN);
	CreateText("字幕01",30411,Center,inherit,auto,auto,"一一月三〇日");
	Fade("字幕01", 0, 0, null, true);
	Request("字幕01",NoLog);
	Request("字幕01",PushText);
	Rotate("字幕01", 0, @0, @0, 90, null, false);
	Move("字幕01", 0, @300, @10, null, false);
	SetBacklog("一一月三〇日", null, null);

	CreateText("字幕02",30411,Center,inherit,auto,auto,"午前五時五七分");
	Fade("字幕02", 0, 0, null, true);
	Request("字幕02",NoLog);
	Request("字幕02",PushText);
	Rotate("字幕02", 0, @0, @0, 90, null, false);
	Move("字幕02", 0, @250, @10, null, false);
	SetBacklog("午前五時五七分", null, null);

	Move("絵背景*", 20000, @-100, @0, null, false);
	FadeDelete("上敷き", 2000, false);

	OnSE("se戦闘_破壊_大爆発01", 500);

	Fade("字幕*", 300, 1000, null, true);
	WaitKey(3000);
	Fade("字幕*", 300, 0, null, true);
	Delete("字幕*");
/*
	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	OnBG(100, "bg101_小弓情景_04.jpg");
	FadeBG(0, true);
	WaitKey(1000);

	DrawTransition("黒幕１", 500, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", true);
	Delete("黒幕１");
*/


//	CreateTextureEX("テロップ", 16000, @550, @500, "cg/sys/Telop/tp_小弓.png");
//	Fade("テロップ", 1000, 1000, null, true);

	OnSE("se背景_ガヤ_戦闘_艦砲射撃_L", 1000);

	CreateSE("SE01", "se背景_ガヤ_戦場の風景01_L");
	MusicStart("SE01", 2000, 500, 0, 1000, null,true);

	OnBG(90, "bg101_小弓情景_04.jpg");
	FadeBG(0, true);

	TelopStart(15000,1500,center,450,"cg/sys/Telop/tp_小弓.png",null);
	Wait(2500);

//	FadeDelete("テロップ", 2000, true);

	OnSE("se戦闘_破壊_大爆発01", 500);

	SetNwC("cg/fw/nw小弓公方府.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／小弓連絡】
<voice name="ｅｔｃ／小弓連絡" class="その他男声" src="voice/md04/0060010e129">
《こちら小弓公方府！
　現在、内湾を制圧した進駐軍艦隊により、
砲撃を受けている……！》

//【ｅｔｃ／小弓連絡】
<voice name="ｅｔｃ／小弓連絡" class="その他男声" src="voice/md04/0060020e129">
《出撃は不可能！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆古河の光景
//◆テロップ「古河」
//◆ぼーんぼーん。飛行艦による爆撃


	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	SetVolume("@OnSE*", 1000, 0, null);
	Delete("絵背景*");
	
	CreateSE("SE02", "se戦闘_銃器_砲門構え01");
	MusicStart("SE02", 50, 500, 0, 1000, null,false);

	CreateTextureSP("絵背景100", 200, Center, Middle, "cg/bg/bg102_昼古河情景_04.jpg");
/*
	CreateTextureSP("絵背景200", 200, Center, Middle, "cg/bg/bg102_昼古河情景_04.jpg");
	DrawTransition("絵背景200", 0, 800, 800, 100, null, "cg/data/circle_10_00_1.png", true);
	DrawEffect("絵背景100", 50, "LowWave ", 0, 100, null);
	Fade("絵背景100", 0, 1000, null, true);

*/
	Shake("絵背景*", 5000, 0, 1, 0, 0, 1000, null, false);

	OnBG(100, "bg102_昼古河情景_04.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕１", 500, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", true);
	Delete("黒幕１");

	OnSE("se戦闘_破壊_大爆発01", 700);

	TelopStart(15000,1500,center,450,"cg/sys/Telop/tp_古河.png",null);
	Wait(2500);

	SetNwC("cg/fw/nw古河公方府.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／古河連絡】
<voice name="ｅｔｃ／古河連絡" class="その他男声" src="voice/md04/0060030e069">
《こちら古河公方府。
　進駐軍は当方の防空網を突破、公方府上空
へ侵入し爆撃を開始している》

//【ｅｔｃ／古河連絡】
<voice name="ｅｔｃ／古河連絡" class="その他男声" src="voice/md04/0060040e069">
《現在、航空優勢は敵軍に有り。
　敵は空爆によって公方府の防衛能力を剥奪
したのち、接近中の陸上戦力をもって攻撃を
行う模様である》

//【ｅｔｃ／古河連絡】
<voice name="ｅｔｃ／古河連絡" class="その他男声" src="voice/md04/0060050e069">
《当方、普陀楽へ支援の兵を派遣し得る状況
にあらず！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆海岸
//◆テロップ「七里ヶ浜」
//◆どーんどーん。空爆、砲撃
//◆進駐軍艦
//◆横書きボックス

	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
	SetVolume("@OnSE*", 1000, 0, null);
	Delete("絵背景*");

	CreateTextureSP("絵背景ゆれ", 200, Center, Middle, "cg/bg/bg041_片瀬海岸_01.jpg");
	CreateTextureEX("絵背景100", 200, Center, Middle, "cg/ev/ev801_戦争絵シリーズその１_a.jpg");

//	CreateTextureEX("テロップ", 16000, @450, @500, "cg/sys/Telop/tp_七里ヶ浜.png");
//	Fade("テロップ", 1000, 1000, null, true);
	OnBG(100, "bg041_片瀬海岸_01.jpg");
	FadeBG(0, true);
//	WaitKey(1000);
//	FadeDelete("テロップ", 2000, true);
	OnSE("se背景_ガヤ_戦闘_艦砲射撃_L", 1000);

	Shake("絵背景ゆれ", 5000, 0, 10, 0, 0, 1000, Dxl2, false);

	DrawTransition("黒幕１", 500, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", true);
	Delete("黒幕１");

	OnSE("se背景_ガヤ_戦闘_空爆_L", 500);

	TelopStart(15000,1500,center,450,"cg/sys/Telop/tp_七里ヶ浜.png",null);
	Wait(2500);

	Fade("絵背景100", 1000, 1000, null, false);

	SetNwH("cg/fw/ny副官.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／艦隊副官】
<voice name="ｅｔｃ／艦隊副官" class="その他男声" src="voice/md04/0060060e041">
「<RUBY text="バンカー">防御点</RUBY>、砲台、ほぼ沈黙しました。
　水際障害物も所要範囲の駆逐は完了！」

{	NwH("cg/fw/ny艦隊司令.png");}
//【ｅｔｃ／艦隊司令】
<voice name="ｅｔｃ／艦隊司令" class="その他男声" src="voice/md04/0060070e040">
「よろしい。<RUBY text="ＬＳＴ">戦車揚陸艦</RUBY>を出せ。
　<RUBY text="ドラグーン">竜騎兵</RUBY>は降下させろ。残存ポイントの制圧
だ」

{	NwH("cg/fw/ny副官.png");}
//【ｅｔｃ／艦隊副官】
<voice name="ｅｔｃ／艦隊副官" class="その他男声" src="voice/md04/0060080e041">
「はっ」

{	NwH("cg/fw/ny艦隊司令.png");}
//【ｅｔｃ／艦隊司令】
<voice name="ｅｔｃ／艦隊司令" class="その他男声" src="voice/md04/0060090e040">
「上陸を開始する!!」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆ＬＳＴ前進。ざざー。

//◆朝比奈峠。bg055かbg046を流用？　またはbg025
//◆テロップ「朝比奈峠」
//◆ずががが。交戦中


	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵背景*");
	CreateTextureSP("絵背景スクロール", 1600, -200, middle, "cg/bg/resize/bg022_山林b_01.jpg");
	Rotate("絵背景スクロール", 0, @0, @180, @0, null,true);

//	Fade("テロップ", 1000, 1000, null, true);
	OnBG(100, "bg025_坑道山脈と森a_01.jpg");
	FadeBG(0, true);
//	WaitKey(1000);
//	FadeDelete("テロップ", 2000, true);

	CreateSE("ばきゅんばきゅん", "se戦闘_銃器_拳銃銃撃戦01_L");
	MusicStart("ばきゅんばきゅん", 500, 500, 0, 1000, null,true);

	Shake("絵背景スクロール", 3000, 0, 10, 0, 0, 1000, Dxl2, false);
	Move("絵背景スクロール", 100000, -624, @0, null, false);

	DrawTransition("黒幕１", 500, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", true);
	Delete("黒幕１");

	TelopStart(15000,1500,center,450,"cg/sys/Telop/tp_朝比奈峠.png",null);
	Wait(2500);

	Shake("絵背景スクロール", 3000, 0, 8, 0, 0, 1000, Dxl1, false);

	SetNwC("cg/fw/nw関門の兵士.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ｅｔｃ／朝比奈峠兵】
<voice name="ｅｔｃ／朝比奈峠兵" class="その他男声" src="voice/md04/0060100e212">
《金沢街道、朝比奈峠関門！
　現在、進駐軍による攻撃を受けている！》

//【ｅｔｃ／朝比奈峠兵】
<voice name="ｅｔｃ／朝比奈峠兵" class="その他男声" src="voice/md04/0060110e212">
《至急来援を乞う！》

//【ｅｔｃ／朝比奈峠兵】
<voice name="ｅｔｃ／朝比奈峠兵" class="その他男声" src="voice/md04/0060120e212">
《至急
</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆↑クリック待ちせず
//◆どがーん。砲声
//◆ぼーん。吹っ飛んだ。

	OnSE("se戦闘_破壊_大爆発01", 1000);
	CreateColorSP("黒幕１", 25000, "WHITE");
	DrawTransition("黒幕１", 150, 0, 1000, 100, null, "cg/data/circle_02_01_0.png", true);

	CreateTextureEX("どごーん", 15000, @0, @0, "cg/ef/ef026_汎用爆撃.jpg");
	Rotate("どごーん", 0, @0, @180, @0, null,true);
	Fade("どごーん", 0, 1000, null, true);

	Shake("どごーん", 1000000, 1, 2, 0, 0, 1000, null, false);

	EffectZoomadd(16000, 5000, 1000, "cg/ef/ef026_汎用爆撃.jpg", false);

	DrawTransition("黒幕１", 150, 1000, 0, 100, null, "cg/data/circle_02_01_1.png", false);
	FadeDelete("黒幕１", 1500,false);
	Zoom("どごーん", 1500, 1500, 1500, Dxl1, true);
	Zoom("どごーん", 1500, 50500, 50500, Axl1, false);
	SetVolume("ばきゅんばきゅん", 2000, 0, null);
	SetVolume("SE*", 1500, 0, null);
	SetVolume("OnSE*", 1500, 0, null);

	ClearFadeAll(1500, true);
	Wait(1000);

}

..//ジャンプ指定
//次ファイル　"md04_007.nss"