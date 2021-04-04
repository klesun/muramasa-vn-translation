//<continuation number="570">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_017vs.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/mb04_017vs.nss","MASAMUNESHINOGI",true);
	
//コックピット用Ｓｅｔ
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
	#bg072_火災で倒壊した和風建築_03=true;
	#ev902_村正電磁抜刀レールガン_c=true;
	#ev902_村正電磁抜刀レールガン_d=true;
	#ev112_一条をお姫様だっこする村正=true;
	#ev115_一条の髪に触れる景明_a=true;
	#ev119_一条と香奈枝海水浴_b=true;
	#ev144_女官達の戯れを見据える一条_d=true;
	#bg201_旋回演出背景市街地_02=true;
	#ev919_正宗隠剣六本骨爪_a=true;
	#ev920_正宗割腹投擲腸管=true;
	#ev902_村正電磁抜刀レールガン_b=true;
	#ev902_村正電磁抜刀レールガン_a=true;
	#ev948_正宗突進汎用_a=true;

	//▼ルートフラグ、選択肢、次のGameName
	#aw_正宗=true;

	$PreGameName = $GameName;

	CP_AllDelete();

	$GameName = "mb04_018.nss";

}

scene mb04_017vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();




	PrintBG("上背景", 30000);
	CreateSE("SE10","se戦闘_動作_空突進05");
	MusicStart("SE10",1000,700,0,1200,null,true);
	CreateColorSP("黒幕１", 18000, "BLACK");
	SoundPlay("@mbgm11",0,1000,true);

	Delete("上背景");

	Wait(1000);

	OnSE("se戦闘_動作_空突進03",1000);

	SetFrequency("SE10", 1000, 1100, null);

	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/resize/bg002_空a_02.jpg");
	Request("絵背景50", Smoothing);
	CreateTextureEX("絵狸", 100, Center, middle, "cg/st/3d正宗_騎突_戦闘.png");
	Request("絵狸", Smoothing);
	Move("絵狸", 0, @0, @0, null, true);
	Zoom("絵狸", 0, 100, 100, null, true);
	SetBlur("絵狸", true, 2, 300, 50, false);



//おがみ：コックピット動作定義=======================
	Cockpit_AllFade2();
	CP_HighChangeA();
	CP_AltChangeA();
	FrameShake();

	CockPit_LockSet(@0,@0);
	CP_LockOnFade(0,"on",false);
	CP_EnemyFade(0,10,420,300);

	CP_AltChange(0,10,Dxl2,false);
	CP_HighChange(00,1150,null,false);
	CP_SpeedChange(0,355,null,false);
	CP_AziChange(1,189,Axl1,false);

	MyLife_Count(0,220);
	CP_IHPChange(0,3,null,false);
	CP_PowerChange(0,150,null,false);

	BGMoveAuto("@絵背景50",1);
//===================================================

	CP_LockOnMove("@絵狸",0,@0,@50,null,true);
	CP_RollBarMove("@絵背景50", 0, 0, null, true);
	Fade("@絵狸", 0, 1000, null, true);

	CP_LockOnMove("@絵狸",500,@0,@-60,Dxl2,false);
	FadeDelete("黒幕１", 500, true);


	SetFrequency("SE10", 1000, 1000, null);
	SetVolume("SE10", 2000, 300, null);




..//ジャンプ指定
//前ファイル　"mb04_016vs.nss"


//◆村正視点戻り

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/017vs0010a01">
《……！》

//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/017vs0020a01">
《御堂》


{	FwR("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/017vs0030a00">
「ぬ――」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	SetVolume("SE*", 1000, 0, null);


//◆正宗、なんかパワー上昇
	CreateTextureEX("絵狸２", 1600, center, middle, "cg/st/3d正宗_騎突_戦闘.png");
	Request("絵狸２", Smoothing);
	Zoom("絵狸２", 0, 100, 100, null, true);
	Move("絵狸２", 0, @0, @-10, null, true);
	SetBlur("絵狸２", true, 2, 800, 200, false);
	CreateTextureEXadd("絵背景100", 1500, Center, Middle, "cg/ef/ef039_時間移動.jpg");
	Zoom("絵背景100", 0, 1200, 1200, null, true);
	Move("絵背景100", 0, @0, @50, null, true);

	CreateColorEXadd("紅蓮", 1600, "#FFFFFF");

//	FadeF4("絵狸", 500, 600, 200000, 0, 0, null, false);
//	FadeF4("絵狸２", 500, 300, 100000, 0, 0, null, false);

	Fade("絵演窓上*", 500, 0, null, false);
	Fade("明度", 500, 0, null, true);
	Delete("絵演窓上*");
	Delete("明度");

	Wait(1000);

	CreateSE("SE01","se特殊_陰義_発動04");
	CreateSE("SE10","se特殊_陰義_正宗準備_L");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE10",2000,400,0,1000,null,true);

	Move("絵背景100", 100000, @0, @50, Dxl2, false);
	Zoom("絵背景100", 100000, 5000, 5000, Dxl2, false);
	Fade("紅蓮", 500, 200, null, false);
	Fade("絵背景100", 1000, 500, null, true);

	CreateColorEXmul("紅蓮オーラ", 2500, "#000000");
	DrawTransition("紅蓮オーラ", 0, 200, 200, 500, null, "cg/data/circle_01_00_1.png", true);

	CreateProcess("プロセス１", 12000, 0, 0, "MASAMUNESHINOGI");

$ループムーブナット名 = "@絵狸";
$ループムーブタイム = 25000;

$ループムーブナット名２ = "@絵狸２";
$ループムーブタイム２ = 20000;

	CreateProcess("プロセス２", 150, 0, 0, "FlyMoving");
	CreateProcess("プロセス３", 150, 0, 0, "FlyMoving2");
	SetAlias("プロセス２","プロセス２");
	SetAlias("プロセス３","プロセス３");

	Fade("絵狸２", 1000, 500, null, false);

	Request("プロセス１",Start);
	Request("プロセス２", Start);
	Request("プロセス３", Start);

	Fade("紅蓮オーラ", 1000, 500, null, true);
	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/017vs0040a00">
「……応じ技か」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/017vs0050a01">
《陰義ね》


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/017vs0060a00">
「例の鉄炮か？
　それとも、太刀に炎熱を通すあの術か」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/017vs0070a01">
《いえ。あれはどちらも陰義じゃない。
　ただの<RUBY text="からくり">機巧</RUBY>よ》


{	FwR("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/017vs0080a00">
「なに……？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　確かに、劒冑の最深奥たる陰義にしては奇妙奇天烈
の度が過ぎたが……。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/017vs0090a01">
《私達はまだ、<RUBY text="やつ">正宗</RUBY>の陰義は見ていない》


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/017vs0100a00">
「…………。
　いや」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("SE10", 1000, 1, null);


//◆回想・焼け落ちた普陀楽出城
	EfRecoIn1(18010,600);
	CreateTextureSP("絵回想", 18000, Center, Middle, "cg/ef/ef028_汎用火炎放射b.jpg");
	EfRecoIn2(300);
	SetFwR("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/017vs0110a00">
「おそらく、<RUBY text="・・">あれ</RUBY>だろう。
　こちらの間合に入る前に先制する肚と見た」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/017vs0120a01">
《――――》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　妥当と言わざるを得ない判断だ。
　先制攻撃は常に最も有効な防御でもある。

　増して、思い出すだに身震いが起こるあの焼却力。
　傷ついた村正を一撃で殲滅し、それで<RUBY text="・・・">終わり</RUBY>にして
しまう程度、容易い事に違いない。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	EfRecoOut1(300);
	Delete("絵回想*");
	EfRecoOut2(600,true);

	SetVolume("SE10", 1000, 500, null);

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/017vs0130a01">
《なら、御堂》


{	FwR("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/017vs0140a00">
「無論だ。
　――――<RUBY text="・・・・">やらせぬ</RUBY>」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	SetVolume("SE10", 1000, 0, null);

	CreateColorSP("黒幕１", 21000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);


	Cockpit_AllFade0();
	CP_LockOnDelete();
	Delete("@絵狸*");

	CreateTextureSP("絵EV100", 1999, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_c.jpg");
	CreateTextureSP("絵EV200", 2000, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_d.jpg");

	Shake_Loop("@絵EV200","shake01");

	RailgunFlash();

	CreateSE("SE01","se特殊_電撃_帯電01");
	MusicStart("SE01",300,500,0,1000,null,true);
	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);

	Fade("絵背景200", 500, 1000, null, true);

	Wait(500);

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/017vs0150a00">
「<RUBY text="エンチャント">磁波装鍍</RUBY>！」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/017vs0160a01">
《<RUBY text="ながれ">磁装</RUBY>・<RUBY text="まわる">正極</RUBY>》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆磁気加速
//◆一気に迫る
	OnSE("se特殊_電撃_放電02",1000);

	EffectZoomDXadd(10000, 500, 500, "BLUE", "cg/ev/ev902_村正電磁抜刀レールガン_d.jpg", true);

	CreateColorSP("黒幕１", 21000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Cockpit_AllFade2();
	Delete("絵EV*");

	CreateTextureSP("絵狸", 1590, center, middle, "cg/st/3d正宗_騎突_戦闘.png");
	Request("絵狸", Smoothing);
	Zoom("絵狸", 0, 200, 200, null, true);
	Move("絵狸", 0, @0, @0, null, true);
//	SetBlur("絵狸", true, 3, 800, 200, false);
	Shake("絵狸", 1000000, 1, 0, 0, 0, 1000, null, false);

	OnSE("se特殊_電撃_放電01",1000);
	FrameShake();

	Zoom("@絵背景50", 400, 1500, 1500, Axl3, false);
	Zoom("@絵狸", 400, 1000, 1000, Axl3, false);

	DrawDelete("黒幕１", 200, 100, "zoom_01_00_0", true);

	Wait(200);

	SetFwR("cg/fw/fw一条_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/017vs0170a02">
「なぁっ――」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/017vs0180b40">
《うぬ――!?》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆正宗パワー最高潮へ
	CreateSE("SE10","se特殊_陰義_正宗準備_L");
	OnSE("se戦闘_動作_空突進01",1000);

	MusicStart("SE10",0,1000,0,1000,null,true);
	Fade("紅蓮", 500, 700, null, true);
	EffectZoomadd(10000, 1000, 1000, "cg/ef/ef039_時間移動.jpg", true);

	SetVolume("SE10", 3000, 300, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　正宗の放つ<RUBY text="パワー">勢威</RUBY>が急速に高まった。
　極限まで達した事を直感で悟る。

　だが……遅し！
　俺は既に抜刀の間合に在る！

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/017vs0190a00">
「<RUBY text="エンチャント">磁波鍍装</RUBY>――<RUBY text="エンディング">蒐窮</RUBY>」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆帯電絶頂。準備完了
	CreateColorSP("黒幕１", 21000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);



	Request("プロセス*",Stop);
	Cockpit_AllFade0();
	Delete("@絵狸*");
	Delete("プロセス*");
	SetVolume("SE10", 1000, 700, null);

	CreateTextureSP("絵EV100", 1999, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_c.jpg");
	CreateTextureSP("絵EV200", 2000, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_d.jpg");

	Shake_Loop("@絵EV200","shake01");

	RailgunFlash();

	CreateSE("SE01","se特殊_電撃_帯電01");
	MusicStart("SE01",300,500,0,1000,null,true);
	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);

	Fade("絵背景200", 500, 1000, null, true);

	Wait(500);

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/017vs0200a00">
「吉野御流合戦礼法〝迅雷〟が崩し……」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/017vs0210a00">
「<RUBY text="レールガン">電磁抜刀</RUBY>――――〝<RUBY text="マガツ">禍</RUBY>〟」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆光が迸る
//◆一条との日々のカット挿入
	CreateColorEXadd("絵色100", 18000, "WHITE");
	CreateColorEXadd("絵色上敷き", 20000, "WHITE");
	CreateTextureEX("絵背景300", 17000, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_c.jpg");
	Request("絵背景300", AddRender);
	Zoom("絵背景300", 0, 1050, 1050, null, true);

	CreateSE("SE02","se特殊_電撃_放電01");
	CreateSE("SE02","se特殊_電撃_放電01");

	MusicStart("SE02",0,1000,0,1000,null,false);
	FadeF4("絵背景300", 1000, 1000, 3000, 0, 0, Axl3, false);
	Wait(2000);
	Fade("絵色100", 1000, 1000, null, true);
	Delete("絵背景200");
	Delete("絵背景300");

	SetVolume("SE*", 2000, 0, null);
	SetVolume("@mbgm*", 1000, 0, null);

	CreateTextureEX("絵背景400", 17500, Center, Middle, "cg/ev/ev112_一条をお姫様だっこする村正.jpg");
	CreateTextureEX("絵背景500", 17500, Center, Middle, "cg/ev/ev115_一条の髪に触れる景明_a.jpg");
	CreateTextureEX("絵背景600", 17500, Center, Middle, "cg/ev/ev119_一条と香奈枝海水浴_b.jpg");
	CreateTextureEX("絵背景700", 17500, Center, Middle, "cg/ev/ev144_女官達の戯れを見据える一条_d.jpg");

	Wait(150);

	Fade("絵背景400", 0, 1000, null, true);
	Fade("絵色100", 50, 200, null, true);

	Wait(100);
	Fade("絵色100", 100, 1000, null, true);
	Fade("絵背景500", 0, 1000, null, true);
	Fade("絵色100", 50, 200, null, true);

	Wait(100);
	Fade("絵色100", 100, 1000, null, true);
	Fade("絵背景600", 0, 1000, null, true);
	Fade("絵色100", 50, 200, null, true);

	Wait(100);
	Fade("絵色100", 100, 1000, null, true);
	Fade("絵背景700", 0, 1000, null, true);
	Fade("絵色100", 50, 200, null, true);

	Wait(500);

	Fade("絵色100", 1000, 1000, null, true);
	Delete("絵背景400");
	Delete("絵背景500");
	Delete("絵背景600");
	Delete("絵背景700");

	Wait(500);

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/017vs0220a00">
「――――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　俺は……

　斬る!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("絵色上敷き", 0, 1000, null, true);
	Fade("絵色上敷き", 500, 0, Axl3, false);

	MovieSESet(19000,"mv電磁抜刀_禍","se特殊_mv用_電磁抜刀_禍");
	MovieSEStart(0);

//◆ぞがーん
	PrintBG("上背景", 30000);

	CreateColorSP("絵色100", 1500, "WHITE");

	CreateSE("SE01","se戦闘_衝撃_鎧転倒02");
	CreateSE("SE02","se特殊_電撃_放電02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);

	FadeDelete("上背景", 0, false);

	Wait(1000);

	SetFwR("cg/fw/fw一条_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/017vs0230a02">
「あああああああああああああァッ!?」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/017vs0240b40">
《ぬうううううううううううううう!!》

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


//◆めきめき。なんか破壊されてく音
//◆閃光の中

	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/017vs0250a00">
「……ちぃッ！」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,150);//―――――――――――――――――――――――――――――

	CreateTextureSP("絵背景50", 100, Center, -800, "cg/bg/bg201_旋回演出背景市街地_02.jpg");
	Request("絵背景50", Smoothing);
	Shake("絵背景50", 10000000, 0, 1, 0, 0, 1000, null, false);

	CloudZoomSet(2500);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@0,@100,null,true);

	CreateSE("SE01","se戦闘_攻撃_鎧_吹っ飛ぶ02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Shake("絵背景50", 3000, 20, 10, 0, 0, 1000, Dxl2, false);
//	Zoom("絵背景50", 3000, 600, 600, Dxl2, false);
	Move("絵背景50", 50000, @0, -1300, null, false);
	FadeDelete("絵色100", 3000, false);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　駄目だ――出力が足りない！
　<RUBY text="・・・・・・">斬り切れない</RUBY>。

　並みの劒冑なら、これでも充分に両断できる筈なの
だが……。
　天下一名物たる甲鉄はやはり堅牢！

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/017vs0260a00">
（しかし勝負は決した……）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　この手応え――
　<RUBY text="つばさ">翼甲</RUBY>をほぼ完全に斬り割った！

　これではもはや騎航も叶わない。
　後は墜落してゆくのみ。

　致命打には至らなかったが、勝負はここで――

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/017vs0270a01">
《御堂、避けてっ！》


{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/017vs0280a00">
「!?」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureEXadd("絵背景400", 19500, Center, Middle, "cg/ef/ef043_爪攻撃.jpg");
	Rotate("絵背景400", 0, @0, @0, @180, null,true);

//◆なんか爪のよーなのが
//◆避け
	OnSE("se特殊_鎧_装着04",1000);
	OnSE("se戦闘_動作_空突進02",1000);

	Fade("絵背景400", 50, 1000, null, true);
	Zoom("絵背景400", 600, 1100, 1100, Dxl2, false);
	FadeDelete("絵背景400", 1500, false);
	EffectZoomDX(10000, 1500, 500, "#FFFFFF", "cg/ef/ef043_爪攻撃.jpg", true);

	SetFwR("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/017vs0290a00">
「……な――」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/017vs0300a00">
「何だ、あれは!?」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆正宗・隠剣六本骨爪
	CreateColorEX("絵色100", 18500, "WHITE");
	Fade("絵色100", 150, 1000, null, true);


	CreateTextureEX("絵背景100", 17500, Center, Middle, "cg/ev/ev919_正宗隠剣六本骨爪_a.jpg");
	CreateTextureEX("絵背景200", 17500, Center, Middle, "cg/ev/ev919_正宗隠剣六本骨爪_a.jpg");
	SetBlur("絵背景200", true, 3, 500, 200, false);
	Request("絵背景200", Smoothing);

	SoundPlay("@mbgm12",0,1000,true);
	OnSE("se戦闘_正宗_隠剣六本骨爪01",1000);

	Fade("絵背景100", 0, 1000, null, true);
	FadeDelete("絵色100", 300, false);
	Zoom("絵背景200", 500, 1500, 1500, Axl2, false);
	Fade("絵背景200", 200, 1000, null, true);
	FadeDelete("絵背景200", 500, true);

	Wait(1000);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　……正宗の胸が開いている。
　開いて、何かが突き出して……あれは――

　骨？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/017vs0310a01">
《ろ……肋骨!?》


{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/017vs0320a00">
「あれでこちらを<RUBY text="・・・・">噛もうと</RUBY>したのか」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	Move("絵背景50", 0, @0, -1300, null, true);

	Move("絵背景50", 30000, @0, -1600, null, false);
	FadeDelete("絵背景100", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　肋骨を伸張・硬化して牙に変える。
　
　……そんな攻撃方法があるとは、未だ嘗て想像した
事もなかった。

　する道理が無いが。

　己を巻き込んで爆裂する鉄炮と云い、自分の手をも
焼く炎熱の剣と云い……あれは本当に敵を倒す事しか
考えていない。
　恐ろしい劒冑だ。

　ともあれ最後の一手も外し。
　正宗は――落ちてゆく。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆落ちる正宗。ちょっと間を取って
//◆ガチャン。鍵を開けるような音？
	Wait(500);
	OnSE("se戦闘_動作_刀構え01",1000);
	OnSE("se戦闘_動作_刀構え03",1000);
	Wait(500);

	SetFwR("cg/fw/fw一条_憎悪a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/017vs0330a02">
《……逃がさねぇ……》


{	FwR("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/017vs0340a00">
「――ッ!?」


{	FwR("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/017vs0350a02">
《肋骨だけだと思うなよぉぉぉ!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆えーと内臓が飛ぶ。腸とか。
//◆えーと荒木又右衛門。ＯＶＡ魔界転生の。

//おがみ：素材定義
	CreateColorEX("絵色100", 18500, "WHITE");

	CreateTextureEX("絵背景100", 17500, Center, Middle, "cg/ev/ev920_正宗割腹投擲腸管.jpg");
	CreateTextureEX("絵背景200", 17500, Center, Middle, "cg/ev/ev920_正宗割腹投擲腸管.jpg");
	SetBlur("絵背景200", true, 3, 500, 200, false);
	Request("絵背景200", Smoothing);

	CreateTextureEX("絵背景400", 17000, Center, Middle, "cg/ev/ev920_正宗割腹投擲腸管.jpg");
	CreateTextureEX("絵背景500", 17000, Center, Middle, "cg/ev/ev920_正宗割腹投擲腸管.jpg");
	CreateColorEXadd("絵色100", 17500, "WHITE");
	Request("絵背景400", Smoothing);
	Request("絵背景500", Smoothing);
	Zoom("絵背景400", 0, 2000, 2000, null, true);
	Zoom("絵背景500", 0, 1200, 1200, null, true);
	SetBlur("絵背景500", true, 3, 200, 70, false);

	CreateSE("SE05","se人体_動作_跳躍03");
	CreateSE("SE06","se戦闘_攻撃_鎧かする01");
	CreateSE("SE07","se戦闘_攻撃_鎧かする01");
	CreateSE("SE08","se戦闘_攻撃_鎧_絞める01");


//おがみ：爆発動作
	MusicStart("SE05",200,1000,0,1000,null,false);

	Fade("絵色100", 0, 1000, null, true);
	Fade("絵色100", 150, 0, null, false);
	Fade("絵背景400", 0, 1000, null, true);
	DrawTransition("絵背景400", 100, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);
//	Wait(50);
	MusicStart("SE06",0,1000,0,1000,null,false);
	Move("絵背景400", 0, -312, -100, null, true);
	Wait(50);
	Move("絵背景400", 0, -350, -150, null, true);
	Wait(50);
	MusicStart("SE07",0,1000,0,1000,null,false);
	Move("絵背景400", 0, -510, -120, null, true);

	Fade("絵色100", 50, 1000, null, true);
	Delete("絵背景200");
	Delete("絵背景400");
	CP_AllDelete();

	MusicStart("SE08",0,1000,0,1000,null,false);
	OnSE("se戦闘_正宗_隠剣六本骨爪01",1000);
	Fade("絵背景500", 0, 1000, null, true);
	Zoom("絵背景500", 500, 1000, 1000, Dxl2, false);
	EffectZoomadd(18000, 6000, 4000, "cg/ev/ev920_正宗割腹投擲腸管.jpg", false);
	FadeDelete("絵色100", 2000, false);





	Fade("絵背景100", 0, 1000, null, true);
	FadeDelete("絵色100", 300, false);
	Fade("絵背景200", 200, 1000, null, false);
	Zoom("絵背景200", 500, 1500, 1500, Dxl2, true);
	Zoom("絵背景200", 500, 1000, 1000, Axl2, false);
	FadeDelete("絵背景200", 500, true);

	Wait(1000);

	Delete("絵背景100");
	CloudZoomDelete(0,true);


	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/017vs0360a01">
《ちょっ……》


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/017vs0370b40">
《正宗七機巧が一！
　割腹――投擲腸管!!》

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


//◆内臓に捕まる村正

	SetFwR("cg/fw/fw一条_憎悪b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/017vs0380a02">
「ぎぃぃうぅぁぁぁああああああああッ!!」


{	FwR("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/017vs0390a00">
「なっ……何だと――!?」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIFO(0);//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　<RUBY text="スローイングオーガン">投擲腸管</RUBY>ッ!?

　当然ながら――いや何をもって当然とすれば良いの
か最早わからないが――ただの内臓ではない。
　甲鉄化されている。

　それはいま強固な力をもって、俺を拘束している！

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/017vs0400a01">
《御堂！　振り解いて！》


{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/017vs0410a00">
「わかっている！
　だが……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　そう容易にはいかない。

　まずは腕を抜かねば。
　片腕でも自由になれば太刀が使える。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/017vs0420a01">
《急いで！》


{	FwR("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/017vs0430a00">
「焦らせるな」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　おそらく敵はこの腸を引き込み、俺を手近へ招いて
斬りつけてくるのだろうが――この状態で充分な一撃
を繰り出せるとは考え難い。いや無理だろう。
　ならば慌てふためく必要もない。

　留意すべきは陰義だが、それも発動する直前に電磁
抜刀で斬り散らした。
　術を再び立て直すには時間が掛かる。

　火急の危険はない。
　まずは落ち着いて、この拘束を――

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/017vs0440a01">
《違うっ！
　敵の陰義は<RUBY text="・・">もう</RUBY>、<RUBY text="・・・・">発動した</RUBY>!!》


{	FwR("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/017vs0450a00">
「――何!?」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　それはどういう……

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/017vs0460a01">
《早く！
　このままだとっ――》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆正宗、上体アップ？



	CreateColorSP("黒幕１", 20000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Delete("絵背景500");

	CreateColorEXadd("絵色100", 18500, "WHITE");
	CreateWindow("絵演窓上", 16200, Center, 0, 1024, 288, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateTextureEX("絵演窓上/絵演背景", 16200, 0, -144, "cg/bg/resize/bg002_空a_02.jpg");
	CreateTextureEX("絵演窓上/絵立絵", 16300, -135, -50, "cg/st/3d正宗_立ち_陰義.png");
	Move("絵演窓上", 0, @0, @-288, null, true);
	Zoom("絵演窓上/絵立絵", 0, 2000, 2000, null, true);

	CreateColorSP("明度", 150, "BLACK");
	Fade("明度", 0, 500, null, true);

	DrawTransition("黒幕１", 200, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("黒幕１");

	Wait(200);


	Move("絵演窓上", 500, @0, @432, Dxl2, false);
	Fade("絵演窓上/絵演背景", 300, 1000, null, true);

	OnSE("se特殊_鎧_装着06",1000);
	Fade("絵色100", 0, 1000, null, true);
	FadeDelete("絵色100", 1000, false);
	OnSE("se戦闘_動作_空突進02",1000);
	Zoom("絵演窓上/絵立絵", 1000, 1000, 1000, Dxl2, false);
	Move("絵演窓上/絵立絵", 1000, @0, @-200, Dxl2, false);
	Fade("絵演窓上/絵立絵", 300, 1000, null, true);

	SetFwR("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/017vs0470b40">
《御堂ッ！》


{	FwR("cg/fw/fw一条_憎悪b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/017vs0480a02">
「ぐっ……ぎぃ……」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/017vs0490b40">
《痛くない苦しくない！
　腸なんぞ所詮は消化器、物を食う時以外は
無くても困らん！》


{	FwR("cg/fw/fw一条_憎悪b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/017vs0500a02">
「……ッッ」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/017vs0510b40">
《行くぞ！》


{	FwR("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/017vs0520a02">
「あ……あああッ!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//	SetVolume("@mbgm*", 2000, 0, null);

//◆ちゃきん。納刀
	CreateColorSP("黒幕１", 18000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);

	Delete("絵演窓上*");

	Cockpit_AllFade0();
	CP_AllDelete();

	CreateWindow("ウィンドウ上", 15000, 0, 0,1024, 288, false);
	CreateWindow("ウィンドウ下", 15000, 0, 288, 1024, 576, false);
	SetAlias("ウィンドウ上","ウィンドウ上");
	SetAlias("ウィンドウ下","ウィンドウ下");

	CreateWindow("ウィンドウ縦", 15000, 112, 0,400, 576, false);
	SetAlias("ウィンドウ縦","ウィンドウ縦");
	CreateTextureEX("ウィンドウ縦/絵EV100", 16000, Center, Middle, "cg/ev/resize/ev948_正宗突進汎用ex.jpg");
	Request("ウィンドウ縦/絵EV100", Smoothing);
	Zoom("ウィンドウ縦/絵EV100", 0, 2000, 2000, null, true);
	Move("ウィンドウ縦/絵EV100", 0, @-150, @0, null, false);
	CreateTextureEX("ウィンドウ縦/絵EV200", 16000, Center, Middle, "cg/ev/resize/ev948_正宗突進汎用ex.jpg");
	Request("ウィンドウ縦/絵EV200", Smoothing);
	Zoom("ウィンドウ縦/絵EV200", 0, 2000, 2000, null, true);
	Move("ウィンドウ縦/絵EV200", 0, @-150, @0, null, false);



	Delete("黒幕１");


	CreateTextureSP("絵EV100", 14000, Center, Middle, "cg/ev/resize/ev948_正宗突進汎用ex.jpg");
	CreateTextureEX("絵EV200", 14000, Center, Middle, "cg/ev/resize/ev948_正宗突進汎用ex.jpg");
	Request("絵EV100", Smoothing);
	Zoom("絵EV100", 0, 2000, 2000, null, true);
	Move("絵EV100", 0, @+400, @+288, null, false);
	Request("絵EV200", Smoothing);
	Zoom("絵EV200", 0, 2000, 2000, null, true);
	Move("絵EV200", 0, @0, @+288, null, false);

	Move("絵EV100", 500, @-400, @0, Dxl1, false);
	Move("ウィンドウ上", 300, @0, @-200, null, false);
	Move("ウィンドウ下", 300, @0, @+200, null, true);

	WaitAction("絵EV100", null);
	CreateColorEXadd("絵色100", 14001, "White");

	OnSE("se特殊_鎧_装着01",1000);

//	SoundPlay("@mbgm12",0,1000,true);

	CreateProcess("プロセス１", 12000, 0, 0, "MASAMUNESHINOGI");
	SetAlias("プロセス１","プロセス１");
	Request("プロセス１",Start);


	Fade("絵EV200", 0, 1000, null, false);
	Fade("絵色100", 0, 1000, null, false);
	Move("絵EV200", 30000, 0, 0, null, false);
	Zoom("絵EV200", 30000, 1000, 1000, null, false);
	DrawTransition("絵色100", 200, 0, 1000, 100, Dxl1, "cg/data/slide_05_00_1.png", true);
	Delete("絵EV100");
	FadeDelete("絵色100",1000,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　敵騎、正宗が……
　太刀を、鞘に？

　何のため――

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆ばちばち。帯電
	CreateColorSP("ウィンドウ上/絵色100", 15000, "Black");
	CreateColorSP("ウィンドウ下/絵色100", 15000, "Black");

	CreateColorEX("絵色100", 14005, "Black");
	CreateColorEXadd("フラッシュアウト", 18005, "WHITE");
	Fade("絵色100", 0, 700, null, false);
	DrawTransition("絵色100", 300, 0, 1000, 100, Dxl1, "cg/data/slide_06_00_1.png", true);

	Fade("ウィンドウ縦/絵EV100", 0, 1000, null, false);
	DrawTransition("ウィンドウ縦/絵EV100", 500, 0, 1000, 100, Dxl1, "cg/data/slide_02_00_1.png", true);

	Wait(300);

	Fade("ウィンドウ縦/絵EV200", 0, 1000, null, false);
	Shake("ウィンドウ縦/絵EV200", 500000, 2, 1, 0, 0, 1000, null, false);

	OnSE("se特殊_電撃_帯電01",700);

	CreateSE("SE01","se特殊_電撃_帯電01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("ウィンドウ縦/絵200", 20000, #99CCFF);
	Fade("ウィンドウ縦/絵200", 10, 600, null, true);
	Fade("ウィンドウ縦/絵200", 100, 0, null, true);
	Fade("ウィンドウ縦/絵200", 10, 500, null, true);
	Fade("ウィンドウ縦/絵200", 100, 0, null, true);
	Fade("ウィンドウ縦/絵200", 10, 700, null, true);
	Fade("ウィンドウ縦/絵200", 100, 0, null, true);
	Fade("ウィンドウ縦/絵200", 10, 500, null, true);
	Fade("ウィンドウ縦/絵200", 100, 0, null, true);
	Fade("ウィンドウ縦/絵200", 10, 800, null, true);
	Fade("ウィンドウ縦/絵200", 100, 0, null, true);

	SetVolume("SE01", 100, 0, null);





//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　――――――――――――!?

　これは。
　この、力は、

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/017vs0530b40">
《善因には善果あるべし！
　悪因には悪果あるべし！
　害なす者は害されるべし！
　災いなす者は呪われるべし！》


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
　
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/017vs0540b40">
　　　　　　《因果応報!!
　　　　　　　天罰覿面!!》

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

//◆電磁抜刀スタンバイ

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/017vs0550a01">
《いけない!!》

</PRE>
	SetTextEXR();
	TypeBeginTimeRIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　<RUBY text="おれ">村正</RUBY>の、ちから――――――!?

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw一条_憎悪a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/017vs0560a02">
《吉野御流合戦礼法〝迅雷〟が崩し》


{	FwR("cg/fw/fw一条_怒りa.png");}
//ムー：↓台詞のカッコ修正しました。
//【一条】
//<voice name="一条" class="一条" src="voice/mb04/017vs0570a02">
//《<RUBY text="レールガン">電磁抜刀</RUBY>――――〝<RUBY text="マガツ">禍</RUBY>〟ッ!!」
<voice name="一条" class="一条" src="voice/mb04/017vs0570a02">
《<RUBY text="レールガン">電磁抜刀</RUBY>――――〝<RUBY text="マガツ">禍</RUBY>〟ッ!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆正宗・電磁抜刀
	#aw_正宗=true;

//◆ずがーん。
	CreateColorSP("黒幕１", 21000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("ウィンドウ上/*");
	Delete("ウィンドウ下/*");
	Delete("ウィンドウ縦/*");

	Delete("ウィンドウ上");
	Delete("ウィンドウ下");
	Delete("ウィンドウ縦");

	Delete("絵色100");
	Delete("絵EV100");
	Delete("絵EV200");

	CreateTextureSP("絵EV100", 1999, Center, Middle, "cg/ev/resize/ev948_正宗突進汎用ex.jpg");
	CreateTextureSP("絵EV200", 2000, Center, Middle, "cg/ev/resize/ev948_正宗突進汎用ex.jpg");
	CreateTextureSPadd("絵背景効果線", 2001, Center, Middle, "cg/ev/resize/ev902_村正電磁抜刀レールガン_e02.png");
	Rotate("絵背景効果線", 0, @0, @180, @0, null,true);

	$効果ナット名 = @絵背景効果線;
	CreateProcess("プロセス１", 150, 0, 0, "TurboBlur2");
	SetAlias("プロセス１","プロセス１");

	CreateSE("SE01","se特殊_電撃_帯電01");
	CreateSE("SE02","se特殊_電撃_放電02");

	Shake("絵背景効果線", 100000, 3, 5, 0, 0, 1000, null, false);
	Request("プロセス１", Start);

	Shake_Loop("@絵EV200","shake01");
	RailgunFlash();

	MusicStart("SE01",300,500,0,1000,null,true);
	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);

	Fade("絵背景200", 500, 1000, null, true);

	CreateColorEX("絵色100", 20000, "WHITE");
	CreateColorEX("絵色200", 18000, "WHITE");
	CreateTextureEX("絵背景300", 17000, Center, Middle, "cg/ev/resize/ev948_正宗突進汎用ex.jpg");
	Request("絵背景300", AddRender);
	Zoom("絵背景300", 0, 1050, 1050, null, true);

	CreateSE("SE02","se特殊_電撃_放電01");
	CreateSE("SE02","se特殊_電撃_放電01");

	MusicStart("SE02",0,1000,0,1000,null,false);
	FadeF4("絵背景300", 1000, 1000, 3000, 0, 0, Axl3, false);
	Wait(2000);
	Fade("絵色100", 1000, 1000, null, true);
	Delete("絵背景200");
	Delete("絵背景300");
	Delete("絵背景効果線");

	Fade("絵色100", 500, 0, Axl3, false);
	Fade("絵色200", 500, 1000, Axl3, false);
	MovieSESet(19000,"mvM禍","se特殊_mv用_電磁抜刀_禍");
	MovieSEStart(0);

	CreateSE("SE01","se戦闘_衝撃_鎧転倒02");
	CreateSE("SE02","se特殊_電撃_放電02");
	CreateSE("SE03","se戦闘_攻撃_鎧_吹っ飛ぶ02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);


	Wait(1000);
	MusicStart("SE03",0,1000,0,1000,null,false);
	Wait(2000);

	SetVolume("@mbgm*", 3000, 0, null);
	SetVolume("SE*", 3000, 0, null);

	ClearWaitAll(4000, 3000);


//◆黒



}

..//ジャンプ指定
//次ファイル　"mb04_018.nss"



function MASAMUNESHINOGI()
{

	CreateColor("焚き火光", 17900, 0, 0, 1024, 576, "BLUE");
	SetAlias("焚き火光","焚き火光");
	Request("焚き火光", AddRender);
	Fade("焚き火光", 0, 0, null, false);
//	DrawTransition("焚き火光", 0, 200, 200, 990, null, "cg/data/circle_01_00_0.png", true);


	begin:

	while(1)
	{
	Fade("焚き火光",150,200,null,true);
	Fade("焚き火光",200,150,null,true);
	Fade("焚き火光",180,230,null,true);
	Fade("焚き火光",300,100,null,true);
	Fade("焚き火光",140,190,null,true);
	Fade("焚き火光",200,150,null,true);

	Fade("焚き火光",150,230,null,true);
	Fade("焚き火光",400,100,null,true);
	Fade("焚き火光",180,150,null,true);
	Fade("焚き火光",300,100,null,true);
	Fade("焚き火光",140,170,null,true);
	Fade("焚き火光",200,90,null,true);

	Fade("焚き火光",150,200,null,true);
	Fade("焚き火光",400,100,null,true);
	Fade("焚き火光",180,150,null,true);
	Fade("焚き火光",300,100,null,true);
	Fade("焚き火光",140,170,null,true);
	Fade("焚き火光",200,90,null,true);

	Fade("焚き火光",100,280,null,true);
	Fade("焚き火光",350,150,null,true);
	Fade("焚き火光",100,240,null,true);
	Fade("焚き火光",150,120,null,true);
	Fade("焚き火光",200,220,null,true);
	Fade("焚き火光",170,100,null,true);

	Fade("焚き火光",150,120,null,true);
	Fade("焚き火光",400,100,null,true);
	Fade("焚き火光",180,150,null,true);
	Fade("焚き火光",100,240,null,true);
	Fade("焚き火光",140,140,null,true);
	Fade("焚き火光",200,90,null,true);

	Fade("焚き火光",150,130,null,true);
	Fade("焚き火光",400,100,null,true);
	Fade("焚き火光",180,130,null,true);
	Fade("焚き火光",300,100,null,true);
	Fade("焚き火光",140,120,null,true);
	Fade("焚き火光",200,90,null,true);

	Fade("焚き火光",150,120,null,true);
	Fade("焚き火光",400,90,null,true);
	Fade("焚き火光",180,110,null,true);
	Fade("焚き火光",300,100,null,true);
	Fade("焚き火光",140,130,null,true);
	Fade("焚き火光",200,90,null,true);

	}


}