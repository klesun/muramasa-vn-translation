//<continuation number="1250">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_022vs.nss_MAIN
{

//コックピット用Ｓｅｔ
	CP_AllSet("真改");

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
	#bg002_空a_02=true;
	#bg001_空a_02=true;
	#bg201_旋回演出背景市街地_02=true;

	#ev942_村正ＶＳ真改=true;
	#ev107_双輪懸図解_a=true;
	#ev107_双輪懸図解_b=true;
	#ev107_双輪懸図解_c=true;
	#ev107_双輪懸図解_d=true;
	#ev108_太刀打図解_a=true;
	#ev108_太刀打図解_b=true;

	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_真改=true;

	$PreGameName = $GameName;

	$GameName = "ma01_023vs.nss";

}

scene ma01_022vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 28 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"ma01_021.nss"

//※演出指示はほぼスルーでＯＫ。構想が古いので。08/09/04
//◆飛翔音。バヒューン。
//◆モニター展開。ＡＣとかそれ系のフライトシュミレータ。但し和風アレンジ。呪術風？
//◆直進。微速ズームインで表現か。

	PrintBG("上背景", 30000);
	CreateColorSPadd("絵フラ", 10000, "#FFFFFF");
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg002_空a_02.jpg");
	Delete("上背景");

	CreateColorSP("黒幕１", 1500, "Black");

	FadeDelete("絵フラ", 2000, true);

//嶋：真改ステータス780：最大出力450程度で想定
	Cockpit_AllFade(300,780,0);

	CreateColorSPadd("絵色100", 1000, "White");
	Fade("絵色100", 0, 800, null, true);


	Wait(300);

	OnSE("se特殊_コックピット_起動音04",1000);
	Fade("絵色100", 1000, 0, Dxl1, false);
	DrawTransition("黒幕１", 800, 1000, 0, 300, Dxl1, "cg/data/slide_05_00_0.png", true);

	Wait(500);

	CreateColorSP("黒幕１", 20000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	Cockpit_AllFade0();
	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/resize/bg001_空a_02.jpg");

	Delete("絵背景100");

	SoundPlay("@mbgm36",0,1000,true);

	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/bg/resize/bg002_空a_02.jpg");
	CreateTextureEX("shin01", 1200, Center, -800, "cg/st/resize/3d真改_騎航_通常.png");

	Move("shin01", 0, @-500, @0, null, true);

	Request("絵背景100", Smoothing);
	Request("shin01", Smoothing);

	Zoom("絵背景100", 0, 550, 550, null, true);
	Zoom("shin01", 0, 500, 500, null, true);

	Fade("絵背景100", 0, 1000, null, true);

	CreateSE("SE01","se戦闘_動作_空中待機_L");
	MusicStart("SE01",300,1000,0,1000,null,true);

	OnSE("se戦闘_動作_空突進02",1000);
	Move("shin01", 500, @+500, @0, Dxl1, false);
	Fade("shin01", 500, 1000, null, false);
	DrawDelete("黒幕１", 200, 100, "slide_01_01_0", true);

	Wait(500);

	Move("絵背景100", 1500, @-200, @-150, null, false);
	Move("shin01", 1500, @-180, @-100, null, false);
	Zoom("絵背景100", 1000, 1000, 1000, Dxl1, false);
	Shake("shin01", 100000, 1, 1, 0, 0, 500, null, false);
	Zoom("shin01", 1000, 1000, 1000, Dxl1, true);

	Wait(1500);

	OnSE("se戦闘_動作_空突進01",1000);
	Move("shin01", 500, @+2000, @-600, Dxl1, true);

	SetVolume("SE01", 500, 0, null);
	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	DeleteStC(0,true);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/resize/bg002_空a_02.jpg");
	Cockpit_AllFade2();
	MyTr_Count(0,350);
	CP_SpeedChange(0,600,null,true);
	CP_HighChange(0,890,null,true);

	CreateSE("SE01","se戦闘_動作_空走行02_L");
	MusicStart("SE01",300,1000,0,1000,null,true);
	FrameShake();
	CP_AltChangeA();
	CP_RollBarMoveA();
	BGMoveAuto("@絵背景100",1);

	CP_AziChange(10000,14,AxlDxl,false);

	DrawDelete("黒幕１", 300, 100, "slide_01_01_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　<RUBY text="はしる">騎航する</RUBY>――――

　<RUBY text="がったり">合当理</RUBY>を臨界稼動。最低限度の時間で最大の推力を
確保して跳ぶ――飛ぶ――翔ぶ。
　無謀と言っても良い急発進を、しかし真改の甲鉄は
耐え切った。

　空中分解の危機を乗り越え、茜色の空に刺す一条の
矢と化す。
　
　視界内に出現した計器類を確認。

　速度は六百のラインに到達。
　高度は九百弱――<k>これ以上の低空飛行は危険。

　加速を続けながら、騎航の安定を回復する。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	SetVolume("SE01", 500, 500, null);


	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	Cockpit_AllFade0();

	Delete("shin01");

	CreateTextureSP("絵Rollbg001", 1500, 0, -576, "cg/bg/resize/bg001_空a_02.jpg");
	CreateTextureSP("絵Rollbg002", 1500, 0, -576, "cg/bg/resize/bg001_空a_02.jpg");

	CreateTextureSP("絵真改", 1600, Center, Middle, "cg/st/3d真改_騎航_通常.png");

	SetVertex("絵Rollbg*", 0, Middle);
	Zoom("絵Rollbg*", 0, 2000, 1000, null, true);

	CloudZoomSet(2000);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@+1024,@-100,Dxl2,true);

	BGMoveAuto("@絵真改",2);

	CreateSCR1("@絵Rollbg001","@絵Rollbg002",1000,-2024, @0);

/*
	CreateTextureSP("絵背景100", 500, Center, Middle, "cg/bg/resize/bg001_空a_02.jpg");
	CreateTextureEX("絵St100", 1000, Center, -325, "cg/st/3d真改_騎航_通常.png");
	Fade("絵St100", 0, 1000, null, true);

	Shake("絵背景100", 50000, 1, 1, 0, 0, 500, null, false);
	BGMoveAuto("@絵St100",1);
	Cloud_Move(1000);
*/


	DrawDelete("黒幕１", 300, 100, "slide_01_01_0", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　思うように速度の伸びないことがもどかしい。
　以前に一度、好奇心から騎航性能を試してみた時は
こうではなかった。あの時はもっとずっと速かった、
と思う。

　なぜ今日はそうならない？
　理由があるのか？

　……もう少し性能を体得しておくべきであったと、
今更に思う。
　だが同時に思う。そんな必要はなかった――<k>こんな
事態を招くつもりは全くなかったのだから。こんな。

　<RUBY text="・・・・・・・・・・">同じ武者との遭遇など</RUBY>！

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――


	SetVolume("SE01", 500, 1000, null);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, Dxl1, "cg/data/slide_01_02_1.png", true);

	Cockpit_AllFade2();

	BGMoveDelete();
	Delete("絵StRollbg*");
	Delete("絵真改");

	SCR1stop();
	CloudZoomDelete(0,true);

	Delete("絵St100");
	Delete("絵背景100");

	CP_SpeedChangeA();
	CP_HighChangeA();
	CP_AltChangeA();

	DrawDelete("黒幕１", 300, 100, "slide_01_02_0", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　焦り苛立ちながら、ひた駆けに駆ける。
　どこまで逃げれば良いだろうか。このまま飛び続け
れば関東防空圏を踏み越えることになる。それは避け
ねばならない。

　六波羅の<RUBY text="レーダー">警戒網</RUBY>は防空圏の内部にはほとんど注意を
払わないが、境界を越えるもの、境界に接近するもの
は確実に捕捉する。六波羅の<RUBY text="コード">認識信号</RUBY>を持たない者に
とってそれが意味するところはつまり、死だ。

　何とかその前に敵を振り切らねばならないが――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw真改百足_通常.png");

	#voice_on_真改=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【真改】
<voice name="真改" class="真改" src="voice/ma01/022vs0010b38">
《敵騎、<RUBY text="ひのとからひつじのかみ">二〇〇度上方</RUBY>。距離三五〇。
　来襲》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0020b57">
「――何？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　<RUBY text="くる">来襲</RUBY>？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0030a00">
《<RUBY text="ドッグファイト">尻追い戦</RUBY>は武者の恥。
　<RUBY text="ブルファイト">猪突戦</RUBY>こそ武者の誉れ！》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0040b57">
「!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　兜の内側に男の声が響いて、即座。
　脇腹の裏あたりにぞわりと、毛虫が這う。

　この感触は。
　鋭い刃物を突きつけられた時に知覚する、あの。

　肌の粟立ち。
　体毛のざわめき。
　肉の外ではなく内から来る寒気、

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


/*

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0050b57">
「――――ぁぁあああッ！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

*/

//◆左へ９０度ロール。ピッチアップ
//◆こういう時、高度計や速度計も合わせて変動

	CreateSE("SE10","se人体_体_心臓の音02");
	CreateSE("SE11","se人体_体_心臓の音02");

	CreateColorEXmul("フラッシュ白", 15000, "RED");
	Fade("フラッシュ白",100,500,null,true);
	MusicStart("SE10",0,1000,0,1000,null,false);
	MusicStart("SE11",0,500,0,1000,null,false);
	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");

	OnSE("se戦闘_動作_空突進03",1000);

	BGMoveDelete();
	CP_RollBarMove("@絵背景50",2000,90,Dxl1,false);

	Wait(900);

	CP_AltChange2(1000,45,null,false);
	Zoom("絵背景50", 2500, 1500, 1500, Axl1, false);
	Move("絵背景50", 3500, @+250, @+550, Dxl1, false);
	MyTr_Count(2000,545);
	CP_SpeedChange(2000,400,null,false);
	CP_HighChange(2000,1200,null,false);
	CP_AziChange(2500,92,Axl1,false);
	Wait(1000);
	CP_SpeedChange(3000,512,null,false);
	CP_HighChange(3000,600,null,false);

	Wait(1000);

	SetVolume("SE01", 500, 1, null);


	CreateColorEXadd("フラッシュ白", 19000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);

	MovieSESet(20000,"mv真改疾走","se特殊_mv用_真改疾走");
	MovieSEStart2(300,1000);

	SetVolume("SE01", 500, 700, null);
	CloudZoomSet(2000);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@-1024,@-100,Dxl2,true);
	CreateTextureSP("Rollbg001", 1500, -1024, -576, "cg/bg/resize/bg001_空a_02.jpg");
	CreateTextureSP("Rollbg002", 1500, -1024, -576, "cg/bg/resize/bg001_空a_02.jpg");
	SetVertex("Rollbg*", 1024, Middle);
	Zoom("Rollbg*", 0, 1000, 5000, null, true);
	CreateSCR1("@Rollbg001","@Rollbg002",1000,0, @0);

	FadeDelete("フラッシュ白",500,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　<RUBY text="ロール">横転</RUBY>！
　体を転回し方向を変え逃避逃避逃避――――！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆剣撃カットイン
//◆ガーン。振動。モニター激しく揺れる
	CreateColorEX("絵色100", 20000, "Black");
	CreateColorEX("フラッシュ白", 21000, "WHITE");
	SL_leftup2(20001, @0, @0, 1500);

	Fade("絵色100", 300, 1000, null, true);

	BGMoveDelete();
	Delete("絵Rollbg*");
	Delete("Rollbg*");

	SCR1stop();
	CloudZoomDelete(0,true);

	FrameShakeDelete();

	Wait(50);

	OnSE("se戦闘_攻撃_野太刀振る01",1000);

	SL_leftupfade2(6);

	Wait(100);

	Fade("フラッシュ白",0,1000,null,true);
	Delete("絵色100");
	CP_AllChange("@絵背景50",0, 500, 900, 512, 350);
	CP_RollBarMove("@絵背景50",0,-5,null,true);
	Move("絵背景50", 0, -512, -338, null, true);
	Move("絵背景50", 500, -512, -288, null, false);
	CP_RollBarMove("@絵背景50",0,10,null,true);
	Shake("@CP_Frame", 500, 30, 0, 0, 0, 500, null, false);
	OnSE("se戦闘_破壊_鎧04",1000);
//Azi = 25
	CP_AziChange(0,25,null,true);

	CP_RollBarMove("@絵背景50",500,0,Axl1,false);
	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");

	OnSE("se戦闘_破壊_爆発01",1000);
	FrameShakeOnly(1500,6,10,600,Dxl1,false);
	CP_RollBarMove("@絵背景50",500,5,Axl1,true);
	CP_RollBarMove("@絵背景50",500,-5,Axl1,true);
	CP_RollBarMove("@絵背景50",500,0,Axl1,true);
	CP_IHPChange(500,9,null,false);
..//Power_900
	CP_PowerChange(500,900,null,false);
	MyLife_Count(500,702);
	MyTr_Count(500,424);

	CP_SpeedChangeA();
	CP_HighChangeA();
	CP_AltChangeA();

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0060b57">
「がはァッ!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	BGMoveAuto("@絵背景50");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　脇腹に激しい衝撃。
　振動が内部にまで伝播し、内臓を<RUBY text="かくはん">攪拌</RUBY>する。

　腹の中で鉄球が転がっているようなものだった。
　胃液がせり上がってくるのを感じる。

　意志の力で抑え込みながら、劔冑に問うた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0070b57">
「やられたのか――真改！」

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/022vs0080b38">
《腰部甲鉄に若干の損傷。
　騎航及び戦闘には支障なし》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　切られてはいないらしい。
　手を触れて被撃箇所の無事を確認し、そのことには
安堵しながらも――<k>別の理由で肝が冷えるのも同時に
感じなくてはならなかった。真改の返答の中の一語。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0090b57">
「……戦闘だと？」

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/022vs0100b38">
《敵騎の速度は当方を上回る。
　戦域離脱は極めて困難》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0110b57">
「速度を上げればいいだろう！
　もっと速く<RUBY text="とべ">飛駆</RUBY>るはずだぞ!?」

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/022vs0120b38">
《肯定。但し時間が必要である。
　現在の高度では迅速な速度上昇は難しい》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　……高度？
　そうか。低空では空気抵抗が強いから……！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0130b57">
「何とかならないのか!?」

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/022vs0140b38">
《敵騎の追尾を振り切るならば、旋回を駆使
して速力を失わせるが定法である。
　されどこれは<RUBY text="おのれ">自騎</RUBY>が充分な速力を確保して
いる事が前提。現状は該当しない》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0150b57">
「くっ……！」

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/022vs0160b38">
《抗戦を至当と認める》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　劔冑らしい、あくまで無機的な声。
　駄々をこねても無駄だろう。なら、歯軋りするしか
なかった。

　抗戦だと？
　戦えというのか……武者と。武者と！

　劔冑の力で人を殺すことには慣れた。
　しかし武者と、己と五分の力を持つ者との戦闘など。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw村正武者_通常.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0170a00">
《鈴川令法。逃走は認めない。
　武者としての振舞いを求める》

//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0180a00">
《太刀を合わせよ。
　当方は改めて勝負に応じる用意がある》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CPMove_Auto001("@絵背景50",1500,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　夕空の中、距離を隔て、再び送り届けられる<RUBY text="きんちょうじょう">金打声</RUBY>
――<RUBY text="メタルエコー">装甲通信</RUBY>。
　落ち着いたその声音に、空恐ろしさを覚える。

　直感するものがあった。
　
　――あの敵は絶対に自分を逃がさない。
　追い、捉え、撃ち、<RUBY text="おと">墜落</RUBY>す。

　自分は殺される。

　殺されるのだ。
　美しいものたちを、この醜い地平に残したまま。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw真改_通常.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0190b57">
「ッ……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　そう。そうだ。
　この自分が死ぬとはそういう事。

　教え子たち。
　清く育ち、今こそまさに美しい彼ら。

　――彼らはこれからどうなるか。

　いずれ腐らされる。
　この世に満ちる無慈悲な悪意が彼らを汚す。

　それはどうしようもない必然。
　
　その必然を――だが、自分は拒絶したのだ。

　この手で救うと誓った。
　彼らの美しさを。

　美しいものを、美しいままに、終わらせる。
　己に課した絶対の責務。
　
　それはまだ……終わっていない！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CPMove_AutoR001("@絵背景50",3000,false);
	SetVolume("@mbgm*", 4000, 0, null);

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0200b57">
「……真改。
　奴は何と名乗っていた？」

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/022vs0210b38">
《村正――勢州<RUBY text="せんご">千子</RUBY>鍛冶、<RUBY text="うえもんのじょう">右衛門尉</RUBY>村正。
　希代の名甲にして妖甲。南北朝期に勃興し
天下第一の名を得るも、大乱を招いたがため
わずか三代を数えたのみで滅ぼされたと云う》

//【真改】
<voice name="真改" class="真改" src="voice/ma01/022vs0220b38">
《……相手に取って不足無し》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　最後に付け加えられたその一言は、劔冑らしからぬ
響きを備えていたのかもしれない。
　だがそんなことはどうでも良かった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0230b57">
「妖甲村正……南北朝の争乱を地獄に変えた
元凶か。ただ流血を好み、無限の呪詛を以て
争いのための争いを引き起こしたという……。
　そんなものが私を阻むのか」

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/022vs0240b38">
《当時の得物と云えば長大なる野太刀が主流
であった筈。
　見るに、敵騎の得物は並の太刀……詐称の
可能性も有り》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0250b57">
「どちらでもいい！
　死なんぞ……私は死なん」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0260b57">
「私にはすべきことがあるのだ！
　真改ッ！」

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/022vs0270b38">
《承知。戦闘を開始する。
　敵騎位置、<RUBY text="うしとらのかみ">四五度上方</RUBY>》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＢＧＭ：騎航戦
//◆右ロール、ピッチアップ４５度
//◆姿勢直し、直進

	SoundPlay("@mbgm08",0,1000,true);

	OnSE("se戦闘_動作_空突進03",1000);

	BGMoveDelete();
	CP_RollBarMove("@絵背景50",1000,-45,Dxl1,false);

	Wait(500);

	CP_AltChange(500,15,null,false);
	Zoom("絵背景50", 1200, 1500, 1500, Axl1, false);
	Move("絵背景50", 2000, @-250, @+500, Dxl1, false);
	MyTr_Count(1000,545);
	CP_SpeedChange(1000,400,null,false);
	CP_HighChange(1000,1200,null,false);
//Azi = 57
	CP_AziChange(1000,-47,Axl1,false);
	Wait(1000);
	MyTr_Count(600,350);
	CP_SpeedChange(1000,700,null,false);
	CP_HighChange(1000,800,null,false);
	CP_RollBarMove("@絵背景50",1000,0,Dxl1,true);

	SetVolume("SE01", 300, 0, null);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Cockpit_AllFade0();
	StC(1000, @-60,@+380,"cg/st/3d真改_騎航_通常.png");

	OnSE("se戦闘_動作_空突進02",1000);
	Move("@StC*", 500, @+60, @-60, Dxl2, false);
	FadeStC(500,false);
	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	Wait(400);

	StC(1000, @0,@+320,"cg/st/3d真改_騎航_戦闘.png");
	OnSE("se戦闘_動作_刀構え02",1000);
	FadeStC(200,true);

	Wait(300);

	OnSE("se戦闘_動作_空突進03",800);
	DeleteStC(400,false);
	SetBlur("@StC*", true, 3, 500, 50, false);
	Move("@StC*", 300, @+1000, @-1000, Dxl1, true);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Cockpit_AllFade2();
	CP_AltChange2(0,47,null,false);
	CP_IHPChange(0,9,null,false);
	CP_HighChange(15000,2000,Dxl1,false);
	CP_SpeedChangeA();
	FrameShake();

	CreateTextureEX("絵村正", 10000, Center, Middle, "cg/st/3d村正標準_騎突_戦闘.png");
	SetVertex("絵村正", 512, 288);
	Move("絵村正", 0, @-100, @-200, null, true);
	Zoom("絵村正", 0, 10, 10, null, true);
	Fade("絵村正", 0, 1000, null, true);

	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	EnTr_Count(1000,680);

	OnSE("se特殊_コックピット_起動音02",1000);
	CP_EnemyLockFade(500,800,500,@-100,@-200);
	CP_LockOnMove("@絵村正",15000,@+100,@+50,AxlDxl,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　体を倒して旋回。
　いつの間にか再び上空へ陣取っていた敵影を視界に
収め、直進する。

　<RUBY text="あいて">村正</RUBY>もまた頭を下げ、降下に移る。
　真っ向から激突する状形だ。

　武者と武者。
　最強武力と最強武力。
　有史以来、絶え間なく空で繰り返されてきた決闘。

　――今またそれが、鎌倉の空で。
　
　その一方を自ら担うことになるなどと、昨日の自分
が聞けば一笑に付しただろう。

　だが、避けて通れぬのならば！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ビーッとレティクルが動く。ロックオン

	CreateColorSP("黒幕１", 20000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Cockpit_AllFade0();
	Fade("絵村正", 0, 0, null, true);

	CreateTextureSP("絵背景100", 18000, Center, Middle, "cg/bg/bg001_空a_02.jpg");
	CreateTextureSP("絵EF100", 18500, Center, Middle, "cg/ef/ef002_汎用移動.jpg");
	Rotate("絵EF100", 0, @180, @0, @0, null,true);
	Zoom("絵EF100", 0, 1200, 1200, null, true);


	CreateTextureSP("絵St100", 19000, -888, -942, "cg/st/resize/3d真改_騎航_戦闘.png");
	SetBlur("絵St100", true, 3, 500, 50, false);

	Shake("絵EF100", 30000, 5, 5, 0, 0, 500, null, false);
	Shake("絵St100", 30000, 1, 0, 0, 0, 500, null, false);
	Fade("絵EF100", 0, 500, null, true);

	OnSE("se人体_動作_跳躍03",1000);

	Move("絵St100", 400, @+300, @0, Dxl1, false);
	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	Wait(1000);

	OnSE("se戦闘_動作_空突進03",1000);
	Move("絵St100", 400, @+2000, @0, Dxl1, false);
	Wait(300);

	CreateColorSP("黒幕１", 20000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵背景100");
	Delete("絵St100");
	Delete("絵EF100");

	Cockpit_AllFade2();
	Fade("絵村正", 0, 1000, null, true);

	CP_HighChangeA();
	CP_AltChangeA();
	FrameShake();

	CloudZoomSet(10000);
	CloudZoomStart(700,600,600,500,600);


	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　豆粒のような敵影を<RUBY text="しか">確</RUBY>と見据えた。

　憎悪を込める。怒りを込める。
　それは全く正当な、迷いもない想念。

　疑いもない。
　為すべきを為す己を阻む者が現れたなら、怒り憎む
ほかに何をしようか。

　恐れは必要ない。条件は互角。
　――ならば、勝たねばならぬ己が勝つ！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆敵影拡大。ちょっと移動しながら
	Zoom("絵村正", 3000, 50, 50, null, false);
	CP_LockOnMove("@絵村正",10000,@0,@-50,AxlDxl,false);

	Wait(3000);

	SetFwR("cg/fw/fw真改百足_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【真改】
<voice name="真改" class="真改" src="voice/ma01/022vs0280b38">
《距離五〇〇。<RUBY text="ツキウシ">闘牛形</RUBY>》

{	FwR("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0290b57">
「邪魔する者は斬る……
　村正だと？　おぞましき魔物が。死すべき
は貴様の方だ！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　直進。太刀を振りかぶる。
　天に向かって駆けるこの体ごとぶつけて斬る。

　加速に加速を乗せ、最大の威力で――

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_空突進03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetFrequency("SE01", 1000, 400, Dxl3);
	SetVolume("SE01", 5000, 0, null);

//◆伸びない速度計。つーか、落ちていく
	Zoom("絵村正", 2000, 70, 70, null, false);
	MyTr_Count(2000,600);
	CP_SpeedChange(5000,560,null,false);
	CP_HighChange(5000,2500,null,false);


	Wait(2000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　――――遅い!?

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	Zoom("絵村正", 5000, 100, 100, null, false);
	CP_LockOnMove("@絵村正",10000,@0,@+20,AxlDxl,false);
	CP_LockOnChangeW(2000);

	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0300a00">
《……改めて勝負、と言った筈だが。
　高度確保もせずに突撃とは、侮るにも程が
ある――いや、それともただの愚行か？》

{	FwR("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0310b57">
「!?」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	OnSE("se戦闘_動作_空突進01",700);

	CloudZoomDelete(1500,false);
	Zoom("絵村正", 2000, 1000, 1000, Axl1, false);
	CP_LockOnMove("@絵村正",600,@+600, @+100, Axl1, true);
	CP_LockOnMove("@絵村正",600,@-600, @+100, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　視界に、
　紅い武者が現れ、

　――<RUBY text="はや">迅</RUBY>い!!

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆カットイン：村正騎航上段
//◆村正上段斬撃汎用。なんか斬ってる。火花とか散ってる
//◆↑出しつつドガーン。振動

	CreateColorEX("絵色100", 20000, "Black");
	CreateColorEXadd("絵色200", 19999, "White");
	SL_rightdown2(21000, @0, @0,1500);

	SetBlur("絵村正", true, 4, 500, 50, false);

	Zoom("絵背景50", 300, 1500, 1500, null, true);
	Zoom("絵村正", 300, 2000, 2000, Dxl1, false);
	Wait(50);
	Fade("絵色100", 200, 1000, null, true);

	FrameShakeDelete();

	CP_LockOnDelete();

	Wait(100);

	OnSE("se戦闘_攻撃_野太刀振る01",1000);

	SL_rightdownfade2(15);

	Wait(100);
	CP_AllChange("@絵背景50",0, 300, 600, 512, 678);

	Delete("絵村正");
	CP_LockOnFadeT(0,true);
	CP_AziChange(0,10,null,true);

	CreateTextureEX("絵背景50", 1000, Center, Middle, "cg/bg/resize/bg201_旋回演出背景市街地a_02.jpg");
	Fade("絵背景50", 0, 1000, null, true);
	CP_RollBar_ADelete();
	CP_RollBarMove("@絵背景50",0,15,null,true);

	Shake("@CP_Frame", 500, 40, 30, 0, 0, 500, null, false);

	OnSE("se戦闘_攻撃_鎧_打撃02",1000);
	CP_RollBarMove("@絵背景50",1000,0,null,false);
	Fade("絵色200",500,0,null,false);
	Fade("絵色100",200,0,null,true);
	Delete("絵色100");

	CP_IHPChange(700,6,null,false);
	MyLife_Count(500,651);
	MyTr_Count(500,250);

	CP_SpeedChangeA();
	CP_HighChangeA();
	CP_AltChangeA();

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0320b57">
「……っっっ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　全身に走る衝撃。
　熱気と冷気が体内を駆け巡った。

　悶えるような熱さと凍えるような寒さ。
　痛覚よりも正確に、受けた打撃の深さを物語るそれ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("SE01", 1000, 500, null);

	Move("絵背景50", 5000, @0, @-200, AxlDxl, false);
	MyTr_Count(2000,123);
	CP_SpeedChange(2000,155,null,false);
	CP_AltChange(3000,-20,null,false);
	CP_HighChange(5000,289,null,false);


	FrameShakeSt(4000);

	SetFwC("cg/fw/fw真改百足_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【真改】
<voice name="真改" class="真改" src="voice/ma01/022vs0330b38">
《右肩部甲鉄に深刻な損傷。
　内部骨格に若干の被害》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0340b57">
「く……おのれ！」

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/022vs0350b38">
《速度低下。失速の危険を警告》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0360b57">
「何っ!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CP_AltChange(2000,0,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　失速？
　
　その意味を脳内で探る。

　失速――<RUBY text="ストール">失速</RUBY>。
　速度の低下によって飛行体が揚力を失うこと。

　失速した飛行体は制御を失い、重力に引かれるまま
墜落を始める……

　墜落!?
　制御不能!?

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw真改百足_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【真改】
<voice name="真改" class="真改" src="voice/ma01/022vs0370b38">
《降下し、速度を回復せよ》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0380b57">
「ぬう！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆エルロンロール。１８０度転回
//◆ピッチアップ。空→地平線→地面
//◆エルロン。１８０度転回して姿勢回復
//◆速度計上昇

	CreateTextureEX("絵背景100", 500, Center, -5000, "cg/bg/bg201_旋回演出背景市街地_02.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	CP_SpeedChange(3000,350,null,false);
	CP_HighChange(3000,150,null,false);

	SetBlur("@絵背景50", true, 4, 500, 100, false);
	SetBlur("絵背景100", true, 4, 500, 100, false);


	OnSE("se戦闘_動作_空突進01",1000);

	Move("@絵背景50", 1500, @0, @+200, null, false);
	CP_RollBarMove("@絵背景50",3000,180,Dxl1,true);
	Delete("@絵背景50");

	Move("絵背景100", 4500, @0, -500, Axl2, false);
	CP_SpeedChange(3000,540,null,false);
	MyTr_Count(500,450);

	Wait(3000);

	CP_RollBarMove2(0,0,null,true);

	CP_AziChange(1000,189,Axl1,false);

	CP_SpeedChange(2000,350,null,false);
	CP_HighChange(2000,657,null,false);

	MyTr_Count(500,320);
	Wait(1000);


	OnSE("se戦闘_動作_空上昇01",1000);
	Move("絵背景100", 2000, @0, 800, Dxl1, false);
	Zoom("絵背景100", 2000, 1500, 1500, Dxl1, true);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("@FrameShake_Stall");
	Delete("絵背景100");
	CP_LockOnDelete();

	Cockpit_AllFade0();

	CreateTextureEX("絵背景50", 100, Center, Middle, "cg/bg/resize/bg001_空a_02.jpg");
	Fade("絵背景50", 0, 1000, null, true);


	CreateSE("SE01","se戦闘_動作_空走行02_L");
	MusicStart("SE01",0,1000,0,1000,null,true);


	CreateTextureSP("絵St100", 1000, -888, -802, "cg/st/resize/3d真改_騎航_通常.png");

	Move("絵St100", 400, @+300, @0, Dxl1, false);

	Cloud_Move2(1000);

	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	BGMoveAuto("@絵St100",1);
	Shake_Loop("@絵St100","shake01");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　頭を引き上げ、垂直旋回。
　敵対していた重力を味方につけて、ようやく速度計
は低下から一転、上昇を始める。

　とはいえ地表が近い。
　充分な速度を得られるかどうか――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw真改百足_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【真改】
<voice name="真改" class="真改" src="voice/ma01/022vs0390b38">
《敵、<RUBY text="みずのえからねのかみ">三五〇度上方</RUBY>。来襲》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0400b57">
「っ!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	SetVolume("SE01", 500, 0, null);


	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	Delete("絵St100");
	Cloud_MoveDelete();

	CreateTextureEX("絵背景50", 100, Center, 0, "cg/bg/resize/bg001_空a_02.jpg");
	Fade("絵背景50", 0, 1000, null, true);

	Cockpit_AllFade2();
	CP_AllChange("@絵背景50", 0, 263, 456);
	CP_AziChange(0,185,null,true);
	CP_IHPChange(0,5,null,false);
//Power_800
	CP_PowerChange(0,800,null,true);

	MyTr_Count(500,320);
	CP_SpeedChange(500,298,null,false);
	CP_HighChange(1000,780,null,false);

	Move("絵背景50", 500, @0, @-288, Dxl1, false);

	DrawDelete("黒幕１", 300, 100, "slide_01_01_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
　慌てて頭を引き上げる。

　背を見せたままでは一方的に斬られるだけだ。躱す
こともできない。
　兎にも角にも正対しないことには、どうにも、

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	OnSE("se戦闘_動作_空突進01",1000);

//◆旋回、ピッチアップ
//◆レティクル移動。ロックオン
	CP_RollBarMove("@絵背景50",700,45,Dxl1,false);

	Wait(300);

	CP_AltChange(400,15,null,false);
	Move("絵背景50", 2000, @+125, @+225, Dxl1, false);
	CP_HighChange(500,520,null,false);
	CP_AziChange(500,191,Axl1,false);
	Wait(500);
	CP_SpeedChange(600,450,null,false);
	CP_HighChange(600,920,null,false);
	FrameShake();
	CP_RollBarMove("@絵背景50",600,0,Dxl1,true);

	CreateTextureEX("絵村正", 10000, Center, Middle, "cg/st/3d村正標準_騎突_戦闘.png");
	Zoom("絵村正", 0, 0, 0, null, true);
	Request("絵村正", Smoothing);
	CockPit_LockSet(@0,@0);
	CP_LockOnMove("@絵村正",0,@-20,@-50,null,true);

	OnSE("se特殊_コックピット_ロックオン",1000);

	CP_LockOnMove("@絵村正",1000,@-50,@-50,null,false);
	Zoom("絵村正", 300, 100, 100, Dxl1, false);
	Fade("絵村正", 300, 1000, Dxl1, false);
	Wait(100);
	CP_LockOnFade(100,"on",true);


	SetFwR("cg/fw/fw真改百足_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【真改】
<voice name="真改" class="真改" src="voice/ma01/022vs0410b38">
《距離二〇〇》

{	FwR("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0420b57">
「あ……あぁぁッ！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
　近い！　速い！
　糞、これではどうにもならない！

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――



	CreateColorEX("絵色100", 21000, "Black");
	CreateWindow("CutIn", 150, 0, 50, 1024, 476, false);
	SetAlias("CutIn","CutIn");

//◆カットイン：村正騎航上段
	CreateTextureEX("CutIn/絵back", 21001, Center, Middle, "cg/bg/bg001_空a_02.jpg");
	CreateTextureEX("CutIn/絵Mura0", 21001, Center, -200, "cg/st/3d村正標準_騎航_通常.png");
	Request("CutIn/絵Mura0", Smoothing);
	CreateTextureEX("CutIn/絵Mura1", 21001, Center, -200, "cg/st/3d村正標準_騎突_戦闘.png");
	Request("CutIn/絵Mura1", Smoothing);
	SetVertex("CutIn/絵Mura0", 512, 288);
	Zoom("CutIn/絵Mura0", 0, 1500, 1500, null, true);
	SetVertex("CutIn/絵Mura1", 512, 288);
	Zoom("CutIn/絵Mura1", 0, 1500, 1500, null, true);
	Move("CutIn/絵Mura0", 0, @+50, @-10, null, true);

	Fade("絵色100", 100, 1000, null, true);
	Zoom("絵村正", 0, 100, 100, null, false);
	CP_LockOnMove("@絵村正",0,@0,@-50,null,true);

	OnSE("se戦闘_動作_空突進01",500);
	Move("CutIn/絵Mura0", 200, @-50, @+10, Dxl1, false);
	Fade("CutIn/絵back", 0, 1000, null, false);
	Fade("CutIn/絵Mura0", 0, 1000, null, false);

	DrawTransition("CutIn/*", 200, 0, 1000, 100, null, "cg/data/slide_01_00_0.png", true);

	OnSE("se戦闘_動作_刀構え01",1000);
	Fade("CutIn/絵Mura1", 300, 1000, Dxl1, false);
	Fade("CutIn/絵Mura0", 300, 0, Axl1, true);

	Wait(300);

	OnSE("se戦闘_動作_空突進03",1000);
	Move("CutIn/絵Mura1", 200, @-500, @+500, Dxl1, false);
	DrawTransition("CutIn/*", 200, 1000, 0, 100, null, "cg/data/slide_01_00_1.png", true);
	FrameShakeDelete();

	Delete("CutIn*");
	Fade("絵色100", 100, 0, null, true);
	Delete("絵色100");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
　敵の<RUBY text="かまえ">構</RUBY>を確認する。
　先の一合と同じ、太刀を肩の上に担いだ構。

　あの太刀の尺。
　あれの射程から逃れられれば！

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_動作_空突進02",800);
	Move("絵背景50", 1000, @0, @+50, Dxl1, false);
	Zoom("絵村正", 1500, 250, 250, Axl1, false);
	CP_SpeedChange(1500,354,null,false);
	CP_HighChange(1500,1215,null,false);
	CP_AltChange(1500,24,Dxl1,false);
	CP_LockOnMove("@絵村正",1000,@0,@+200,Dxl1,true);
	CP_LockOnMove("@絵村正",600,@+50,@-100,Axl1,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0551]
　<RUBY text="ピッチ">頭</RUBY>を引き上げる。
　村正を捉えた照準が、中心のやや下に来るよう調整。

　太刀が届かぬ距離をとって、駆け違う――

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0430a00">
《上段に対して、<RUBY text="・">上</RUBY>へ逃れて何とする？》

{	FwR("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0440b57">
「!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆カットイン：村正上段斬撃
//◆ガーン。振動
	CreateColorEX("絵色100", 20000, "Black");
	CreateColorEX("フラッシュ白", 21000, "WHITE");
	SL_rightdown2(20001, @0, @0, 1500);

	OnSE("se戦闘_動作_空突進01",1000);

	Move("絵村正", 500, @0, @-100, null, false);
	Zoom("絵村正", 500, 1000, 1000, Dxl1, false);
	FrameShakeDelete();
	Fade("絵色100", 300, 1000, null, true);
	Delete("絵村正");
	CP_LockOnFadeT(0,true);
	Wait(50);

	OnSE("se戦闘_攻撃_野太刀振る02",500);
	SL_rightdownfade2(10);

	Wait(300);

	Fade("フラッシュ白",0,1000,null,true);
	Delete("絵色100");
	CP_AltChange(0,15,null,true);
	CP_AllChange("@絵背景50",0, 354, 908);
	CreateTextureEX("絵背景100", 500, Center, -200, "cg/bg/bg201_旋回演出背景市街地_02.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	Shake("絵背景100", 500, 10, 2, 0, 0, 500, null, false);
	Shake("@CP_Frame", 500, 10, 0, 0, 0, 500, null, false);
	OnSE("se戦闘_破壊_鎧01",1000);
	Fade("フラッシュ白",200,0,null,true);
	Delete("フラッシュ白");
	CP_IHPChange(500,5,null,false);
..//Power_700
	CP_PowerChange(500,700,null,false);
	CP_AziChange(0,10,null,true);

	CP_AltChange(1000,0,null,false);
	MyLife_Count(500,612);

	CP_SpeedChangeA();
	CP_HighChangeA();

	Move("絵背景100", 3000, @0, -300, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
　また一撃。
　同じく肩。

　だが、逃れようと機動していたことにも一応の意味
はあったのか、損傷は深くない。
　先刻の傷口に衝撃が響いた程度だ。

　……今回は、と付け加える必要があるだろうが。
　状況は一方的な劣勢。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0450b57">
「っ……真改！
　<RUBY text="シノギ">陰義</RUBY>で奴の血を止められるか!?」

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/022vs0460b38">
《否。
　敵騎の肉体は劔冑に守護されている。これ
を越えて陰義を<RUBY text="き">極</RUBY>める事は不可能である》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆垂直旋回→降下→上昇
	OnSE("se戦闘_動作_空上昇01",800);
	Move("絵背景100", 4000, @0, -5000, Dxl1, false);
	CP_AltChange(2100,-90,null,false);
	CP_SpeedChange(2100,300,Dxl1,false);
	CP_HighChange(2100,400,Dxl1,false);
	MyTr_Count(500,320);

	Wait(1200);
	CP_RollBarMove2(0,180,null,false);

	CP_AziChange(1500,96,null,false);
	Move("絵背景100", 5000, @0, -5000, Dxl1, false);
	CP_AltChange(1500,10,null,false);
	CP_SpeedChange(1500,400,Dxl1,false);
	CP_HighChange(1500,800,Dxl1,false);

	Wait(500);

	Move("絵背景100", 500, @0, -5100, Dxl1, true);
	CP_AltChange(400,-5,Dxl1,false);
	Move("絵背景110", 500, @0, -4950, Dxl1, true);
	CP_AltChange(400,0,Dxl1,false);
	Move("絵背景100", 500, @0, -5000, Dxl1, true);
	CreateTextureEX("絵背景200", 1000, Center, Middle, "cg/bg/resize/bg201_旋回演出背景市街地a_02.jpg");
	Rotate("絵背景200", 0, @0, @0, 180, null,true);
	Fade("絵背景200", 0, 1000, null, true);

	OnSE("se戦闘_動作_空突進02",500);
	CP_RollBarMove("@絵背景200",1000,0,Dxl1,false);

	Wait(800);

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0470b57">
「くっ……！
　では、他に何か手はないのか！　何か！」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0480a00">
《――見苦しい》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ロール→ピッチアップ→ロール戻し
//◆ロックオン

//嶋：ev942_村正ＶＳ真改

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_03_01_1.png", true);

	Cockpit_AllFade0();

	CreateTextureSP("絵ev100", 1000, Center, Middle, "cg/ev/ev942_村正ＶＳ真改.jpg");

	DrawDelete("黒幕１", 300, 100, "slide_03_01_1", true);


//	CreateTextureEX("絵村正", 10000, Center, Middle, "cg/st/3d村正標準_騎突_戦闘.png");
//	Zoom("絵村正", 0, 10, 10, null, true);
//	Request("絵村正", Smoothing);
//	CP_LockOnMove("@絵村正",0,@+300,@-300,null,true);

//	CP_LockOnMove("@絵村正",1000,@-310,@+100,null,false);
//	Fade("絵村正", 200, 1000, null, false);
//	Wait(100);
//	CP_AltChangeA();
//	CP_LockOnFade(100,"off",true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
　すべてを聞いていたかのような折の良さで、冷たい
金打声が伝わってくる。
　発信源は視線の先、圧倒的に速く鋭い旋回で奪った
上空に躍り、再度の突進の機を待っていた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0490a00">
《<RUBY text="タチウチ">太刀打</RUBY>の作法をまるで知らぬ。武者として
あるまじき不心得。
　貴様、<RUBY text="フタワガカリ">双輪懸</RUBY>はこれが初めてか。その太刀
を向けてきた相手は、生身の人々だけなのか》

//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0500a00">
《牙なき者をいたぶるだけが貴様の剣か》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0510b57">
《抜かせ！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵st100", 1100, -1024, -576, "cg/ev/resize/ev942_村正VS真改_l.jpg");
	SetBlur("絵st100", true, 3, 500, 50, false);

	Fade("絵st100", 300, 1000, null, false);
	Move("絵st100", 500, @+100, -150, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
　装甲通信の指向を敵影に合わせ、反駁する。
　言われる義理ではない。怒りをそのまま吐きつけた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0520b57">
《知らぬ者とていない妖甲を平然と駆る輩が
何を言う！　その性根、呪われていようと力
があれば良しとする醜い心が透けて見えるわ！
　違うか!?　村正！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateTextureEX("絵st200", 1200, Center, -576, "cg/ev/resize/ev942_村正VS真改_l.jpg");

	SetBlur("絵st200", true, 3, 500, 50, false);

	Fade("絵st200", 300, 1000, null, false);
	Move("絵st200", 500, @+500, 0, Dxl1, true);

	Delete("絵st100");

	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0661]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0530a00">
《そう云うそちらは井上真改か。
　和泉守国貞。大坂正宗と謳われた藩制時代
初期の名作……朝廷に献上を許され、一度は
その倉に置かれた程の逸品》

//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0540a00">
《斯様な劔冑を纏いながらその醜態。
　どうにも解せぬ。貴様は名だたる武門の出
ではないのか？》

//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0550a00">
《調査した限り貴様は一介の教師。
　しかしあるいは、隠れた血筋の者なのかと
疑ったが……先程よりの無作法を見るにそう
も思えん》

//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0560a00">
《どういう事だ。貴様はなぜ劔冑を持つ？
　六波羅に媚を売って、恵んで貰ったのか》

{	FwR("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0570b57">
《！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	CreateColorSP("黒幕１", 18000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_03_01_1.png", true);

	Delete("絵st*");
	Delete("絵ev*");

	Cockpit_AllFade2();

	CreateTextureEX("絵村正", 10000, Center, Middle, "cg/st/3d村正標準_騎突_戦闘.png");
	Zoom("絵村正", 0, 10, 10, null, true);
	Request("絵村正", Smoothing);
	CP_LockOnMove("@絵村正",0,@+300,@-300,null,true);

	CP_LockOnMove("@絵村正",0,@-310,@+100,null,false);
	Fade("絵村正", 0, 1000, null, false);
	CP_AltChangeA();
	CP_LockOnFade(0,"off",true);

	DrawDelete("黒幕１", 300, 100, "slide_03_01_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]
　その口調は別段、侮蔑的ではなかったが。
　内容だけで充分過ぎた。

　息を呑む。
　見える筈もない己の顔が蒼白になったのを知る。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0580b57">
《……ふ、》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0730]
　この自分が。
　六波羅に、だと？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0740]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0590b57">
《巫山戯ろォォォーーーーーーーッ!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_動作_空上昇01",1000);

	CP_SpeedChange(1500,600,Dxl1,false);
	CP_HighChange(1500,1200,Dxl1,false);
	CP_AltChange(1500,30,null,false);
	MyTr_Count(1000,523);
//◆接近
	Zoom("絵背景100", 3000, 1500, 1500, null, false);

	Zoom("絵村正", 2500, 1000, 1000, null, false);
	CP_LockOnMove("@絵村正",2000,@+10,@+150,Dxl1,false);
	Wait(500);
	CP_SpeedChange(1500,570,Dxl1,false);
	CP_LockOnChange(100,true); 

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0750]
　敵は既に眼前。
　太刀が三度、襲い来る刹那。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵EF100", 19000, Center, Middle, "cg/ef/ef021_汎用陰義発動a.jpg");
	SetVertex("絵EF100", 512, 288);
	Zoom("絵EF100", 0, 2000, 2000, null, true);
	CreateTextureEX("絵EF200", 19001, Center, Middle, "cg/ef/ef021_汎用陰義発動b.jpg");
	SetBlur("絵EF200", true, 5, 500, 50, false);

	SL_centerdam(@0, @0,1000);



	OnSE("se特殊_陰義_発動01",1000);
	Zoom("絵EF100", 500, 1000, 1000, Dxl1, false);
	Fade("絵EF100", 500, 1000, Dxl1, true);
	Delete("絵背景200");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0751]
　全身をよろう劔冑、その甲鉄との接触を感覚する。
　感覚。感覚。感覚。集中した意思の作用による鋭敏
化でどこまでも深く深く。

　接触は接合に進化。
　甲鉄を我が肉皮と認識。
　血を流し神経を通し魂を宿す。

　肉体と甲鉄の合一。
　常理を踏みにじる融合を為し、<RUBY text="しか">然</RUBY>して心中にうねり
<RUBY text="うごめ">蠢</RUBY>く力の流動を知覚――掌握。

　<RUBY text="コマンド">呪句</RUBY>の詠唱を以て解放。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se特殊_陰義_発動03",1000);
	Fade("絵EF200", 500, 1000, Dxl1, true);
	Delete("絵EF100");

	CreateColorEXadd("絵色100", 17000, "White");
	Fade("絵色100", 0, 1000, null, true);

	Fade("絵色100", 1000, 0, Dxl1, false);
	Fade("絵EF200", 700, 0, Dxl1, false);
	Zoom("絵EF200", 700, 2000, 2000, Dxl1, true);

//	OnSE("se人体_血_血しぶき02",1000);

//	SL_centerdamfade2(10);

	CP_PowerChange(300,600,null,false);


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0760]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0600b57">
「<RUBY text="くるい・くる">狂意繰</RUBY>！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0770]
　操るものは――自分自身の血！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆レッドマスク？


	CreateColorEXadd("フラッシュ白", 20000, "White");
	Fade("フラッシュ白",0,1000,null,true);
	CreateColorEXmul("絵色100", 14000, "RED");

	OnSE("se人体_血_血しぶき01",1000);
	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");
	Fade("絵色100", 0, 1000, null, false);
	DrawTransition("絵色100", 1000, 0, 1000, 200, Dxl1, "cg/data/zoom_01_00_0.png", false);


	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0780]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0610a00">
「むっ……！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆カットイン：剣撃
//◆風切音のみ
	CreateTextureEX("絵背景100", 18000, Center, Middle, "cg/ef/ef010_汎用斜め軌道.jpg");
	OnSE("se戦闘_攻撃_刀振る01",1000);
	Fade("絵背景100", 0, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0790]
　こちらの肩口から<RUBY text="・・・">飛んだ</RUBY>血飛沫に顔面を打たれて、
村正の騎航姿勢が<RUBY text="バランス">安定</RUBY>を乱す。太刀筋も崩れた。
　その隙に刃を潜る。交差。

　我が甲鉄に悲鳴を上げさせること無く、一合を終え
別離する。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆交差、離脱
	Delete("絵村正");

	CreateTextureEX("絵背景50", 100, Center, -950, "cg/bg/bg201_旋回演出背景市街地_02.jpg");
	Zoom("絵背景50", 0, 750, 750, null, true);
	Fade("絵背景50", 0, 1000, null, true);

	Delete("絵EF200");
	Delete("絵色100");

	CP_LockOnFadeT(0,true);
	CP_SpeedChange(500,248,Dxl1,false);
	CP_HighChange(500,600,Dxl1,false);

	Move("絵背景50", 500, @0, @-50, null, false);
	CP_AltChange(500,0,null,false);
	OnSE("se戦闘_動作_空突進01",1000);
	FadeDelete("絵背景100", 300, null, true);

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0800]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0620b57">
《はっ！　飢えた妖甲め。
　私の血を有難く飲むがいい！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0810]
　報復の雑言を投げつける。
　多少は腹が癒えた。

　だが、状況は好転していない。
　速度計の目盛は失速が近いことを示している。また
降下して、速力を回復する必要がある。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	OnSE("se戦闘_動作_空急降下01",1000);

	Zoom("絵背景50", 1000, 900, 900, Dxl1, false);
	Shake("絵背景50", 6000, 1, 3, 0, 0, 1000, null, false);
	Move("絵背景50", 3000, @0, -2100, Dxl1, true);

	CP_HighChange(2000,200,null,false);
	CP_SpeedChange(2000,600,null,false);
	Zoom("絵背景50", 1200, 1300, 1300, Axl1, false);
	Move("絵背景50", 1200, @0, -1800, Axl1, false);

	Wait(600);
	Shake("絵背景50", 30000, 3, 4, 0, 0, 1000, null, false);

	Wait(603);

	OnSE("se戦闘_動作_空上昇01",1000);
	CP_SpeedChange(2000,497,null,false);
	CP_HighChange(2000,700,null,false);
	Zoom("絵背景50", 2000, 2000, 2000, Dxl1, false);
	Move("絵背景50", 2000, @0, 1200, Dxl1, false);

	Wait(1700);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Cockpit_AllFade0();
	Delete("絵背景50");

	CreateTextureSP("絵Rollbg001", 1500, 0, -576, "cg/bg/resize/bg001_空a_02.jpg");
	CreateTextureSP("絵Rollbg002", 1500, 0, -576, "cg/bg/resize/bg001_空a_02.jpg");

	CreateTextureSP("絵真改", 1600, Center, Middle, "cg/st/3d真改_騎航_通常.png");

	SetVertex("絵Rollbg*", 0, Middle);
	Zoom("絵Rollbg*", 0, 2000, 1000, null, true);

	CloudZoomSet(2000);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@+1024,@-100,Dxl2,true);

	BGMoveAuto("@絵真改",2);

	CreateSCR1("@絵Rollbg001","@絵Rollbg002",1000,-2024, @0);

/*
	CreateTextureSP("絵背景100", 500, Center, Middle, "cg/bg/resize/bg002_空a_02.jpg");
	CreateTextureEX("絵St100", 1000, Center, -325, "cg/st/3d真改_騎航_通常.png");
	Move("絵St100", 0, @+50, @0, null, true);
	Fade("絵St100", 0, 1000, null, true);

	Shake("絵背景100", 50000, 1, 1, 0, 0, 500, null, false);
	BGMoveAuto("@絵St100",1);
	Cloud_Move(1000);
*/

	DrawDelete("黒幕１", 300, 100, "slide_02_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0811]
　これでは埒が明かない……！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0820]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0630a00">
《血を操る……それが真改の<RUBY text="シノギ">陰義</RUBY>か》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0830]
　平板な口調をわずかに驚きで揺らして、村正が声を
飛ばしてくる。

　陰義。
　古来の製法で鍛えられた真打劔冑の中でも特上の品
だけが操る、単なる身体強化を超えた異能の術。

　村正の指摘は正しい。
　あの一撃こそは、真改が備える陰義の発現だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0840]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0640a00">
《陰義まで扱うならば、よもや写しや贋作と
いうことはあるまい。
　その劔冑は紛れもなく真物の井上真改》

//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0650a00">
《ただの教師に過ぎぬ貴様がどうして持つ？》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0660b57">
《ふっ……！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, Dxl1, "cg/data/slide_01_02_1.png", true);

	BGMoveDelete();
	Delete("絵Rollbg*");
	Delete("Rollbg*");
	Delete("絵真改");

	SCR1stop();
	CloudZoomDelete(0,true);

	BGMoveDelete();
	Cloud_MoveDelete();
	Delete("絵St100");
	Delete("絵背景100");

	Cockpit_AllFade2();

	CreateTextureSP("絵背景50", 500, Center, Middle, "cg/bg/resize/bg001_空a_02.jpg");


	CP_SpeedChange(500,413,null,false);

	CP_HighChangeA();

	CP_AltChangeA();

	DrawDelete("黒幕１", 300, 100, "slide_01_02_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0860]
　答える義理はなかったが、意味はあった。
　今は時間が欲しい。稼がせてくれるならば稼ぐべき
だった。

　どのみちこれから殺す相手に隠さねばならないよう
なことでもない。
　
　鼻で笑った後で、応じる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	CPMove_Auto001("@絵背景50",3000,false);


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0870]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0670b57">
《サンタクロースの贈り物……
　と言えば笑うか？》

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0680a00">
《何……？》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0690b57">
《師走の二四日ではなかったがな。
　私があの廃校で二人目の教え子を<RUBY text="・・・">救った</RUBY>、
その翌日……あそこに置かれていたのだ》

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0700b57">
《私に使えと言わんばかりに》

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0710a00">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0910]
　沈黙の相槌。真偽を図りかねている様子だった。
　知ったことではない。金打声を送り続ける。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0920]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0720b57">
《私にも理解者はいるということなのだろう。
　そうでなくとも構わない。誰のどんな意図
であろうと、私にとってこの劔冑は恵み以外
の何かではなかった》

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0730b57">
《これのお陰で私は以前よりもずっと簡単に、
完璧に、綺麗に、優しく……愛しい者たちを
殺してやれるようになったのだから！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CPMove_AutoR001("@絵背景50",1000,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0940]
　頭を引き上げて上方旋回。
　赤い敵――この距離では黒点だが――が視野に入る。

　やや、遠い。
　会話の間を取るために、半径を大きくした鈍い旋回
をしていたのだろう。

　こちらの意図通りではあったが、その余裕のほどが
腹立たしくもある。
　太刀を握る両手に力が篭った。速度は回復している。
問題は何もない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0950]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0740b57">
《ゆくぞ――！》

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0750a00">
《……成程。
　事実はどうあれつまり貴様は、<RUBY text="・・">偶々</RUBY>劔冑を
手に入れただけという事か》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵村正", 10000, Center, Middle, "cg/st/3d村正標準_騎突_戦闘.png");
	Zoom("絵村正", 0, 10, 10, null, true);
	Request("絵村正", Smoothing);
	CP_LockOnMove("@絵村正",0,@+300,@-300,null,true);

	OnSE("se戦闘_動作_刀構え02",600);
	Move("絵背景50", 1000, @0, @+200, null, false);
	CP_LockOnMove("@絵村正",1000,@-310,@+100,null,false);
	CP_AltChange(2000,31,null,false);
	Fade("絵村正", 200, 1000, null, false);
	Wait(100);
	CP_LockOnFade(100,"off",true);

	Zoom("絵村正", 5000, 100, 100, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0970]
　<RUBY text="ピッチ">兜角</RUBY>を下げ、<RUBY text="ダイブ">没入</RUBY>してくる敵影。

　亜音速と亜音速の正面相対。
　まさに切り崩すという表現が相応しい速さで、相関
距離が減少する――<k>人の足なら果てもない旅程、だが
今は瞬時に跳躍。

　<RUBY text="レティクル">照準</RUBY>の中の点が粒に、粒は図形に、図形は姿となり
<RUBY text="カメラ">視覚</RUBY>を埋める。
　太刀打の間合！

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	OnSE("se戦闘_動作_空突進01",800);

	CP_HighChange(2000,1640,null,false);
	CP_SpeedChange(1500,548,null,false);
	Zoom("絵村正", 1000, 500, 500, null, false);
	CP_LockOnMove("@絵村正", 1000,@0,@+200,null,false);
	CP_LockOnChange(500,true);
	CP_SpeedChange(1500,427,null,false);

	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0980]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0760a00">
《得心いった――その愚行》

{	FwR("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0770b57">
《ッ！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ＣＩ：村正上段
//◆ＣＩ：真改上段
//◆ＣＩ：剣撃交差
//◆ＣＩ：村正上段斬撃ヒット。ドガーン。

	OnSE("se戦闘_動作_空突進02",800);
	Zoom("絵村正", 1000, 800, 800, null, false);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_04_01_0.png", true);

	Delete("絵村正");
	CP_LockOnFadeT(0,true);

	CreateTextureSP("絵shin001", 21001, -500, Middle, "cg/bg/resize/bg002_空a_02.jpg");
	CreateTextureSP("絵shin010", 21001, Center, Middle, "cg/st/3d真改_騎航_戦闘.png");
	SetBlur("絵shin010", true, 3, 300, 50, false);

	SL_rightup2(20000,@0, @0,1500);

	Move("絵shin010", 0, @-200, @+576, null, true);

	OnSE("se戦闘_動作_空突進01",600);
	Move("絵shin001", 550, @-100, @+100, Axl1, false);
	DrawDelete("黒幕１", 300, 100, "slide_04_01_1", true);

	BezierMove("絵shin010", 400, (@0,@0){212,0}{212,0}(+312,-1500), Dxl1, true);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_04_01_0.png", true);

	Delete("絵色100");
	Delete("絵shin*");

	CreateTextureSP("絵mura001", 21001, -512, -400, "cg/bg/resize/bg002_空a_02.jpg");
	CreateTextureSP("絵mura010", 21001, Center, Middle, "cg/st/3d村正標準_騎航_戦闘a.png");
	SetBlur("絵mura010", true, 3, 500, 50, false);

	SL_leftdown2(20000,@0, @0,1500);

	Move("絵mura010", 0, @+1024, @-576, null, true);

	OnSE("se戦闘_動作_空突進01",600);
	Move("絵mura001", 550, @+100, @-100, Axl1, false);
	DrawDelete("黒幕１", 300, 100, "slide_04_01_1", true);

	Move("絵mura010", 400, -1536, 760, Dxl1, true);

	CreateColorEX("絵色100", 22000, "Black");
	Fade("絵色100", 100,1000,null,true);
	Delete("絵mura*");
	CreateColorEX("絵色200", 16000, "Black");
	Fade("絵色200", 0,1000,null,true);
	Delete("絵色100");
	CreateColorEX("絵色100", 22000, "White");
	Wait(100);
//	OnSE("se戦闘_攻撃_刀振る01",1000);
	OnSE("se戦闘_攻撃_野太刀振る01",1000);
	SL_rightupfade2(15);

//	OnSE("se戦闘_攻撃_刀振る02",1000);
	OnSE("se戦闘_攻撃_野太刀振る02",1000);
	SL_leftdownfade2(15);

	Fade("絵色100", 200,1000,null,true);
	Fade("絵色200", 0,500,null,true);


	Move("絵背景50", 0, -512, -288, null, true);


	MyTr_Count(500,235);

	CP_IHPChange(500,3,null,false);
	CP_SpeedChange(500,345,null,false);
	CP_AltChange(1000,0,null,false);


	OnSE("se戦闘_衝撃_衝突01",1000);

	Shake("絵背景50", 500, 20, 30, 0, 0, 500, null, false);
	Shake("@CP_Frame", 500, 10, 5, 0, 0, 500, null, false);

	CreateColorSPmul("絵色200", 16000, "RED");
	Fade("絵色200", 2000,0,null,false);
	Fade("絵色100", 1000,0,null,true);

	SetFwC("cg/fw/fw真改百足_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1000]
//【真改】
<voice name="真改" class="真改" src="voice/ma01/022vs0780b38">
《右上腕部に被撃。重度の損傷。
　これ以上の右腕への被撃は危険である》

//【真改】
<voice name="真改" class="真改" src="voice/ma01/022vs0790b38">
《高確率での機能停止を警告》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0800b57">
「ぐぅぅ……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1020]
　感覚が鈍く――
　つまりは思うように動かなくなってきた右腕を抱え、
やり場のない憤懣を唸る。

　なぜだ？
　なぜ打ち負ける!?

　今の一瞬。
　相互の太刀が接触して――切り結び……

　しかし即座に真改の太刀は弾かれ、
　村正の放った、<RUBY text="・">下</RUBY>へ潜り込みながらの一撃が上腕を
<RUBY text="したた">強</RUBY>かに打ち。

　村正の<RUBY text="・">上</RUBY>へ抜ける格好となったこちらの斬り下ろし
は、腰回りを覆う<RUBY text="ウイング">翼甲</RUBY>――<RUBY text="ほろ">母衣</RUBY>を掠めただけだった。
　おそらく、いや確実に無傷だろう。

　完全な敗北。
　
　なぜ、ここまで差が……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1030]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0810a00">
《何とも堅牢な甲鉄。大坂正宗の名に恥じぬ。
　惜しむらくは、<RUBY text="して">仕手</RUBY>に恵まれなかった事か》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0820b57">
《村正ァ……！》

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0830a00">
《宝の持ち腐れも極まる。
　高度の劣勢も理解できない輩がそのような
業物を手にするなど》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1060]
　……！
　高度の劣勢？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＥＶ：図解・双輪懸


	CreateTextureEX("絵EV100", 19000, Center, Middle, "cg/ev/ev107_双輪懸図解_a.jpg");
	CreateTextureEX("絵EV200", 19000, Center, Middle, "cg/ev/ev107_双輪懸図解_b.jpg");
	CreateTextureEX("絵EV300", 19000, Center, Middle, "cg/ev/ev107_双輪懸図解_c.jpg");
	CreateTextureEX("絵EV400", 19000, Center, Middle, "cg/ev/ev107_双輪懸図解_d.jpg");
	Fade("絵EV100", 200, 1000, null, true);


	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1070]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0840a00">
《聞け、半端者。
　武者の<RUBY text="ブルファイト">格闘戦</RUBY>はより高い位置を奪い合う所
から始まる。高さとは即ち<RUBY text="エネルギー">力量</RUBY>であるからだ。
　意味がわかるか》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("絵EV200", 300, 1000, null, true);

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1080]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0850a00">
《敵より高位を占めた側は駆け下って攻撃を
加える事ができる。
　速度を得、速度が転化した威力を得られる》

//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0860a00">
《優位に立てるのは当然だろう》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0870b57">
《！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("絵EV300", 300, 1000, null, true);

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1100]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0880a00">
《対し、低位の側は重力に刃向かって速度を
減じられながら駆け上がらねばならない。
　著しい不利を背負う事になる》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("絵EV400", 300, 1000, null, true);
	Delete("絵EV100");
	Delete("絵EV200");
	Delete("絵EV300");

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1110]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0890a00">
《この状況は二合目以降も変わらない。
　高位の側は獲得した速力を生かして素早く
上昇する事ができ、一方低位側は速度を回復
するために降下しなくてはならないからだ》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0900b57">
《……》

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0910a00">
《故に、高位を奪われた者は一合打ち合った
後、迅速な旋回を行い、敵が態勢を整える前
に突撃することで逆転を図る。もしくは一度
戦域を離脱し、勝負を仕切り直す》

//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0920a00">
《旋回性を誇る劔冑なら前者、加速に優れる
なら後者だ。剣技で打開を図る猛者もいる。
　そのどれもせず、相手の土俵で戦い続ける
などは愚の骨頂》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵EV400",500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1150]
　感情の色彩を込めないまま、侮蔑の言葉を吐く村正。
　何かを言い返したいが、返す言葉が何もない。

　素人豆知識程度の航空力学ならば記憶の中にあった。
　引き出してみれば、その内容は敵の発言を裏付ける。

　――飛行体の持つ<RUBY text="エネルギー">力量</RUBY>は位置力量と運動力量である。
　位置力量は体重と高さ、運動力量は体重と速度とで
決する。そのため、高空を高速で飛ぶ飛行体ほど多く
の力量を持つ……云々。

　つまり、敵よりも低位置にありながら互角だと思い
込んでいた自分が馬鹿だということだ。
　それでも沈黙には耐えられなかった。救いを求める
ような心境で、真改に問うてみる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1160]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0930b57">
「真改……奴の言葉は正しいか？」

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/022vs0940b38">
《<RUBY text="フタワガカリ">武者戦</RUBY>の基本である》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0950b57">
「ならっ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1180]
　さっさと教えろ！
　
　……全てを声にしなかったのは、無駄を知っていた
からだった。

　劔冑の意識は能力の制御に特化された<RUBY text="もの">ＯＳ</RUBY>。
　数日前、学生らにそう語ったのは他ならぬ自分では
なかったか。そんなものに人間らしい気配りなど期待
する方が間違っていた。

　武者は劔冑を<RUBY text="・・・・・・・・">使わねばならない</RUBY>。
　劔冑に<RUBY text="・・・・">使われる</RUBY>のではなく。

　常識として、それは知っていた。
　だがその言葉の重さは知らなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1190]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0960a00">
《鈴川令法。貴様は扱いきれない玩具を与え
られた子供だ。その子供に命を奪われた人々
には到底及ばないが、貴様の姿も哀れを催す。
　もう一つ教えておこう》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs0970b57">
《っ……》

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0980a00">
《貴様はどうして武者が<RUBY text="ツキウシ">正面激突</RUBY>を行うか、
知っているか？　武人の面目もあるが、それ
だけではない。
　劔冑の甲鉄を斬り破るためだ》

//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs0990a00">
《逃げてゆく武者を後ろから追って斬っても、
砲撃すら弾く甲鉄を穿つ事は難しい。
　しかし高速で正面から突進し合えば甲鉄を
破る威力を得られる》

//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs1000a00">
《この点に考えが至れば……
　<RUBY text="・・・・・・・・・・・・・・・・">相手の上方へ抜けながら斬り下ろす</RUBY>事の愚
もわかるな？》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs1010b57">
《！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1250]
　忌々しくも、その言葉には閃くものがあった。
　先の打ち合い。同じように太刀を構えながら、自分
は上へ抜け、奴は下へ潜り、斬撃しつつ交差した……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＥＶ：図解・太刀打
	CreateTextureEX("絵EV100", 19000, Center, Middle, "cg/ev/ev108_太刀打図解_a.jpg");
	CreateTextureEX("絵EV200", 19000, Center, Middle, "cg/ev/ev108_太刀打図解_b.jpg");
	Fade("絵EV100", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1251]
　<RUBY text="おのれ">真改</RUBY>の太刀は、逃げる<RUBY text="てき">村正</RUBY>を<RUBY text="・・">追い</RUBY>。
　村正の太刀は、進む真改を<RUBY text="・・・">迎える</RUBY>格好だった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("絵EV200", 500, 1000, null, true);
	Delete("絵EV100");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1260]
　打撃力に大差がついたのは当然……！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	FadeDelete("絵EV200", 300, false);

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1270]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs1020a00">
《理解したか。
　ならば、参る》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1280]
　<RUBY text="ナイフ">刀子</RUBY>を投げ込むにも似る一声。
　そして肌に迫る<RUBY text="プレッシャー">威圧感</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw真改百足_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1290]
//【真改】
<voice name="真改" class="真改" src="voice/ma01/022vs1030b38">
《敵、<RUBY text="とらのかみ">６０度上方</RUBY>より来襲》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs1040b57">
「くぅ……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	OnSE("se戦闘_動作_空上昇01",1000);


	CP_RollBarMove("@絵背景50",700,-45,Dxl1,false);

	Wait(200);

	CP_AltChange(400,15,null,false);
	Move("絵背景50", 2000, @-125, @+225, Dxl1, false);
	CP_HighChange(500,520,null,false);
	CP_AziChange(500,-60,Axl1,false);
	CP_AltChange(500,0,Axl1,false);
	Wait(500);
	CP_SpeedChange(600,310,null,false);
	CP_HighChange(600,550,null,false);
	CP_RollBarMove("@絵背景50",600,0,Dxl1,true);

	CreateTextureEX("絵村正", 10000, Center, Middle, "cg/st/3d村正標準_騎突_戦闘.png");
	Zoom("絵村正", 0, 10, 10, null, true);
	CP_LockOnMove("@絵村正",0,@+500,@-300,null,true);
	Request("絵村正", Smoothing);
	CP_LockOnMove("@絵村正",1000,@-400,@+100,null,false);

	Fade("絵村正", 200, 1000, null, false);
	Wait(100);
	CP_LockOnFade(100,"off",true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1310]
　出遅れた。
　舌で上顎を押しつつ急旋回。

　伸びない速度計と対照的に勢威溢れる敵影を交互に
睨みつつ、他にできることはなくただ突進する。
　このままでは二の舞、三の舞だ。

　敵の太刀構は変わらず、右肩上への担ぎ形。
　こちらも同様。
　
　高度差の分だけこちらが不利……だが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1320]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs1050b57">
（奴の下へ潜り込めば……！）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆カットイン：真改上段

	OnSE("se戦闘_動作_空突進01",1000);

	CP_HighChange(2000,1564,null,false);
	CP_SpeedChange(2000,512,null,false);
	CP_AltChange(2500,45,Axl1,false);
	Zoom("絵村正", 2000, 500, 500, Axl1, false);
	CP_LockOnMove("@絵村正",1200,@+10, @+250, Dxl1, true);
	CP_SpeedChange(2000,491,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1330]
　接近。交接。
　こちらの下を奪おうとする村正を躱し――その下へ！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_動作_空突進02",1000);
//◆接近。ピッチダウン。敵影が上へ
	CP_AltChange(2500,32,Axl1,false);
	Zoom("絵村正", 2000, 750, 750, Axl1, false);
	CP_LockOnChange(500,false);
	Move("絵背景50", 700, @-110, @-200, Dxl1, false);
	CP_LockOnMove("@絵村正",600,@-110, @-300, Dxl1, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1340]
　――取った！

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1350]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs1060a00">
《<RUBY text="よしのおんりゅうかっせんれいほう">吉野御流合戦礼法</RUBY>が一芸。
〝<RUBY text="コロバシ">転</RUBY>〟にて》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色100", 21000, "Black");
	CreateWindow("CutIn", 150, 0, 0, 1024, 576, false);
	SetAlias("CutIn","CutIn");

//◆ＣＩ：村正上段→下段→下段斬撃
//◆太刀を弾いて切り込む。キン、ガキーン。振動

	CreateTextureEX("CutIn/絵back", 21001, Center, Middle, "cg/bg/bg001_空a_02.jpg");
	CreateTextureEX("CutIn/絵Mura0", 21001, Center, -300, "cg/st/3d村正標準_騎航_戦闘a.png");
	CreateTextureEX("CutIn/絵Mura1", 21001, Center, -300, "cg/st/3d村正標準_騎航_戦闘b.png");

	SL_up2(21002, @0, @0,1000);

	Move("CutIn/絵Mura0", 0, @+50, @0, null, true);

	Fade("絵色100", 100, 1000, null, true);
	Zoom("絵村正", 0, 100, 100, null, false);
	CP_LockOnMove("@絵村正",0,@0,@-50,null,true);

	Move("CutIn/絵Mura0", 200, @-50, @+10, Dxl1, false);
	Fade("CutIn/絵back", 0, 1000, null, false);
	Fade("CutIn/絵Mura0", 0, 1000, null, false);
	DrawTransition("CutIn/*", 200, 0, 1000, 100, null, "cg/data/slide_01_00_0.png", true);
	OnSE("se戦闘_動作_刀構え01",1000);
	Fade("CutIn/絵Mura1", 300, 1000, Dxl1, false);
	Fade("CutIn/絵Mura0", 300, 0, Axl1, true);

	Wait(500);

	Move("CutIn/絵Mura1", 200, @-500, @+500, Dxl1, false);
	DrawTransition("CutIn/*", 200, 1000, 0, 100, null, "cg/data/slide_01_00_1.png", true);
	Delete("CutIn*");
	CP_LockOnChange(0,true);
	SL_upfade2(10);

	CreateColorEX("フラッシュ白", 22000, "WHITE");
	OnSE("se戦闘_攻撃_刀衝突01",1000);
	Fade("フラッシュ白",100,1000,null,true);

	CreateTextureEX("絵背景100", 500, Center, -200, "cg/bg/bg201_旋回演出背景市街地_02.jpg");
	Fade("絵背景100", 0, 1000, null, true);
	Request("絵背景100", Smoothing);

	Delete("絵色100");
	Delete("絵村正");

	CP_AltChange(1000,0,null,false);

	Shake("@CP_Frame", 500, 0, 10, 0, 0, 500, Dxl1, false);

	Fade("フラッシュ白",200,0,null,true);
	Delete("フラッシュ白");

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1360]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs1070b57">
「おごっ!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1370]
　勝利の確信。
　それは芽生えた瞬間、物理的な力で粉々に打ち壊さ
れていた。

　今のは。
　切り結ぶ直前、奴が太刀を回し、下から――！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1380]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs1080a00">
《騎航しての戦闘では地上と違い足腰を使え
ない……が、それでも剣の技を工夫する余地
はある。
　力任せに振り下ろすだけが能ではない》

//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs1090a00">
《相手を故意に下へ抜けさせ、同時に剣形を
太刀打の基本である右上段から右脇下段へと
切り替えて迎え撃つ。
　ごく、初歩的な技だ》

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/022vs1100b38">
《左肩部に損傷。稼動には支障なし》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1390]
　く……！
　つまり今のは斬り込み方の点では互角だった――<k>と
なれば後は、突進力の差が勝負を決めるということか。

　その点の優劣ははっきりしている……！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1420]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs1110b57">
「糞ぉッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆降下→旋回→直進
//◆村正ＶＳ真改の専用カットインとかもあると便利かなー。

	OnSE("se戦闘_動作_空突進01",1000);

	Move("絵背景100", 4000, @0, -3344, Dxl1, false);
	Shake("絵背景100", 50000, 0, 1, 0, 0, 500, null, false);

	SetVertex("絵背景100",768,-3056);

	CP_AltChange(2100,-90,null,false);
	CP_SpeedChange(2100,400,Dxl1,false);
	CP_HighChange(2100,400,Dxl1,false);

	Wait(1300);

	Zoom("絵背景100", 2000, 2000, 2000, Axl1, false);

	CP_RollBarMove("@絵背景100",1500,180,Axl2,true);

	CreateColorSP("黒幕１", 20000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CP_LockOnDelete();

	Cockpit_AllFade0();

	Delete("絵背景100");
	CreateTextureEX("絵背景100", 500, Center, Middle, "cg/bg/resize/bg201_旋回演出背景市街地a_02.jpg");
	Fade("絵背景100", 0, 1000, null, true);

//嶋：「3d真改_騎航_通常.png」に変更
	CreateTextureEX("絵真改100", 1000, Center, Middle, "cg/st/3d真改_騎航_戦闘.png");
	CreateTextureEX("絵EF100", 1000, Center, Middle, "cg/ef/ef002_汎用移動.jpg");
	CreateTextureEX("絵EF200", 2000, Center, Middle, "cg/ef/ef040_汎用衝突.jpg");
	Zoom("絵EF100", 0, 2000, 2000, null, true);
	SetBlur("絵EF100", true, 3, 500, 50, false);
	Zoom("絵EF200", 0, 2500, 2500, null, true);
	SetBlur("絵EF200", true, 4, 500, 50, false);
	Fade("絵真改100", 0, 1000, null, true);
	Rotate("絵真改100", 0, @0, @0, @-45, null,true);
	Move("絵真改100", 0, @0, @-1000, null, true);

	Move("絵真改100", 700, @-300, @+2000, Dxl2, false);
	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	WaitAction("絵真改100",null);
	Rotate("絵真改100", 0, @0, @0, 0, null,true);
	Move("絵真改100", 0, @+1300, @0, Dxl1, true);
	Move("絵真改100", 700, @+1000, @-2000, Dxl1, false);
	Wait(500);
	OnSE("se戦闘_動作_空突進01",1000);
	Zoom("絵EF100", 300, 1000, 1000, Dxl1, false);
	Fade("絵EF100",300, 1000, null, true);

	Wait(100);

	OnSE("se戦闘_衝撃_衝突01",1000);
	Zoom("絵EF200", 600, 1000, 1000, Dxl1, false);
	Fade("絵EF200",600, 1000, null, true);

	CreateColorEX("フラッシュ白", 15000, "WHITE");

	Wait(200);

	Fade("フラッシュ白",100,1000,null,true);

	CP_RollBarMove2(0,0,null,true);
	CP_AltChange(0,0,null,true);
	Delete("絵EF100");
	Delete("絵EF200");

	CreateWindow("ウィンドウ上", 15000, 0, 0, 1024, 288, false);
	CreateWindow("ウィンドウ下", 15000, 0, 288, 1024, 576, false);
	SetAlias("ウィンドウ上","ウィンドウ上");
	SetAlias("ウィンドウ下","ウィンドウ下");

	CreateTextureEX("ウィンドウ上/絵背景01", 600, Center, Middle, "cg/bg/resize/bg001_空a_02.jpg");
	CreateTextureEX("ウィンドウ上/絵mura01", 600, Center, -400, "cg/st/3d村正標準_騎航_戦闘a.png");

	Move("ウィンドウ上/絵背景01", 0, @-288, @0, null, true);
	Move("ウィンドウ上/絵mura01", 0, @+500, @0, null, true);


	CreateTextureEX("ウィンドウ下/絵背景01", 600, Center, -412, "cg/bg/resize/bg002_空a_02.jpg");
	CreateTextureEX("ウィンドウ下/絵shin01", 600, Center, -150, "cg/st/3d真改_騎航_戦闘.png");

	Move("ウィンドウ下/絵背景01", 0, @+288, @0, null, true);
	Move("ウィンドウ下/絵shin01", 0, @-500, @0, null, true);

	Fade("ウィンドウ上/絵背景01", 0, 1000, null, true);
	Fade("ウィンドウ下/絵背景01", 0, 1000, null, true);

	Move("ウィンドウ上/絵背景01", 1000, @+288, @0, Dxl1, false);
	Move("ウィンドウ下/絵背景01", 1000, @-288, @0, Dxl1, false);

	Fade("ウィンドウ下/絵shin01", 1000, 1000, Dxl1, false);
	Fade("ウィンドウ上/絵mura01", 1000, 1000, Dxl1, false);

	Move("ウィンドウ上/絵mura01", 1200, @-500, @0, Dxl1, false);
	Move("ウィンドウ下/絵shin01", 1200, @+500, @0, Dxl1, false);

	Fade("フラッシュ白",100,0,null,true);
	Delete("フラッシュ白");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1430]
　旋回、降下、旋回、突撃突撃突撃――――

　お前などに負けるものか。
　お前などに……鼻紙一枚ほどにも役に立たぬ警察の
奴輩などに！

　この私がッ！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateColorSP("黒幕１", 20000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("ウィンドウ上");
	Delete("ウィンドウ下");

	Delete("ウィンドウ上/*");
	Delete("ウィンドウ下/*");

	Cockpit_AllFade2();
	CP_IHPChange(500,4,null,false);
	CP_EnemyFade(0,650,400);

	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg002_空a_02.jpg");

	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1440]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs1120b57">
「殺す！　殺してやるっ！
　<RUBY text="くる・くるわ">来繰環</RUBY>！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆血がばしゃー
//◆ＣＩ：真改上段
	CreateTextureEX("絵EF100", 16000, Center, Middle, "cg/ef/ef007_汎用血しぶき.jpg");
	Rotate("絵EF100", 0, @0, @180, @0, null,true);
	Zoom("絵EF100", 0, 2000, 2000, null, true);
	SetBlur("絵EF100", true, 3, 500, 50, false);

	OnSE("se人体_血_血しぶき01",1000);

	Zoom("絵EF100", 300, 1000, 1000, Dxl1, false);
	Fade("絵EF100", 300, 1000, Dxl1, true);
	Cockpit_AllFade0();

	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/bg/bg002_空a_02.jpg");
	Fade("絵背景100", 0, 1000, null, true);
	CreateTextureEX("絵shin", 1500, Center, Middle, "cg/st/3d真改_騎航_戦闘.png");
	Fade("絵shin", 0, 1000, null, true);
	Move("絵shin", 0, @-1000, @+700, null, true);

	CreateColorEX("フラッシュ", 20000, #990000);
	Fade("フラッシュ",200,1000,null,true);


	Delete("絵EF100");

	OnSE("se戦闘_動作_空突進02",1000);

	Move("絵shin", 600, @+1000, @-700, Dxl1, false);
	Shake_Loop("絵shin","Shake01");

	DrawTransition("フラッシュ", 800, 1000, 0, 100, null, "cg/data/zoom_01_00_1.png", true);

	Delete("フラッシュ");


	SetFwC("cg/fw/fw真改_通常.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1450]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs1130b57">
「うおおおおおッ!!」

{	Move("絵shin", 300, @+1000, @-600, Dxl1, false);
	Fade("絵shin", 300, 0, null, false);
	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs1140a00">
《――同じ手を二度は食えぬ。
　俺はそこまで付き合いの良い人間ではない》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆敵影が斜め下に移動
	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("Shake01");

	Cockpit_AllFade2();
	CP_LockOnFade(0,"on",true);
	Delete("絵shin");
	Delete("絵背景100");

	CreateTextureEX("絵村正", 10000, Center, Middle, "cg/st/3d村正標準_騎突_戦闘.png");
	Request("絵村正", Smoothing);
	CP_LockOnMove("@絵村正",0,@0,@+300,null,true);


	OnSE("se戦闘_動作_空突進01",1000);
	Fade("絵村正", 200, 1000, null, false);
	Zoom("@絵村正", 300, 1500, 1500, null, false);
	CP_AltChange(0,32,null,false);

	CP_HighChangeA();
	CP_SpeedChangeA();



	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	Zoom("@絵村正", 300, 2000, 2000, null, false);
	CP_LockOnMove("@絵村正",300,@-500,@+1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1460]
　――躱された!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＣＩ：村正上段→村正上段斬撃
	CreateColorEXadd("フラッシュ白", 20000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);
	Delete("絵村正");

	OnSE("se戦闘_破壊_鎧01",1000);
	Shake("@CP_Frame", 500, 0, 10, 0, 0, 500, null, false);
	Shake("絵背景50", 1000, 5, 5, 0, 0, 500, null, false);
	MyLife_Count(500,564);
	CP_AltChange(1000,0,null,false);
	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");

	SetFwC("cg/fw/fw真改百足_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1470]
//【真改】
<voice name="真改" class="真改" src="voice/ma01/022vs1150b38">
《胸部甲鉄に被撃》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs1160b57">
「っ……！
　真改！　旋回して奴の頭を押さえることは
できないのか!?」

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/022vs1170b38">
《現状では不可能である。
　真改の旋回性は村正に比肩し得ると分析さ
れるも、現在は蓄積した損傷のため性能発揮
に支障が生じている》

//【真改】
<voice name="真改" class="真改" src="voice/ma01/022vs1180b38">
《故に不可能》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs1190b57">
「く……あああぁぁっ!!」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs1200a00">
《悶えるか、鈴川令法。
　だが甘受せよ》

//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs1210a00">
《その苦しみはこれまで貴様が他者に与えて
きたものだ。
　同じ苦しみを味わうことは貴様の責務》

//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs1220a00">
《刃の報いは己に返る。
　人の命を奪う者は己の命も奪われる。
　悪に報いは必ずあるのだ……<RUBY text="・・・・・">悪に報いは</RUBY>
<RUBY text="・・・・">あるのだ</RUBY>!!》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs1230b57">
《黙れェェェッ！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1530]
　まるで自分自身に言い聞かせているかのように念を
押す、その煩わしい声を振り払う。
　優位に<RUBY text="おご">驕</RUBY>り、<RUBY text="かさ">嵩</RUBY>に懸かっての説教など聞く気はない。

　悪の報いなどあるものか。善に報いがないように！
　そんな世の中で信じられるのは美しいものだけだ。
美しさだけは裏切らない。永遠ではないという一点を
除いて！

　滅びることは仕方ない。
　諦めよう。如何にしてもそればかりはどうにもなら
ない、宿命なのだと思い定めて。
　その呪いを受け入れよう！

　だが腐ることには耐えられない。
　美しいものが醜い何かに変わり果てることだけは！

　それだけは許さない。決して。
　それを認めてしまうなら、美しさには価値がない。
　
　認められようか！

　だから私が破壊するのだ！
　破壊しなくてはならないのだ！
　美しいものを美しいうちに！

　それは――悪か!?

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1540]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/022vs1240a00">
《鈴川令法……<RUBY text="・・・・">貴様の番</RUBY>だ。
　苦しみ悶え、怒り嘆きながら、凶刃の下に
命を散らせ》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/022vs1250b57">
《嫌だぁぁァァァァァッ!!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1560]
　違うっ！
　悪ではない悪ではない断じて悪などではない！

　私は正しい！　間違ってなどいない！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//	SetVolume("@mbgm*", 1000, 0, null);



//◆ブラックアウト


}

..//ジャンプ指定
//次ファイル　"ma01_023vs.nss"