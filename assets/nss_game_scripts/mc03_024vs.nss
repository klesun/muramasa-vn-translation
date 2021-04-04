//<continuation number="230">

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

scene mc03_024vs.nss_MAIN
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
	#ev180_落ちてゆくガッタイダー・ヘッド_a=true;
	#ev180_落ちてゆくガッタイダー・ヘッド_b=true;
	#bg016_公園a_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	CP_AllDelete();

	$PreGameName = $GameName;

	$GameName = "mc03_025.nss";

}

scene mc03_024vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc03_023vsa.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}

	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 19900, "#000000");

	CreateTextureSP("絵演背景軽", 112, Center, Middle, "cg/bg/bg202_旋回演出背景山_02.jpg");
	CreateTextureSP("絵演背景重", 111, Center, Middle, "cg/bg/bg202_旋回演出背景山_02.jpg");
	CreateTextureSP("絵演背景", 110, Center, Middle, "cg/bg/bg202_旋回演出背景山_02.jpg");
	Zoom("絵演背景*", 0, 700, 700, null, true);
	CreateSurfaceEX("絵効果サフ", 100,1000,"@絵演背景");
	//SetSurface("絵演背景重","絵効果サフ");
	//SetSurface("絵演背景軽","絵効果サフ");
	Fade("絵効果サフ", 0, 1000, null, true);
	Shake("絵演背景*", 2160000, 0, 4, 0, 0, 1000, null, false);
	SetShade("絵演背景軽", LIGHT);
	SetShade("絵演背景重", HEAVY);

	CreateSE("SEL01","se戦闘_動作_空走行02_L");
	MusicStart("SEL01",3000,200,0,500,null,true);
	Delete("上背景");

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/024vs0010a01">
《……御堂！》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/024vs0020a01">
《御堂、気を確かに持って！》


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/024vs0030a00">
「…………」


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/024vs0040a00">
「……あ……
　ああ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Cockpit_AllFade2();

//あきゅん「ＣＰ：前までのパラに再現」
	MyLife_Count(0,120);
	CP_IHPChange(0,2,null,false);
	CP_PowerChange(0,100,null,false);

	CP_SpeedChange(0,100,null,false);
	MyTr_Count(0,0);

	CP_HighChange(0,500,null,false);
	$雰囲気方位計=Random(10)+40;
	CP_AziChange(0,$雰囲気方位計,null,false);
	CP_AltChange(0,-80,null,false);
	CP_AltChangeA();

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,null,true);

//あきゅん「ＣＰ：落下中のパラに」
	CP_SpeedChange(30000,318,null,false);
	CP_HighChange(30000,200,null,false);

	SetVolume("SEL01", 2000, 500, null);

	Zoom("絵演背景*", 20000, 1000, 1000, null, false);
	FadeDelete("絵色黒", 1800, true);

	FadeDelete("絵演背景軽", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　……落ちている？

　落ちているのか、俺は？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/024vs0050a01">
《御堂！》

{	FadeDelete("絵演背景重", 500, false);
	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/024vs0060a00">
「――おおっ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆合当理吹かし
	SetVolume("SE*", 100, 0, null);
	CreateSE("SE01","se戦闘_動作_鎧_合当理吹かし01");
	CreateSE("SE01b","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CP_SpeedChange(300,631,Dxl2,false);
	MyTr_Count(300,531);

//◆姿勢回復
	Shake("絵演背景*", 1000, 0, 20, 0, 0, 1000, null, false);

	MusicStart("SE01b",0,1000,0,1000,null,false);

	Zoom("絵演背景*", 1000, 1000, 1000, Dxl2, false);
	Move("絵演背景", 1000, @0, -768, Dxl2, false);
	CP_AltChange(800,67,Dxl3,false);
	CP_HighChange(800,992,Dxl2,false);

	Wait(800);

	Move("絵演背景", 1000, @0, @30, Dxl2, false);
	CP_HighChange(700,1030,null,false);
	CP_SpeedChange(1000,521,DxlAuto,false);
	MyTr_Count(300,461);

	Wait(700);

	Move("絵演背景", 5000, @0, -838, Dxl2, false);
	CP_AltChange(5000,0,DxlAuto,false);
	CP_HighChange(5000,1011,Dxl2,false);

	CreateSE("SEL01a","se戦闘_動作_空走行01_L");
	CreateSE("SEL01b","se戦闘_動作_空走行02_L");
	MusicStart("SEL01a",2000,750,0,1000,null,true);
	MusicStart("SEL01b",2000,750,0,1500,null,true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/024vs0070a01">
《危ない……》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/024vs0080a00">
「俺は気絶していたのか？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/024vs0090a01">
《ほんの一、二秒ね。
　敵の<RUBY text="・">頭</RUBY>の突撃を食らって》


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/024vs0100a00">
「敵は……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/024vs0110a01">
《終わりよ》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 2000, 0, null);

//◆敵騎確認
	CreateColorEX("絵色黒", 20000, "#000000");
	Fade("絵色黒", 500, 1000, null, true);

	Cockpit_AllFade0();

	CreateTextureSP("絵演背景弐", 1000, Center, -1400, "cg/bg/bg201_旋回演出背景市街地_02.jpg");

	FadeDelete("絵色黒", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　……そう。
　終わりだった。

　悪魔を模す騎体は、ばらばらのまま、地を目指して
墜落してゆく。
　……墜落、だった。降下ではない。

　熱量を全て使い果たしたのだ。
　<RUBY text="バレル">合当理</RUBY>も、<RUBY text="ウイング">翼甲</RUBY>も、こうなっては只の鉄に過ぎない。

　彼らは単純な物理法則に支配され、落ちてゆく。
　彼らは自身を救えない。俺も、救うことはできない。
ここからどう手を伸ばそうと届かない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/024vs0120a00">
「……この高さでは……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/024vs0130a01">
《助からない》


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/024vs0140a00">
「…………」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/024vs0150a01">
《あえて言うけれど、あれは全くの自滅よ。
　貴方が気に病む必要はない》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/024vs0160a01">
《……行きましょ。
　することがあるんでしょう？》


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/024vs0170a00">
「ああ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　頷きつつも、俺はその空を離れられなかった。
　
　どうにも。どうしても、引っ掛かる。

　彼らは――何だったのか。

　解けない謎を胸に宿して、四騎の最期を見守る。
　その一騎に、視線を注ぐ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＥＶ：落ちるヘッド
	CreateSE("SE01","se戦闘_動作_空急降下01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureEX("絵ＥＶ", 18010, Center, Middle, "cg/ev/resize/ev180_落ちてゆくガッタイダー・ヘッド_al.jpg");
	CreateTextureEX("絵ＥＶ下", 18000, Center, Middle, "cg/ev/resize/ev180_落ちてゆくガッタイダー・ヘッド_bl.jpg");
	Zoom("絵ＥＶ*", 0, 2000, 2000, null, true);
	Request("絵ＥＶ*", Smoothing);
	Zoom("絵ＥＶ*", 60000, 500, 500, DxlAuto, false);
	Fade("絵ＥＶ", 1000, 1000, null, true);

/*
	CreateColorEX("絵色黒", 18990, "#000000");
	CreateColorEX("絵色黒弐", 18000, "#000000");
	Fade("絵色黒弐", 500, 750, null, true);

	CreatePlainSP("絵板写", 18900);

	CreateWindow("絵窓", 18000, 0, 144, 1024, 288, false);
	SetAlias("絵窓","絵窓");
	CreateTextureSP("絵窓/絵演背景", 18010, Center, Middle, "cg/bg/bg202_旋回演出背景山_02.jpg");
	CreateTextureSP("絵窓/絵演立絵装甲", 18100, Center, Middle, "cg/st/3dガッタイダーＨ_騎航_通常.png");

	Move("絵窓/絵演立絵装甲", 0, @0, @-600, null, true);
	Request("絵窓/絵演立絵装甲", Smoothing);
	Zoom("絵窓/絵演立絵装甲", 0, 5000, 5000, null, true);
	Rotate("絵窓/絵演立絵装甲", 0, @0, @0, @180, null,true);

	Zoom("絵窓/絵演背景", 100000, 2000, 2000, null, false);
	Zoom("絵窓/絵演立絵装甲", 15000, 1000, 1000, DxlAuto, false);
	Move("絵窓/絵演立絵装甲", 15000, @0, @620, DxlAuto, false);

	FadeDelete("絵板写", 1000, true);
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　合体騎の頭部であったそれ。
　最後の突撃のためか、甲鉄のあちこちに亀裂が出来
ていた。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fwガッタイダーＨ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc03/024vs0180b33">
《許さない》

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　脳を打つ金打声。
　これは――あの一騎から届いている。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fwガッタイダーＨ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc03/024vs0190b33">
《許さない》

//【小夏】
<voice name="小夏" class="小夏" src="voice/mc03/024vs0200b33">
《絶対に許さないから》

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se特殊_鎧_ひび割れ01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("絵ＥＶ*", 300, 1, 3, 0, 0, 1000, null, false);
	Fade("絵ＥＶ下", 0, 1000, null, true);
	Delete("絵ＥＶ");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　甲鉄が割れる。

　<RUBY text="・・・・">中のもの</RUBY>が現れる。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

//◆ＣＧ差分。顔が少し

	SetFwL("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/024vs0210a00">
「――あ――」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　あれ、は。

　あれは――あの少女は、

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆ＣＧ差分。顔が出る
	CreateSE("SE02","se人体_体_心臓の音02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureSP("絵演", 20000, Center, Middle, "cg/ev/ev105_倒れた小夏_f.jpg");
	Wait(30);
	Delete("絵演");

	Fade("絵色黒", 500, 1000, null, true);

	SetFwL("cg/fw/fw景明_恐怖.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/024vs0220a00">
「ああ……!?」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　彼女は、

　君は――――

</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(150,0);//―――――――――――――――――――――――――――――

//◆フラッシュバック。小夏立ち絵
	EfRecoIn1(20000,600);
	CreateTextureSP("絵回想背景", 19110, Center, Middle, "cg/bg/bg016_公園a_01.jpg");
	StC(19210, @0,@0,"cg/st/st小夏_通常_制服.png");
	FadeStC(0,true);
	EfRecoIn2(1600);

	SetFwL("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/024vs0230a00">
「来栖野……小夏!!」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――



	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mc03_025.nss"