//<continuation number="120">

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

scene mc01_023vs.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/mc01_023vs.nss","MourouAction",true);
	Conquest("nss/mc01_023vs.nss","MourouSET",true);
	

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

	CP_AllDelete();

	$GameName = "mc01_024vs.nss";

}

scene mc01_023vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_022vsa.nss"
//前ファイル　"mc01_022vsb.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}
	//$First_Battle_Damage = 1;

//◆合流
	SoundPlay("@mbgm08",0,1000,true);

	PrintBG("上背景", 30000);
	CreateTextureEX("絵プロ朦朧上", 110, Center, Middle, "cg/bg/bg002_空a_01.jpg");
	CreateTextureSP("絵空背景", 100, Center, Middle, "cg/bg/bg002_空a_01.jpg");
	CreateEffect("絵効果白黒", 18000, 0, 0, 1024, 576, "Monochrome");
	SetAlias("絵効果白黒","絵効果白黒");
	Fade("絵効果白黒", 0, 0, null, true);
	Delete("上背景");

	CreateSE("SEL01","se人体_体_心臓の音01_L");
	MusicStart("SEL01",3000,1000,0,1000,null,true);

	$x=0;
	$y=0;
	$z=30;
	MourouAction();
	Zoom("絵プロ朦朧上", 0, 1100, 1100, null, true);
	Fade("絵プロ朦朧上",3000,500,null,false);

	Fade("絵効果白黒", 1000, 750, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　皮膚の毛穴から活力が抜け出てゆくような感覚。
　心臓を絞られているようでもある脱力感。

　……まずい。
　この感覚に満たされてしまえば、きっと終わりだ。

　何処までも沈んでゆき、二度と戻らぬに違いない。
　
{	SetVolume("SEL*", 1000, 500, null);
	Fade("絵効果白黒", 1000, 300, null, false);}
　……まだだ。

{	SetVolume("SEL*", 1000, 0, null);
	Fade("絵効果白黒", 1000, 0, null, false);
	Fade("絵プロ朦朧上", 1000, 0, null, false);}
　まだ……<RUBY text="・・">それ</RUBY>は許されない！
　俺は役目を果たし終えず、罰せられてもいないのだ！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆体勢立て直そうと頑張る
	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Delete("絵効果白黒");
	Delete("絵プロ*");
	Delete("プロセス*");
	Delete("絵空背景");

//あきゅん「ＣＰ：必須定義まとめ」
	Cockpit_AllFade2();

//あきゅん「ＣＰ：ダメージフラグでライフ調整」
	$合体戦ライフ基本値 = 612;
	if($First_Battle_Damage >= 1){
		$合体戦ライフ調整値 = $合体戦ライフ基本値 - ($First_Battle_Damage*218);
	}else{
		$合体戦ライフ調整値 = $合体戦ライフ基本値 ;
	}

	MyLife_Count(0,$合体戦ライフ調整値);

.//ＣＰ演出＜生命値調整＞
//あきゅん「ＣＰ：ダメージフラグで生命値調整」
	$合体戦生命基本値 = 9;
	if($First_Battle_Damage >= 1){
		$合体戦生命調整値 = $合体戦生命基本値 - ($First_Battle_Damage*3);
	}else{
		$合体戦生命調整値 = $合体戦生命基本値 ;
	}

	MyTr_Count(0,341);
	CP_SpeedChange2(0,336,null,false);

	CP_PowerChange(0,520,null,false);

	CP_HighChange2(0,1174,null,false);
	CP_AziChange(0,18,null,false);
	CP_AltChange(0,0,null,false);

	CP_RollBarMove2(0,0,null,true);

	FrameShake();

//◆頑張って反転
	CreateTextureEX("絵演旋回背景", 110, Center, InBottom, "cg/bg/resize/bg204_横旋回背景_01tl.jpg");
	SetVertex("絵演旋回背景", center, bottom);
	//SetBlur("絵演旋回背景", true, 2, 500, 30, false);

	$背景倍角変数 = 1.00;
	$背景倍角組込変数 = $背景倍角変数 * 1000;
	$横移動計算基準値 = ImageVertical("絵演旋回背景");
	$背景座標位置 = $横移動計算基準値*($背景倍角変数 - 1) - 100;

	Zoom("絵演旋回背景", 0, @0, $背景倍角組込変数, null, true);

//あきゅん「ＣＰ：右横旋回値調整」
	$横旋回縦位置 = 432;
	$横旋回縦位置調整 = $横旋回縦位置*(-1);
	$横旋回縦位置中心値 = $横旋回縦位置+288;
	CreateTextureSP("絵演空旋回専用", 100, Center, $横旋回縦位置調整, "cg/bg/bg201_旋回演出背景市街地_01.jpg");
	SetVertex("絵演空旋回専用", center, $横旋回縦位置中心値);

	$横旋回後縦位置 = 720;
	$横旋回後縦位置調整 = $横旋回後縦位置*(-1);
	$横旋回後縦位置中心値 = $横旋回後縦位置+288;
	CreateTextureSP("絵演空旋回後専用", 90, Center, $横旋回後縦位置調整, "cg/bg/bg202_旋回演出背景山_01.jpg");
	SetVertex("絵演空旋回後専用", center, $横旋回後縦位置中心値);
	Rotate("絵演空旋回後専用", 0, @0, @0, @-90, null,true);
	Move("絵演空旋回後専用", 0, @0, @-500, null, false);

	CreateSE("SERoll01","se戦闘_動作_空突進05");
	CreateSE("SERoll01a","se戦闘_動作_空突進08");
	CreateSE("SERoll01b","se戦闘_動作_空突進08");
	MusicStart("SERoll01a",0,1000,0,750,null,false);
	DrawDelete("絵色黒", 150, 100, "zoom_01_00_1", false);
	Zoom("絵演空旋回専用", 600, 1200, 1200, null, false);
	CP_RollBarMove("@絵演空旋回専用", 1600, -90, AxlDxl, true);

	MusicStart("SERoll01",1600,750,0,1000,null,false);
	Zoom("絵演空旋回専用", 1000, 1500, 1500, null, false);
	Fade("絵演旋回背景", 1000, 1000, null, false);
	Move("絵演空旋回専用", 1000, @0, @300, null, false);

//あきゅん「ＣＰ：横旋回、225度くらい移動させるべし」
	CP_AziChange(3000,-207,AxlDxl,false);
	Move("絵演旋回背景", 3000, @0, $背景座標位置, AxlDxl, false);

	Wait(1400);
	Delete("絵演空旋回専用");

	SetVolume("SERoll01", 3000, 0, null);
	MusicStart("SERoll01b",0,1000,0,1000,null,false);

	Fade("絵演旋回背景", 1600, 0, null, false);
	Move("絵演空旋回後専用", 1600, @0, @500, Dxl3, false);

	Wait(600);

	CP_RollBarMove("@絵演空旋回後専用", 1500, 0, Dxl1, true);

	CreateSE("SEL01a","se戦闘_動作_空走行01_L");
	CreateSE("SEL01b","se戦闘_動作_空走行02_L");
	MusicStart("SEL01a",2000,750,0,1000,null,true);
	MusicStart("SEL01b",2000,750,0,1500,null,true);

	CP_SpeedChange(0,336,null,false);
	CP_HighChange(0,1174,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　折れかける意識に<RUBY text="つぎき">接木</RUBY>をして、現実世界に踏み留ま
らせる。
　それだけの事に残る<RUBY text="エネルギー">活力</RUBY>のあらかたを費やしたが、
泣き言を並べるにはまだ早かった。

　敵はすぐにも襲い来る！
　反撃は望むべくもなくとも、せめて防ぎ切る体勢は
整えなくては……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Delete("絵演旋回背景*");

//◆敵騎を探す
	Move("絵演空旋回後専用", 300, @0, -1008, AxlDxl, true);

	WaitKey(200);

	Move("絵演空旋回後専用", 300, -106, @0, AxlDxl, true);

	WaitKey(200);

	Move("絵演空旋回後専用", 300, -406, @0, AxlDxl, true);

	WaitKey(200);

	Move("絵演空旋回後専用", 300, -256, @0, AxlDxl, true);

	WaitKey(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　………………？

　いない？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/023vs0010a00">
（村正。
　……敵は何処だ）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/023vs0020a01">
《………………》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/023vs0030a01">
《あ……
　あそこ》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SEL*", 2000, 0, null);

//◆あそこへ向く。下の方
	CreateColorSP("絵色黒", 20000, "#000000");
	Move("絵演空旋回後専用", 300, @0, @-288, AxlDxl, false);
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	Cockpit_AllFade0();

	Delete("絵演空旋回後専用");
	CreateTextureSP("絵演背景", 100, Center, -1250, "cg/bg/bg201_旋回演出背景市街地_01.jpg");

	CreateSE("SE05","se戦闘_動作_空急降下01");
	CreateTextureSP("絵演合体", 1000, Center, Middle, "cg/st/3dガッタイダー_騎突_戦闘a.png");
	Zoom("絵演合体", 0, 20, 20, null, true);

	Zoom("絵演合体", 100000, 0, 0, Dxl2, false);
	Move("絵演合体", 100000, @0, @288, Dxl2, false);

	Move("絵演背景", 650, @0, @-288, AxlDxl, false);
	DrawDelete("絵色黒", 150, 100, "slide_02_01_0", true);

	SetVolume("@mbgm*", 3000, 0, null);

//◆降下してゆくガッタイダー
	MusicStart("SE05",0,750,0,500,null,false);
	SetVolume("SE05", 10000, 0, null);

	SetFwR("cg/fw/fwガッタイダー_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc01/023vs0040b33">
《ぎ――――ぃ》

//【小夏】
<voice name="小夏" class="小夏" src="voice/mc01/023vs0050b33">
《きハッ、ア――アアア…………》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　届く<RUBY text="メタルエコー">装甲通信</RUBY>だけは、なお俺への闘志を唄っていた。
　凝縮された殺戮欲の渦は、言語の形を喪失していて
さえ誤解の余地がない。

　しかし、その騎体は落ちてゆく。
　俺を睨み、手を伸ばし、足掻くような仕草すら見せ
ながら――全ては虚しく。重力に引き下ろされてゆく。

　悪魔の姿の竜騎兵に、目立った損傷はない。
　<RUBY text="ウイング">翼甲</RUBY>も<RUBY text="バレル">気筒</RUBY>も無事だ。

　なのに……何故？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/023vs0060a01">
《やっぱり薬か何かを使っていたんでしょう
ね》


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/023vs0070a00">
（村正？）


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/023vs0080a01">
《熱量が急激に低下している。
　単に消耗したのとは違う。無理矢理に引き
上げていたものを<RUBY text="・・・・・・">取り返された</RUBY>って感じ》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/023vs0090a01">
《……自滅したのよ。
　要するに》


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/023vs0100a00">
（…………）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　小さく、遠くなる敵影を見送る。
　<RUBY text="・・">墜落</RUBY>ではなく、辛うじて<RUBY text="・・">滑空</RUBY>だが――かなりの速度
だ。あのまま着陸すれば相当な被害を<RUBY text="こうむ">蒙</RUBY>るだろう。

　分厚い甲鉄に守られ、死ぬ事はないとしても……
　重傷は避けられまい。

　…………自滅の結末。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/023vs0110a00">
（中にいたのはどんな人間だったのか……）


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/023vs0120a01">
《さあ……ねぇ》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆方向転換
	CreateColorSP("絵色黒", 20000, "#000000");
	Move("絵演背景", 300, @0, @-288, AxlDxl, false);
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Delete("絵演*");
	CreateTextureSP("絵演背景", 100, Center, InBottom, "cg/bg/resize/bg002_空a_01.jpg");

	Move("絵演背景", 650, @0, @288, AxlDxl, false);
	DrawDelete("絵色黒", 150, 100, "slide_02_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　心中に消化不良を残しつつ、俺は身を翻した。
　とにかく――障害は除かれたのだ。

　建朝寺へ急ごう。
　思わぬ異変に時間を蕩尽してしまった。香奈枝嬢の
電話から、既にどれだけ経ったか。

　何事が起きているにせよ、手遅れでなければ良いの
だが……。
　親王と署長が……無事であれば……。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆危なっかしく飛んでく
	CreateSE("SEL01a","se戦闘_動作_空走行01_L");
	CreateSE("SEL01b","se戦闘_動作_空走行02_L");
	MusicStart("SEL01a",2000,750,0,1000,null,true);
	MusicStart("SEL01b",2000,750,0,1500,null,true);

	CreateColorEX("絵色黒", 20000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);

	WaitKey(1000);

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mc01_024vs.nss"

.//プロセス用======================================================

..//心臓の鼓動
function MourouAction()
{
	CreateProcess("プロセス朦朧", 5000, 0, 0, "MourouSET");
	SetAlias("プロセス朦朧","プロセス朦朧");
	Request("プロセス朦朧", Start);
	Request("プロセス朦朧", Disused);
}

function MourouSET()
{
	begin:
	while(1)
	{
	$X1 = $x;
	$X11 = ($X1 / 9) * 1 + Random($z);
	$X12 = ($X1 / 9) * 2 + Random($z);
	$X13 = ($X1 / 9) * 3 + Random($z);
	$X14 = ($X1 / 9) * 4 - Random($z);
	$X15 = ($X1 / 9) * 5 + Random($z);
	$X16 = ($X1 / 9) * 6 + Random($z);
	$X17 = ($X1 / 9) * 7 - Random($z);
	$X18 = ($X1 / 9) * 8 + Random($z);

	$Y1 = $y;
	$Y11 = ($Y1 / 9) * 1 - Random($z);
	$Y12 = ($Y1 / 9) * 2 - Random($z);
	$Y13 = ($Y1 / 9) * 3 - Random($z);
	$Y14 = ($Y1 / 9) * 4 + Random($z);
	$Y15 = ($Y1 / 9) * 5 + Random($z);
	$Y16 = ($Y1 / 9) * 6 - Random($z);
	$Y17 = ($Y1 / 9) * 7 + Random($z);
	$Y18 = ($Y1 / 9) * 8 + Random($z);

	BezierMove("@絵プロ朦朧上", 5000, (@0,@0){@$X11,@$Y11}{@$X12,@$Y12}(@$X13,@$Y13){@$X14,@$Y14}{@$X15,@$Y15}(@$X16,@$Y16){@$X17,@$Y17}{@$X18,@$Y18}(@$X1,@$Y1), null, true);
	}

}