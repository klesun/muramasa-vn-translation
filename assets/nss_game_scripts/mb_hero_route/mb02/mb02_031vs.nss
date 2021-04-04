//<continuation number="70">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_031vs.nss_MAIN
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
	#bg070_普陀楽城内階段ホール_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb02_032.nss";

}

scene mb02_031vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb02_030vs.nss"

//◆景明ＶＳ常闇
	PrintBG("上背景", 30000);
	SoundPlay("@mbgm10",0,1000,true);//ダミー注意
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg070_普陀楽城内階段ホール_03.jpg");
	StC(1000, @0, @0,"cg/st/st常闇斎_通常_私服.png");
//	StR(1000, @0, @0,"cg/st/3d村正標準_立ち_抜刀手無.png");
	FadeStA(0,true);
	FadeBG(0,true);
	Delete("上背景");


	FadeDelete("絵暗転", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　腕を片方、頭部を守る位置に<RUBY text="かざ">翳</RUBY>す。
　左腕だ。こちらは更に斬られようと、もう大した問
題ではない。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw常闇斎_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/031vs0010b37">
「……」


{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/031vs0020a00">
「自分の敗北です。
　柳生の御宗家」


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/031vs0030a00">
「……貴重な一手を御教授頂きました。
　感謝致します」


{	FwR("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/031vs0040b37">
「では？」


{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/031vs0050a00">
「<RUBY text="・・">では</RUBY>」


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/031vs0060a00">
「これにて、退散仕る」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//◆合当理吹かす
	CreateSE("SE01","se戦闘_動作_鎧_合当理吹かし01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreatePlainEXadd("絵板写", 5000);
	Fade("絵板写", 100, 750, Dxl2, false);
	SetVertex("絵板写", 740, 240);
	Zoom("絵板写", 500, 1250, 1250, null, false);
	Wait(100);
	FadeDelete("絵板写", 400, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　挨拶と同時。
　合当理に<RUBY text="ひ">熱</RUBY>を入れる。

　出力は限界の半分程度。
　それでも屋内で用いるには強過ぎる――だが構わぬ。

　急激な始動。<RUBY text="エグゾースト">排気</RUBY>。
　強引極まる推力確保に、全身の甲鉄が<RUBY text="わなな">戦慄</RUBY>く。

　そうして進む――
　進むだけだ。

　技は何もない。
　太刀を構えもしない。

　<RUBY text="・・・・・・・・・・・">もう負けているのだから</RUBY>、技など必要ない！

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");

//おがみ：戦闘立ち絵完成後、差し替え予定
	CreateTextureEX("絵演窓上/絵演背景", 16100, -100, -444, "cg/bg/resize/bg070_普陀楽城内階段ホール_03l.jpg");
	CreateTextureEX("絵演窓上/絵立絵", 16200, 0, -120, "cg/st/resize/st常闇斎_通常_私服l.png");
/*
	CreateTextureEX("絵演窓上/絵演背景", 16100, -100, -344, "cg/bg/resize/bg070_普陀楽城内階段ホール_03l.jpg");
	CreateTextureEX("絵演窓上/絵立絵", 16200, 60, -120, "cg/st/resize/st常闇斎_通常_私服l.png");
*/

	Zoom("絵演窓上/絵立絵", 0, 500, 500, null, true);
	Move("絵演窓上", 0, @0, @128, null, true);

	Request("絵演窓上/絵演背景", Smoothing);
	Request("絵演窓上/絵演背景", Smoothing);

//	Move("絵演窓上/絵演背景", 60000, @-100, @0, null, false);
//	Move("絵演窓上/絵立絵", 60000, @-200, @0, null, false);

	Zoom("絵演窓上/絵立絵", 300, 1000, 1000, Dxl2, false);
	Zoom("絵演窓上/絵演背景", 300, 1100, 1100, Dxl2, false);

	Fade("絵色100", 200, 300, null, false);
	Fade("絵演窓上/絵演背景", 200, 1000, null, false);
	Fade("絵演窓上/絵立絵", 200, 1000, null, true);



	SetFwR("cg/fw/fw常闇斎_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/031vs0070b37">
「正解！」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,0);//――――――――――――――――――――――――


//◆発進
//◆剣撃
	CreateSE("SE01a","se戦闘_動作_空上昇01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 15000, "#FFFFFF");
	CreateColorSP("絵色黒", 1000, "#000000");

	Delete("絵演窓上*");
	Delete("絵色100");

	DeleteStA(0,true);
	FadeDelete("絵色白", 600, true);

	CreateSE("SE01b","se戦闘_攻撃_刀振る02");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	SL_centerin(@0, @0,3000);
	SL_centerinfade2(5);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　文字通り爆発的な推力を得て進発する。
　その出端を見事に捉えて、柳生常闇斎の一剣は俺を
襲った。

　ただの刀に過ぎぬそれはしかし、この異相の男の手
にある限り、武者の全身にある関節部から潜り込んで
重傷を負わせ得る過不足ない凶器たる。
　が――

　一撃を以て致命傷を与えようと思うならそれはただ
一箇所、首を狙うほかにない。
　心臓は無理だ。分厚い甲鉄が計算し尽くされた耐刃
構造をとる劒冑の胸部は、武者の刺突でも跳ね除ける。

　だから、首。
　首さえ守ればいい。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆斬られた。ずばしゅ。
	CreateSE("SE02","se戦闘_攻撃_刀刺さる05");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 2100, @0, @0, "cg/anime/Center/bloodA_5.png");
	CreateTextureSP("絵演", 2000, @0, @0, "cg/anime/Center/bloodA_5.png");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演上", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　盾にした左腕、その肘関節の隙間を常闇斎の凶刃は
精確に<RUBY text="つか">掴</RUBY>み、侵入し。皮から肉、肉から骨へと存分に
切り裂いた。――超人の手並み。
　恐怖に血は凍り、感嘆に息は止まる。

　だが柳生の長にしてそこまでが限度。
　村正の左腕を切り抜けた一刀は勢威を失い、兜角に
当たって軽く弾かれる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);
	Delete("絵色黒");
	Delete("絵演*");
	CreateColorSP("絵色赤床", 100, "#CC0000");
	CreateTextureEXmul("絵演背景", 150, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵演背景", 150, 1000, AxlDxl, false);
	DrawTransition("絵演背景", 150, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
　委細、構わず。
　俺はただ前へ進む。

　世界全てを置き去りにするが如き推力に身を任せ、
前方へ――――
　肩が常闇斎の胸元に接し。そして一瞬のうちに押し
飛ばした。

　この激突さえ、怪物じみた達人に何の痛痒も与えて
いないのがわかる――接触の瞬間自ら体を後方へ倒し、
衝撃を流している。
　しかし、構わない。

　倒れたであろう敵手に、俺は目も向けなかった。
　駆け抜ける。半ばは<RUBY text="とんで">騎航して</RUBY>。ただ前へ。

　行く手を妨げるものは、最早何も無かった。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb02_032.nss"