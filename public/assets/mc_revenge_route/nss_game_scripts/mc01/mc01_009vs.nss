//<continuation number="560">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_009vs.nss_MAIN
{

	

//あきゅん「ＣＰ：村正にセット」
	CP_AllSet("村正");

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
	#bg201_旋回演出背景市街地_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	#av_GUTSEIDER=true;

	Cockpit_AllFade0();

	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene mc01_009vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_008.nss"

//◆村正。既に騎航中
	PrintBG("上背景", 30000);
	CreateSE("SE01","se戦闘_動作_空突進02");
	CreateSE("SEL01a","se戦闘_動作_空走行02_L");
	CreateSE("SEL01b","se戦闘_動作_空走行02_L");
	CreateColorSP("絵色黒", 20000, "#000000");
	CreateTextureSP("絵演背景", 17000, InLeft, InBottom, "cg/bg/resize/bg002_空a_01.jpg");
	CreateTextureEX("絵演村正立絵", 17100, Center, Middle, "cg/st/3d村正標準_騎航_通常3b.png");
	SetBlur("絵演村正立絵", true, 2, 300, 150, false);
	Move("絵演村正立絵", 0, @-380, @60, null, true);
	Delete("上背景");
	Move("絵演背景", 650, @-60, @288, Dxl2, false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("絵色黒", 150, 100, "slide_02_01_1", true);

	Wait(200);

	MusicStart("SEL01a",1000,1000,0,500,null,true);
	MusicStart("SEL01b",1000,500,0,2000,null,true);
	Shake("絵演村正立絵", 2160000, 2, 1, 0, 0, 1000, null, false);
	Move("絵演村正立絵", 2300, @30, @-60, Dxl2, false);
	Fade("絵演村正立絵", 300, 1000, null, true);

	Move("絵演背景", 180000, -1024, 0, null, false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/009vs0010a01">
《一体、何事よ！》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0020a00">
「後で説明する！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020a]
　幸いにも近所におり、待つほどのこともなく戻って
きた村正を迎えるや、取るものも取りあえず装甲。
　合当理に爆裂寸前の急稼動を<RUBY text="し">強</RUBY>い、まだ明るい空へ
躍り上がる。

　甲鉄のあちこちが<RUBY text="Ｇ">荷重</RUBY>を受けて軋んだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020b]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/009vs0030a01">
《危ないってば！》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0040a00">
「すぐに済む。<RUBY text="こら">堪</RUBY>えろ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　速度の急上昇に合わせて不吉な音は更に募る。<RUBY text="たま">堪</RUBY>り
かねてか劒冑が苦情とも警告とも取れる叫びを発した。
　しかし、構っている場合ではない。

　署長宅から建朝寺までは、徒歩であればそれなりの
距離でも、劒冑を馳せればまさに目と鼻の先だ。
　ほとんど一瞬にして着く。

　多少無理な騎航をしても、深刻な損傷にはならない
だろう。
　その結論を村正は共有しない様子だった。……目的
地さえ聞かされていないのだから当然ではあるが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/009vs0050a01">
《またぞろ<RUBY text="れーさー">装甲騎手</RUBY>の真似事をしようってん
でないなら、速度を落とすのが賢明よ！
　私はともかく、貴方の体の方がもたない》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0060a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　声は発さず、全て承知済という意だけを送る。
　言葉にする手間を惜しんだのは気が急くためばかり
ではなかった。

　村正の指摘は正しい。
　既にグレイアウトの兆候を感じ取っている。血行が
乱れているのだ。気を抜けばその刹那にも視界は色を
失い、そして暗転するだろう。

　そうなれば後は墜落の結末のみが待つ。
　精神の表面を氷のように固く張り、闇へ<RUBY text="と">融</RUBY>けてゆく
衝動に抗わねばならなかった。

　それは俺の力という力を根こそぎ必要とする行為で
あったに違いない。
　しかしなお尽きた底から<RUBY text="しぼ">搾</RUBY>り<RUBY text="かす">滓</RUBY>のような余力を掻き
集め、わずかな速度上昇に充てる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/009vs0070a01">
《――御堂！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　もう益体も無い声に構ってはいられない。
　一切耳を貸さず、総力投入の騎航を続ける。

　<RUBY text="リニア・アクセル">磁気加速</RUBY>を用いるべきか――そんな一思案も脳裏を
過ぎる。だが俺は採らなかった。
　今となっては陰義を発動している手間が惜しい。

　それにもう、八幡宮まで<RUBY text="いくばく">幾許</RUBY>もない筈だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ピーッ。警告音
	CreateSE("SE01","se特殊_コックピット_アラーム");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/009vs0080a01">
《御堂ッッ!!
　<RUBY text="うしとらのかみ">四五度上方</RUBY>!!》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0090a00">
「――――<?>
{	Wait(300);
	FwC("cg/fw/fw景明_警戒.png");}
何？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm13",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　俺の反応は余りにも鈍過ぎた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆その方向を向く
	SetVolume("SE*", 300, 0, null);
	CreateColorSP("絵色黒", 30000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
	Delete("絵演*");
	CreateTextureSP("絵演背景", 17000, Center, Middle, "cg/bg/resize/bg002_空a_01.jpg");
	Request("絵演背景", Smoothing);
	Zoom("絵演背景", 0, 3000, 3000, null, true);
	SetBlur("絵演背景", true, 3, 500, 80, false);
	Move("絵演背景", 650, 2048, @0, Dxl2, false);
	DrawDelete("絵色黒", 150, 100, "slide_01_01_1", true);

	WaitAction("絵演背景", null);

//◆敵騎襲来
	CreateSE("SE01L","se戦闘_動作_空突進05");
	MusicStart("SE01L",2000,200,0,800,null,true);

	CreatePlainSP("絵板写", 20000);
	CreateTextureSP("絵演合体立絵", 17100, Center, Middle, "cg/st/3dガッタイダー_騎突_戦闘a.png");
	CreateStencil("絵演合体立絵覆",17110,Center,Middle,128,"cg/st/3dガッタイダー_騎突_戦闘a.png",false);
	SetAlias("絵演合体立絵覆","絵演合体立絵覆");
	CreateColorEX("絵演合体立絵覆/色", 17120, "#000000");
	CreateSE("SE01","se戦闘_動作_空突進02");
	Fade("絵演合体立絵覆/色", 0, 750, null, true);
	Request("絵演合体立絵*", Smoothing);
	Zoom("絵演合体立絵*", 0, 100, 100, null, true);
	Move("絵演合体立絵*", 0, @0, @90, DxlAuto, true);

	Move("絵演合体立絵*", 300, @0, @-30, DxlAuto, false);
	MusicStart("SE01",0,500,0,1000,null,false);
	FadeDelete("絵板写", 300, true);

	SetNwR("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc01/009vs0100b33">
《切り刻むほど愛・地球爆!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_空上昇01");
	CreateSE("SE01a","se戦闘_動作_空突進01");
	MusicStart("SE01",600,1000,0,1000,null,false);
	SetBlur("絵演合体立絵", true, 2, 500, 80, true);
	Zoom("絵演合体立絵*", 5000, 200, 200, null, false);
	Move("絵演合体立絵*", 1800, @0, @-80, DxlAuto, true);
	Wait(100);
	Zoom("絵演合体立絵*", 5000, 280, 280, null, false);

	Wait(800);

	SetVolume("SE01L*", 2000, 0, null);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Move("絵演合体立絵*", 200, @0, @40, DxlAuto, false);
	Fade("絵演合体立絵覆/色", 200, 0, Dxl2, false);
	Zoom("絵演合体立絵*", 200, 1500, 1500, null, false);

	CreateColorEX("絵色黒", 20000, "#000000");
	Fade("絵色黒", 380, 1000, null, true);

	Cockpit_AllFade2();

//◆斧撃
	CreateSE("SE02","se戦闘_攻撃_斧振る01");
	MusicStart("SE02",0,1000,0,1500,null,false);
	SL_rightdown2(20010,@150, @150,2000);
	SL_rightdownfade2(10);

//◆ぞがーん
	CreateSE("SE03","se戦闘_攻撃_鎧_打撃02");
	CreateSE("SE03a","se戦闘_攻撃_鎧攻撃命中03");
	PrintGO("上背景", 30000);
	CreateColorSPadd("絵色白", 20000, "#FFFFFF");
	CreateTextureSP("絵演空背景", 100, Center, -1100, "cg/bg/bg201_旋回演出背景市街地_01.jpg");
	Request("絵演空背景", Smoothing);
	Delete("上背景");
	MusicStart("SE03",0,1000,0,1000,null,false);
	MusicStart("SE03a",0,1000,0,1000,null,false);

//あきゅん「ＣＰ：初期値定義」
	MyLife_Count(0,720);
	CP_IHPChange(0,10,null,false);

	CP_SpeedChange(0,550,null,false);
	MyTr_Count(0,475);

	CP_PowerChange(0,980,null,false);

	CP_HighChange(0,1824,null,false);
	CP_AziChange(0,243,null,false);

	CP_AltChange(0,0,null,false);
	//CP_AltChangeA();

//あきゅん「ＣＰ：被弾演出開始」
	MyTr_Count(300,140);
	CP_SpeedChange2(1500,226,Dxl2,false);

	CP_HighChange2(1500,1683,Dxl2,false);
	CP_AltChange(1500,10,Dxl2,false);
	Move("絵演空背景", 1500, @0, @60, Dxl2, false);

	Shake("@CP_Frame*", 1500, 0, 30, 0, 0, 1000, Dxl2, false);
	Shake("絵演空背景", 1500, 8, 16, 0, 0, 1000, Dxl2, false);

//あきゅん「ＣＰ：斧ＤＭＧ-108」
	MyLife_Count(300,612);
	CP_IHPChange(300,9,null,false);

	CP_RollBarMove("@絵演空背景*", 0, 5, null, true);

	FadeDelete("絵色白", 1000, true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0110a00">
「がっ――」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆モニター赤くなって

//◆墜落モード
	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetFrequency("SE01", 1000, 600, Dxl3);

	MyTr_Count(300,128);
	CP_SpeedChange2(2000,174,Dxl2,false);
	CP_HighChange2(2000,1542,Dxl2,false);
	CP_AltChange(2000,-30,Dxl2,false);
	CP_AziChange(2000,251,null,false);
	Zoom("絵演空背景", 2000, 1050, 1050, Dxl2, false);
	Move("絵演空背景", 2000, @0, @-120, Dxl2, false);

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0120a00">
「お……アアアアアアアアアアアア!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆落ちるー。
	CreateSE("SE01a","se戦闘_動作_空突進08");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	SetFrequency("SE01a", 1000, 600, Dxl3);

	FrameShake();
	Shake("絵演空背景", 2160000, 0, 8, 0, 0, 1000, Dxl2, false);

	MyTr_Count(300,103);
	CP_SpeedChange(20000,286,Dxl2,false);
	CP_HighChange2(20000,872,Dxl2,false);
	CP_AltChange(2000,-57,Dxl2,false);
	CP_AziChange(2000,254,null,false);
	Zoom("絵演空背景", 20000, 1200, 1200, Dxl2, false);
	Move("絵演空背景", 2000, @0, @-120, Dxl2, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/009vs0130a01">
《みっ……御堂――!?》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　不味い。
　地表に――――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0140a00">
「う…………ぬぅ！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆立て直し
//◆危ういとこで反転、上昇へ
	OnSE("se戦闘_動作_空急降下01",1000);

//あきゅん「ＣＰ：落下さらに地表へ」
	CP_SpeedChange(10000,322,Dxl2,false);
	CP_HighChange2(10000,314,Dxl2,false);
	CP_AltChange(2000,-61,Dxl2,false);
	CP_AziChange(2000,257,null,false);
	Zoom("絵演空背景", 10000, 1450, 1450, Dxl2, false);
	Move("絵演空背景", 2000, @0, @-120, Dxl2, false);

	Wait(2000);

//あきゅん「ＣＰ：速度を取り戻し上昇」
	OnSE("se戦闘_動作_空上昇01",1000);

	MyTr_Count(300,470);
	CP_PowerChange(300,930,null,false);
	CP_SpeedChange(2000,512,Axl2,false);
	CP_HighChange(2000,1021,Axl2,false);
	CP_AltChange(2000,10,Axl2,false);
	CP_AziChange(2000,239,null,false);
	CP_RollBarMove("@絵演空背景", 2000, 0, Axl2, false);
	Zoom("絵演空背景", 2000, 1000, 1000, Axl2, false);
	Move("絵演空背景", 2000, @0, 0, Axl2, false);

	Wait(1700);

	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 300, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Cockpit_AllFade0();
	Delete("絵演空背景*");

	CreateSE("SEL01","se戦闘_動作_空走行02_L");
	CreateTextureSP("絵背景", 500, InRight, Middle, "cg/bg/bg204_横旋回背景_01.jpg");
	Move("絵背景", 0, @30, @0, null, true);
	CreateTextureSP("絵演村正立", 1000, Center, Middle, "cg/st/3d村正標準_騎航_通常2.png");
	Move("絵演村正立", 0, @70, @20, null, true);
	Fade("絵演村正立", 0, 1000, null, true);

	Move("絵背景", 300000, -60, @0, null, false);


	Shake("絵背景", 2160000, 1, 0, 0, 0, 1000, null, false);
	BGMoveAuto("@絵演村正立",1);

	CloudZoomSet(5000);
	CloudZoomStartB(400,800,800,300,400);
	CloudZoomVertex(0,@-512,@-144,null,false);

	MusicStart("SEL01",1000,1000,0,1000,null,true);
	DrawDelete("絵色黒", 300, 100, "slide_02_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　……辛うじて。
　目前まで迫った奈落の<RUBY text="あぎと">顎</RUBY>を脱し、再び優しき空の<RUBY text="かいな">腕</RUBY>
に抱かれる。

　<RUBY text="ぬかず">額突</RUBY>いて祈りたくなるほどの安堵感。
　
　――に、しかし浸っている場合ではなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/009vs0150a01">
《肝が冷えたったら！》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0160a00">
「あるまいが、そんなもの。
　それより、損傷程度を言え」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　聞くまでもなく背の激痛で察せられたものの。
　荒い呼吸を一つ<RUBY text="つ">吐</RUBY>くたびに、酷く疼く。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/009vs0170a01">
《背面甲鉄が大破……。
　でも幸いね。合当理はほぼ無傷よ》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0180a00">
「不幸中の、か。
　……それで、今のは敵襲か？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　間抜けな問いを間抜けと知りつつ間抜けに発する。

　直前までまるで別の事に意識を傾注していたせいも
あり、あの刹那の認識は曖昧だった。
　何か金打声を聴いたような気もするが……その記憶
も不確かだ。

　砲弾と言われればそう思えるし、落石だったと言わ
れても否定する根拠がない。……それは何処の<RUBY text="ラピュータ">浮遊島</RUBY>
から落ちてきたのだとは問うが。
　そんな俺に対して、劒冑の答えは明晰だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/009vs0190a01">
《敵よ。決まってるでしょう。
　<RUBY text="かのえのかみ">二五五度上方</RUBY>！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 600, 0, null);

//◆そっちへ
	PrintGO("上背景", 30000);
	CreateColorSP("絵色黒", 20000, "#000000");
	CreateTextureSP("絵演背景", 17000, InRight, Middle, "cg/bg/resize/bg002_空a_01.jpg");
	Move("絵演背景", 650, @512, @0, Dxl2, false);
	DrawDelete("上背景", 150, 100, "slide_01_02_1", true);
	CloudZoomDelete(0,false);
	DrawDelete("絵色黒", 150, 100, "slide_01_02_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　言われるまま、騎首を巡らし。
　……その<RUBY text="すがた">威容</RUBY>は隠れもせず、そこに在った。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆復讐戦騎ガッタイダー
//◆デザインイメージ：ガッタイダー。
#av_GUTSEIDER=true;

//◆注・ハカイダー四人衆ではなく魔神英雄伝の方。

//◆登場演出
	CreateColorEX("絵色白", 20000, "#FFFFFF");
	CreateTextureEX("絵演合体", 17100, Center, Middle, "cg/st/resize/3dガッタイダー_立ち_通常am.png");

	CreateSE("SE01","se特殊_雰囲気_鎧登場演01");
	MusicStart("SE01",0,1000,0,500,null,false);
	Fade("絵色白", 0, 1000, null, true);
	Fade("絵演合体", 0, 1000, null, true);
	Fade("絵色白", 200, 0, null, true);
	Wait(100);

	CreateSE("SE01b","se特殊_雰囲気_鎧登場演01");
	MusicStart("SE01b",0,1000,0,500,null,false);
	Fade("絵色白", 0, 1000, null, true);
	Move("絵演合体", 0, -460, -510, null, true);
	Fade("絵色白", 200, 0, null, true);
	Wait(100);

	CreateSE("SE01c","se特殊_雰囲気_鎧登場演01");
	MusicStart("SE01c",0,1000,0,500,null,false);
	Fade("絵色白", 0, 1000, null, true);
	Move("絵演合体", 0, -1660, -1920, null, true);
	Fade("絵色白", 200, 0, null, true);
	Wait(100);

	CreateSE("SE01d","se特殊_雰囲気_鎧登場演01");
	MusicStart("SE01d",0,1000,0,500,null,false);
	Fade("絵色白", 0, 1000, null, true);
	Move("絵演合体", 0, -640, -1400, null, true);
	Fade("絵色白", 200, 0, null, true);
	Wait(100);

	CreateSE("SE02","se特殊_雰囲気_鎧登場演02");
	MusicStart("SE02",0,1000,0,500,null,false);
	Fade("絵色白", 0, 1000, null, true);
	CreateTextureSP("絵演合体", 17100, Center, Middle, "cg/st/3dガッタイダー_立ち_通常a.png");
	Request("絵演合体", Smoothing);
	Zoom("絵演合体", 0, 350, 350, null, true);
	CreatePlainSPadd("絵板写", 17110);
	Zoom("絵板写", 2000, 1300, 1300, null, false);
	FadeDelete("絵板写", 2000, false);
	FadeDelete("絵色白", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　悪魔であった。

　あるいは、西洋の<RUBY text="ドラゴン">竜</RUBY>を擬人化したようにも見える。
　それは途轍もなく暴力的で、悪意的で、怨念じみた
破壊の欲求に満ち溢れていた。

　体躯の程は<RUBY text="こちら">村正</RUBY>の一・五倍、いや、二倍近い。
　江ノ島の巨獣を別格とすれば、俺がかつて出会った
中で間違いなく最大級の怪物である。

　それが爬虫類の皮膜を思わせる<RUBY text="つばさ">母衣</RUBY>を広げ、悠々と
空を舞っているのは、果たして如何なる因果が招いた
悪夢か。
　衝動的に、頬を<RUBY text="つね">抓</RUBY>って引き千切りたくなった。

　そうして血が出なければ目も醒めるだろう。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/009vs0200a01">
《傷が増えるだけだから止めておきなさい。
　残念ながら、現実の存在よ》

{	FwR("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0210a00">
「わかっている。江ノ島の体験は貴重だった
な。
　<RUBY text="コード">認識信号</RUBY>は発しているか？」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/009vs0220a01">
《いいえ》

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0230a00">
「<RUBY text="アンノウン">所属不明騎</RUBY>か……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　運悪く六波羅の防空隊に捕捉された可能性も一応は
考慮してみたのだが――所属を示さぬなら違うだろう。
　元より、あのように奇態な劒冑を六波羅が制式採用
したなどという噂は小耳に挟んだ覚えも無いのだが。

　そうなると、襲われた理由は……

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0240a00">
「まさか、〝卵〟を殖えられた寄生体――」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/009vs0250a01">
《その気配もなし。
　<RUBY text="かかさま">銀星号</RUBY>とは無関係よ》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　最後にあと一つ残っている筈の〝卵〟でもないと、
村正が云う。
　と、なると。

　…………………………………………。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0260a00">
「何処の何者だ」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/009vs0270a01">
《私に訊いたって……。
　その答えは本人しか知らないでしょう》

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0280a00">
「だろうな……」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/009vs0290a01">
《尋ねてみる？
　まともに会話ができる相手なのかどうかは
かなり微妙なところだけど》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　とはいえ、そうするほかに手立てもない。
　こちらに襲撃される覚えがない以上、単なる誤解で
ある可能性も高いのだ。

　……単なる誤解で脊椎が曲がるほど殴られたのでは
余りにもやるせないが。
　それでもこのまま続けるよりはましだろう。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0300a00">
《我が前方の不明騎に告ぐ。
　当方に攻撃の意思無し》

//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0310a00">
《貴騎の所属、及び目的を問う》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　…………。

　返信はない。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0320a00">
「人に名を訊くならまず自分から名乗れ、と
いうことだろうか」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/009vs0330a01">
《どうかしら……。
　そうだとすると、向こうはこちらが誰かも
知らず襲ってきたことにならない？》

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0340a00">
「そういう特殊な性癖の持ち主だという可能
性もある」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/009vs0350a01">
《ないし。
　というか、そんな奴は墜としましょうよ》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　同意せぬでもなかったがそれは置き、俺は不明騎と
の交信を続けようと試みた。
　といってまさか、正直に「こちらも所属不明騎です」
と告げるわけにはいかない。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0360a00">
《当方は――国際統和共栄連盟大和進駐軍の
所属である。
　極秘任務中であるため認識信号を所持して
いない》

//◆荒い息
{	FwR("cg/fw/fwガッタイダー_通常.png");}
//【ボーディ】
<voice name="ボーディ" class="その他男声" src="voice/mc01/009vs0370b07">
《……》

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0380a00">
《繰り返す。当方は進駐軍所属である。
　貴騎の所属、及び目的は如何》

//◆荒い息遣い。ぜーはーぜーはー。
{	FwR("cg/fw/fwガッタイダー_通常.png");}
//【ボーディ】
<voice name="ボーディ" class="その他男声" src="voice/mc01/009vs0390b07">
《……<?>
{	Wait(300);}
……<?>
{	Wait(300);}
…………》

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0400a00">
「……？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　何だ？
　これは…………返信か？

　全速力で走り終えた直後の人間のような――という
よりは末期の喘息患者のようなと形容した方が近い、
病的に乱れた息遣い。
　それは単なる呼吸音で、言語ではなかった。

　だが、意思を伝えていないかといえば違う。
　その吐息はむしろ単純な一意思の塊だった。

　つまり、俺に対する――――<k>害意の。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/009vs0410a01">
《来るっ！》

{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0420a00">
「ちィ!!」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　そして、答えはそれだけという事か！

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆敵騎突進
	CreateSE("SE00","se戦闘_動作_空突進01");
	MusicStart("SE00",0,1000,0,750,null,false);
	CreatePlainSP("絵板写", 20000);
	CreateTextureSP("絵演合体", 17100, Center, Middle, "cg/st/3dガッタイダー_騎突_戦闘a.png");
	Request("絵演合体", Smoothing);
	Zoom("絵演合体", 0, 500, 500, null, true);

	CreateSE("SE01","se戦闘_動作_空突進02");

	Zoom("絵演合体", 3000, 1200, 1200, null, false);
	FadeDelete("絵板写", 100, true);

	Wait(100);

	Zoom("絵演合体", 100, 1200, 1200, null, false);

	Wait(50);

	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);


//◆迎撃
	PrintGO("上背景", 30000);
	CreateColorSP("絵色黒", 20000, "#000000");

	CreateSE("SE01a","se擬音_雰囲気_抜刀01");
	CreateSE("SEL01","se戦闘_動作_空走行01_L");

	CreateTextureSP("絵演村正", 17100, 0, Middle, "cg/st/3d村正標準_騎航_陰義b.png");
	CreateTextureSP("絵演背景", 17000, InRight, Middle, "cg/bg/bg204_横旋回背景c_01.jpg");
	Move("絵演村正", 0, @660, @0, null, true);
	Shake("絵演村正", 2160000, 1, 2, 0, 0, 1000, null, false);

	Move("絵演村正", 650, @-512, @0, Dxl2, false);
	Move("絵演背景", 300000, -100, @0, Dxl3, false);

	MusicStart("SE01a",0,1000,0,1000,null,false);
	MusicStart("SEL01",0,1000,0,1000,null,true);
	Delete("上背景");
	DrawDelete("絵色黒", 150, 100, "slide_01_03_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　兎にも角にも抜刀する。
　何者であろうと、ただ無抵抗に斬られてやるわけに
はいかない。

　俺にもやるべき事があるのだ。
　特に、今は――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0430a00">
（……そうだ）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　急な襲撃に失念させられていた事を思い出す。
　そう、こんな所でわけもわからず争っている場合で
はなかったのだ。

　一刻も早く離脱して――
　
　――いや……まさか、これは大鳥大尉が伝えてきた
親王の危地と関わりのある事なのか!?

　まさかではない。むしろ、そう考える方が自然だ。
　だとすると……<k>迂闊に逃げ出すわけにはいかない。
追いすがって来るであろうし、そうなれば親王の傍へ
わざわざ敵を連れてゆく羽目になってしまう。

　それでは救援どころか足引っ張りだ。
　離脱するにしても、敵騎の戦闘能力を剥奪してから
にする必要がある。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/009vs0440a00">
「村正、方針決定。
　敵騎を死なぬ程度に叩いた後、離脱する！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/009vs0450a01">
《諒解！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 100, 0, null);

//◆正面相撃
	CreateSE("SE01","se戦闘_動作_空突進02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Move("絵演村正", 150, @-60, @0, null, false);

	CreateColorSPadd("絵白転", 20000, "#FFFFFF");
	Fade("絵白転", 150, 1000, null, false);
	DrawTransition("絵白転", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	CreateTextureSPadd("絵演上", 18010, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	CreateTextureSP("絵演", 18000, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	Zoom("絵演上", 0, 1300, 1300, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 1000, 0, 10, 0, 0, 1000, Dxl3, false);

	Move("絵演*", 150, -615, @0, Dxl2, false);

	DrawDelete("絵白転", 150, 100, "slide_01_03_1", true);
	FadeDelete("絵演上", 200, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　<RUBY text="ハイ・ポジション">高度優勢</RUBY>は敵騎が占めている。
　こちらは気流を遡上して迎撃せねばならない。形勢
の不利は火を見るよりも明らかだ。

　敵の武装は大振りにして凶悪な形状の戦斧。
　その一撃に外見相応の騎体重量と落下勢力が加わる
のなら、まさしく脅威となるだろう。

　さて、この一合。
　どう応ずるべきか？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆選択：斬り合う／ひとまず防御に徹する

}

..//ジャンプ指定
//◆斬り合う　"mc01_009vsa.nss"
//◆ひとまず防御に徹する　"mc01_009vsb.nss"

//★選択肢シーン
scene mc01_009vs.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	Cockpit_AllFade0();
	CreateTextureSP("絵演", 18000, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	Move("絵演*", 0, -615, @0, Dxl2, false);
	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("斬り合う","ひとまず防御に徹する");
	select
	{
		//カーソル用
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @選択肢１
		{
			ChoiceA02();
//◆斬り合う　"mc01_009vsa.nss"
				$GameName = "mc01_009vsa.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆ひとまず防御に徹する　"mc01_009vsb.nss"
				$GameName = "mc01_009vsb.nss";
		}
	}
}