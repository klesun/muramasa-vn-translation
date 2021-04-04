//<continuation number="60">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_018vs.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/ma04_018vs.nss","DenziBladeCharge",true);
	Conquest("nss/ma04_018vs.nss","DenziBladeChargeSet",true);

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
	#ev944_村正ＶＳ荒覇吐=true;
	#ev944_村正ＶＳ荒覇吐_b=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma04_019.nss";

}

scene ma04_018vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_017.nss"

//●１７

//◆村正
	PrintBG("上背景", 25000);
	CreateSE("SE01","se戦闘_動作_空上昇01");
	CreateColorSPadd("絵暗転", 10000, "#FFFFFF");
	CreateTextureEX("絵演ＳＴ", 1000, 135, -300, "cg/st/3d村正標準_騎航_通常.png");
	OnBG(100,"bg001_空a_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("絵暗転", 1000, false);
	Fade("絵演ＳＴ", 300, 1000, null, false);
	Move("絵演ＳＴ", 1000, @-10, @-30, DxlAuto, true);

	WaitKey(500);

//◆荒覇吐をロックオン
	CreateSE("SE02","se特殊_コックピット_ロックオン");
	CreateTextureSPadd("絵演上", 3100, Center, -180, "cg/ev/ev122_擱坐した荒覇吐.jpg");
	CreateTextureSP("絵演", 3000, Center, -180, "cg/ev/ev122_擱坐した荒覇吐.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	MusicStart("SE02",0,1000,0,1000,null,false);
	FadeDelete("絵演上", 200, false);
	Zoom("絵演上", 200, 1000, 1000, AxlDxl, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/018vs0010a01">
《敵騎、捕捉！》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/018vs0020a00">
「応！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm12",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　馳せ参ず。
　余りにも遅きに失し、あるいは、間に合わなかった
のではないか――という疑念さえ<RUBY text="よ">過</RUBY>ぎるも。

　今は迷いを抱くべからず。
　時に残余があるを信じ、一瞬一毫を惜しんで駆ける。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆小分岐
//◆一条のみ生存ルートの場合は以下を飛ばす

if(!$Ichizyou_Dead){

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　敵の巨躯は正面に有り。
　地表にあって今は不動。

　直前、何事があったのか、かの怪鬼は騎航を乱して
不時着している。
　いま漸う、動き出そうとする気配がある。

　何処からも攻撃を受けたようには見えなかったが。
　――そんな思索も後で良し。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ここまで

}
	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Delete("絵演*");
	CreateTextureSP("絵演", 2000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");

	DrawDelete("絵黒幕", 150, 100, "circle_01_00_1", false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　ひた進む。

　劔冑の探査機能か、あるいは仕手の直感か、
　察したらしい巨大な武者は予想以上に素早い動きで、
こちらへ主攻正面を転換する。

　砲門群が向く――
　火を噴き放つ。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆銃撃ずがが
//◆食らってます。
	CreateSE("SE01a","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	MFlash(30,16);

	CreateColorSPadd("絵色間繋白", 20000, "#FFFFFF");
	Wait(1);
	CreateTextureSPadd("絵演上", 3100, -800, -75, "cg/ev/resize/ev909_荒覇吐_dl.jpg");
	CreateTextureSP("絵演", 3000, -800, -75, "cg/ev/resize/ev909_荒覇吐_dl.jpg");
	Zoom("絵演上", 0, 1300, 1300, null, false);
	Rotate("絵演*", 0, @0, @180, @0, null,true);
	Request("絵演*", Smoothing);
	Fade("絵色間繋白", 0, 0, null, true);

	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	CreateWindow("絵窓", 19000, 0, 144, 1024, 288, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateColorSP("絵窓/絵演色", 19010, "#990000");
	CreateTextureSPmul("絵窓/絵演背景", 19020, Center, Middle, "cg/ef/ef001_汎用移動.jpg");

	CreateTextureSP("絵窓/絵演立絵装甲", 19100, 260, -300, "cg/st/3d村正標準_騎航_通常.png");

	//Rotate("絵窓/絵演立絵装甲", 0, @0, @0, @14, null,true);
	Request("絵窓/絵演立絵装甲", Smoothing);
	Zoom("絵窓/絵演立絵装甲", 0, 500, 500, null, true);
	SetBlur("絵窓/絵演立絵装甲", true, 3, 500, 30, false);

	CreateSE("SE02","se戦闘_動作_空上昇01");
	MusicStart("SE02",0,1000,0,1000,null,false);

	Zoom("絵窓/絵演立絵装甲", 300, 750, 750, Axl2, false);
	Move("絵窓/絵演立絵装甲", 300, -276, -175, Axl2, false);
	Zoom("絵窓", 300, 1000, 1000, Dxl2, true);

	Fade("絵色間繋白", 1, 1000, null, true);
	CreateTextureEXadd("絵窓/絵被弾効果壱", 19500, Center, Middle, "cg/ef/ef044_火花c.png");
	CreateTextureEXadd("絵窓/絵被弾効果弐", 19500, Center, Middle, "cg/ef/ef044_火花c.png");
	CreateTextureEXadd("絵窓/絵被弾効果参", 19500, Center, Middle, "cg/ef/ef044_火花c.png");
	CreateTextureEXadd("絵窓/絵被弾効果四", 19500, Center, Middle, "cg/ef/ef044_火花c.png");
	CreateTextureEXadd("絵窓/絵被弾効果五", 19500, Center, Middle, "cg/ef/ef044_火花c.png");

	$SE被弾=se戦闘_攻撃_鎧_打撃02;
	CreateSE("SE031a","$SE被弾");
	CreateSE("SE032a","$SE被弾");
	CreateSE("SE033a","$SE被弾");
	CreateSE("SE034a","$SE被弾");
	CreateSE("SE035a","$SE被弾");
	Delete("絵色間繋白");

	$火花縮小率甲=Random(5)*30;
	$火花縮小率=$火花縮小率甲+250;
	Move("絵窓/絵被弾効果壱", 0, -520, -400, null, true);
	Zoom("絵窓/絵被弾効果壱", 0, $火花縮小率, $火花縮小率, null, true);
	Wait(10);
	MusicStart("SE031a",0,1000,0,1000,null,false);
	Fade("絵窓/絵被弾効果壱", 0, 1000, null, true);
	Shake("絵窓/絵演立絵装甲", 300, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵窓/絵被弾効果壱", 300, @250, @250, Dxl2, false);
	Rotate("絵窓/絵被弾効果壱", 450, @0, @0, @3600, null,false);
	Shake("絵窓/絵被弾効果壱", 450, 0, 8, 0, 0, 1000, null, false);
	DrawTransition("絵窓/絵被弾効果壱", 300, 1000, 0, 100, null, "cg/data/slide_01_02_0.png", false);
	FadeDelete("絵窓/絵被弾効果壱", 450, false);

	$火花演出待基本=100;
	$火花演出待=$火花演出待基本+(Random(3)*20);
	Wait($火花演出待);

	$火花縮小率甲=Random(5)*30;
	$火花縮小率=$火花縮小率甲+250;
	Move("絵窓/絵被弾効果弐", 0, -98, -465, null, true);
	Zoom("絵窓/絵被弾効果弐", 0, $火花縮小率, $火花縮小率, null, true);
	Rotate("絵窓/絵被弾効果弐", 0, @0, @0, 0, null,false);
	Wait(10);
	MusicStart("SE032a",0,1000,0,2000,null,false);
	Fade("絵窓/絵被弾効果弐", 0, 1000, null, true);
	Shake("絵窓/絵演立絵装甲", 300, 20, 10, 0, 0, 1000, Dxl2, false);
	Zoom("絵窓/絵被弾効果弐", 300, @250, @250, Dxl2, false);
	Rotate("絵窓/絵被弾効果弐", 450, @0, @0, @3600, null,false);
	Shake("絵窓/絵被弾効果弐", 450, 0, 8, 0, 0, 1000, null, false);
	DrawTransition("絵窓/絵被弾効果弐", 300, 1000, 0, 100, null, "cg/data/slide_01_02_2.png", false);
	FadeDelete("絵窓/絵被弾効果弐", 450, false);

	$火花演出待=$火花演出待基本+(Random(3)*20);
	Wait($火花演出待);

	$火花縮小率甲=Random(5)*30;
	$火花縮小率=$火花縮小率甲+250;
	Move("絵窓/絵被弾効果参", 0, -415, -346, null, true);
	Zoom("絵窓/絵被弾効果参", 0, $火花縮小率, $火花縮小率, null, true);
	Rotate("絵窓/絵被弾効果参", 0, @0, @0, 0, null,false);
	Wait(10);
	MusicStart("SE033a",0,1000,0,700,null,false);
	Fade("絵窓/絵被弾効果参", 0, 1000, null, true);
	Shake("絵窓/絵演立絵装甲", 300, 20, 0, 0, 0, 1000, Dxl2, false);
	Zoom("絵窓/絵被弾効果参", 300, @250, @250, Dxl2, false);
	Rotate("絵窓/絵被弾効果参", 450, @0, @0, @3600, null,false);
	Shake("絵窓/絵被弾効果参", 450, 0, 8, 0, 0, 1000, null, false);
	DrawTransition("絵窓/絵被弾効果参", 300, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", false);
	FadeDelete("絵窓/絵被弾効果参", 450, false);

	$火花演出待=$火花演出待基本+(Random(3)*20);
	Wait($火花演出待);

	$火花縮小率甲=Random(5)*30;
	$火花縮小率=$火花縮小率甲+250;
	Move("絵窓/絵被弾効果四", 0, -220, -470, null, true);
	Zoom("絵窓/絵被弾効果四", 0, $火花縮小率, $火花縮小率, null, true);
	Rotate("絵窓/絵被弾効果四", 0, @0, @0, 0, null,false);
	Wait(10);
	MusicStart("SE034a",0,1000,0,1000,null,false);
	Fade("絵窓/絵被弾効果四", 0, 1000, null, true);
	Shake("絵窓/絵演立絵装甲", 300, 30, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵窓/絵被弾効果四", 300, @250, @250, Dxl2, false);
	Rotate("絵窓/絵被弾効果四", 450, @0, @0, @3600, null,false);
	Shake("絵窓/絵被弾効果四", 450, 0, 8, 0, 0, 1000, null, false);
	DrawTransition("絵窓/絵被弾効果四", 300, 1000, 0, 100, null, "cg/data/zoom_01_00_1.png", false);
	FadeDelete("絵窓/絵被弾効果四", 450, false);

	$火花演出待=$火花演出待基本+(Random(3)*20);
	Wait($火花演出待);

	$火花縮小率甲=Random(5)*30;
	$火花縮小率=$火花縮小率甲+250;
	Move("絵窓/絵被弾効果五", 0, -326, -565, null, true);
	Zoom("絵窓/絵被弾効果五", 0, $火花縮小率, $火花縮小率, null, true);
	Rotate("絵窓/絵被弾効果五", 0, @0, @0, 0, null,false);
	Wait(10);
	MusicStart("SE035a",0,1000,0,1700,null,false);
	Fade("絵窓/絵被弾効果五", 0, 1000, null, true);
	Shake("絵窓/絵演立絵装甲", 300, 30, 0, 0, 0, 1000, Dxl2, false);
	Zoom("絵窓/絵被弾効果五", 300, @250, @250, Dxl2, false);
	Rotate("絵窓/絵被弾効果五", 450, @0, @0, @3600, null,false);
	Shake("絵窓/絵被弾効果五", 450, 0, 8, 0, 0, 1000, null, false);
	DrawTransition("絵窓/絵被弾効果五", 300, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", false);
	FadeDelete("絵窓/絵被弾効果五", 450, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　委細構わず突き進む。
　構うだけの余力もない。

　鋼の粒が甲鉄を削り、続く粒が更に削る。
　卓抜した射撃技量の成し遂げる集中弾が鉄壁を破り
脆弱な肉に到達するまで、あと何秒が要るのであろう。

　そんな危惧が刹那ひらめき、
　そのまま忘れる。

　今は行け。
　ただ前へ進め。

　記憶したその一点。
　偉容を崩し得る唯一の急所。

　仕手の搭乗位置。
　其処を目掛け。

　進む。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

	Delete("@MF*");

//◆突進
	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵黒幕", 20000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	CreateTextureSPadd("絵演上", 3100, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	CreateTextureSP("絵演", 3000, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	Zoom("絵演上", 0, 1300, 1300, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 1000, 0, 10, 0, 0, 1000, Dxl3, false);

	Move("絵演*", 150, -615, @0, Dxl2, false);

	Delete("絵窓");
	DrawDelete("絵黒幕", 150, 100, "slide_01_03_1", true);
	FadeDelete("絵演上", 200, true);
	Delete("絵演");

//◆すげー弾幕
	CreateSE("SE01a","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	MFlash(30,20);

	CreateTextureSPadd("絵ＥＶ上", 5100, -545, -770, "cg/ev/resize/ev944_村正ＶＳ荒覇吐l.jpg");
	CreateTextureSP("絵ＥＶ", 5000, -545, -770, "cg/ev/resize/ev944_村正ＶＳ荒覇吐l.jpg");
	SetBlur("絵ＥＶ", true, 2, 500, 60, false);
	Zoom("絵ＥＶ上", 0, 1200, 1200, null, false);
	Zoom("絵ＥＶ上", 200, 1000, 1000, Dxl2, false);
	Shake("絵ＥＶ", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵ＥＶ上", 300, true);

	Move("絵ＥＶ*", 600, -30, -1700, Dxl2, true);

//◆ヤベェっぽい演出。レッドアウトとか
	CreateSE("SE03a","se戦闘_攻撃_鎧攻撃命中02");
	CreateColorEX("絵色血", 5200, "#CC0000");
	CreatePlainSPadd("絵板写", 5110);
	Zoom("絵板写", 0, 1250, 1250, null, true);
	SetBlur("絵板写", true, 3, 500, 200, false);
	Fade("絵色血", 0, 600, null, true);
	MusicStart("SE03a",0,1000,0,1000,null,false);
	Fade("絵色血", 200, 0, null, true);
	Shake("絵板写", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵板写", 150, 1100, 1100, Dxl1, true);

	CreateSE("SE03b","se戦闘_攻撃_鎧攻撃命中02");
	Zoom("絵板写", 0, 1100, 1100, null, true);
	SetBlur("絵板写", true, 3, 500, 200, false);
	Fade("絵色血", 0, 600, null, true);
	MusicStart("SE03b",0,1000,0,850,null,false);
	Fade("絵色血", 200, 0, null, true);
	Shake("絵板写", 800, 20, 0, 0, 0, 1000, Dxl2, false);
	Zoom("絵板写", 150, 1100, 1100, Dxl1, true);

	CreateSE("SE03c","se戦闘_攻撃_鎧攻撃命中03");
	Zoom("絵板写", 0, 1300, 1300, null, true);
	SetBlur("絵板写", true, 3, 500, 200, false);
	Fade("絵色血", 0, 600, null, true);
	MusicStart("SE03c",0,1000,0,850,null,false);
	Fade("絵色血", 200, 0, null, true);
	Shake("絵板写", 800, 20, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵板写", 150, 1100, 1100, Dxl1, true);

	FadeDelete("絵板写", 2000, false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/018vs0030a01">
《――御堂！》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/018vs0040a00">
「参る」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Delete("@MF*");
	SetVolume("SE*", 650, 0, null);

//◆電磁抜刀スタート
//◆ムービーか、スクリプトか。それが問題だ。
	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 150, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);

	WaitPlay("SE*", null);

	CreateColorSP("絵色黒地", 100, "#000000");
	Delete("絵ＥＶ*");
	Delete("絵色血*");
	Delete("絵板写*");

	//CreateTextureSP("絵演", 4000, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_d.jpg");

	CreateWindow("絵窓上", 15000, 0, 0,1024, 288, false);
	CreateWindow("絵窓下", 15000, 0, 288, 1024, 576, false);
	SetAlias("絵窓上","絵窓上");
	SetAlias("絵窓下","絵窓下");

	CreateColorSP("絵窓上/絵色100", 15000, "Black");
	CreateColorSP("絵窓下/絵色100", 15000, "Black");

	CreateWindow("絵窓縦", 15000, 512, 0,400, 576, false);
	SetAlias("絵窓縦","絵窓縦");
	CreateTextureEX("絵窓縦/絵EV100", 16000, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_b.jpg");
	Request("絵窓縦/絵EV100", Smoothing);
	Zoom("絵窓縦/絵EV100", 0, 2000, 2000, null, true);
	Move("絵窓縦/絵EV100", 0, @-300, @0, null, false);

	CreateTextureEX("絵窓縦/絵EV200", 16000, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_c.jpg");
	Request("絵窓縦/絵EV200", Smoothing);
	Zoom("絵窓縦/絵EV200", 0, 2000, 2000, null, true);
	Move("絵窓縦/絵EV200", 0, @-300, @0, null, false);

	Delete("黒幕１");

	CreateTextureSP("絵EV100", 14000, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_a.jpg");
	CreateTextureEX("絵EV200", 14000, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_b.jpg");
	Request("絵EV100", Smoothing);
	Zoom("絵EV100", 0, 2000, 2000, null, true);
	Move("絵EV100", 0, @+400, @+288, null, false);
	Request("絵EV200", Smoothing);
	Zoom("絵EV200", 0, 2000, 2000, null, true);
	Move("絵EV200", 0, @0, @+288, null, false);

	Move("絵EV100", 500, @-400, @0, Dxl1, false);
	Move("絵窓上", 300, @0, @-200, null, false);
	Move("絵窓下", 300, @0, @+200, null, true);

	WaitAction("絵EV100", null);

	CreateColorEXadd("絵色100", 14001, "White");

	OnSE("se特殊_鎧_装着01",1000);

	Fade("絵EV200", 0, 1000, null, false);
	Fade("絵色100", 0, 1000, null, false);

	DrawTransition("絵色100", 200, 0, 1000, 100, Dxl1, "cg/data/slide_05_00_1.png", true);
	Delete("絵EV100");
	FadeDelete("絵色100",1000,true);

	CreateColorEX("絵色100", 14005, "Black");
	Fade("絵色100", 0, 700, null, false);
	DrawTransition("絵色100", 300, 0, 1000, 100, Dxl1, "cg/data/slide_06_00_1.png", true);

	Fade("絵窓縦/絵EV100", 0, 1000, null, false);
	DrawTransition("絵窓縦/絵EV100", 500, 0, 1000, 100, Dxl1, "cg/data/slide_02_00_1.png", true);
//	CreateColorSP("絵色100", 10, "White");

	Wait(300);

	Fade("絵窓縦/絵EV200", 0, 1000, null, false);
	Shake("絵窓縦/絵EV200", 500000, 2, 1, 0, 0, 500, null, false);

	OnSE("se特殊_電撃_帯電01",700);

	CreateSE("SE01","se特殊_電撃_帯電01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("絵窓縦/絵200", 20000, #99CCFF);
	Fade("絵窓縦/絵200", 10, 600, null, true);
	Fade("絵窓縦/絵200", 100, 0, null, true);
	Fade("絵窓縦/絵200", 10, 500, null, true);
	Fade("絵窓縦/絵200", 100, 0, null, true);
	Fade("絵窓縦/絵200", 10, 700, null, true);
	Fade("絵窓縦/絵200", 100, 0, null, true);
	Fade("絵窓縦/絵200", 10, 500, null, true);
	Fade("絵窓縦/絵200", 100, 0, null, true);
	Fade("絵窓縦/絵200", 10, 800, null, true);
	Fade("絵窓縦/絵200", 100, 0, null, true);

	SetVolume("OnSE*", 100, 0, null);

	CreateColorSPadd("絵色白", 20010, "#FFFFFF");

	Delete("絵窓上/*");
	Delete("絵窓下/*");
	Delete("絵窓縦/*");

	Delete("絵窓上");
	Delete("絵窓下");
	Delete("絵窓縦");

	Delete("絵色100");
	Delete("絵EV100");
	Delete("絵EV200");


	CreateTextureSP("絵演", 4000, -440, -40, "cg/ev/resize/ev902_村正電磁抜刀レールガン_cm.jpg");

	Wait(50);

	FadeDelete("絵色白", 100, false);

	Move("絵演", 300, -380, @0, Dxl2, false);
	Fade("絵演", 300, 1000, null, true);
	CreateSE("SEL01","se特殊_電撃_帯電02");
	MusicStart("SEL01",0,1000,0,1000,null,true);
	CreateTextureEXadd("プロ絵上", 4020, -380, -40, "cg/ev/resize/ev902_村正電磁抜刀レールガン_dm.jpg");
	CreateTextureEXsub("プロ絵", 4010, -380, -40, "cg/ev/resize/ev902_村正電磁抜刀レールガン_dm.jpg");
	SetVertex("プロ絵", 1160, 470);

	DenziBladeCharge();


	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/018vs0050a00">
《吉野御流合戦礼法〝迅雷〟が崩し……》

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/018vs0060a00">
《<RUBY text="レールガン">電磁抜刀</RUBY>――――〝<RUBY text="マガツ">禍</RUBY>〟》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 0, 0, null);
	Delete("プロ*");
	Delete("Ｐ*");
	Delete("絵*");
	Delete("@OnBG*");

	MovieSESet(19000,"mv電磁抜刀_禍","se特殊_mv用_電磁抜刀_禍");
	MovieSEStart(1500);

//◆どぎゃー。
	CreateTextureSP("絵背景10", 9999, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	CreateTextureEX("絵背景100", 10000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	CreateTextureEX("絵背景200", 12000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	SetBlur("絵背景200", true, 3, 500, 100, false);
	Fade("絵背景100", 0, 1000, null, true);
	SetBlur("絵背景100", true, 3, 500, 100, false);

	Shake("絵背景100", 20000, 2, 3, 0, 0, 500, null, false);

	CreateTextureEXadd("絵ef100", 13000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	Fade("絵ef100", 0, 1000, null, true);
	Fade("絵背景200", 0, 800, null, true);

	SetBlur("絵ef100", true, 3, 500, 200, false);
	Zoom("絵ef100", 5000, 5000, 5000, Dxl1, false);

	CreateSE("SE01","se戦闘_破壊_鎧02");
	MusicStart("SE01",0,1000,0,1000,null,false);


	FadeDelete("絵色100", 1500, false);

	Wait(750);

	Zoom("絵背景200", 1000, 2000, 2000, Dxl1, false);
	Fade("絵背景200", 1000, 0, Dxl1, false);
	Fade("絵ef100", 1000, 0, null, true);

	Zoom("絵背景200", 0, 1000, 1000, Dxl1, true);

	Zoom("絵背景200", 500, 3000, 3000, Dxl1, false);
	Fade("絵背景200", 300, 500, Dxl1, true);

	Fade("絵背景200", 300, 0, Dxl1, true);

	Wait(1000);

//◆ウェイト

	ClearWaitAll(2000, 1000);

}

..//ジャンプ指定
//次ファイル　"ma04_019.nss"

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