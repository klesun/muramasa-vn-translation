//<continuation number="960">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_024vs.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/md05_024vs.nss","RotetoLoop1",true);
	Conquest("nss/md05_024vs.nss","RotetoLoop2",true);
	Conquest("nss/md05_024vs.nss","AnkokuZoomLoop1",true);
	Conquest("nss/md05_024vs.nss","AnkokuZoomLoop2",true);
	Conquest("nss/md05_024vs.nss","AnkokuZoomLoop1",true);
	Conquest("nss/md05_024vs.nss","AnkokuZoomLoopEX",true);
	Conquest("nss/md05_024vs.nss","TurboBlur3",true);

	//▼コクピット（定義）
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
	#bg109_宇宙空間=true;
	#ev933_銀星号蹴り_a=true;
	#ev933_銀星号蹴り_b=true;
	#ev934_村正掌打_a=true;
	#ev935_村正膝蹴り_a=true;
	#ev935_村正膝蹴り_b=true;
	#bg204_横旋回背景_04=true;
	#ev934_村正掌打_b=true;
	#ev932_銀星号正拳突き_a=true;
	#bg205_旋回演出背景宇宙_01=true;
	#ev901_銀星号天座失墜小彗星_d=true;
	#ev251_村正VS銀星号決戦第二局=true;
	#ev936_銀星号ブレイジングストリーム=true;
	#ev903_村正磁気バリアー展開_b=true;
	#ev923_銀星号辰気収斂=true;
	#ev924_銀星号飢餓虚空魔王星=true;
	#ev926_野太刀全容=true;
	#bg001_空c_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
//	#立方陣終了 = true;

//超速用
	CP_AllDelete();


	if(#立方陣終了 == true){
		$SelectGameName="@->"+$GameName+"_SELECT";
		call_scene $SelectGameName;
	}else{
		$GameName = "md05_025.nss";
	}


}

scene md05_024vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md05_023.nss"

//あきゅん「演出：蜘蛛の表情が村正になってますが仕様です」

//◆決戦・第二局
//◆ＢＧＭ：ソリッドステートスカウター。いや無理だが。
//◆村正モニター。銀星号迫る
	PrintBG("上背景", 30000);

	CreateTextureSP("絵背景100", 1500, Center, Middle, "cg/data/noize_01_00_0.png");
	Zoom("絵背景100", 0, 2000, 2000, null, true);

	DrawEffect("絵背景100", 50, "SuperWave ", 0, 1000, null);


	MyLife_Count(0,717);
	MyTr_Count(0,358);
	CP_IHPChange(0,8,null,false);

	CP_AziChange(0,45,null,false);
	CP_SpeedChange2(0,2000,null,false);
	CP_HighChange2(0,5000,null,false);


	//▼コクピット（瞬間表示）
	Cockpit_AllFade2();

	CreateEffect("エフェクト１", 16000, 0, 0, 1024, 576, Monochrome);
	CreateTextureSP("背景１", 100, Center, Middle, "cg/bg/bg109_宇宙空間.jpg");
	CreateTextureSP("敵機１", 1000, 86, -247, "cg/st/3d銀星号_騎突_通常.png");
	Zoom("敵機１", 0, 300, 300, Dxl2, true);


	FadeDelete("上背景", 100, true);
	Wait(1000);
	DrawDelete("絵背景100", 500, 100, "mosaic_01_00_0", true);

	Wait(1000);
	SoundPlay("@mbgm08",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　<RUBY text="おれ">私</RUBY>は敵影を確認した。

　距離、至近。
　極めて高速度で当方へ進攻しつつある。

　接触までの所要時間は推定〇・二秒。

　回避は可能であるが得策と云えず。
　続く状況における行動選択の幅を失い、敗北不可避
となる恐れが濃厚。

　迎撃を至当と認む。

　使用可能武装は野太刀及び脇差。<k>
　
　いずれも用いず。

　敵騎の機動性能を考慮するに武器使用が必然とする
各種制限は攻撃成功確率を極めて低い程度へ落とす。
　従って不適切。

　無手にて応ずるべし。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Wait(300);

//◆銀星号の蹴り
	CreateTextureEX("イベント１", 16000, 0, 0, "cg/ev/ev933_銀星号蹴り_a.jpg");
	CreateTextureEX("イベント２", 16000, 0, 0, "cg/ev/ev934_村正掌打_a.jpg");
	CreateColorEX("色１", 19000, "#FFFFFF");
	CreateTextureEX("敵機２", 1000, -335, -320, "cg/st/3d銀星号_立ち_戦闘b.png");
	CreateTextureEX("敵機３", 1000, -315, -320, "cg/st/3d銀星号_立ち_戦闘b.png");
	CreateTextureEX("敵機４", 100, 200, -42, "cg/st/resize/3d銀星号_立ち_通常s.png");
	Zoom("敵機４", 0, 2000, 2000, Dxl2, true);

	//Zoom("敵機２", 0, 2000, 2000, null, true);
	//SetBlur("敵機２", true, 2, 500, 100, false);

	OnSE("se戦闘_動作_空突進01",1000);
	Wait(200);
	OnSE("se特殊_陰義_磁力加速02",1000);

	Fade("エフェクト１", 0, 0, null, false);
	Move("敵機１", 150, @0, @100, Axl1, false);
	Zoom("敵機１", 150, 2000, 2000, null, true);

	Fade("イベント１", 0, 1000, null, true);
	Fade("色１", 300, 1000, null, true);

//◆村正、躱して拳打一発
	Delete("イベント１");
	Delete("敵機１");
	Fade("敵機２", 0, 1000, null, false);
	Fade("敵機３", 0, 500, null, false);
	Move("背景１", 0, @50, @0, Dxl1, true);

	Fade("色１", 500, 0, null, false);
	Fade("エフェクト１", 0, 1000, null, false);
	Move("背景１", 1000, @40, @0, null, false);
	Move("敵機２", 1000, @-60, @0, null, false);
	Move("敵機３", 1000, @-60, @0, null, true);

	OnSE("se戦闘_動作_突進01",1000);

	Delete("敵機３");
	Fade("エフェクト１", 0, 0, null, false);
	Zoom("敵機２", 200, 2000, 2000, Axl1, false);
	Zoom("背景１", 200, 1100, 1100, Axl1, false);

	Fade("イベント２", 200, 1000, null, true);
	OnSE("se戦闘_攻撃_鎧_打撃01",1000);
	Fade("色１", 200, 1000, null, true);

	Delete("イベント２");
	Delete("敵機２");
	Zoom("背景１", 0, 1000, 1000, Axl1, false);
	Fade("敵機４", 0, 1000, null, true);

	Fade("色１", 500, 0, Axl1, false);
	Zoom("敵機４", 500, 1000, 1000, Dxl2, false);
	Shake("敵機４", 500, 10, 50, 0, 0, 500, Dxl1, false);

	SetFwR("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【光】
<voice name="光" class="光" src="voice/md05/024vs0010a14">
《――うぬッ!?》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	Fade("エフェクト１", 0, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　敵騎の蹴打に対して踏み込み、掌にて一打を加える。
　威力は軽微。損傷は全く与えていない。

　だがこれで良し。
　この一手は敵の攻めを封じ、次へ繋ぐためのもの。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆村正、連打
	CreateTextureEX("イベント１追加", 16000, 0, 0, "cg/ev/ev935_村正膝蹴り_b.jpg");
	Zoom("イベント１追加", 0, 1200, 1200, Dxl2, true);
	CreateTextureEX("イベント１", 16000, 0, 0, "cg/ev/ev934_村正掌打_a.jpg");
	Zoom("イベント１", 0, 1200, 1200, Dxl2, true);

	OnSE("se戦闘_破壊_鎧04",1000);

	Fade("エフェクト１", 0, 0, null, true);

	Move("敵機４", 200, @50, @200, Axl1, false);
	Zoom("背景１", 200, 1100, 1100, Axl1, false);
	Zoom("敵機４", 200, 2000, 2000, Axl1, false);
	Fade("色１", 200, 1000, null, true);

	Fade("イベント１追加", 0, 1000, null, true);
	Shake("イベント１追加", 500, 0, 50, 0, 0, 500, Dxl1, false);
	Fade("色１", 500, 0, null, true);

	OnSE("se戦闘_攻撃_鎧攻撃命中",1000);

	Fade("色１", 0, 1000, null, true);
	Fade("イベント１", 0, 1000, null, true);
	Shake("イベント１", 500, 0, 50, 0, 0, 500, Dxl1, false);
	Fade("色１", 500, 0, null, true);

	Delete("イベント１追加");

	SetFwR("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【光】
<voice name="光" class="光" src="voice/md05/024vs0020a14">
《がッ――ふッ、く》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆村正、蹴り
	CreateTextureEX("イベント２", 16000, 0, 0, "cg/ev/ev935_村正膝蹴り_a.jpg");
	CreateTextureEX("エフェクト１", 16000, 0, 0, "cg/ef/ef042_汎用打撃.jpg");

	CreateTextureEX("背景０", 16000, -4000, 0, "cg/bg/bg204_横旋回背景_04.jpg");
	Zoom("背景０", 0, 2000, 2000, Dxl2, true);
	CreateTextureEX("敵機１", 16000, -300, -100, "cg/st/3d銀星号_騎航_通常.png");
	Rotate("敵機１", 0, @0, @0, -135, null, true);

	CreateTextureEX("背景１", 16000, Center, Middle, "cg/bg/bg109_宇宙空間.jpg");
	StC(16000, @0, @0,"cg/st/3d村正最終_立ち_戦闘b.png");

	OnSE("se戦闘_攻撃_鎧攻撃命中02",1000);
	OnSE("se戦闘_動作_空突進04",1000);

	Fade("イベント２", 0, 1000, null, true);
	Shake("イベント２", 300, 0, 50, 0, 0, 500, Dxl1, true);

	OnSE("se戦闘_攻撃_鎧攻撃命中",1000);

	Fade("色１", 0, 1000, null, true);
	Fade("エフェクト１", 0, 1000, null, true);

//◆吹っ飛ぶ銀星号
	Fade("背景０", 0, 1000, null, true);
	Fade("敵機１", 0, 1000, null, true);

	//完全ランダム
	//MoveFRP1("@敵機１",5000,15,15);
	//シェイク
	MoveSSP1("@敵機１",100000,0,3,0,3,300,null);

	Fade("色１", 500, 0, null, false);
	Fade("エフェクト１", 500, 0, null, false);
	Move("敵機１", 2000, @-100, @0, null, false);
	Rotate("敵機１", 2000, @0, @0, @-20, null, false);
	Move("背景０", 2000, @6000, @0, null, 1000);

//◆村正・無手構え
	Fade("背景１", 1000, 1000, null, false);
	FadeStC(1000,true);

	MoveSSP1stop();
	//MoveFRP1stop();

	Delete("エフェクト１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　手応え有り。

　敵騎は機動力及び攻撃力において卓抜すると<RUBY text="いえど">雖</RUBY>も、
甲鉄の強度においては当方を凌駕せず。
　肉弾攻撃にて損害を及ぼす事が可能である。

　現行戦術を続行。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("背景２", 18000);
	Wait(1);

	Fade("背景１", 0, 0, null, true);
	DeleteStA(0,true);

	CreateTextureSP("敵機１", 16100, 100, -50, "cg/st/3d銀星号_騎航_通常.png");
	Rotate("敵機１", 0, @0, @0, -90, null, true);
	Zoom("背景０", 0, 1000, 1000, Dxl2, true);
	Move("背景０", 0, -3000, @0, Dxl2, true);

	OnSE("se戦闘_動作_空突進01",1000);

	FadeDelete("背景２", 300, false);
	Move("背景０", 500, @1500, @0, Dxl2, false);
	Rotate("敵機１", 500, @0, @0, @-270, Dxl2, false);
	Move("敵機１", 500, @-400, @50, Dxl2, true);

	SetFwC("cg/fw/fw銀星号_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【光】
<voice name="光" class="光" src="voice/md05/024vs0030a14">
《かッはァ!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銀星号。村正と対峙

	CreateWindow("ウィンドウ１", 16000, 512, 0, 1024, 576, false);
	SetAlias("ウィンドウ１","ウィンドウ１");
	CreateTextureEX("ウィンドウ１/背景１", 16100, -80, -256, "cg/bg/bg109_宇宙空間.jpg");
	CreateTextureEX("ウィンドウ１/自機１", 16100, 300, InBottom, "cg/st/3d村正最終_立ち_戦闘b.png");

	Move("敵機１", 2000, @0, @-50, null, false);

	Move("ウィンドウ１/背景１", 500, @20, @0, Dxl1, false);
	Move("ウィンドウ１/自機１", 500, @-200, @0, Dxl1, false);
	Fade("ウィンドウ１/*", 500, 1000, null, false);

	SetFwC("cg/fw/fw銀星号_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【光】
<voice name="光" class="光" src="voice/md05/024vs0040a14">
《……やってくれたな景明ィ！
　今の体術、光としたことが不意をつかれた》

//【光】
<voice name="光" class="光" src="voice/md05/024vs0050a14">
《こんな技、こんな速さを隠し持っていたか。
　出し惜しみとは人の悪い奴！》

{
//あきゅん「演出：蜘蛛の表情が村正になってますが仕様です」
	FwC("cg/fw/fw村正武者_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/024vs0060a01">
《――――》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0070a14">
《ここからが本気と云うなら、光もその気で
報いねばなるまい。
　仕切り直しだ！》

//【光】
<voice name="光" class="光" src="voice/md05/024vs0080a14">
《すべてを出せ！　すべてを見せろ！
　おれもすべてをもって応えてやる――》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Move("ウィンドウ１", 500, 0, @0, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　敵騎より信号が送られている。<k>
　
　あらゆる反応の必要無し。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆村正前へ
//◆銀星号前へ

	SetFwC("cg/fw/fw村正武者_通常b.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/024vs0090a01">
《――――》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Move("ウィンドウ１/自機１", 300, @-100, @0, Axl1, false);
	Move("ウィンドウ１/背景１", 300, @50, @0, Axl1, false);
	Fade("ウィンドウ１/*", 300, 0, null, true);

	OnSE("se戦闘_動作_空突進02",1000);

	BezierMove("敵機１", 300, (@0,@0){@333,@100}{@666,@100}(@2000,@0), Axl1, false);

	SetFwC("cg/fw/fw銀星号_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
//【光】
<voice name="光" class="光" src="voice/md05/024vs0100a14">
《――はッ!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitAction("敵機１", null);
	Delete("ウィンドウ１");
	Delete("ウィンドウ１/*");

//◆村正、連打
//◆銀星号回避。反撃連打
//◆村正回避

	CreateColorEX("色１", 19999, "#000000");
	CreateTextureEX("イベント１", 16000, 0, 0, "cg/ev/ev934_村正掌打_b.jpg");
	SetBlur("イベント１", true, 2, 500, 200, false);
	CreateTextureEX("イベント２", 16000, 0, 0, "cg/ev/ev932_銀星号正拳突き_a.jpg");
	SetBlur("イベント２", true, 2, 500, 200, false);

	CreateTextureEX("エフェクト１", 18000, 0, 0, "cg/ef/ef010_汎用斜め軌道.jpg");
	CreateTextureEX("エフェクト２", 18000, 0, 0, "cg/ef/ef012_汎用斜め軌道.jpg");
	CreateTextureEX("エフェクト３", 18000, 0, 0, "cg/ef/ef013_汎用斜め軌道.jpg");
	CreateTextureEX("エフェクト４", 18000, 0, 0, "cg/ef/ef011_汎用斜め軌道.jpg");

	CreateTextureEX("敵機１", 16000, 100, -50, "cg/st/3d銀星号_騎航_通常.png");
	CreateTextureEX("自機１", 16000, -302, -168, "cg/st/3d村正最終_騎航_通常.png");

	OnSE("se戦闘_攻撃_刀振る02",1000);

	Fade("色１", 0, 1000, null, true);
	Fade("イベント１", 0, 1000, null, true);
	Zoom("イベント１", 300, 2000, 2000, Axl2, false);
	Fade("色１", 300, 0, null, true);

	OnSE("se戦闘_攻撃_刀振る01",1000);

	Fade("エフェクト１", 0, 1000, null, true);
	Fade("イベント１", 0, 0, null, true);
	Fade("敵機１", 0, 1000, null, true);
	Move("敵機１", 200, @-130, @-20, Dxl1, false);
	Fade("エフェクト１", 200, 0, null, true);
	Fade("エフェクト２", 0, 1000, null, true);
	Move("敵機１", 200, @-130, @20, Dxl1, false);
	Fade("エフェクト２", 200, 0, null, true);

	OnSE("se戦闘_攻撃_振る02",1000);

	Fade("色１", 0, 1000, null, true);
	Fade("敵機１", 0, 0, null, true);
	Fade("イベント２", 0, 1000, null, true);
	Zoom("イベント２", 300, 2000, 2000, Axl2, false);
	Fade("色１", 300, 0, null, true);

	OnSE("se戦闘_攻撃_振る04",1000);

	Fade("エフェクト３", 0, 1000, null, true);
	Fade("イベント２", 0, 0, null, true);
	Fade("自機１", 0, 1000, null, true);
	Move("自機１", 200, @130, @-20, Dxl1, false);
	Fade("エフェクト３", 200, 0, null, true);
	Fade("エフェクト４", 0, 1000, null, true);
	Move("自機１", 200, @130, @20, Dxl1, false);
	Fade("エフェクト４", 200, 0, null, true);

	Delete("エフェクト*");
	Delete("イベント*");

	CreateTextureSP("敵機１", 16000, -1000, InBottom, "cg/st/3d銀星号_立ち_戦闘.png");
	Move("自機１", 300, 1000, @0, Dxl1, false);
	Move("敵機１", 300, 0, @0, Dxl1, false);
	Move("背景０", 300, 0, @0, Dxl1, true);

	SetFwC("cg/fw/fw銀星号_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【光】
<voice name="光" class="光" src="voice/md05/024vs0110a14">
《ッッッしゃァ!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銀星号、大振り蹴り
//◆村正、ガード
	CreateTextureEX("イベント１", 16000, 0, 0, "cg/ev/ev933_銀星号蹴り_b.jpg");
	Zoom("イベント１", 0, 2000, 2000, Dxl2, true);
	SetBlur("イベント２", true, 2, 500, 200, false);

	CreateTextureEX("エフェクト１", 16000, 0, 0, "cg/ef/ef045_スパーク.jpg");
	Zoom("エフェクト１", 0, 1500, 1500, Dxl2, true);

	OnSE("se戦闘_動作_空突進01",1000);

	//Fade("色１", 0, 1000, null, true);
	Move("敵機１", 200, @200, @50, Axl1, true);
	Fade("イベント１", 0, 1000, null, true);
	Zoom("イベント１", 300, 1000, 1000, Dxl2, false);
	Fade("色１", 300, 1000, null, true);

	Fade("敵機１", 0, 0, null, true);
	Fade("イベント１", 0, 0, null, true);
	Move("自機１", 0, 0, @0, Dxl1, true);

	OnSE("se戦闘_攻撃_剣戟弾く02",1000);

	Fade("色１", 0, 0, null, false);
	Fade("エフェクト１", 0, 1000, null, false);
	Zoom("エフェクト１", 300, 1200, 1200, Dxl2, false);
	FadeFF("エフェクト１",0,1000,300,@0,@0,Dxl1,100);

	Fade("エフェクト１", 200, 0, null, false);
	FadeFF("自機１",0,1000,300,50,0,Dxl1,false);
	MyLife_Count(0,687);
	MyTr_Count(0,252);
	CP_IHPChange(0,7,null,false);

	SetFwC("cg/fw/fw村正武者_通常b.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/024vs0120a01">
《――ッッ》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正、剛拳
//◆銀星号、後退
	CreateTextureEX("イベント１", 16000, 0, 0, "cg/ev/ev934_村正掌打_b.jpg");
	Zoom("イベント１", 0, 2000, 2000, Dxl2, true);
	SetBlur("イベント２", true, 2, 500, 200, false);

	CreateTextureEX("敵機１", 16000, 0, InBottom, "cg/st/3d銀星号_立ち_戦闘.png");

	CreateTextureEX("エフェクト１", 16000, 0, 0, "cg/ef/ef042_汎用打撃.jpg");
	Zoom("エフェクト１", 0, 1500, 1500, Dxl2, true);

	OnSE("se戦闘_動作_空突進02",1000);

	BezierMove("自機１", 300, (@0,@0){@-333,@-200}{@-666,@-200}(@-2000,@0), Axl1, true);

	Fade("色１", 0, 1000, null, true);
	Fade("イベント１", 0, 1000, null, true);
	Zoom("イベント１", 300, 1000, 1000, Dxl2, false);
	Fade("色１", 300, 0, null, true);

	OnSE("se戦闘_攻撃_鎧_打撃02",1000);

	Fade("色１", 300, 1000, null, true);
	Fade("イベント１", 0, 0, null, true);
	Fade("エフェクト１", 0, 1000, null, false);
	Fade("色１", 0, 0, null, true);

	Shake("エフェクト１", 300, 0, 50, 0, 0, 300, null, 100);

	Fade("エフェクト１", 200, 0, null, false);

	Shake("敵機１", 300, 0, 100, 0, 0, 600, Dxl1, false);
	FadeFF("敵機１",0,1000,400,-600,-250,Dxl1, false);

	SetFwC("cg/fw/fw銀星号_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【光】
<voice name="光" class="光" src="voice/md05/024vs0130a14">
《……ちぃ！　重いわ！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("背景１", 16000);

	Wait(100);

	Delete("イベント*");
	Delete("エフェクト*");
	Delete("敵機*");

	CreateTextureSP("背景０", 100, Center, -500, "cg/bg/bg205_旋回演出背景宇宙_01.jpg");
	CreateTextureSP("敵機１", 100, 81, -235, "cg/st/3d銀星号_騎突_通常.png");
	Zoom("敵機１", 0, 100, 100, Dxl2, true);

	FadeDelete("背景１", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　防ぎながらなお押し飛ばされ、敵騎が嬉しげに<RUBY text="のたま">曰</RUBY>う。
　体内まで伝わる衝撃が多少はあった筈だが、<RUBY text="こた">堪</RUBY>えた
気色はない。

　更に鋭気を高めて再び襲う。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆銀星号接近
	CreateEffect("エフェクト１", 16000, 0, 0, 1024, 576, Monochrome);
	SetAlias("エフェクト１", "エフェクト１");

	OnSE("se戦闘_動作_空突進01",1000);
	Wait(100);

	Move("敵機１", 300, @0, @150, Axl1, false);
	Rotate("敵機１", 300, @0, @0, @360, null, false);
	Zoom("敵機１", 300, 1000, 1000, Axl2, true);

	Fade("エフェクト１", 0, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　分析し推定する。
　
　下段蹴りから入って右拳――左肘――

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆そんな感じで連撃
//◆防ぎ切る
	CreateColorEXadd("色１", 19999, "#FFFFFF");
	CreateTextureEXadd("エフェクト２", 1000, 0, 0, "cg/ef/ef044_火花b.png");

	SetBlur("敵機１", true, 2, 500, 50, false);

	Fade("エフェクト１", 0, 0, null, true);

	OnSE("se戦闘_攻撃_振る02",1000);
	OnSE("se戦闘_攻撃_剣戟弾く01",1000);

	Fade("色１", 0, 1000, null, true);
	Fade("エフェクト２", 0, 1000, null, true);
	Move("エフェクト２", 0, -500, 0, Axl1, true);

	Move("エフェクト２", 400, -100, 0, Axl1, false);
	Move("敵機１", 400, @30, @-10, Dxl1, false);
	FadeFF("背景０",0,1000,400,-30,10,Dxl2,false);
	Fade("色１", 400, 0, null, false);
	Fade("エフェクト２", 400, 0, null, true);

	OnSE("se戦闘_攻撃_振る02",1000);
	OnSE("se戦闘_攻撃_剣戟弾く01",1000);

	Fade("色１", 0, 1000, null, true);
	Fade("エフェクト２", 0, 1000, null, true);
	Move("エフェクト２", 0, 500, 50, Axl1, true);

	Move("エフェクト２", 400, 50, 50, Axl1, false);
	Move("敵機１", 400, @-30, @10, Dxl1, false);
	FadeFF("背景０",0,1000,400,30,-10,Dxl2,false);
	Fade("色１", 400, 0, null, false);
	Fade("エフェクト２", 400, 0, null, true);


	Fade("エフェクト１", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　予測通り。
　凌いで凌ぎ、連打の切れ目に我が反撃を差し込む。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆連撃
//◆避け切る銀星号
	CreateTextureEXadd("エフェクト２", 100, 0, 0, "cg/ef/ef011_汎用斜め軌道.jpg");
	Zoom("エフェクト２", 0, 2000, 2000, Dxl2, true);
	CreateTextureEXadd("エフェクト３", 100, 0, 0, "cg/ef/ef014_汎用横軌道.jpg");
	Zoom("エフェクト３", 0, 2000, 2000, Dxl2, true);

	Fade("エフェクト１", 0, 0, null, true);

	OnSE("se戦闘_攻撃_刀振る01",1000);

	Fade("色１", 0, 1000, null, true);
	Fade("エフェクト２", 0, 1000, null, true);

	Move("背景１", 400, @-30, @-50, Dxl1, false);
	Move("敵機１", 400, @100, @-50, Dxl1, false);
	Fade("色１", 200, 0, null, false);
	Zoom("エフェクト２", 400, 1000, 1000, Dxl1, false);
	Fade("エフェクト２", 400, 0, null, true);

	OnSE("se戦闘_攻撃_刀振る02",1000);

	Fade("色１", 0, 1000, null, true);
	Fade("エフェクト３", 0, 1000, null, true);

	Move("背景１", 400, @30, @0, Dxl1, false);
	Move("敵機１", 400, @-100, @0, Dxl1, false);
	Fade("色１", 200, 0, null, false);
	Zoom("エフェクト３", 400, 1000, 1000, Dxl1, false);
	Fade("エフェクト３", 400, 0, null, true);

	Fade("エフェクト１", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　当たらず。
　敵騎の回避性能が当方の攻撃速度に優る。

　攻撃継続限界。敵の反撃。
　
　分析推定する。左右の拳打から上段蹴り――逆足の
蹴り――右肘――左右左の拳――下段蹴り――

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆まあそれっぽく連打
//◆最後に一発食らう
	CreateColorEXadd("色１", 19999, "#FFFFFF");
	CreateTextureEXadd("エフェクト２", 1000, 0, 0, "cg/ef/ef044_火花b.png");
	CreateTextureEXadd("エフェクト３", 1000, 0, 0, "cg/ef/ef045_スパーク.jpg");
	Zoom("エフェクト３", 0, 2000, 2000, Dxl2, true);

	SetBlur("敵機１", true, 1, 300, 20, false);

	Fade("エフェクト１", 0, 0, null, true);

	OnSE("se戦闘_攻撃_振る02",1000);
	OnSE("se戦闘_攻撃_剣戟弾く01",1000);

	//左拳
	Fade("色１", 0, 1000, null, true);
	Zoom("敵機１", 0, 1200, 1200, Dxl1, true);
	Fade("エフェクト２", 0, 1000, null, true);
	Move("エフェクト２", 0, 1000, 0, null, true);
		Move("エフェクト２", 210, 200, 0, Dxl2, false);
		Zoom("敵機１", 210, 1000, 1000, Dxl1, false);
		Move("敵機１", 210, -149, -157, Dxl1, false);
		FadeFF("背景０",0,1000,210,50,50,Dxl2,false);
		Fade("色１", 110, 0, null, false);
		Fade("エフェクト２", 210, 0, null, true);

	OnSE("se戦闘_攻撃_振る02",1000);
	OnSE("se戦闘_攻撃_剣戟弾く01",1000);

	//右拳
	Fade("色１", 0, 1000, null, true);
	Zoom("敵機１", 0, 1200, 1200, Dxl1, true);
	Fade("エフェクト２", 0, 1000, null, true);
	Move("エフェクト２", 0, -1000, 0, null, true);
		Move("エフェクト２", 210, -200, 0, Dxl2, false);
		Zoom("敵機１", 210, 1000, 1000, Dxl1, false);
		Move("敵機１", 210, 235, -137, Dxl1, false);
		FadeFF("背景０",0,1000,210,-50,0,Dxl2,false);
		Fade("色１", 110, 0, null, false);
		Fade("エフェクト２", 210, 0, null, true);

	OnSE("se戦闘_攻撃_振る02",1000);
	OnSE("se戦闘_攻撃_剣戟弾く01",1000);

	//上段蹴り
	Fade("色１", 0, 1000, null, true);
	Zoom("敵機１", 0, 1200, 1200, Dxl1, true);
	Fade("エフェクト２", 0, 1000, null, true);
	Move("エフェクト２", 0, -500, 600, null, true);
		Move("エフェクト２", 210, 100, -100, Dxl2, false);
		Zoom("敵機１", 210, 1000, 1000, Dxl1, false);
		Move("敵機１", 210, -90, -20, Dxl1, false);
		FadeFF("背景０",0,1000,210,100,-50,Dxl2,false);
		Fade("色１", 110, 0, null, false);
		Fade("エフェクト２", 210, 0, null, true);

	OnSE("se戦闘_攻撃_振る02",1000);
	OnSE("se戦闘_攻撃_剣戟弾く01",1000);

	//逆足上段蹴り
	Fade("色１", 0, 1000, null, true);
	Zoom("敵機１", 0, 1200, 1200, Dxl1, true);
	Fade("エフェクト２", 0, 1000, null, true);
	Move("エフェクト２", 0, -500, 600, null, true);
		Move("エフェクト２", 210, 0, 300, Dxl2, false);
		Zoom("敵機１", 210, 1000, 1000, Dxl1, false);
		Move("敵機１", 210, -10, -232, Dxl1, false);
		FadeFF("背景０",0,1000,210,-80,-80,Dxl2,false);
		Fade("色１", 110, 0, null, false);
		Fade("エフェクト２", 210, 0, null, true);

	OnSE("se戦闘_攻撃_振る02",1000);
	OnSE("se戦闘_攻撃_剣戟弾く01",1000);

	//右ひじ
	Fade("色１", 0, 1000, null, true);
	Zoom("敵機１", 0, 1200, 1200, Dxl1, true);
	Fade("エフェクト２", 0, 1000, null, true);
	Move("エフェクト２", 0, -800, 200, null, true);
		Move("エフェクト２", 210, -100, -100, Dxl2, false);
		Zoom("敵機１", 210, 1000, 1000, Dxl1, false);
		Move("敵機１", 210, 187, -85, Dxl1, false);
		FadeFF("背景０",0,1000,210,-50,10,Dxl2,false);
		Fade("色１", 110, 0, null, false);
		Fade("エフェクト２", 210, 0, null, true);

	OnSE("se戦闘_攻撃_振る02",1000);
	OnSE("se戦闘_攻撃_剣戟弾く01",1000);

	//左右左
	Fade("色１", 0, 1000, null, true);
	Zoom("敵機１", 0, 1200, 1200, Dxl1, true);
	Fade("エフェクト２", 0, 1000, null, true);
	Move("エフェクト２", 0, 1000, 0, null, true);
		Move("エフェクト２", 210, 200, 0, Dxl2, false);
		Zoom("敵機１", 210, 1000, 1000, Dxl1, false);
		Move("敵機１", 210, 223, -119, Dxl1, false);
		FadeFF("背景０",0,1000,210,50,0,Dxl2,false);
		Fade("色１", 110, 0, null, false);
		Fade("エフェクト２", 210, 0, null, true);

	OnSE("se戦闘_攻撃_振る02",1000);
	OnSE("se戦闘_攻撃_剣戟弾く01",1000);

	Fade("色１", 0, 1000, null, true);
	Zoom("敵機１", 0, 1200, 1200, Dxl1, true);
	Fade("エフェクト２", 0, 1000, null, true);
	Move("エフェクト２", 0, -1000, 0, null, true);
		Move("エフェクト２", 210, -200, 0, Dxl2, false);
		Zoom("敵機１", 210, 1000, 1000, Dxl1, false);
		Move("敵機１", 210, -222, -105, Dxl1, false);
		FadeFF("背景０",0,1000,210,-80,0,Dxl2,false);
		Fade("色１", 110, 0, null, false);
		Fade("エフェクト２", 210, 0, null, true);

	OnSE("se戦闘_攻撃_振る02",1000);
	OnSE("se戦闘_攻撃_剣戟弾く01",1000);

	Fade("色１", 0, 1000, null, true);
	Zoom("敵機１", 0, 1200, 1200, Dxl1, true);
	Fade("エフェクト２", 0, 1000, null, true);
	Move("エフェクト２", 0, 1000, 0, null, true);
		Move("エフェクト２", 210, 200, 0, Dxl2, false);
		Zoom("敵機１", 210, 1000, 1000, Dxl1, false);
		Move("敵機１", 210, 242, -103, Dxl1, false);
		FadeFF("背景０",0,1000,210,120,0,Dxl2,false);
		Fade("色１", 110, 0, null, false);
		Fade("エフェクト２", 210, 0, null, true);

	CreateSE("サウンド１","se戦闘_攻撃_鎧_打撃02");
	CreateSE("サウンド２","se戦闘_動作_空突進04");
	OnSE("se戦闘_攻撃_振る02",1000);
	MusicStart("サウンド１",0,1000,0,1000,null,false);
	MusicStart("サウンド２",0,1000,0,1000,null,false);

	//上段
	Fade("色１", 0, 1000, null, true);
	Zoom("敵機１", 0, 1200, 1200, Dxl1, true);
	Fade("エフェクト３", 0, 1000, null, true);
	Move("エフェクト３", 0, -1000, -500, null, true);
		Move("エフェクト３", 500, -100, -200, Dxl2, false);
		Zoom("敵機１", 500, 1000, 1000, Dxl1, false);
		Move("敵機１", 500, 66, -230, Dxl1, false);
		Shake("背景０", 1000, 50, 0, 0, 0, 800, Dxl1, false);
		FadeFF("@CP_Frame",0,1000,1000,0,0,Dxl1,false);
		Fade("色１", 1000, 0, null, false);
		Fade("エフェクト３", 1000, 0, null, 500);

	Move("敵機１", 500, @0, @700, Dxl1, false);
	Move("背景０", 500, @0, @50, Dxl1, false);
	Fade("エフェクト１", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　一手、読み誤った。
　軽い打撃を浴び、姿勢が崩れる。

　そこへ、

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	Fade("エフェクト１", 300, 0, null, true);

	SetFwR("cg/fw/fw銀星号_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【光】
<voice name="光" class="光" src="voice/md05/024vs0140a14">
《吉野御流合戦礼法》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("背景１", 100, -42, -266, "cg/bg/bg109_宇宙空間.jpg");
	CreateTextureEXadd("イベント１", 100, 0, 0, "cg/ev/ev901_銀星号天座失墜小彗星_d.jpg");
	CreateTextureEX("イベント２", 100, 0, 0, "cg/ev/ev901_銀星号天座失墜小彗星_d.jpg");

	OnSE("se戦闘_動作_空突進07",1000);

	Move("背景０", 800, @0, -5500, Dxl1, 400);
	Fade("背景１", 400, 1000, null, false);
	Fade("イベント１", 400, 1000, null, true);

	SetFwR("cg/fw/fw銀星号_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0181]
//【光】
<voice name="光" class="光" src="voice/md05/024vs0150a14">
《<RUBY text="サカガミ">逆髪</RUBY>！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	Fade("エフェクト１", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　体を捻り、下の死角から襲う踵蹴り――

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆そーいうの
//◆食らった。吹っ飛ぶ
	CreateTextureEXadd("エフェクト２", 1000, 0, 0, "cg/ef/ef042_汎用打撃.jpg");

	Fade("エフェクト１", 0, 0, null, true);

	OnSE("se戦闘_動作_空突進01",1000);

	Fade("イベント２", 200, 1000, null, false);
	Zoom("イベント２", 200, 2000, 2000, Axl1, 180);

	CreateSE("サウンド１","se戦闘_動作_空突進04");
	MusicStart("サウンド１",0,1000,0,1000,null,false);

	OnSE("se戦闘_破壊_爆発01",1000);
	OnSE("se戦闘_攻撃_鎧攻撃命中03",1000);
	OnSE("se戦闘_攻撃_鎧攻撃命中",1000);
	OnSE("se戦闘_動作_空突進02",1000);

	Fade("色１", 0, 500, null, false);
	Fade("エフェクト１", 0, 500, null, true);

	Delete("イベント*");

	Shake("背景１", 300, 0, 100, 0, 0, 1000, Dxl1, false);
	Move("背景１", 300, -360, 0, Dxl3, false);
	Fade("背景１", 300, 0, null, false);

	Fade("色１", 1500, 0, null, false);
	Fade("エフェクト１", 2000, 0, null, false);

	MyLife_Count(1500,487);
	MyTr_Count(1500,258);
	CP_IHPChange(1000,6,null,false);
	Move("背景０", 1500, @0, 0, Dxl1, true);

	CreateColorEX("色２", 10000, "#000000");

	Move("背景０", 20000, @0, @-200, null, false);

	SetFwR("cg/fw/fw村正武者_通常b.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/024vs0160a01">
《っっ……！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	Fade("色２", 300, 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　直撃。
　深刻な損傷。

　だが致命打には達せず。
　戦闘続行は可能。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateEffect("エフェクト９", 19998, 0, 0, 1024, 576, Monochrome);
	SetAlias("エフェクト９", "エフェクト９");
	Fade("エフェクト９", 0, 0, null, true);

	CreateTextureSP("敵機１", 100, 93, 200, "cg/st/3d銀星号_騎突_通常.png");
	Zoom("敵機１", 0, 100, 100, Dxl2, true);

	LoadImage("イメージ１", "cg/bg/bg204_横旋回背景_04.jpg");

	CreateTextureEX("背景４", 18000, Center, 0, "イメージ１");
	CreateTextureEX("背景５", 18000, Center, 0, "イメージ１");
	CreateTextureEX("背景６", 18050, Center, 0, "イメージ１");

	CreateColorEX("色３", 16001, "#000000");

	CreateTextureSP("敵機３", 18100, 0, 1000, "cg/st/3d銀星号_騎航_通常.png");
	CreateTextureSPover("敵機２", 18100, 0, 1000, "cg/st/3d銀星号_騎航_通常.png");
	Zoom("敵機３", 0, 1500, 1500, Dxl1, true);
	Zoom("敵機２", 0, 1500, 1500, Dxl1, true);

	CreateTextureSP("自機１", 18099, 1000, 0, "cg/st/3d村正最終_騎航_通常.png");

	//完全ランダム
	MoveFRP1("@敵機２",5000,10,10);

//◆銀星号接近。一撃
//◆躱す
	CreateSE("サウンド１","se戦闘_動作_空突進05");
	SoundPlay("サウンド１",2000,500,true);

	Fade("色２", 300, 0, null, true);
	Move("背景０", 2000, @0, @-100, Dxl1, 500);
	Move("敵機１", 1500, @0, -160, Dxl1, true);

	Zoom("敵機１", 200, 200, 200, Axl1, false);
	Fade("色３", 200, 1000, null, true);

	CreateSCR1("@背景４","@背景５",500,-4500,@0);

	Move("敵機２", 2000, -198, -110, Dxl1, false);
	Move("敵機３", 2000, -198, -110, Dxl1, true);

	Wait(300);

	OnSE("se戦闘_動作_空突進02",1000);

	FadeQC5("敵機２",200,0,200,400,0,Dxl1,false);
	FadeQC5("敵機３",200,0,200,400,0,Dxl2,true);

	Move("敵機２", 0, 74, -203, Dxl1, true);
	Move("敵機３", 0, 74, -203, Dxl1, true);
	Zoom("敵機２", 0, 800, 800, Dxl1, true);
	Zoom("敵機３", 0, 800, 800, Dxl1, true);
	FadeQC5("敵機２",200,1000,200,400,0,Dxl1,false);
	FadeQC5("敵機３",200,1000,200,400,0,Dxl2,true);

	OnSE("se戦闘_動作_空突進02",1000);

	FadeQC5("敵機２",200,0,200,400,0,Dxl1,false);
	FadeQC5("敵機３",200,0,200,400,0,Dxl2,true);

	Move("敵機２", 0, 248, 40, Dxl1, true);
	Move("敵機３", 0, 248, 40, Dxl1, true);
	Zoom("敵機２", 0, 300, 300, Dxl1, true);
	Zoom("敵機３", 0, 300, 300, Dxl1, true);
	FadeQC5("敵機２",200,1000,200,400,0,Dxl1,false);
	FadeQC5("敵機３",200,1000,200,400,0,Dxl2,true);

	OnSE("se戦闘_動作_空突進02",1000);

	FadeQC5("敵機２",200,0,200,400,0,Dxl1,false);
	FadeQC5("敵機３",200,0,200,400,0,Dxl2,true);

	Move("敵機２", 0, 0, -90, Dxl1, true);
	Move("敵機３", 0, 0, -90, Dxl1, true);
	Zoom("敵機２", 0, 1000, 1000, Dxl1, true);
	Zoom("敵機３", 0, 1000, 1000, Dxl1, true);
	FadeQC5("敵機２",200,1000,200,400,0,Dxl1,false);
	FadeQC5("敵機３",200,1000,200,400,0,Dxl2,true);

	Wait(1000);

	CreateSE("サウンド２","se特殊_雰囲気_集中01_L");

	SetVolume("@mbgm09", 1000, 500, NULL);
	SetVolume("サウンド１", 1000, 0, NULL);
	SoundPlay("サウンド２",0,500,true);

	MoveFRP1stop();
	Move("敵機３", 150, 172, -46, Dxl1, false);
	Move("自機１", 150, -305, -197, Dxl1, true);

	Fade("背景６", 0, 1000, null, true);
	SCR1stop();
	FadeDelete("敵機２", 0, true);
	Delete("背景４");
	Delete("背景５");

	Fade("エフェクト９", 0, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　追撃の一打を躱し、敵騎の内懐へ踏み込む。
　至近の間から、左手を相手の背に回すと同時、右の
拳を鳩尾に打ち込む――

　吉野御流合戦礼法、<RUBY text="カナジキ">鉄床</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ずごーん。
//◆吹っ飛び銀星号
//◆しかし再起
	Fade("エフェクト９", 0, 0, null, true);

	CreateTextureEX("イベント１", 19000, 0, 0, "cg/ev/ev934_村正掌打_a.jpg");
	Zoom("イベント１", 0, 1500, 1500, Dxl2, true);

	CreateTextureEX("背景２", 18000, -5000, -3500, "イメージ１");
	CreateTextureEX("背景３", 18000, -5000, -3500, "イメージ１");
	Zoom("背景２", 0, 4000, 4000, Dxl2, true);
	Zoom("背景３", 0, 4000, 4000, Dxl2, true);
	Rotate("背景２", 0, @0, @0, @45, null, true);
	Rotate("背景３", 0, @0, @0, @45, null, true);

	SetVolume("@サウンド*", 500, 0, NULL);
	SetVolume("@mbgm09", 1000, 1000, NULL);
	OnSE("se戦闘_破壊_爆発01",1000);
	OnSE("se戦闘_攻撃_鎧攻撃命中03",1000);
	OnSE("se戦闘_攻撃_鎧攻撃命中",1000);

	Fade("イベント１", 0, 1000, null, false);
	Shake("イベント１", 500, 50, 50, 0, 0, 500, Dxl1, false);
	Fade("色１", 500, 1000, null, true);

		Move("背景６", 0, @0, @-280, Axl1, true);
		Fade("背景６", 0, 0, null, true);
		Delete("イベント１");
		Delete("敵機１");
		Delete("自機１");
		Move("敵機３", 0, -10, -80, Axl1, true);
		Rotate("敵機３", 0, @0, @0, @-120, null, true);
		Zoom("敵機３", 0, 500, 500, Dxl2, true);
		//シェイク
		MoveSSP1("@敵機３",100000,0,3,0,3,500,null);
		SetBlur("敵機３", true, 2, 300, 50, false);
		Request("敵機３", Smoothing);

		CreateSE("サウンド１","se戦闘_動作_空突進05");
		OnSE("se戦闘_攻撃_鎧_吹っ飛ぶ02",1000);
		SoundPlay("サウンド１",500,600,true);

	CreateSCR1("@背景２","@背景３",1000,1000,3000);
	Fade("色１", 500, 0, null, false);

	Wait(3000);

	//WaitKey();
	SetVolume("サウンド１", 2000, 0, NULL);

	SetBlur("敵機３", false, 2, 500, 200, false);

	MoveSSP1stop();
	Move("背景６", 1000, @100, @280, Dxl1, false);
	Fade("背景６", 1000, 1000, null, false);
	Shake("敵機３", 1000, 50, 50, 0, 0, 700, Dxl1, false);
	Move("敵機３", 1000, -950, -533, Dxl2, false);
	Rotate("敵機３",1000, @0, @0, 30, Dxl2, true);

	SCR1stop();
	Wait(500);

	CreateWindow("ウィンドウ１", 150, -500, 90, 3000, 1000, false);
	SetAlias("ウィンドウ１", "ウィンドウ１");
	CreateTextureEX("ウィンドウ１/背景１", 18100, -900, -505, "cg/bg/bg109_宇宙空間.jpg");
	CreateTextureEX("ウィンドウ１/自機１", 18100, 50, -50, "cg/st/3d村正最終_立ち_戦闘b.png");
	Rotate("ウィンドウ１", 0, @0, @0, @-29, null, true);
	Rotate("ウィンドウ１/自機１", 0, @0, @0, @50, null, true);
	Zoom("ウィンドウ１", 0, 0, 0, Dxl2, true);
	Fade("ウィンドウ１/*", 0, 999, null, true);

	Zoom("敵機３", 0, 1000, 1000, Dxl2, true);

	Move("ウィンドウ１/自機１", 2000, @100, @100, Dxl1, false);
	Move("ウィンドウ１/背景１", 2000, @-50, @-50, Dxl1, false);
	Move("敵機３", 2000, -364, -145, Dxl2, false);
	Zoom("ウィンドウ１", 2000, 1000, 1000, Dxl2, false);

	SetFwC("cg/fw/fw銀星号_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【光】
<voice name="光" class="光" src="voice/md05/024vs0170a14">
《景明ぃ……！》

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/024vs0180a01">
《――――》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　<RUBY text="おれ">私</RUBY>が進む。前方へ。
　敵が進む。前方へ。

　その必然として激突する。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆両騎激突
//◆しばらく演出オンリー
//◆がすがす動かしてがすがすやり合って下さい。
//◆殴り合いに機動戦も混ぜたり。
//◆ドラゴンボールの戦闘っぽい感じか？
//◆背景として地球を活用。

	OnSE("se戦闘_動作_空突進02",1000);
	OnSE("se戦闘_動作_空突進06",1000);

	Move("敵機３", 300, 441, 327, Axl1, false);
	Move("ウィンドウ１/自機１", 300, -500, -500, Axl1, false);

	DrawTransition("色１", 200, 0, 1000, 100, null, "cg/data/circle_02_00_0.png", false);
	Fade("色１", 200, 1000, null, true);

	Wait(1000);

	Delete("ウィンドウ/*");
	Delete("ウィンドウ１");
	Delete("イベント*");
	Delete("背景*");
	Delete("エフェクト*");
	Delete("敵機*");
	Delete("自機*");
	CreateTextureSP("イベント１", 18000, 0, 0, "cg/ev/ev251_村正VS銀星号決戦第二局.jpg");
	Fade("色１", 1000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　形勢はほぼ互角。

　敵騎に決定的打撃を与えられない。
　しかし、敵騎も<RUBY text="おれ">私</RUBY>に決定打を与えられない。

　――そう、互角。
　三世千子右衛門尉村正／朝敵追討執行用戦闘能力は、
遂に二世千子右衛門尉村正／銀星号と同等の領域まで
至っている。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆応酬
//◆で、最後に村正が一撃入れて銀星号吹っ飛び、村正
//◆追撃、銀星号はそれを躱して上昇

	CreateTextureEX("背景２", 18000, -5000, -3500, "イメージ１");
	CreateTextureEX("背景３", 18000, -5000, -3500, "イメージ１");
	Zoom("背景２", 0, 4000, 4000, Dxl2, true);
	Zoom("背景３", 0, 4000, 4000, Dxl2, true);
	Rotate("背景２", 0, @0, @0, @45, null, true);
	Rotate("背景３", 0, @0, @0, @45, null, true);

	CreateTextureEX("背景１", 18050, -4000, Middle, "イメージ１");

	CreateTextureEXadd("エフェクト１", 19000, 20, 20, "cg/ef/ef020_村正突貫03.jpg");
	Zoom("エフェクト１", 0, 10000, 10000, Dxl2, true);
	SetVertex("エフェクト１", 1024, 576);
	CreateTextureEXadd("エフェクト２", 19000, -20, -20, "cg/ef/ef019_銀星号突貫03.jpg");
	Zoom("エフェクト２", 0, 10000, 10000, Dxl2, true);
	SetVertex("エフェクト２", 0, 0);

	CreateTextureEXadd("エフェクト３", 19000, 0, 0, "cg/ef/ef044_火花a.jpg");
	SetBlur("エフェクト３", true, 2, 500, 100, false);

	//完全ランダム
	MoveFRP1("@エフェクト１",5000,15,15);
	MoveFRP2("@エフェクト２",5000,15,15);

	CreateSE("サウンド１","se特殊_陰義_磁力加速03_L");
	CreateSE("サウンド２","se戦闘_動作_空突進05");
	OnSE("se戦闘_動作_空突進01",1000);
	SoundPlay("サウンド１",0,1000,true);
	SoundPlay("サウンド２",4000,1000,true);

	Fade("色１", 100, 1000, null, true);
	Delete("イベント１");
	CreateSCR1("@背景２","@背景３",1000,1000,3000);
	Fade("色１", 1000, 0, null, false);
	Zoom("エフェクト２", 1000, 1100, 1100, Dxl2, false);
	Fade("エフェクト２", 1000, 1000, null, true);

	Wait(1000);

	Fade("色１", 100, 1000, null, true);
	Fade("エフェクト２", 0, 0, null, true);
	Fade("色１", 1000, 0, null, false);
	Zoom("エフェクト１", 1000, 1100, 1100, Dxl2, false);
	Fade("エフェクト１", 1000, 1000, null, true);

	Wait(1000);

	SetVolume("サウンド１", 3000, 0, NULL);
	SetVolume("サウンド２", 3000, 400, NULL);
	OnSE("se戦闘_衝撃_衝突01",1000);
	OnSE("se戦闘_破壊_爆発06",1000);

	Shake("背景１", 2000, 100, 0, 0, 0, 700, Dxl3, false);
	Fade("背景１", 200, 1000, null, false);

	Zoom("エフェクト１", 2000, 20000, 20000, Axl2, false);
	Zoom("エフェクト２", 2000, 20000, 20000, Axl2, false);
	Fade("エフェクト２", 100, 1000, null, false);
	Wait(500);

	Zoom("エフェクト３", 1500, 2000, 2000, Axl1, false);
	Fade("エフェクト３", 1000, 1000, null, 500);
	Fade("色１", 1000, 1000, null, true);

	MoveFRP1stop();
	MoveFRP2stop();
	SCR1stop();

	Wait(1000);

	Delete("エフェクト*");

	CreateTextureEX("背景２", 18000, -4500, Middle, "イメージ１");
	CreateTextureEX("背景３", 18000, -4500, Middle, "イメージ１");

	CreateTextureSP("敵機１", 18100, -150, -50, "cg/st/3d銀星号_騎航_通常.png");
	CreateTextureSP("自機１", 18100, 0, -293, "cg/st/3d村正最終_騎航_通常.png");
	Zoom("自機１", 0, 500, 500, Dxl2, true);
	Zoom("敵機１", 0, 500, 500, Dxl2, true);
	Rotate("敵機１", 0, @0, @0, -90, null, true);

	CreateTextureEX("背景０", 18100, 0, 0, "cg/bg/bg109_宇宙空間.jpg");
	CreateTextureEX("敵機２", 19100, 0, 0, "cg/st/3d銀星号_立ち_戦闘b.png");
	Rotate("敵機２", 0, @0, @0, -180, Dxl1, false);

	CreateTextureEX("エフェクト１", 18100, 0, 0, "cg/ef/ef010_汎用斜め軌道.jpg");
	Zoom("エフェクト１", 0, 2000, 2000, Dxl2, true);

	//シェイク
	MoveSSP1("@自機１",100000,0,2,0,2,600,null);
	MoveSSP2("@敵機１",100000,0,2,0,2,600,null);

	Move("自機１", 1000, -170, -293, Dxl1, false);
	Move("自機１", 2000, @-100, @50, Dxl1, false);

	CreateSCR1("@背景２","@背景３",1000,0,@0);
	Fade("背景１", 0, 0, null, true);
	Fade("色１", 1000, 0, null, false);

	Wait(2000);

	Move("自機１", 300, @-50, @50, Axl1, true);

	SetVolume("サウンド２", 500, 0, NULL);
	Fade("色１", 0, 1000, null, true);
	OnSE("se戦闘_攻撃_刀振る02",1000);
	Fade("エフェクト１", 0, 1000, null, true);
		Fade("背景１", 0, 1000, null, true);
		Fade("自機１", 0, 0, null, true);
		//Zoom("敵機１", 0, 1000, 1000, Dxl1, false);
		Move("敵機１", 0, -113, -354, Dxl1, false);
		MoveSSP1stop();
		MoveSSP2stop();
		SCR1stop();
		OnSE("se戦闘_動作_空突進01",1000);

		CreateColorEXadd("色３", 20000, "#FFFFFF");
		CreateColorEXadd("色４", 20000, "#FFFFFF");
		Request("色３", Erase);
		CreateTextureEXadd("エフェクト０", 18100, 0, 0, "cg/ef/ef021_汎用陰義発動a.jpg");
		CreateTextureEX("エフェクト３", 18100, 0, 0, "cg/ef/ef021_汎用陰義発動b.jpg");
		CreateTextureEX("エフェクト４", 18100, 0, 0, "cg/ef/ef021_汎用陰義発動b.jpg");
		Request("エフェクト３", Erase);
	Rotate("エフェクト*", 0, @0, @180, @0, null,true);

	Fade("色１", 300, 0, null, false);
	Zoom("エフェクト１", 300, 1000, 1000, Dxl1, false);
	Fade("エフェクト１", 300, 0, null, false);
	Move("背景１", 500, -1000, @0, Dxl1, false);
	Move("敵機１", 500, @0, @200, Dxl1, false);
	Rotate("敵機１", 500, @0, @0, 360, Dxl1, true);

	OnSE("se戦闘_動作_空突進03",1000);
	OnSE("se戦闘_動作_空突進08",1000);

	Move("背景１", 500, @-100, @0, Axl1, false);
	BezierMove("敵機１", 500, (@0,@0){@300,@200}{@600,@200}(@900,@-400), Axl1, true);
	Fade("敵機１", 0, 0, null, true);

	Fade("背景０", 300, 1000, null, true);

//徒歩：ここからてきとう
	OnSE("se特殊_鎧_エネルギー充電01",1000);

	Fade("敵機２", 0, 1000, null, true);
	Move("背景０", 500, -188, -215, Dxl1, false);
	Rotate("敵機２", 500, @0, @0, 0, Dxl2, false);
	Move("敵機２", 500, -113, -354, Dxl1, true);

	Fade("色１", 300, 500, null, true);
	Fade("色１", 500, 0, null, false);
	Fade("エフェクト０", 500, 1000, null, false);
	DrawTransition("エフェクト０", 500, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);

	CreatePlainEXadd("背景９", 19100);

	//シェイク
	MoveSSP1("@背景９",100000,0,2,0,2,500,null);
	MoveFRP1("@背景９",5000,10,10);
	CreateZZP1("@背景９",500,1050,1100,Dxl1,Axl1,700,0);
	MoveSSP2("@エフェクト０",100000,0,2,0,2,500,null);
	CreateAFB1("@エフェクト３","@エフェクト４",300,500,400,2);
	CreateAFB2("@色３","@色４",600,300,1100,2);

	SetFwC("cg/fw/fw銀星号_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【光】
<voice name="光" class="光" src="voice/md05/024vs0190a14">
《シィィィィァア――》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEXadd("色１", 20000, "#FFFFFF");
	Fade("色１", 300, 1000, null, true);

//◆銀星号、エネルギー充填
	OnSE("se戦闘_銀星号_ブレイジングストリーム",1000);

	CreateTextureEX("イベント１", 18100, 0, 150, "cg/ev/ev936_銀星号ブレイジングストリーム.jpg");
	CreateTextureEXadd("イベント２", 18100, 0, 150, "cg/ev/ev936_銀星号ブレイジングストリーム.jpg");
	Zoom("イベント１", 0, 1200, 1200, null, false);
	Zoom("イベント２", 0, 1200, 1200, null, false);
	Fade("イベント１", 0, 1000, null, true);
	Request("イベント*", Smoothing);


	Delete("エフェクト*");
	Delete("自機*");
	Delete("敵機*");
	Delete("背景*");

	MoveSSP1stop();
	MoveSSP2stop();
	MoveFRP1stop();
	ZZP1stop();

	Fade("色*", 300, 0, null, true);

	Move("イベント２", 5000, @0, @50, null, false);
	Zoom("イベント２", 5000, 1300, 1300, null, false);
	Shake("イベント２", 1000000, 2, 0, 0, 0, 1000, null, false);
	Fade("イベント２", 1500, 500, null, true);

	SetVolume("OnSE*", 1000, 700, null);


	SetFwR("cg/fw/fw銀星号_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【光】
<voice name="光" class="光" src="voice/md05/024vs0200a14">
《<RUBY text="ブレイジング・ストリーム">瘴熱疾走・火隕星</RUBY>!!》

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,0);//―――――――――――――――――――――――――――――

	SetVolume("OnSE*", 1000, 1000, null);

//◆ブレイジングストリーム。重力ビームな。
	OnSE("se戦闘_バロウズ_ボーガン射撃01",1000);
	OnSE("se戦闘_神_グラビティブラスト_発射",1000);
	Move("イベント*", 500, @0, @-1260, Axl2, false);
	Zoom("イベント*", 500, 1500, 1500, Axl2, true);

	SetFwR("cg/fw/fw村正武者_通常b.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/024vs0210a01">
《――――!!》

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,0);//―――――――――――――――――――――――――――――

//◆村正、重力障壁展開
//◆ずごーん。力と力の激突
//◆が終わって、村正と銀星号また対峙。一呼吸
	SetVolume("@mbgm*", 1000, 0, NULL);

	OnSE("se戦闘_陰義_磁力展開",1000);
	Fade("色１", 500, 1000, null, true);

	OnSE("se戦闘_陰義_磁力弾く",1000);
	CreateTextureEX("イベント３", 18100, 0, 0, "cg/ev/ev903_村正磁気バリアー展開_b.jpg");
	Fade("イベント３", 0, 1000, null, true);
	Fade("色１", 100, 0, null, true);

	Wait(500);
	Fade("色１", 100, 1000, null, true);


	OnSE("se戦闘_衝撃_衝突01",1000);
	Wait(3000);

	SetVolume("サウンド*", 3000, 0, NULL);
	SetVolume("OnSE*", 3000, 0, NULL);

	AFB1stop();
	AFB2stop();

	Delete("イベント１");
	Delete("イベント２");
	Delete("イベント３");
	Delete("色２");
	Delete("色３");
	Delete("色４");

	CreateTextureSP("背景１", 16100, Center, Middle, "cg/bg/bg109_宇宙空間.jpg");
	CreateTextureSP("敵機１", 16100, -488, -259, "cg/st/3d銀星号_騎航_通常.png");
	Zoom("敵機１", 0, 50, 50, Dxl2, true);
	CreateTextureSP("自機１", 16100, 180, -100, "cg/st/3d村正最終_騎航_通常.png");
	Zoom("自機１", 0, 50, 50, Dxl2, true);

	Rotate("自機１", 0, @0, @0, @80, null, true);
	Fade("色１", 1000, 0, null, true);

	Wait(1000);

	SetFwC("cg/fw/fw光_哀愁.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【光】
<voice name="光" class="光" src="voice/md05/024vs0220a14">
《…………》

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/024vs0230a01">
《…………》

{	FwC("cg/fw/fw光_哀愁.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0240a14">
《おかしい……》

{	FwC("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0250a14">
《解せぬ。
　どうにも、解せぬ》

//【光】
<voice name="光" class="光" src="voice/md05/024vs0260a14">
《良い勝負をしているのだ。
　かつて無かったほど――》

//【光】
<voice name="光" class="光" src="voice/md05/024vs0270a14">
《光に追随する力と技。
　見事というほかはない》

{	FwC("cg/fw/fw光_哀愁.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0280a14">
《……なのに……》

{	FwC("cg/fw/fw光_警戒.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0290a14">
《なぜ、響かぬ？
　なぜ、心が躍らぬ？》

//【光】
<voice name="光" class="光" src="voice/md05/024vs0300a14">
《光のこの、醒めた胸は何だ？》

//【光】
<voice name="光" class="光" src="voice/md05/024vs0310a14">
《景明と、これほどの戦いを演じているのだ。
　震え、昂ぶり、酔いしれて当然のはずが》

{	FwC("cg/fw/fw光_哀愁.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0320a14">
《どうしてこんなにも虚しい？
　まるで……案山子か何かと殴り合っている
かのように……》

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/024vs0330a01">
《…………》

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/024vs0340a15">
《……ふん……？
　流石は御堂、相変わらずの鋭さよ》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/024vs0350a15">
《どうやらその勘、正鵠を得ておるぞ》

{	FwC("cg/fw/fw光_不思議.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0360a14">
《村正……？》

//おがみ：音声合わせ修正
//《なれの兄はあそこにおらぬ》
{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/024vs0370a15">
《なれの兄はあそこにはおらぬ》

{	FwC("cg/fw/fw光_驚き.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0380a14">
《何？》

{	FwC("cg/fw/fw光_警戒.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0390a14">
《いや、馬鹿な。
　いつぞやのようにおまえの娘が景明抜きで
武者のふりをしているというのか？　そんな
はずは――》

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/024vs0400a15">
《あの時とは違う。
　あれは正しく合一を果たした武者には違い
ない》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/024vs0410a15">
《ふむ……考えようによっては、これも心甲
一致か……》

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0420a14">
《どういう事だ!?》

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/024vs0430a15">
《湊斗景明の心は今、劒冑に食われていると
いうことよ。
　意思を呑まれ、肉体を支配されている》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/024vs0440a15">
《精神干渉の力でな》

{	SoundPlay("@mbgm01",0,1000,true);
	FwC("cg/fw/fw光_驚き.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0450a14">
《――――――――》

{	FwC("cg/fw/fw光_愕然.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0460a14">
《な……何だと……！》

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/024vs0470a15">
《奴の動きの良さも頷ける。
　肉体の脳を劒冑の統制下に置いて、思考と
反応の無駄を極限まで削ぎ落とした結果か》

{	FwC("cg/fw/fw光_愕然.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0480a14">
《いや違う！　そんなことはない！
　……あってはならぬ……！》

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0490a14">
《景明、そこにいるなら応えろ！
　おまえは、まさか、劒冑の傀儡になっては
いまい!?》

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/024vs0500a01">
《――――》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　強い信号が着信している。<k>
　
　反応の必要を認めず。

　攻撃態勢の再起完了。
　戦闘を続行する。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正突撃。蹴り
//◆直撃。吹っ飛ぶ銀星号

	CreateTextureEX("イベント１", 19000, 0, 0, "cg/ev/ev935_村正膝蹴り_a.jpg");

	OnSE("se戦闘_攻撃_鎧_打撃02",1000);

	Fade("色１", 0, 1000, null, true);
	Fade("イベント１", 0, 1000, null, true);
	Fade("色１", 500, 0, null, true);
	Delete("自機*");
	Delete("敵機*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　敵騎は回避を失敗した。
　正確には、回避を行わなかった。

　<RUBY text="おれ">私</RUBY>の一撃を浴び、大きく吹き飛ぶ。
　――相当の損傷を与えたと推測。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("背景１", 18000, 0, 0, "cg/bg/bg204_横旋回背景_04.jpg");
	StL(18100, @0, @0,"cg/st/3d銀星号_立ち_通常.png");
	FadeStL(0,true);

	FadeDelete("イベント１", 500, true);

	SetFwC("cg/fw/fw二世女王蟻_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/024vs0510a15">
《御堂！》

{	FwC("cg/fw/fw光_驚き.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0520a14">
《…………》

//【光】
<voice name="光" class="光" src="voice/md05/024vs0530a14">
《か――感じぬ》

//【光】
<voice name="光" class="光" src="voice/md05/024vs0540a14">
《景明の心が見当たらぬ》

{	FwC("cg/fw/fw光_哀愁.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0550a14">
《本当にいないのか》

//【光】
<voice name="光" class="光" src="voice/md05/024vs0560a14">
《……本当に……》

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0570a14">
《おれの景明を奪ったのかッッ!!
　蜘蛛の村正ァ!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆びりびり。衝撃走る
	OnSE("se特殊_その他_茶々丸衝撃波",700);

	EffectZoomadd(10000, 1000, 1000, "cg/ef/ef003_汎用移動.jpg", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　強い――強烈極まる怒声の信号。
　
　反応の必要は無いが、甲鉄が震撼した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_警戒.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【光】
<voice name="光" class="光" src="voice/md05/024vs0580a14">
《許さん。
　認めん》

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0590a14">
《おまえなどに……景明を!!》

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/024vs0600a15">
《あの娘一人でできる決断とも思えん。
　おそらく仕手の同意を得て……いや、それ
とも最初から仕手の指示で――》

{	FwC("cg/fw/fw光_愕然.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0610a14">
《云うな》

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/024vs0620a15">
《……》

{	FwC("cg/fw/fw光_哀愁.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0630a14">
《それこそ有り得ん。
　景明が……己の意思で劒冑にすべてを奪わ
せるなど……》

//【光】
<voice name="光" class="光" src="voice/md05/024vs0640a14">
《おれは先刻、言った。
　景明に――奪い尽くす、と》

{	FwC("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0650a14">
《おれが奪うのだ》

{	FwC("cg/fw/fw光_警戒.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0660a14">
《景明を奪い、己がものとするのはおれだ！》

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0670a14">
《この光だけの権利だ!!》

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/024vs0680a01">
《――――》

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0690a14">
《返してもらうぞ……蜘蛛！
　何をどうしても、何がどうあってもな！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　反応の必要を認めず。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正突進。迎え撃つ銀星号
//◆攻防

	DeleteStA(300,true);

	OnSE("se戦闘_攻撃_鎧_剣戟04",1000);
	CreateTextureSP("イベント１", 18000, 0, 0, "cg/ev/ev251_村正VS銀星号決戦第二局.jpg");
	EffectZoomadd(18100, 1000,300, "cg/ev/ev251_村正VS銀星号決戦第二局.jpg", false);
	Fade("イベント１", 500, 1000, null, true);
	Wait(500);

	SetFwC("cg/fw/fw光_警戒.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【光】
<voice name="光" class="光" src="voice/md05/024vs0700a14">
《忌々しい》

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/024vs0710a01">
《――――》

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0720a14">
《忌々しいのだァ！
　我が物顔に景明の手足を操りおって！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一撃と一撃。交錯
//◆距離を取る銀星号

	Fade("色１", 0, 1000, null, true);

	OnSE("se戦闘_破壊_鎧04",1000);
	Delete("イベント１");

	StL(18000, -300, -340,"cg/st/3d銀星号_立ち_戦闘b2.png");
	Request("@StL*", Smoothing);
	Zoom("@StL*", 0, 2000, 2000, null, true);

	CreateTextureSP("背景１", 100, 0, 0, "cg/bg/bg204_横旋回背景_04.jpg");
	FadeStL(0,true);
	CP_AllDelete();

	OnSE("se戦闘_動作_空突進02",1000);
	Zoom("@StL*", 1000, 800, 800, Dxl2, false);
	Fade("色１", 1000, 0, null, true);

	SetFwR("cg/fw/fw光_警戒.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【光】
<voice name="光" class="光" src="voice/md05/024vs0730a14">
《胃が煮える……。
　<RUBY text="はらわた">腸</RUBY>が<RUBY text="ねじ">捩子</RUBY>くれる》

//【光】
<voice name="光" class="光" src="voice/md05/024vs0740a14">
《触れるのも触れられるのも、虫唾が走って
堪らぬ》

{	SetVolume("@mbgm*", 3000, 0, NULL);
	FwR("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0750a14">
《もう良い》

//◆すりつぶす
{	FwR("cg/fw/fw光_警戒.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0760a14">
《おまえは<RUBY text="・・・・">擂り潰す</RUBY>。
　豆のように挽いてやる》

{	FwR("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0770a14">
《塵となって、この暗い海に溶けてゆけ!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆銀星号、エネルギー上昇
//◆時空震開始

	CreateSE("サウンド２","se戦闘_銀星号_飢餓虚空魔王星_準備");
	SoundPlay("サウンド２",2000,1000,true);

	CreateTextureEX("イベント１", 18100, 0, 0, "cg/ev/ev923_銀星号辰気収斂.jpg");
	Zoom("イベント１", 0, 2000, 2000, null, true);
	SetBlur("イベント１", true, 1, 500, 200, false);

	Fade("イベント１", 1000, 1000, null, false);
	Zoom("イベント１", 1500, 1000, 1000, Dxl1, true);

	DeleteStA(0,true);
	Delete("色*");
	Delete("イメージ１");
	Wait(500);

	SetFwR("cg/fw/fw村正武者_通常b.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/024vs0780a01">
《――――》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　危険を察知する。

　この震動。
　この波動。
　
　全てが、最大の脅威の発生を訴えている。

　対処方法を検討。

　緊急退避――間に合わない。
　先制強襲――間に合うか？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

//◆村正高速突進

	SetFwR("cg/fw/fw二世女王蟻_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/024vs0790a15">
《<RUBY text="おわりをはじめる">蒐窮開闢</RUBY>》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/024vs0800a15">
《<RUBY text="しをおこなう">終焉執行</RUBY>》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/024vs0810a15">
《<RUBY text="そらをあらわす">虚無発現</RUBY>》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆エネルギー充填完了
	SetVolume("サウンド２", 3000, 0, NULL);
	Wait(1000);
	CreateSE("サウンド１","se特殊_その他_辰気収斂_L");
	SoundPlay("@サウンド１",2000,300,true);


/*
	StC(18000, @0, @0,"cg/st/3d銀星号_立ち_陰義.png");
	FadeStC(0,true);
*/

	CreateColorEXadd("絵色エフェクト", 2000, "#FF00FF");
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/ef/ef037_飢餓虚空魔王星a.jpg");
	CreateTextureSPover("絵背景200", 100, Center, Middle, "cg/ef/ef037_飢餓虚空魔王星a.jpg");
	Request("絵背景200", Smoothing);
	Zoom("絵背景200", 0, 2000, 2000, null, true);
	Fade("絵背景200", 0, 500, null, true);

	CreateTextureEXsub("ノイズ", 100, Center, Middle, "cg/ef/ef037_飢餓虚空魔王星a.jpg");
	Zoom("ノイズ", 0, 2000, 2000, null, true);
	DrawEffect("ノイズ", 50, "SuperWave", 50, 60, null);
	Fade("ノイズ", 0, 100, null, true);

	$Warpトランジ = @絵色エフェクト;
	$Warpトランジ速度 = 3000;
	$Warpトランジなめらかさ = 500;

	$ローテートナット名１ = @絵背景200;
	$ローテート速度１ = 10000;
	$ローテート角度１ = @360;


	CreateProcess("プロセス２", 150, 0, 0, "RotetoLoop1");
	SetAlias("プロセス２","プロセス２");
	CreateProcess("プロセス３", 150, 0, 0, "TurboBlur3");
	SetAlias("プロセス３","プロセス３");

	Request("プロセス２", Start);
	Request("プロセス３", Start);

	SetVolume("SE01", 4000, 500, null);

//	FadeDelete("黒幕*", 2000, true);
	Fade("イベント１", 1000, 0, null, true);


	SetFwR("cg/fw/fw村正武者_通常b.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/024vs0820a01">
《――――》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　届かない。

　阻止、ならず。
　破局は顕現す。

　開始してはならぬ事象が開始する。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm12",0,1000,true);

	CreateTextureEX("イベント１", 18100, 0, 0, "cg/ev/ev924_銀星号飢餓虚空魔王星.jpg");
	Zoom("イベント１", 0, 2000, 2000, null, true);
	SetBlur("イベント１", true, 1, 500, 200, false);

	Fade("イベント１", 500, 1000, null, false);
	Zoom("イベント１", 800, 1000, 1000, Dxl1, true);

	Wait(500);

	SetFwR("cg/fw/fw光_怒り.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【光】
<voice name="光" class="光" src="voice/md05/024vs0830a14">
《<RUBY text="ブラックホール">飢餓虚空</RUBY>――――<RUBY text="フェアリーズ">魔王星</RUBY>!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆飢餓虚空・発生
	CreateColorEXadd("絵色100", 15000, "WHITE");
	CreateColorEXadd("上敷白", 21000, "WHITE");

	SetVolume("サウンド１", 1000, 1000, null);
	Fade("上敷白", 1000, 1000, Axl1, true);

	MovieSESet(20000,"mv魔王星","se戦闘_銀星号_飢餓虚空魔王星_発動");
	Fade("絵色100", 200, 1000, null, false);
	Fade("上敷白", 300, 0, Axl3, false);
	MovieSEStart(1000);


	Request("プロセス*", Stop);
	Delete("プロセス*");
	Delete("絵背景*");
	Delete("イベント１");
	Delete("上敷白");


	CreateTextureEX("絵背景村正", 3500, Center, Middle, "cg/st/3d村正最終_騎航_戦闘3.png");
	Rotate("絵背景村正", 0, @0, @0, @-50, null,true);
	Move("絵背景村正", 0, @-100, @20, null, true);

	Request("絵背景村正", Smoothing);
	Zoom("絵背景村正", 0, 1000, 1000, null, true);
//	Shake("絵背景村正", 1000000, 1, 1, 0, 0, 500, null, false);
//	SetBlur("絵背景村正", true, 1, 400, 70, false);


$ループムーブナット名 = "@絵背景村正";
$ループムーブタイム = 2500;

	CreateProcess("プロセス５", 150, 0, 0, "FlyMoving");
	SetAlias("プロセス５","プロセス５");


	CreateTextureEXsub("絵背景効果線", 3000, Center, Middle, "cg/ef/ef039_時間移動.jpg");
//	SetVertex("絵背景効果線", 512, 270);
	$効果ナット名 = @絵背景効果線;

	CreateProcess("プロセス６", 150, 0, 0, "TurboBlur");
	SetAlias("プロセス６","プロセス６");



	CreateTextureSPover("絵背景100", 200, Center, Middle, "cg/ef/ef037_飢餓虚空魔王星b.jpg");
	CreateTextureSPover("絵背景200", 200, Center, Middle, "cg/ef/ef037_飢餓虚空魔王星b.jpg");
	Request("絵背景200", Smoothing);
	Zoom("絵背景200", 0, 4000, 4000, null, true);
	Fade("絵背景200", 0, 700, null, true);
	Request("絵背景100", Smoothing);
	Zoom("絵背景100", 0, 4000, 4000, null, true);
	Fade("絵背景100", 0, 700, null, true);


	CreateTextureEX("ノイズ", 100, Center, Middle, "cg/ef/ef037_飢餓虚空魔王星b.jpg");
	Request("ノイズ", Smoothing);
	Zoom("ノイズ", 0, 1500, 1500, null, true);
	DrawEffect("ノイズ", 50, "SuperWave", 20, 30, null);
	Fade("ノイズ", 0, 1000, null, true);


	$ローテートナット名１ = @絵背景100;
	$ローテート速度１ = 100000;
	$ローテート角度１ = @3600;

	$ローテートナット名２ = @絵背景200;
	$ローテート速度２ = 100000;
	$ローテート角度２ = @3600;

	$ズームナット名１ = @絵背景100;
	$ズームナット名２ = @絵背景200;


	CreateProcess("プロセス１", 150, 0, 0, "AnkokuZoomLoopEX");
	SetAlias("プロセス１","プロセス１");
	CreateProcess("プロセス２", 150, 0, 0, "RotetoLoop1");
	SetAlias("プロセス２","プロセス２");
	CreateProcess("プロセス３", 150, 0, 0, "TurboBlur3");
	SetAlias("プロセス３","プロセス３");
	CreateProcess("プロセス４", 150, 0, 0, "RotetoLoop2");
	SetAlias("プロセス４","プロセス４");

	Request("プロセス１", Start);
	Request("プロセス２", Start);
	Request("プロセス３", Start);
	Request("プロセス４", Start);
	Request("プロセス５", Start);
	Request("プロセス６", Start);


	Rotate("絵背景村正", 3000, @0, @0, @50, Dxl1,false);
	Zoom("絵背景村正", 3000, 400, 400, Dxl1, false);
	Fade("絵背景村正", 1000, 1000, null, false);

	SetVolume("サウンド１", 3000, 500, null);
	FadeDelete("絵色100", 2000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　暗い<RUBY text="そら">宇宙</RUBY>よりもなお深い闇。

　黒の渦。

　それは白銀の武者の中に胎児の如く現れ、
　嬰児の如く生まれて泣き声を上げた。

　風もない空間が<RUBY text="わなな">戦慄</RUBY>き、<RUBY text="おめ">喚</RUBY>く。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆拡大
//	CreateTextureEX("エフェクト２", 18100, 0, 0, "cg/ef/ef037_飢餓虚空魔王星b.jpg");
//	Fade("エフェクト２", 500, 1000, null, true);

	OnSE("se戦闘_銀星号_飢餓虚空魔王星_発動",1000);
	$Warpトランジ = @絵色エフェクト;
	$Warpトランジ速度 = 1000;
	$Warpトランジなめらかさ = 500;
	Fade("絵色エフェクト", 1000, 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　渦は成長する。

　何を吸ってか。
　何を喰らってか。

　際限もなく膨れ、膨れてゆく。

　渦は渦。
　闇は闇。

　変質せず、規模だけ<RUBY text="ひろ">拡</RUBY>げて。

　何を喰らっているのか。
　<RUBY text="クウ">空</RUBY>か。<RUBY text="キ">気</RUBY>か。それとも<RUBY text="オノレ">己</RUBY>か。

　渦は渦。
　闇は闇。

　何を喰らおうと、そこには何も生じない。

　無。

　無のままに膨張だけを遂げる。

　何もかも喰らいながら、
　変わらぬ飢えを哭き続ける。

　飢餓の虚空。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//	Fade("エフェクト２", 500, 0, null, true);

//◆ズゴゴ。適当に演出
	SetVolume("サウンド１", 2000, 1000, null);
	Fade("ノイズ", 2000, 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　騎体行動の自由が失われている。

　ここは既に辰気現象の効力範囲。
　見えざる縄の数々が、手足と云わず首と云わず絡み
付く。

　騎航――<k>不可。

　我が引辰制御機動はこの現象下においてほぼ無効。
　敵騎の操る辰気に制圧される。

　辰気量を計測。<k>
　
　
　――――不明。

　<RUBY text="ゼロ">〇</RUBY>であり<RUBY text="ムゲン">∞</RUBY>。
　計測不可。計測不可。

　極強度の牽引力が<RUBY text="おれ">私</RUBY>を捕捉し引き込んでいる。
　その事実のみ明らか。

　近付いてゆく。
　渦の中心へ。

　辰気の荒れ狂う源へ。

　分析する。<k>
　
　――あの中心へ行き着くまで、<RUBY text="おれ">私</RUBY>が形態を維持して
いられる確率は絶無。

　その前に必ず、完全破壊の結果を迎える。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("サウンド１", 3000, 500, null);

//◆飢餓虚空・銀星号
//	Fade("エフェクト２", 500, 1000, null, true);
	CreateTextureEX("絵背景銀", 18001, Center, Middle, "cg/st/3d銀星号_立ち_陰義.png");
	Request("絵背景銀", Smoothing);
	Zoom("絵背景銀", 0, 1000, 1000, null, true);
	Fade("絵背景銀", 1000, 500, null, true);

	SetFwR("cg/fw/fw光_瞋恚.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【光】
<voice name="光" class="光" src="voice/md05/024vs0840a14">
《来い》

//【光】
<voice name="光" class="光" src="voice/md05/024vs0850a14">
《丸呑みにして、噛み砕いてやる》

//【光】
<voice name="光" class="光" src="voice/md05/024vs0860a14">
《灰よりも細かく、ばらばらに――》

{	FwR("cg/fw/fw光_警戒.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0870a14">
《そうしておまえと景明とを選り分け、
　おまえの屑だけ捨ててやる》

{	FwR("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/024vs0880a14">
《西瓜の種を吐き出すようにな！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ズゴゴ。適当に演出
	SetVolume("サウンド１", 2000, 1000, null);
	Fade("ノイズ", 1000, 1000, null, false);
	FadeDelete("絵背景銀", 1000, false);
//	Fade("エフェクト２", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　現状を打破せねば破壊される。

　それは承認できない事である。
　我が存在目的の遂行が不可能となる。

　我が存在目的は完遂以外の結果を容認しない。

　結論。
　万手万策を投じて状況を打開すべし。

　手段検討。<k>
　
　我が実装機能の内に、この辰気現象〝飢餓虚空〟と
拮抗し得るものは有るか。

　――――有る。

　唯一。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆野太刀
	SetVolume("サウンド１", 1000, 200, null);
	CreateTextureEX("イベント２", 18100, 0, 0, "cg/ev/ev926_野太刀全容.jpg");
	Fade("イベント２", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　野太刀による電磁抜刀。
　この一剣が有る。

　嘗て、太刀を用いる電磁抜刀・<RUBY text="マガツ">禍</RUBY>は飢餓虚空の前に
敗れ去った。
　だが、この〝虎徹〟での電磁抜刀ならば――

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆戻り
	SetVolume("サウンド１", 2000, 1000, null);
	FadeDelete("イベント２", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　問題点検討。<k>
　
　一点有り。
　辰気の影響による機能制限。

　騎体の自由が利かねば、電磁抜刀は行使できない。
　自明の事である。

　……自由の回復は、理論上、瞬間的には可能だ。
　一つ難関を乗り越える必要があるものの。

　自由を取り戻した瞬間に引辰制御を働かせ、強度の
引力圏から離脱する事はできる。
　但し無論、そのままではすぐにまた捕まるし、逃げ
回りながら電磁抜刀を使用するのも無理な話である。

　できなくはないかもしれないが最大出力に達しない。
　それでは意味がない。

　何処か、避難場所はないか。

　ほんの数秒で良い。
　電磁抜刀の術式を練り上げるまでの間、あの黒い渦
の牽引から<RUBY text="おれ">私</RUBY>を守ってくれるような場所は。

　具体的には――例えば強い重力体。
　渦の引き込む辰気に対抗して我が騎体を繋ぎ止める
だけの辰気を持つ……

　そんな都合の良いものが――

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, NULL);
	SetVolume("OnSE*", 2000, 0, NULL);
	SetVolume("サウンド*", 2000, 0, NULL);

//◆月の端？　影？
//◆※演出担当者がbg001bまたはev238等から素材を作成、
//◆使用すること。要件は「一目で月とわかるようには
//◆しない」

	CreateTextureEX("エフェクト２", 19100, 0, 0, "cg/bg/bg001_空c_03.jpg");
	Fade("エフェクト２", 500, 1000, null, true);

	Wait(1500);
	CreateTextureEX("エフェクト３", 19100, 0, 0, "cg/bg/bg110_月面a.jpg");
	Fade("エフェクト３", 1000, 1000, null, true);
	Delete("エフェクト２");
	Wait(1500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
　…………ある。

　あれなら使える。
　何とも<RUBY text="あつら">誂</RUBY>え向きだ。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

//◆戻り
	SoundPlay("@mbgm13",0,1000,true);

//	CreateEffect("エフェクト９", 19000, 0, 0, 1024, 576, Monochrome);
//	SetAlias("エフェクト９", "エフェクト９");

	Fade("エフェクト３", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　計画は成立した。

　この引力圏を脱し、
　あの場所へ移動し、
　電磁抜刀を行使して飢餓虚空を破る。

　まずは、
　
　――――第一段階。

　おそらくはこれが最大の難問。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

//◆村正、エネルギー上昇
	CreatePlainEX("絵板写", 18000);
	SetVertex("絵板写", 410, 260);
	SetBlur("絵板写", true, 2, 500, 60, false);

	CreateSE("SE01","se特殊_陰義_重力波01");
	MusicStart("SE01",0,1000,0,1300,null,false);
	Fade("絵板写", 0, 750, null, true);
	Zoom("絵板写", 600, 1400, 1400, Dxl2, false);
	Fade("絵板写", 550, 0, null, true);

	SetFwR("cg/fw/fw二世女王蟻_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/024vs0890a15">
《……ほゥ……》

{	FwR("cg/fw/fw村正武者_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/024vs0900a01">
《――――》

{	FwR("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/024vs0910a15">
《挑むか、<RUBY text="あ">冑</RUBY>が不肖の娘》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/024vs0920a15">
《辰気の調和――
　五階層方陣の解明に》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
　敵騎は当方の意図を察したらしい。
　当然か。これはあちらの専門分野。

　そう――五階層方陣。
　我が身を捕う重力を一時的にでも無効化し、勝機を
掴むために、決して避けて通れぬ道。

　それは一つの数学的命題。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw二世女王蟻_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/024vs0930a15">
《見事果たせば、<RUBY text="あ">冑</RUBY>が〝辰気の地獄〟からの
脱出もなろう。
　だが、できるか……？》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/024vs0940a15">
《渦がなれを砕くまで、幾らも無いぞ。
　このわずかばかりの時間で、辰気一二五種
の配列を見出すと？》

{	FwR("cg/fw/fw村正武者_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/024vs0950a01">
《…………》

{	FwR("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/024vs0960a15">
《ふふ。面白い！
　やり遂げてみせよ、三世右衛門尉！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	//SetVolume("@mbgm*", 3000, 0, NULL);

	ClearFadeAll(2000, true);

	//▼コクピット（削除）
	CP_AllDelete();

..//ジャンプ指定
//次ファイル　"md05_025.nss"

}


//スキップ用
scene md05_024vs.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	CreateColorSP("黒", 100, "BLACK");

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("五階層方陣をスキップする","五階層方陣をスキップしない");
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
//五階層方陣をスキップする
			$GameName = "md05_025end.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//五階層方陣をスキップしない
			$GameName = "md05_025.nss";
		}
	}
}


function RotetoLoop1()
{
	while(1){
	Rotate($ローテートナット名１, $ローテート速度１, @0, @0, $ローテート角度１, null,true);
	}
}

function RotetoLoop2()
{
	while(1){
	Rotate($ローテートナット名２, $ローテート速度２, @0, @0, $ローテート角度２, null,true);
	}
}


function AnkokuZoomLoop1()
{
	while(1){

	Zoom($ズームナット名１, 2000, 2000, 2000, null, false);
	Fade($ズームナット名１, 500, 1000, null, true);
	Wait(1000);
	Fade($ズームナット名１, 500, 0, null, true);
	Zoom($ズームナット名１, 0, 3000, 3000, null, true);

	}
}

function AnkokuZoomLoop2()
{
	while(1){

	Zoom($ズームナット名２, 2000, 2000, 2000, null, false);
	Fade($ズームナット名２, 500, 1000, null, true);
	Wait(1000);
	Fade($ズームナット名２, 500, 0, null, true);
	Zoom($ズームナット名２, 0, 3000, 3000, null, true);

	}
}

function AnkokuZoomLoop1()
{
	while(1){

	Zoom($ズームナット名１, 2000, 2000, 2000, null, false);
	Fade($ズームナット名１, 500, 1000, null, true);
	Wait(1000);
	Fade($ズームナット名１, 500, 0, null, true);
	Zoom($ズームナット名１, 0, 3000, 3000, null, true);

	}
}

function AnkokuZoomLoopEX()
{

	Zoom($ズームナット名１, 3100, 2000, 2000, Dxl2, false);
	Fade($ズームナット名１, 500, 1000, null, true);

	while(1){

	Wait(1000);
	Zoom($ズームナット名２, 3100, 2000, 2000, Dxl2, false);
	Fade($ズームナット名２, 1000, 1000, null, false);
	Fade($ズームナット名１, 1000, 0, null, true);
	Zoom($ズームナット名１, 0, 6000, 6000, null, true);

	Wait(1000);
	Zoom($ズームナット名１, 3100, 2000, 2000, Dxl2, false);
	Fade($ズームナット名１, 1000, 1000, null, false);
	Fade($ズームナット名２, 1000, 0, null, true);
	Zoom($ズームナット名２, 0, 6000, 6000, null, true);

	}
}


function TurboBlur3()
{

	while(1){

	DrawTransition($Warpトランジ, $Warpトランジ速度, 0, 1000, $Warpトランジなめらかさ, Axl2, "cg/data/circle_01_00_1.png", true);
	DrawTransition($Warpトランジ, $Warpトランジ速度, 1000, 0, $Warpトランジなめらかさ, Dxl2, "cg/data/circle_01_00_0.png", true);

	}

}