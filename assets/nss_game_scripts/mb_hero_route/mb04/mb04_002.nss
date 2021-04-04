//<continuation number="0">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_002.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/mb04_002.nss","MapBGLoop",true);
	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼イベントＣＧ
	#ev151_房総半島汚染図_a=true;
	#ev151_房総半島汚染図_b=true;
	#ev151_房総半島汚染図_c=true;
	#ev151_房総半島汚染図_z=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb04_003.nss";

}

scene mb04_002.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb04_001.nss"

//◆関東東部マップ
//◆小弓（千葉市中央区）を始点に赤い点がぽつぽつと
//◆発生していく。銀星号の移動ルートに沿って。
//◆最終的に房総半島全域がほぼ真っ赤に。
//◆小弓以北は都合により無事。美浜とか。
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	Delete("上背景");
	SoundPlay("@mbgm37",0,1000,true);

/*
	CreateTextureEX("絵ＥＶＡ", 2002, Center, Middle, "cg/ev/ev151_房総半島汚染図_a.jpg");
	CreateTextureEX("絵ＥＶＢ", 2002, Center, Middle, "cg/ev/ev151_房総半島汚染図_b.jpg");
	CreateTextureEX("絵ＥＶＣ", 2002, Center, Middle, "cg/ev/ev151_房総半島汚染図_c.jpg");
	CreateTextureEX("絵ＥＶＤ", 2002, Center, Middle, "cg/ev/ev151_房総半島汚染図_d.jpg");
	CreateTextureEX("絵ＥＶＥ", 2002, Center, Middle, "cg/ev/ev151_房総半島汚染図_e.jpg");
	CreateTextureEX("絵ＥＶＦ", 2002, Center, Middle, "cg/ev/ev151_房総半島汚染図_f.jpg");
	CreateTextureEX("絵ＥＶＧ", 2002, Center, Middle, "cg/ev/ev151_房総半島汚染図_g.jpg");
	CreateTextureEX("絵ＥＶＨ", 2002, Center, Middle, "cg/ev/ev151_房総半島汚染図_g.jpg");
	CreateTextureEX("絵ＥＶＩ", 2002, Center, Middle, "cg/ev/ev151_房総半島汚染図_g.jpg");
	CreateTextureEX("絵ＥＶＪ", 2002, Center, Middle, "cg/ev/ev151_房総半島汚染図_g.jpg");
	CreateTextureEX("絵ＥＶＫ", 2002, Center, Middle, "cg/ev/ev151_房総半島汚染図_g.jpg");
	CreateTextureEX("絵ＥＶＬ", 2002, Center, Middle, "cg/ev/ev151_房総半島汚染図_g.jpg");
	CreateTextureEX("絵ＥＶＭ", 2002, Center, Middle, "cg/ev/ev151_房総半島汚染図_g.jpg");
	CreateTextureEX("絵ＥＶＮ", 2002, Center, Middle, "cg/ev/ev151_房総半島汚染図_g.jpg");
	CreateTextureEX("絵ＥＶ", 2002, Center, Middle, "cg/ev/ev151_房総半島汚染図_g.jpg");
*/

	CreateTextureEX("絵ＥＶ１", 2002, Center, Middle, "cg/ev/ev151_房総半島汚染図_a.jpg");
	CreateTextureEX("絵ＥＶ２", 2002, Center, Middle, "cg/ev/ev151_房総半島汚染図_b.jpg");
	CreateTextureEX("絵ＥＶ３", 2002, Center, Middle, "cg/ev/ev151_房総半島汚染図_c.jpg");
	CreateTextureEX("絵ＥＶ４", 2002, Center, Middle, "cg/ev/ev151_房総半島汚染図_d.jpg");
	CreateTextureEX("絵ＥＶ５", 2002, Center, Middle, "cg/ev/ev151_房総半島汚染図_e.jpg");
	CreateTextureEX("絵ＥＶ６", 2002, Center, Middle, "cg/ev/ev151_房総半島汚染図_f.jpg");
	CreateTextureEX("絵ＥＶ７", 2002, Center, Middle, "cg/ev/ev151_房総半島汚染図_g.jpg");
	CreateTextureEX("絵ＥＶ８", 2002, Center, Middle, "cg/ev/ev151_房総半島汚染図_h.jpg");
	CreateTextureEX("絵ＥＶ９", 2002, Center, Middle, "cg/ev/ev151_房総半島汚染図_i.jpg");
	CreateTextureEX("絵ＥＶ１０", 2002, Center, Middle, "cg/ev/ev151_房総半島汚染図_ｊ.jpg");
	CreateTextureEX("絵ＥＶ１１", 2002, Center, Middle, "cg/ev/ev151_房総半島汚染図_k.jpg");
	CreateTextureEX("絵ＥＶ１２", 2002, Center, Middle, "cg/ev/ev151_房総半島汚染図_ｌ.jpg");
	CreateTextureEX("絵ＥＶ１３", 2002, Center, Middle, "cg/ev/ev151_房総半島汚染図_m.jpg");
	CreateTextureEX("絵ＥＶ１４", 2002, Center, Middle, "cg/ev/ev151_房総半島汚染図_n.jpg");
	CreateTextureEX("絵ＥＶ１５", 2002, Center, Middle, "cg/ev/ev151_房総半島汚染図_o.jpg");
	CreateTextureEX("絵ＥＶ１６", 2002, Center, Middle, "cg/ev/ev151_房総半島汚染図_p.jpg");
	CreateTextureEX("絵ＥＶ１７", 2002, Center, Middle, "cg/ev/ev151_房総半島汚染図_q.jpg");
	CreateTextureEX("絵ＥＶ１８", 2002, Center, Middle, "cg/ev/ev151_房総半島汚染図_r.jpg");
	CreateTextureEX("絵ＥＶ１９", 2002, Center, Middle, "cg/ev/ev151_房総半島汚染図_s.jpg");
	CreateTextureEX("絵ＥＶ２０", 2002, Center, Middle, "cg/ev/ev151_房総半島汚染図_t.jpg");
	CreateTextureEX("絵ＥＶ２１", 2002, Center, Middle, "cg/ev/ev151_房総半島汚染図_z.jpg");


	CreateProcess("プロセス１", 150, 0, 0, "MapBGLoop");
	SetAlias("プロセス１","プロセス１");
	Request("プロセス１", Start);

	FadeDelete("絵暗転", 2000, true);

//◆マップの上にレイヤー重ね
//◆狂乱する人々、血、瓦礫の町など
//◆ＣＧ変化に合わせて銀星号の唄も表示




/*

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010a]
《生と死の狭間に己を笑い恍惚として自ら忘るる》
《されば夜明けの嘆きを鐘に神曲の幕よいざ上がれ》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

*/
	WaitKey(2000);

	CreateColorEX("絵色100", 3500, "BLACK");
	Fade("絵色100", 2000, 500, null, false);

	CreateTextureEX("絵ＥＶ狂乱１", 4000, Center, Middle, "cg/ev/ev002_銀星号事件イメージ２.jpg");
	Fade("絵ＥＶ狂乱１", 2000, 500, null, false);

	WaitKey(1000);

	CreateTextureEX("絵演文字生と死", 5000, Center, Middle, "cg/sys/Telop/tp_銀星号の唄13.png");
	CreateTextureEX("絵演文字されば", 5000, Center, Middle, "cg/sys/Telop/tp_銀星号の唄14.png");

	Move("絵演文字生と死", 0, @0, @-20, null, true);
	Move("絵演文字されば", 0, @0, @+20, null, true);

	Fade("絵演文字生と死", 1000, 1000, null, true);
	WaitKey(5000);

	Fade("絵演文字されば", 1000, 1000, null, true);
	WaitKey(5000);

	CreatePlainSP("絵板写", 10000);
	Delete("絵演文字*");
	FadeDelete("絵板写", 1000, true);

/*

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010b]
《奇跡を行う聖人は衆生を救い神を呪って嘔吐する》
《黄金の兜の覇王は万里を征し愛馬と共に川底へ沈む》
《湖の美姫は国を捨て愛を選び糞尿に溺れて刑死する》
《孤赤児は蚯蚓の血を母の乳とし三夜して腹より腐る》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

*/


	Fade("絵色100", 2000, 0, null, false);
	Fade("絵ＥＶ狂乱１", 2000, 0, null, true);
	WaitKey(1000);

	CreateTextureEX("絵ＥＶ狂乱１", 4000, Center, Middle, "cg/ev/ev003_銀星号事件イメージ３.jpg");
	Fade("絵ＥＶ狂乱１", 2000, 500, null, false);
	Fade("絵色100", 2000, 500, null, false);

	WaitKey(1000);

	CreateTextureEX("絵演文字嵐の夜", 5000, Center, Middle, "cg/sys/Telop/tp_銀星号の唄15.png");
	CreateTextureEX("絵演文字温かい", 5000, Center, Middle, "cg2/sys/Telop/tp_銀星号の唄16.png");
	CreateTextureEX("絵演文字木漏れ", 5000, Center, Middle, "cg2/sys/Telop/tp_銀星号の唄17.png");
	CreateTextureEX("絵演文字せせら", 5000, Center, Middle, "cg/sys/Telop/tp_銀星号の唄18.png");

	Move("絵演文字嵐の夜", 0, @0, @-60, null, true);
	Move("絵演文字温かい", 0, @0, @-20, null, true);
	Move("絵演文字木漏れ", 0, @0, @+20, null, true);
	Move("絵演文字せせら", 0, @0, @+60, null, true);

	Fade("絵演文字嵐の夜", 1000, 1000, null, true);
	WaitKey(5000);

	Fade("絵演文字温かい", 1000, 1000, null, true);
	WaitKey(5000);

	Fade("絵演文字木漏れ", 1000, 1000, null, true);
	WaitKey(5000);

	Fade("絵演文字せせら", 1000, 1000, null, true);
	WaitKey(5000);

	CreatePlainSP("絵板写", 10000);
	Delete("絵演文字*");
	FadeDelete("絵板写", 1000, true);

/*

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010c]
《生命よこの賛歌を聞け笑い疲れた怨嗟を重ねて》
《生命よこの祈りを聞け怒りおののく喜びを枕に》
《百年の生は炎と剣の連環が幾重にも飾り立てよう》
《七日の生は闇と静寂に守られ無垢に光り輝くだろう》
《獣よ踊れ野を馳せよ唄い騒いで猛り駆けめぐれ》
《いまや如何なる鎖も檻も汝の前には朽ちた土塊》

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

*/

	Fade("絵色100", 2000, 0, null, false);
	Fade("絵ＥＶ狂乱１", 2000, 0, null, true);
	WaitKey(1000);

	CreateTextureEX("絵ＥＶ狂乱１", 4000, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");
	Fade("絵ＥＶ狂乱１", 2000, 500, null, false);
	Fade("絵色100", 2000, 500, null, false);


	CreateTextureEX("絵演文字生の意", 5000, Center, Middle, "cg/sys/Telop/tp_銀星号の唄19.png");
	CreateTextureEX("絵演文字死の恐", 5000, Center, Middle, "cg/sys/Telop/tp_銀星号の唄20.png");
	CreateTextureEX("絵演文字生命に", 5000, Center, Middle, "cg/sys/Telop/tp_銀星号の唄21.png");
	CreateTextureEX("絵演文字生命を", 5000, Center, Middle, "cg/sys/Telop/tp_銀星号の唄22.png");
	CreateTextureEX("絵演文字木漏れ", 5000, Center, Middle, "cg/sys/Telop/tp_銀星号の唄23.png");
	CreateTextureEX("絵演文字獣よ踊", 5000, Center, Middle, "cg/sys/Telop/tp_銀星号の唄24.png");

	Move("絵演文字生の意", 0, @0, @-100, null, true);
	Move("絵演文字死の恐", 0, @0, @-60, null, true);
	Move("絵演文字生命に", 0, @0, @-20, null, true);
	Move("絵演文字生命を", 0, @0, @+20, null, true);
	Move("絵演文字木漏れ", 0, @0, @+60, null, true);
	Move("絵演文字獣よ踊", 0, @0, @+100, null, true);

	Fade("絵演文字生の意", 1000, 1000, null, true);
	WaitKey(5000);

	Fade("絵演文字死の恐", 1000, 1000, null, true);
	WaitKey(5000);

	Fade("絵演文字生命に", 1000, 1000, null, true);
	WaitKey(5000);

	Fade("絵演文字生命を", 1000, 1000, null, true);
	WaitKey(5000);

	Fade("絵演文字木漏れ", 1000, 1000, null, true);
	WaitKey(5000);

	Fade("絵演文字獣よ踊", 1000, 1000, null, true);
	WaitKey(5000);

	CreatePlainSP("絵板写", 10000);
	Delete("絵演文字*");
	FadeDelete("絵板写", 1000, true);


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb04_003.nss"



function MapBGLoop()
{

$MapBGLoopFade = 2000;
$MapBGLoopWait = 1000;



	Fade("@絵ＥＶ１", 0, 0, null, true);
	Fade("@絵ＥＶ１", $MapBGLoopFade, 1000, null, true);
	Wait($MapBGLoopWait);

	Fade("@絵ＥＶ２", 0, 0, null, true);
	Fade("@絵ＥＶ２", $MapBGLoopFade, 1000, null, true);
	Wait($MapBGLoopWait);

	Fade("@絵ＥＶ３", 0, 0, null, true);
	Fade("@絵ＥＶ３", $MapBGLoopFade, 1000, null, true);
	Wait($MapBGLoopWait);

	Fade("@絵ＥＶ４", 0, 0, null, true);
	Fade("@絵ＥＶ４", $MapBGLoopFade, 1000, null, true);
	Wait($MapBGLoopWait);

	Fade("@絵ＥＶ５", 0, 0, null, true);
	Fade("@絵ＥＶ５", $MapBGLoopFade, 1000, null, true);
	Wait($MapBGLoopWait);

	Fade("@絵ＥＶ６", 0, 0, null, true);
	Fade("@絵ＥＶ６", $MapBGLoopFade, 1000, null, true);
	Wait($MapBGLoopWait);

	Fade("@絵ＥＶ７", 0, 0, null, true);
	Fade("@絵ＥＶ７", $MapBGLoopFade, 1000, null, true);
	Wait($MapBGLoopWait);

	Fade("@絵ＥＶ８", 0, 0, null, true);
	Fade("@絵ＥＶ８", $MapBGLoopFade, 1000, null, true);
	Wait($MapBGLoopWait);

	Fade("@絵ＥＶ９", 0, 0, null, true);
	Fade("@絵ＥＶ９", $MapBGLoopFade, 1000, null, true);
	Wait($MapBGLoopWait);

	Fade("@絵ＥＶ１０", 0, 0, null, true);
	Fade("@絵ＥＶ１０", $MapBGLoopFade, 1000, null, true);
	Wait($MapBGLoopWait);

	Fade("@絵ＥＶ１１", 0, 0, null, true);
	Fade("@絵ＥＶ１１", $MapBGLoopFade, 1000, null, true);
	Wait($MapBGLoopWait);

	Fade("@絵ＥＶ１２", 0, 0, null, true);
	Fade("@絵ＥＶ１２", $MapBGLoopFade, 1000, null, true);
	Wait($MapBGLoopWait);

	Fade("@絵ＥＶ１３", 0, 0, null, true);
	Fade("@絵ＥＶ１３", $MapBGLoopFade, 1000, null, true);
	Wait($MapBGLoopWait);

	Fade("@絵ＥＶ１４", 0, 0, null, true);
	Fade("@絵ＥＶ１４", $MapBGLoopFade, 1000, null, true);
	Wait($MapBGLoopWait);

	Fade("@絵ＥＶ１５", 0, 0, null, true);
	Fade("@絵ＥＶ１５", $MapBGLoopFade, 1000, null, true);
	Wait($MapBGLoopWait);

	Fade("@絵ＥＶ１６", 0, 0, null, true);
	Fade("@絵ＥＶ１６", $MapBGLoopFade, 1000, null, true);
	Wait($MapBGLoopWait);

	Fade("@絵ＥＶ１７", 0, 0, null, true);
	Fade("@絵ＥＶ１７", $MapBGLoopFade, 1000, null, true);
	Wait($MapBGLoopWait);

	Fade("@絵ＥＶ１８", 0, 0, null, true);
	Fade("@絵ＥＶ１８", $MapBGLoopFade, 1000, null, true);
	Wait($MapBGLoopWait);

	Fade("@絵ＥＶ１９", 0, 0, null, true);
	Fade("@絵ＥＶ１９", $MapBGLoopFade, 1000, null, true);
	Wait($MapBGLoopWait);

	Fade("@絵ＥＶ２０", 0, 0, null, true);
	Fade("@絵ＥＶ２０", $MapBGLoopFade, 1000, null, true);
	Wait($MapBGLoopWait);

	Fade("@絵ＥＶ２１", 0, 0, null, true);
	Fade("@絵ＥＶ２１", $MapBGLoopFade, 1000, null, true);
	Wait($MapBGLoopWait);


}
