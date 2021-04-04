//<continuation number="2570">

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

scene ma04_016vs.nss_MAIN
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

	#bg073_海a_03=true;

//	#ev996_景明カットイン=true;
	#ev914_九〇式竜騎兵魔剣インメルマンターン=true;
	#ev270_インメルマンターン回想_a=true;
	#ev270_インメルマンターン回想_b=true;
	#ev947_村正斬撃汎用=true;

	//▼ルートフラグ、選択肢、次のGameName
	CP_AllDelete();

	$PreGameName = $GameName;

	$GameName = "ma04_017.nss";

}

scene ma04_016vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	if($GameDebugSelect==1){CP_AllSet("村正");}

	PrintBG("上背景", 30000);

	LoadImage("旋回イメージ１", "cg/bg/bg204_横旋回背景_03.jpg");
	SetAlias("旋回イメージ１", "旋回イメージ１");
	LoadImage("旋回イメージ２", "cg/bg/bg201_旋回演出背景市街地_03.jpg");
	SetAlias("旋回イメージ２", "旋回イメージ２");
	LoadImage("旋回イメージ３", "cg/bg/bg203_旋回演出背景海a_03.jpg");
	SetAlias("旋回イメージ３", "旋回イメージ３");

	CreateTextureSP("背景１", 100, 0, -100, "cg/bg/bg001_空a_03.jpg");
	Zoom("背景１", 0, 1500, 1500, Dxl2, true);
	CreateTextureEX("背景２", 10, 0, 0, "旋回イメージ２");

	MoveFFP1("@背景１",5000);//固定値ランダム

//あきゅん「ＣＰ：ちょい前のファイルでも使用してるのでここでは外しておくよ」
	//▼コクピット（定義）
	//CP_AllSet("アベンジ");
	//▼コクピット（瞬間表示）
	Cockpit_AllFade2();
	//▼コクピット（自機情報：振動）
	FrameShake();

	//▼コクピット（自機情報：振動）
	FrameShake();
	//▼コクピット（自機情報：仰角）
	CP_AltChange2(0,0,null,true);
	//▼コクピット（自機情報：速度）
	CP_SpeedChange(0,450,null,true);
	//▼コクピット（自機情報：高度）
	CP_HighChange(0,1500,null,true);
	//▼コクピット（自機情報：回転軸）
	CP_RollBarMove2(0,0,null,true);
	//▼コクピット（自機情報：回転軸自動化）
	CP_RollBarMoveA();

		//▼コクピット（自機情報：装甲）
		MyLife_Count(0,432);
		//▼コクピット（自機情報：出力）
		MyTr_Count(0,366);
		//▼コクピット（自機情報：熱量）
		CP_PowerChange(0,500,null,false);
		//▼コクピット（自機情報：球体ＨＰ）
		CP_IHPChange(0,5,null,false);

	//▼雲正面
	CloudZoomSet(1000);
	CloudZoomStart(400,800,800,300,800);

	CreateSE("サウンド１","se戦闘_動作_空走行01_L");
	SoundPlay("サウンド１",500,1000,true);

	FadeDelete("上背景", 500, true);

..//ジャンプ指定
//前ファイル　"ma04_015vs.nss"

//●１５
	SoundPlay("@mbgm08",0,1000,true);

//◆村正ＶＳ雪車町
	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/016vs0010a01">
《敵騎、<RUBY text="うまからひのとのしもより">一九〇度やや下方</RUBY>……
　反転に移る！》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0020a00">
「応ずる。
　村正、余り<RUBY text="ほろ">翼甲</RUBY>を広げるな。こちらの窮状
が知れる。安定性の犠牲は呑む」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/016vs0030a01">
《――諒解！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("背景２", 0, 1000, null, false);

	//▼サフ設置
	CreateSurfaceEX("絵Suf",99,2000,"背景２");
	Fade("絵Suf", 0, 1000, null, true);

	//▼コクピット（自機情報：速度）
	CP_SpeedChange(3000,550,AxlDxl,false);
	//▼コクピット（自機情報：高度）
	CP_HighChange2(3000,1300,AxlDxl,false);
	//▼コクピット（自機情報：仰角）
	CP_AltChange2(3000,-25,AxlDxl,false);
	//▼コクピット（自機情報：方位）
	CP_AziChange(3000,-30,AxlDxl,false);

	//▼コクピット（自機情報：出力）
	MyTr_Count(1500,433);

	OnSE("se戦闘_動作_空突進08",1000);
	CreateSE("サウンド２","se戦闘_動作_空突進05");
	SoundPlay("サウンド２",2000,700,true);

	MoveSSP1("@背景２",100000,0,2,0,2,300,"null");//シェイク
	Move("背景２", 3000, @0, @-100, Dxl1, false);
	Fade("背景１", 3000, 0, null, 1500);

	//▼雲消去
	CloudZoomFade(500,false);

//◆下降反転
//◆正面激突。高度優勢は村正。
//◆村正、やや乱れ。負傷の影響
	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0040a00">
「……ち！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

		CreateTextureEX("エフェクト１", 20000, 0, -288, "cg/ef/ef008_汎用上下軌道.jpg");
		Zoom("エフェクト１", 0, 5000, 2000, Dxl2, true);
	
		CreateTextureSP("エフェクト２", 20000, 0, 0, "cg/ef/ef014_汎用横軌道.jpg");
		CreateSurfaceEX("絵Suf2",20000,2000,"エフェクト２");
		Zoom("エフェクト２", 0, 10000, 0, Dxl2, true);
		SetVertex("絵Suf2", 512, 188);
	
		CreateColorEX("色１", 20000, "#FFFFFF");
	
		CreateTextureSP("敵機１", 100, -1000, -200, "cg2/st/3d九〇式竜騎兵_騎突_戦闘.png");//後ほど中段を発注
		SetVertex("敵機１", 800, middle);
		Zoom("敵機１", 0, 50, 50, Dxl2, true);

		CreateSE("ＳＥ１","se戦闘_攻撃_剣戟弾く03");
		CreateSE("ＳＥ２","se戦闘_攻撃_刀衝突01");

	OnSE("se戦闘_動作_空突進06",1000);

	CloudZoomStart(200,400,400,200,400);
	CloudZoomVertex(3000,@0,@200,Dxl1,false);

	//▼コクピット（自機情報：回転軸自動化）
	//CP_RollBarMoveA();
	//▼コクピット（自機情報：回転軸停止）
	CP_RollBar_ADelete();

	//▼コクピット（自機情報：速度）
	CP_SpeedChange(4000,650,AxlDxl,false);
	//▼コクピット（自機情報：高度）
	CP_HighChange2(4000,1000,AxlDxl,false);
	//▼コクピット（自機情報：仰角）
	CP_AltChange2(4000,-55,AxlDxl,false);
	//▼コクピット（自機情報：方位）
	CP_AziChange(4000,-70,AxlDxl,false);
	//▼コクピット（自機情報：回転軸）
	CP_RollBarMove2(4000,-80,null,false);

	//▼コクピット（自機情報：出力）
	//MyTr_Count(3000,433);

	//▼サフ回転
	Rotate("絵Suf", 7000, @0, @0, 180, DxlAuto, false);
	Move("背景２", 3500, @0, @-3000, AxlAuto, false);
	Wait(2500);

	Move("敵機１", 1000, @1000, @0, Dxl3, false);
	Zoom("敵機１", 1000, 1500, 1500, Axl3, false);
	Wait(950);

	Fade("エフェクト１", 50, 1000, null, false);
	Zoom("エフェクト１", 400, 2000, 2000, Dxl3, false);
	Move("エフェクト１", 400, @0, @576, null, false);
	Wait(200);

//	OnSE("se戦闘_攻撃_剣戟弾く03",1000);
	SoundPlay("ＳＥ１",0,1000,false);

	Fade("絵Suf2", 100, 1000, null, false);
	Rotate("絵Suf2", 400, @0, @0, 720, DxlAxl, false);
	Zoom("エフェクト２", 400, 10000, 10000, Axl1, false);

	Fade("色１", 0, 200, null, true);
	Fade("色１", 100, 0, null, false);
	Wait(80);
	Fade("色１", 0, 400, null, true);
	Fade("色１", 100, 0, null, false);
	Wait(80);

//	OnSE("se戦闘_攻撃_刀衝突01",1000);
	SoundPlay("ＳＥ２",0,1000,false);
	Fade("色１", 100, 1000, null, true);

	MoveFFPstop();
	Delete("敵機*");
	Delete("絵Suf2");
	Delete("エフェクト*");

	//▼コクピット（自機情報：回転軸自動化）
	//CP_RollBarMoveA();
	//▼コクピット（自機情報：回転軸停止）
	//CP_RollBar_ADelete();
	//▼コクピット（自機情報：速度）
	CP_SpeedChange(2000,420,AxlDxl,false);
	//▼コクピット（自機情報：高度）
	CP_HighChange2(2000,1300,AxlDxl,false);
	//▼コクピット（自機情報：仰角）
	CP_AltChange2(2000,15,AxlDxl,false);
	//▼コクピット（自機情報：方位）
	CP_AziChange(2000,-70,AxlDxl,false);
	//▼コクピット（自機情報：回転軸）
	CP_RollBarMove2(2000,0,null,false);

	SetVolume("サウンド２", 2000, 0, NULL);

	CloudZoomVertex(2000,@0,@-400,Dxl1,false);
	Move("背景２", 2000, @0, @-2000, Dxl2, false);
	Fade("色１", 300, 0, null, true);

	//▼雲移動
	CloudZoomVertex(1000,@0,@-200,Dxl1,false);
	Fade("背景１", 1000, 1000, null, false);

//◆村正上段
//◆雪車町中段
//◆太刀打。がきがきーっと。
//◆行き違う。双方被弾せず。
	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/016vs0050a01">
《――外した!?》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0060a00">
「太刀を<RUBY text="・・・・・・">巻き払われた</RUBY>！
　巧妙な業を使ってくれる！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	MoveSSP1stop();

		CreateTextureEX("背景３", 100, 0, -288, "cg/bg/bg001_空c_03.jpg");
		Zoom("背景３", 0, 2000, 2000, Dxl1, true);
		CreateColorEX("色１", 18000, "#000000");

		CreateSE("ＳＥ３","se戦闘_動作_空突進08");

	//▼コクピット（自機情報：回転軸自動化）
	//CP_RollBarMoveA();
	//▼コクピット（自機情報：回転軸停止）
	//CP_RollBar_ADelete();
	//▼コクピット（自機情報：速度）
	CP_SpeedChange(2000,520,AxlDxl,false);
	//▼コクピット（自機情報：高度）
	CP_HighChange2(2000,1500,AxlDxl,false);
	//▼コクピット（自機情報：仰角）
	CP_AltChange2(2000,45,AxlDxl,false);
	//▼コクピット（自機情報：方位）
	CP_AziChange(2000,0,AxlDxl,false);
	//▼コクピット（自機情報：回転軸）
	CP_RollBarMove2(2000,50,null,false);

//	OnSE("se戦闘_動作_空突進08",1000);
	SoundPlay("ＳＥ３",0,1000,false);

	Move("背景３", 2000, @-512, @576, Axl1, false);
	Fade("背景３", 1000, 1000, null, true);
	Fade("色１", 700, 1000, null, true);

	SoundPlay("サウンド１",1000,1,true);

	MoveFFP1stop();
	Delete("絵Suf");
	Fade("背景１", 0, 0, null, true);
	Fade("背景２", 0, 0, null, true);
	Fade("背景３", 0, 0, null, true);
	//▼雲消去
	CloudZoomFade(0,true);

	CreateColorSP("色２", 19999, "#000000");

	CreateTextureEX("背景３", 19100, -5000, 3200, "旋回イメージ１");
	CreateTextureEX("背景４", 19100, -5000, 3200, "旋回イメージ１");
	Zoom("背景３", 0, 2000, 2000, null, true);
	Rotate("背景３", 0, @0, @0, @-45, null, true);
	Zoom("背景４", 0, 2000, 2000, null, true);
	Rotate("背景４", 0, @0, @0, @-45, null, true);

	//▼雲正面
	CloudZoomSet2("マド",19900,0,0,1024,600);

	CreateTextureSP("自機１", 19500, -329, -332, "cg/st/3d村正標準_騎航_戦闘b.png");
	Zoom("自機１", 0, 700, 700, Dxl2, true);

	CreateWindow("ウィンドウ１", 19500, 512, 0, 512, 600, false);
	SetAlias("ウィンドウ１", "ウィンドウ１");
	CreateColorSP("ウィンドウ１/色１", 19500, "#000000");
	CreateTextureSP("ウィンドウ１/敵機１", 19500, 62, -355, "cg/st/3d九〇式竜騎兵_騎航_戦闘c.png");
	Zoom("ウィンドウ１/敵機１", 0, 700, 700, Dxl2, true);

	Fade("色２", 500, 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　武者と武者の勝負――双輪懸は主に以下の四要素で
決すると云われる。
　上昇性能、最大速力、加速性能、旋回性能の四つだ。

　上昇性能の重大さは論を俟つまい。
　戦闘開始時における高度優勢の確保はこの能力如何
だ。

　最初の激突後は、旋回性能次第となる。
　迅速に反転できる騎体ほど高度優位を奪いやすい。

　最大速力は、勝負において最も重要な最初の一合の
攻撃力を定めるものといえるだろう。
　速力に勝るとはつまり、敵より強力な一撃を敵より
も先に打ち放てる事を意味するからだ。

　そして加速性能は、二合目以降の速力を左右する。
　激突で減殺された速力の回復は、この性能に懸かる。

　これら四種の能力を全て完璧に備える騎体など存在
しない。
　往々にして、一種の能力の追求は別種の能力の削減
と不可分であるためだ。

　翼甲を拡大すれば旋回性が増し加速性が失われる。
　翼甲を分厚く強固にすれば最大速力は高まるが上昇
性能は犠牲になる。

　一般に、この相関関係からは逃れ得ない。
　鍛治師は誰しも、理想より確実に小さい枠組みの中
で最善を求め足掻いている。

　真打劔冑と真打劔冑の対決であれば、鍛冶師の技量
の差による優劣が顕れるにせよ、大概、それは絶対的
ではない。総合評価で劣る側とて四要素のいずれかで
は勝り、その点を生かして逆転する道は必ずある。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	//▼コクピット（自機情報：回転軸自動化）
	//CP_RollBarMoveA();
	//▼コクピット（自機情報：回転軸停止）
	//CP_RollBar_ADelete();
	//▼コクピット（自機情報：速度）
	CP_SpeedChange(2000,650,AxlDxl,false);
	//▼コクピット（自機情報：高度）
	CP_HighChange2(2000,1000,AxlDxl,false);
	//▼コクピット（自機情報：仰角）
	CP_AltChange2(2000,-45,AxlDxl,false);
	//▼コクピット（自機情報：方位）
	CP_AziChange(2000,180,AxlDxl,false);
	//▼コクピット（自機情報：回転軸）
	CP_RollBarMove2(2000,0,null,false);

	SoundPlay("サウンド１",2000,1000,true);

		CreateTextureSP("敵機１", 19500, -1400, 900, "cg/st/3d九〇式竜騎兵_騎航_戦闘c.png");
		Rotate("敵機１", 0, @0, @0, -40, null, true);
		SetBlur("敵機１", true, 1, 500, 30, true);

		CreateSE("サウンド２","se戦闘_動作_空突進05");

	SoundPlay("サウンド２",2000,700,true);

	Move("ウィンドウ１", 500, @512, @0, null, false);
	Fade("自機１", 500, 1000, null, false);

	CloudZoomStart2(700,1000,1000,500,1000);
	CloudZoomVertex2(0,@-500,@0,Dxl1,true);

	CreateSCR1("@背景３","@背景４",2000,1200,-3100);

	//Ｘ軸ランダムＹ軸均等
	MoveFTP1("@自機１",20000,3,5);

	SetBlur("自機１", true, 2, 500, 200, false);
	Fade("自機１", 500, 1000, null, false);
	Fade("色２", 500, 0, null, true);

	Delete("ウィンドウ１/*");
	Delete("ウィンドウ１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
　逆転が叶わぬ程の格差が表面化するとすれば、それ
は真打と数打が闘う場合の事だ。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateColorEX("色１", 20000, "#FFFFFF");
	CreateColorEX("色２", 19900, "#000000");
	CreateSurfaceEX("絵Suf",99,2000,"背景２");

	CreateTextureEX("エフェクト１", 19900, 300, 1200, "cg/ef/ef011_汎用斜め軌道.jpg");
	SetVertex("エフェクト１", 300, 288);
	Zoom("エフェクト１", 0, 2000, 2000, Dxl2, true);

	CreateTextureEX("エフェクト２", 19900, -5224, 1500, "cg/ef/ef014_汎用横軌道.jpg");
	SetVertex("エフェクト２", 512, 300);
	Zoom("エフェクト２", 0, 10000, 10000, Dxl2, true);
	Rotate("エフェクト２", 0, @0, @0, @-20, Axl2, true);
	Request("エフェクト２", AddRender);

//◆下降反転
//◆正面会撃
//◆村正下段ＶＳ雪車町中段
//◆きんきーん。互角。

		CreateSE("ＳＥ４","se戦闘_動作_空突進01");
		CreateSE("ＳＥ５","se戦闘_衝撃_攻撃交錯01");

	MoveFTP1stop();
	SetBlur("自機１", true, 1, 500, 30, true);

	SetVolume("サウンド２", 1000, 1000, NULL);
	OnSE("se戦闘_動作_空上昇01",1000);

	Zoom("自機１", 1200, 1000, 1000, Dxl1, false);
	Move("自機１", 700, @50, @150, DxlAuto, true);
	Move("自機１", 500, @1000, @-700, Axl2, false);
	Wait(200);

	//OnSE("se戦闘_動作_空突進01",1000);
	SoundPlay("ＳＥ４",0,1000,false);

	Fade("敵機１", 0, 1000, null, false);
	Move("敵機１", 400, 750, -1100, null, true);

	Fade("色２", 0, 1000, null, true);
	Fade("エフェクト１", 0, 1000, null, true);
	Fade("エフェクト２", 0, 1000, null, true);

//	OnSE("se戦闘_衝撃_攻撃交錯01",1000);
	SoundPlay("ＳＥ５",0,1000,false);

	Rotate("エフェクト１", 600, @0, @0, 55, null, false);
	Zoom("エフェクト１", 600, 5000, 5000, Dxl1, false);
	Move("エフェクト１", 600, -400, -2000, null, 200);

	Move("エフェクト２", 400, 1500, -100, Dxl1, false);
	Rotate("エフェクト２", 400, @0, @0, 2, null, false);
	Zoom("エフェクト２", 400, 5000, 5000, Dxl1, false);
	Fade("色１", 400, 1000, Axl2, true);

	OnSE("se戦闘_攻撃_剣戟弾く03",1000);
	OnSE("se戦闘_攻撃_鎧_剣戟03",1000);

		//▼雲消去
		CloudZoomDelete2(0,true);
		//▼ロール停止
		SCR1stop();
		//▼雲開始
		CloudZoomStart(400,800,800,300,800);
	
		MoveFFP1("@背景１",5000);//固定値ランダム

		Move("背景２", 0, 0, -2500, Axl1, false);
		Fade("色２", 0, 0, Axl2, false);
		Rotate("絵Suf", 0, @0, @0, @240, Dxl1, false);
		Fade("絵Suf", 0, 1000, null, true);
		Delete("自機１");
		Delete("敵機１");
		Delete("背景３");
		Delete("背景４");
		Delete("エフェクト*");

		SetVolume("サウンド２", 4000, 0, NULL);

	//▼コクピット（自機情報：回転軸自動化）
	//CP_RollBarMoveA();
	//▼コクピット（自機情報：回転軸停止）
	//CP_RollBar_ADelete();
	//▼コクピット（自機情報：速度）
	CP_SpeedChange(2000,450,AxlDxl,false);
	//▼コクピット（自機情報：高度）
	CP_HighChange2(2000,1300,AxlDxl,false);
	//▼コクピット（自機情報：仰角）
	CP_AltChange2(2000,25,AxlDxl,false);
	//▼コクピット（自機情報：方位）
	CP_AziChange(2000,50,AxlDxl,false);
	//▼コクピット（自機情報：回転軸）
	CP_RollBarMove2(2000,0,null,false);

	Fade("色１", 500, 0, null, false);
	Fade("背景２", 500, 1000, null, false);
	Move("背景２", 2000, @0, @-3000, Dxl1, false);
	Rotate("絵Suf", 2000, @0, @0, @-60, null, false);
	Wait(700);

	CloudZoomVertex(1500,@0,@200,Dxl1,false);

	Move("背景１", 1000, 0, -100, Dxl1, false);
	Fade("背景１", 1000, 1000, Axl1, false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/016vs0070a01">
《……あぁ、もう！
　屈辱ね！》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/016vs0080a01">
《調子が万全だったら、こんな紛い物風情！》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0090a00">
「猛るな。
　お前が苛立つ必要はない。現状でもお前の
性能は敵騎に優越している」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0100a00">
「俺が、雪車町一蔵に劣っているのだ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　右前腕のかすかな残滓を味わう。
　必墜の筈の一撃を、苦もなく<RUBY text="・・・・">流された</RUBY>感触。

　雪車町一蔵は驍勇だった。
　あろうことか、騎体性能の劣弱を己の剣腕で埋めて
いる。

　彼が駆る九〇式竜騎兵甲は軍史に残る名騎ではある
が、如何せん数打であり、しかも十年前の旧式騎だ。
　あらゆる面において、村正との差はどれだけか知れ
ない――それを、無にする程の才。

　客観的にみて凡才の枠を超えない俺とは、根本的に
<RUBY text="・・">もの</RUBY>が違うのだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/016vs0110a01">
《怪我さえなかったら、それだって引っくり
返るでしょう！》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0120a00">
「さてどうか。
　怪しいものだが」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0130a00">
「何にせよ、現状況下では負け犬の遠吠えに
過ぎない」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/016vs0140a01">
《ええそうね。
　じゃあ、一緒に出家でもする？》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0150a00">
「悪くはないが」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　身を翻す。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆反転
		CreateTextureSP("背景３", 100, -512, -780, "旋回イメージ２");
		CreateSurfaceEX("絵Suf2",200,2000,"背景３");
		Rotate("絵Suf2", 0, @0, @0, 90, null, true);
		CreateTextureSP("背景２", 100, -4000, 0, "旋回イメージ１");
		CreateSurfaceEX("絵Suf",200,2000,"背景２");

		CreateSE("ＳＥ１","se戦闘_動作_空突進04");

		CreateSE("サウンド２","se戦闘_動作_空突進05");
		SoundPlay("@サウンド２",2000,600,true);

	OnSE("se戦闘_動作_空突進08",1000);


	//▼コクピット（自機情報：方位）
	CP_AziChange(5000,180,AxlDxl,false);

	//▼コクピット（自機情報：速度）
	CP_SpeedChange(4000,640,Dxl1,false);
	//▼コクピット（自機情報：高度）
	CP_HighChange2(4000,1400,Dxl1,false);
	//▼コクピット（自機情報：仰角）
	CP_AltChange2(4000,0,Dxl1,false);

	//▼コクピット（自機情報：回転軸）
	CP_RollBarMove2(2000,-40,Dxl1,false);

	Move("背景２", 4000, 0, 0, AxlDxl, false);
	Rotate("絵Suf", 4000, @0, @0, -90, AxlDxl, false);
	Fade("絵Suf", 1000, 1000, null, false);

	//▼固定値ランダム：停止
	MoveFFP1stop();
	//▼固定値ランダム
	MoveFFP2("@絵Suf2",10000);

	Wait(2000);

	//▼コクピット（自機情報：回転軸自動化）
	CP_RollBarMoveA();

	Fade("絵Suf2", 0, 1000, null, false);

	SetVolume("サウンド２", 2000, 200, NULL);
	//se戦闘_動作_空突進04.ogg
	SoundPlay("ＳＥ１",0,1000,false);

	Rotate("絵Suf2", 2000, @0, @0, 30, Dxl1, false);
	Move("背景３", 2000, -100, -780, Dxl2, false);
	Fade("絵Suf", 1000, 0, null, false);

	//Wait(2000);
	//Move("背景３", 20000, -50, -780, null, false);

	SetFwC("cg/fw/fw景明_戦闘.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0160a00">
「せめて一矢報いてからとしよう」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/016vs0170a01">
《一矢で済ませるものですか！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　無駄な軽口の応酬は、俺自身の苛立ちを鎮めるため
にも必要だった。
　意識は一瞬、一瞬毎に、別の所へ飛びそうになって
いる。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("色０", 17000, "#000000");
	CreateTextureEX("イベント１", 17000, 0, 0, "cg/ev/ev909_荒覇吐.jpg");
	SetTone("イベント１", Monochrome);

	SetVolume("サウンド１", 1000, 1, NULL);
	SetVolume("サウンド２", 1000, 1, NULL);

	Fade("色０", 500, 1000, null, true);
	Fade("イベント１", 1000, 500, null, true);

		CreateTextureEX("背景１", 18000, 0, -1000, "旋回イメージ２");
		CreateTextureEXover("エフェクト１", 19000, 0, 0, "cg/ef/ef042_汎用打撃.jpg");
		CreateColorEXadd("色２", 18000, "#FFFFFF");
		CreateColorEXadd("色１", 19999, "#FFFFFF");

		CreateTextureEX("敵機１", 19000, -272, -373, "cg/st/3d九〇式竜騎兵_騎航_戦闘b.png");
		Rotate("敵機１", 0, @0, @0, -40, null, true);
		CreateTextureSP("敵機３", 1000, -1000, -600, "cg2/st/3d九〇式竜騎兵_騎突_戦闘.png");
		Zoom("敵機３", 0, 100, 100, Dxl2, true);

		CreateTextureEX("背景２", 18000, -256, -200, "cg/bg/resize/bg002_空a_03l.jpg");

		CreateTextureSP("自機１", 19000, 0, -1100, "cg/st/3d村正標準_騎突_戦闘.png");
		Zoom("自機１", 0, 100, 100, Dxl2, true);
		CreateTextureSP("敵機２", 19000, 0, 1000, "cg2/st/3d九〇式竜騎兵_騎突_戦闘2.png");
		Zoom("敵機２", 2000, 1500, 1500, Dxl2, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
　――あの巨騎。
　俺はあれを仕留めなければならないのに。

　こうして時を費やせば費やすだけ……
　あの中にいる人々が……

　足止めされている俺に代わって、怪物の矢面に立た
されているだろう者が……！

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/016vs0180a01">
《御堂！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Move("背景３", 0, -200, -880, Dxl2, true);

//◆雪車町、機銃掃射。少し被弾
		CreateSE("ＳＥ１","se戦闘_銃器_機関銃乱射02");
		CreateSE("ＳＥ２","se戦闘_動作_空突進01");
		CreateSE("ＳＥ３","se戦闘_動作_空突進07");
		CreateSE("ＳＥ０","se戦闘_銃器_跳弾04");

		CreateSE("ＳＥ４","se戦闘_動作_空突進03");

	SoundPlay("ＳＥ１",0,1000,false);
	Wait(300);
	SetVolume("サウンド２", 0, 600, NULL);
	SoundPlay("サウンド１",0,1000,true);

	Fade("色０", 0, 0, null, false);
	Fade("イベント１", 0, 0, null, false);

	Fade("エフェクト１", 0, 1000, null, false);
	Fade("色２", 0, 500, null, false);
	Fade("背景１", 0, 1000, null, true);
	Fade("敵機１", 0, 1000, null, true);


	Fade("エフェクト１", 2000, 0, null, false);
	Fade("色２", 2000, 0, null, false);
	Move("背景１", 2000, @-100, @200, null, false);
	Move("敵機１", 2000, @100, @-100, null, false);
	Shake("敵機１", 2000, 0, 10, 0, 0, 700, Dxl1, false);
	Shake("エフェクト１", 2000, 10, 10, 0, 0, 700, Dxl1, 1500);

	SoundPlay("ＳＥ２",0,1000,false);
	Move("敵機１", 300, @1000, @-1000, Axl1, 200);

	SoundPlay("ＳＥ０",0,1000,false);

	Fade("色１", 100, 1000, null, true);
		Rotate("エフェクト１", 0, @180, @180, @0, null, false);
		Fade("エフェクト１", 0, 1000, null, false);
		Fade("色２", 0, 500, null, false);
		Fade("背景１", 0, 0, null, true);
		Move("背景３", 0, -250, -1380, Dxl2, true);

	SetVolume("ＳＥ１", 2000, 0, NULL);
	SoundPlay("ＳＥ３",0,1000,false);
	SoundPlay("ＳＥ４",0,1000,false);

	Zoom("敵機３", 1000, 1000, 1000, Axl3, false);
	BezierMove("敵機３", 1000, (@0,@0){@600,@0}{@800,@0}(@800,@600), Dxl1, false);

	Fade("色１", 300, 0, null, false);
	Fade("色２", 600, 0, null, false);
	Fade("エフェクト１", 600, 0, null, false);
	Shake("エフェクト１", 600, 10, 10, 0, 0, 700, Dxl1, false);
	Shake("背景３", 600, 0, 10, 0, 0, 700, Dxl1, false);
	Move("背景３", 1000, -300, -1180, Dxl1, false);
	Wait(1000);

	SetVolume("サウンド１", 2000, 1, NULL);
	SetVolume("サウンド２", 2000, 1, NULL);

	Fade("背景２", 0, 1000, null, false);
	Move("背景２", 1000, @0, @200, Dxl1, false);
	Zoom("自機１", 1000, 300, 300, Dxl2, false);
	Move("自機１", 1000, @0, @700, Dxl1, false);
	Zoom("敵機２", 1000, 1000, 1000, Dxl2, false);
	Move("敵機２", 1000, @0, @-1000, Dxl1, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　……不味い！
　下に潜り込まれた！

　こちらの構えは常道の上段。
　この位置関係では斬り損じる。

　対して、敵もまた上段。
　条件は逆、絶好の形！

　構え直していては出遅れる――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0190a00">
「……ぬぅ！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateTextureEX("敵機１", 18500, 0, 0, "cg2/st/3d九〇式竜騎兵_騎突_戦闘2.png");
	Zoom("敵機１", 600, 800, 800, Axl2, false);
	CreateTextureEXadd("エフェクト１", 19998, 0, 0, "cg/ef/ef040_汎用衝突.jpg");
	SetBlur("エフェクト１", true, 2, 500, 500, false);
	Rotate("エフェクト１", 0, @0, @180, @0, null, true);

	CreateSE("ＳＥ４","se戦闘_動作_空突進02");
	CreateSE("ＳＥ５","se戦闘_動作_空突進04");

	CreateSE("ＳＥ６","se戦闘_動作_空突進03");

//◆１８０度ロール。上下反転
//◆村正反転上段
	SetVertex("敵機３", 700, 300);

	OnSE("se戦闘_動作_空突進06",1000);
	OnSE("se戦闘_動作_空突進08",1000);

	Zoom("背景２", 300, 1200, 1200, Axl2, false);
	Rotate("自機１", 400, @0, @0, -180, null, false);
	Zoom("自機１", 300, 700, 700, Axl2, false);
	Zoom("敵機２", 300, 800, 800, Axl2, false);
	Fade("自機１", 300, 0, null, false);
	Fade("敵機２", 300, 0, null, false);
	Fade("背景２", 300, 0, null, false);

	Rotate("敵機３", 600, @0, @0, 180, null, false);
	Rotate("絵Suf2", 600, @0, @0, 180, null, 550);
	Fade("色１", 50, 1000, null, true);

		OnSE("se戦闘_攻撃_剣戟弾く03",1000);
		OnSE("se戦闘_攻撃_刀衝突01",1000);

//◆太刀打。ガキーン。
	Fade("エフェクト１", 0, 1000, null, true);
	Zoom("エフェクト１", 800, 1500, 1500, Dxl1, false);
//	Fade("色１", 100, 0, null, true);
//	Fade("色１", 100, 1000, null, true);

	Fade("エフェクト１", 700, 0, null, false);
	Fade("自機１", 0, 1000, null, false);
	Fade("敵機１", 0, 1000, null, false);
	Fade("背景２", 0, 1000, null, true);
	Fade("色１", 300, 0, null, false);

//◆交差
	SoundPlay("ＳＥ４",0,1000,false);
	SetVolume("サウンド１", 1000, 1000, NULL);
	SetVolume("サウンド２", 2000, 500, NULL);

	Shake("敵機１", 500, 0, 5, 0, 0, 700, Dxl1, false);
	Shake("自機１", 500, 0, 10, 0, 0, 700, Dxl1, false);

	Zoom("背景２", 1000, 1400, 1400, Dxl2, false);
	Zoom("自機１", 1000, 1000, 1000, Dxl1, false);
	Zoom("敵機１", 1000, 300, 300, Dxl1, 500);

	SoundPlay("ＳＥ６",0,1000,false);

	Move("敵機１", 500, @100, @500, Axl1, false);
	Move("自機１", 500, @-100, @-1000, Axl1, true);


//斜め演出
	CreateTextureSP("背景０", 20000, 0, 0, SCREEN);
		Delete("自機*");
		Delete("敵機*");
		Fade("絵Suf2", 0, 0, null, true);
		Fade("背景２", 0, 0, null, true);
	
		//▼コクピット（自機情報：回転軸停止）
		CP_RollBar_ADelete();
		//▼固定値ランダム：停止
		MoveFFP2stop();

		CreateTextureSP("背景１", 100, 0, 0, "cg/bg/bg001_空a_03.jpg");
		Zoom("背景１", 0, 1100, 1100, Dxl2, true);

		//▼固定値ランダム
		MoveFFP1("@背景１",10000);

		SetVolume("サウンド２", 2000, 0, NULL);
		SoundPlay("ＳＥ５",0,1000,false);

		//▼コクピット（自機情報：方位）
		CP_AziChange(500,120,AxlDxl,false);
		//▼コクピット（自機情報：速度）
		CP_SpeedChange(500,450,Dxl1,false);
		//▼コクピット（自機情報：高度）
		CP_HighChange2(500,1400,Dxl1,false);
		//▼コクピット（自機情報：仰角）
		CP_AltChange2(500,10,Dxl1,false);
		//▼コクピット（自機情報：回転軸）
		CP_RollBarMove2(500,0,Dxl1,false);

	FadeDelete("背景０", 500, true);

	SetFwC("cg/fw/fw雪車町_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0200a12">
《……けへっ！
　いや、存外に器用なお人だ……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　笑いを含んだ金打声が届く。
　嘲りとも本気で感心しているとも、どちらとも受け
取れる声音だった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

		CreateWindow("ウィンドウ２", 150, -300, -432, 2000, 576, false);
		SetAlias("ウィンドウ２", "ウィンドウ２");
		Rotate("ウィンドウ２", 0, @0, @0, -29, null, true);
		CreateTextureEX("ウィンドウ２/背景１", 17000, 0, 0, "cg/bg/bg002_空a_03.jpg");
		CreateTextureEX("ウィンドウ２/自機１", 17000, -160, -304, "cg/st/3d村正標準_騎航_戦闘e.png");

		CreateWindow("ウィンドウ１", 150, -100, 110, 2000, 576, false);
		SetAlias("ウィンドウ１", "ウィンドウ１");
		Rotate("ウィンドウ１", 1000, @0, @0, -29, null, true);
		CreateTextureEX("ウィンドウ１/背景１", 17000, 0, -2000, "旋回イメージ２");
		CreateTextureEX("ウィンドウ１/敵機１", 17000, -14, -392, "cg/st/3d九〇式竜騎兵_騎航_戦闘d.png");


		Fade("ウィンドウ２/*", 0, 1000, null, false);
		Move("ウィンドウ２/自機１", 0, @-100, @-100, Dxl1, true);

	Wait(400);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0210a00">
《吉野御流が一芸、霞返し。……誇るほどの
技ではない。
　同等の技術ならそちらにもあるだろう……》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0220a00">
《一刀流の雪車町一蔵》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


		Fade("ウィンドウ１/*", 0, 1000, null, false);
		Move("ウィンドウ１/敵機１", 0, @100, @100, Dxl1, true);

		//▼コクピット（消去）
		Cockpit_AllFade0();
		//▼コクピット（自機情報：回転軸停止）
		CP_RollBar_ADelete();
		//▼コクピット（自機情報：振動停止２）
		Shake("@CP_Frame", 0, 0, 0, 0, 0, 500, null, false);
		//▼雲消去
		CloudZoomFade(0,true);

		//▼固定値ランダム：停止
		MoveFFP1stop();

	Wait(400);

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0161]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0230a12">
《へっへ……
　目利きの方も大したもんで》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0240a00">
《これだけ立ち合えば、太刀筋の一つ二つは
読み取れる。
　増してそれが、大和に冠たる名流であれば》

{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0250a12">
《恐れ入りました……。
　しかし……妙なことをなさる》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0260a00">
《とは》

{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0270a12">
《今の一刀、<RUBY text="・・・・・">斬りきれば</RUBY>お手前の勝ちだった
じゃぁありませんか？
　あたしは今頃海に向かって真っ逆様だ……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0280a00">
《……》

{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0290a12">
《どうして、そうなさらなかったんで？
　警察の旦那……》

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


.//◆小分岐
..//◆一条のみ生存ルートの場合

if($Kanae_Dead == true){

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0300a00">
《……そちらこそ。
　先刻の振舞いは何の酔狂か》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0310a12">
《はァい？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0320a00">
《…………。
　あの瞬間、怪物の牙を止めたのは》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0330a00">
《雪車町一蔵。お前ではないのか？》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0340a12">
《はぁて……
　何のことやら……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0350a00">
《……》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　やはり、誤解か……？
　どうにも腑に落ちないが……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0360a00">
《ならばその件は置いて今の事を訊こう。
　何故、故意に勝負を長引かせる？》

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


}else{

..//◆両者生存or香奈枝のみ生存ルートの場合

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0370a00">
《そちらこそ。
　何故いたずらに勝負を長引かせる》

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

}

.//◆合流

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0380a00">
《この数合。
　俺を斬り墜とす機会は一度ならずあった筈
だが？》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0390a12">
《へ、へ、へ……
　いや、なにね》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0400a12">
《<RUBY text="・・・・・・・">確かめたかった</RUBY>んで……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0410a00">
《何をだ》

{	FwC("cg/fw/fw雪車町_嘲笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0420a12">
《けぇけけけけけけけけけ！
　ひぇっへへへへへへへへへへへへ!!》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0430a00">
《……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0440a00">
《そもそも、何故ここにいる。
　何故俺を襲う》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0450a00">
《六波羅御雇から、研究所の警備部隊に転属
したわけではないだろう……。
　先日の意趣返しか？》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0460a12">
《別に<RUBY text="・・">それ</RUBY>でも構いませんがねぇ……。
　へへ、旦那にはあたしが借りたものを返し
に来るような律儀な人間に見えるんですか》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0470a00">
《……では。
　お前がＧＨＱの手下だからか？》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0480a12">
《…………》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0490a00">
《ＧＨＱの<RUBY text="・・・・">統治政策</RUBY>を俺が妨害したから――
　始末に来た、ということか？》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0500a12">
《さぁて。
　何のお話やら……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0510a00">
《鈴川令法》

{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0520a12">
《……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0530a00">
《風魔小太郎。
　……幕府の高官でもない彼らが<RUBY text="わざもの">真打劔冑</RUBY>を
所持していたのは、何故だ》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0540a00">
《お前の両手が、進駐軍の蔵から劔冑を持ち
出し、彼らに受け渡したからではないのか。
　雪車町一蔵》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0550a12">
《……へっへ。
　参りましたね。小太郎の爺さん、くたばる
前にだいぶん余計なことを喋ったようだ……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0560a00">
《……何故、ＧＨＱがそんな真似を許したか。
　それはお前の行動が、ＧＨＱの目的に沿う
ものであったからに他ならない》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　ＧＨＱの目的――
　大和完全占領。

　そこに雪車町という男の、一見不可解な行跡を重ね
て<RUBY text="み">鑑</RUBY>る。
　そうして、署長は一つの結論に至った。

　苦味を覚えるほどわかり易く、説得力を備えた推察。
　そのままに、俺は投げ放った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0570a00">
《<RUBY text="・・・・・・・・・・・・・・・">大和の武者に大和の民を害させる</RUBY>。
　大和がＧＨＱという支配者を受け入れる、
その素地をつくるために》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0580a00">
《違うか……
　売国の徒》

{	FwC("cg/fw/fw雪車町_嘲笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0590a12">
《キヒヒヒヒヒヒヒヒヒヒヒ!!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　その怪笑は――
　俺の言葉を確実に肯定していた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想

	CreateColorEX("色０", 19999, "#000000");

	SetVolume("サウンド１", 2000, 1, NULL);
	SetVolume("@mbgm*", 2000, 500, NULL);
//	OnSE("se擬音_回想_フラッシュバック01",1000);

	Fade("色０", 500, 1000, null, true);
		CreateTextureSP("背景２", 18000, 0, 0, "cg/bg/bg018_署長執務室_01.jpg");
		SetTone("背景２", Sepia);
		StL(18000, @0, @0,"cg/st/st署長_通常_制服.png");
		SetTone("@StL*", Sepia);
		FadeStL(0,true);
	Fade("色０", 500, 0, null, true);

	SetFwC("cg/fw/fw署長_通常.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【署長】
<voice name="署長" class="署長" src="voice/ma04/016vs0600a11">
「進駐軍の任務は、言ってしまえば我が国を
軍事基地化することだ。
　対<RUBY text="ロシア">露帝</RUBY>戦略の一環としてな」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/016vs0610a11">
「そのためには大和の民を味方につける必要
がある。武力のみで強引に支配した末、各地
で抵抗運動など起こされてはとてものこと、
露帝に睨みを利かせるどころではない」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/016vs0620a11">
「だからこそ、六波羅の圧政を黙認する。
　暴虐なる支配者に、大和の国民から救いを
求める声があがり……進駐軍はそれに応えて
立ち上がる。理想的な<RUBY text="シナリオ">台本</RUBY>だ」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/016vs0630a11">
「しかし、それだけでは足りない。
　六波羅に対する憎悪を煽っても、大和の民
がまず頼りにするのは六波羅以外の大和武者
かもしれない。進駐軍ではなく」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/016vs0640a11">
「その芽を摘むため、劔冑狩りを行って幕軍
以外の武者を根絶し――
　その劔冑をわざわざ危険人物に提供して、
凶行に走らせているのではないか？」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/016vs0650a11">
「大和国民の、大和武者に対する信頼を……
　完全に、失わせるべく」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	Fade("色０", 500, 1000, null, true);
		Delete("背景２");
		DeleteStL(0,true);

	SetVolume("サウンド１", 1000, 1000, NULL);
	SetVolume("@mbgm08", 1000, 1000, NULL);
	Fade("色０", 500, 0, null, true);
	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0660a00">
《さあれば俺を襲うのも得心ゆく。
　別に意図しての事ではなかったが、結果的
にＧＨＱの目論見を潰した俺は邪魔者とみら
れて当然だ……》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0670a12">
《あの連中を斬っただけならともかく、ねぇ。
　あんたの行動が世間で噂になりかけてるっ
てのが不味いんで……》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0680a12">
《あんたが英雄になっちゃあ困るんですよ。
　英雄は進駐軍だけでいい……だ、そうでね》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆反転
//◆再び正面からー。
		CreateTextureSP("背景３", 100, 0, 0, "旋回イメージ１");
		SetSurface("背景３","絵Suf2");
		Rotate("絵Suf2", 0, @0, @0, 0, null, false);
		Fade("絵Suf2", 0, 0, null, true);

		CreateWindow("ウィンドウ３", 150, 0, 0, 513, 576, false);
		SetAlias("ウィンドウ３", "ウィンドウ３");
		CreateTextureEX("ウィンドウ３/背景１", 16100, 0, 0, "cg/bg/bg001_空a_03.jpg");
		CreateTextureEX("ウィンドウ３/自機１", 16100, -457, -273, "cg/st/3d村正標準_騎突_戦闘.png");

		CreateWindow("ウィンドウ４", 150, 512, 0, 1024, 576, false);
		SetAlias("ウィンドウ４", "ウィンドウ４");
		CreateTextureEX("ウィンドウ４/背景１", 16100, 0, -1252, "旋回イメージ２");
		CreateTextureEX("ウィンドウ４/敵機１", 16100, 28, -221, "cg2/st/3d九〇式竜騎兵_騎突_戦闘.png");

	//▼雲正面
	CloudZoomStart(700,1000,1000,500,1000);

	//▼コクピット（瞬間表示）
	Cockpit_AllFade2();
	//▼コクピット（自機情報：振動）
	FrameShake();

	Move("ウィンドウ１", 1000, @0, @1000, Axl1, false);
	Move("ウィンドウ１/*", 1000, @0, @1000, Axl1, 500);
	Move("ウィンドウ２", 1000, @0, @-1000, Axl1, false);
	Move("ウィンドウ２/*", 1000, @0, @-1000, Axl1, true);

	CreateSE("サウンド２","se戦闘_動作_空突進05");
	SoundPlay("@サウンド２",2000,600,true);
	OnSE("se戦闘_動作_空突進08",1000);

	//▼コクピット（自機情報：方位）
	CP_AziChange(4000,0,AxlDxl,false);
	//▼コクピット（自機情報：速度）
	CP_SpeedChange(4000,650,Dxl1,false);
	//▼コクピット（自機情報：高度）
	CP_HighChange2(4000,1200,Dxl1,false);
	//▼コクピット（自機情報：仰角）
	CP_AltChange2(4000,-30,Dxl1,false);
	//▼コクピット（自機情報：回転軸）
	CP_RollBarMove2(4000,70,null,false);

	//▼雲移動
	CloudZoomVertex(4000,@500,@200,null,false);
	Fade("絵Suf2", 1000, 1000, null, false);
	Move("背景３", 4000, @-4000, @0, null, false);
	Rotate("絵Suf2", 4000, @0, @0, 90, null, 3500);

	SetVolume("サウンド２", 2000, 0, NULL);

	Move("ウィンドウ３/自機１", 500, @0, @50, Dxl1, false);
	Move("ウィンドウ４/敵機１", 500, @0, @-50, Dxl1, false);
	Move("ウィンドウ４/背景１", 500, @0, @30, Dxl1, false);
	Fade("ウィンドウ３/*", 500, 1000, null, false);
	Fade("ウィンドウ４/*", 500, 1000, null, true);

	Delete("ウィンドウ１");
	Delete("ウィンドウ２");

		//▼コクピット（消去）
		Cockpit_AllFade0();
		//▼コクピット（自機情報：回転軸停止）
		CP_RollBar_ADelete();
		//▼コクピット（自機情報：振動停止２）
		Shake("@CP_Frame", 0, 0, 0, 0, 0, 500, null, false);
		//▼雲消去
		CloudZoomFade(0,true);

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0690a12">
《それで<RUBY text="・・">今回</RUBY>の運びとなったわけで……》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0700a00">
《なに……？》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　<RUBY text="ニュアンス">言外の意</RUBY>を聞き咎める。
　ただ、こうして襲ってきたことを指しているように
は聞こえなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0710a12">
《いや、ね……。
　大した工作をしたわけじゃぁありませんよ》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0720a12">
《幕府がここで兵器研究をしているって<RUBY text="ネタ">情報</RUBY>
を、いくらか脚色して<RUBY text="・・・">そちら</RUBY>へ流しただけで。
　銀色云々ってのを強調しときゃ、餌になる
んじゃないかってね……結果はまぁ、案の定》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0730a00">
《……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　俺が銀星号を追っていることは、風魔小太郎と繋が
っていたこの男ならば知っていても不思議ではない。
　そこに罠を張られたか……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0740a00">
《島の警備力が俺を殺せば良し。
　俺が六波羅の兵器研究を潰しても、それは
それで万々歳》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0750a00">
《どちらに転んでも、高みの見物のＧＨＱは
濡れ手で粟の丸儲け……
　そういう腹か》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0760a12">
《へ、へ……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0770a00">
《……ならば何故出てきた？
　雪車町一蔵》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0780a00">
《俺があの怪物と決着をつけるまで、見物を
決め込まなかったのは何故だ》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0790a12">
《……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　そう言って、気付く。
　……交渉の余地が、あるという事か？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0800a00">
《その方がそちらにとっても都合が良かろう。
　この場を退け、雪車町一蔵》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0810a12">
《はァい？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0820a00">
《逃げはせぬ。
　あの怪物を仕留めた後、お前の相手をする
と約束しよう》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0830a00">
《あるいは俺の方があの怪物に潰されるかも
しれないが……
　それでも、お前は何も困るまい》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　今、至急に始末しなくてはならぬのはあの巨兵。
　ＧＨＱの走狗たるこの男とも決着は避けられまいが、
それは後でも良い。

　利害は一致している。
　俺と怪物の戦いを先に回した方が、俺とこの雪車町、
どちらにとっても好都合の筈。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0840a12">
《へっ。まァ、そうかもしれませんが……
　そちらさんにとっちゃ、別にあたしが先で
も構わないんじゃないですかぃ？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0850a00">
《いや。
　あの怪物は、胎内に監禁した人々を燃料に
して動いている》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0860a00">
《彼らを急ぎ、助け出さねばならない》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0870a12">
《へ、へ、へ……
　大した正義漢ぶりで》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0880a00">
《……どう解釈しようと構わない》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0890a12">
《いやいや……
　そうとしか解釈できませんねェ……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆雪車町中段

	CreateTextureEX("敵機１", 18000, -222, -350, "cg2/st/3d九〇式竜騎兵_騎突_戦闘b.png");
	SetBlur("敵機１", true, 1, 500, 50, false);

	CreateColorEX("色３", 19000, "#000000");
	CreateTextureEX("エフェクト１", 19000, 0, 0, "cg/ef/ef013_汎用斜め軌道.jpg");
	Zoom("エフェクト１", 0, 2000, 2000, Dxl2, true);
	SetVertex("エフェクト１", 650, 288);

		CreateSE("ＳＥ１","se戦闘_動作_刀構え01");

		CreateSE("サウンド２","se戦闘_動作_空突進07");
		SoundPlay("サウンド２",2000,500,true);

		OnSE("se戦闘_動作_空突進03",1000);
		SoundPlay("ＳＥ１",0,1000,false);

	Move("ウィンドウ４/背景１", 500, -50, @0, Dxl1, false);
	Move("ウィンドウ４/敵機１", 500, -222, -350, Dxl1, false);
	Move("ウィンドウ４", 500, @-512, @0, Dxl1, false);

	Fade("ウィンドウ４/敵機１", 500, 0, null, false);
	Fade("敵機１", 500, 1000, null, true);

	//▼Ｘ軸ランダムＹ軸均等
	MoveFTP1("@敵機１",10000,3,10);
	//▼完全ランダム
	MoveFRP1("@ウィンドウ４/背景１",20000,5,5);

	//▼雲正面
	CloudZoomSet2("マド",18000,0,0,1024,576);
	//▼雲開始
	CloudZoomStart2B(700,1000,1000);

	SetFwR("cg/fw/fw雪車町_嘲笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0900a12">
《て、なると……
　あたしは悪玉の用心棒ってわけだァ！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆斬撃
//◆弾く
//◆交差
		CreateSE("ＳＥ１","se戦闘_動作_空突進06");

		CreateSE("ＳＥ２","se戦闘_攻撃_剣戟弾く03");
		CreateSE("ＳＥ３","se戦闘_攻撃_鎧_剣戟03");
		CreateSE("ＳＥ４","se戦闘_攻撃_刀衝突02");

		CreateSE("ＳＥ５","se戦闘_攻撃_剣戟弾く01");

		CreateSE("ＳＥ６","se戦闘_動作_空上昇01");


	OnSE("se戦闘_動作_空突進02",1000);

	Zoom("敵機１", 500, 2000, 2000, Dxl1, 450);
	Fade("色１", 50, 1000, null, true);

		//OnSE("se戦闘_攻撃_剣戟弾く03",1000);
		//OnSE("se戦闘_攻撃_鎧_剣戟03",1000);
		//OnSE("se戦闘_攻撃_刀衝突02",1000);
		SoundPlay("ＳＥ２",0,1000,false);
		SoundPlay("ＳＥ３",0,1000,false);
		SoundPlay("ＳＥ４",0,1000,false);

		Fade("色３", 0, 1000, null, true);
		Fade("エフェクト１", 0, 1000, null, true);
	Fade("色１", 200, 0, null, false);
	Move("エフェクト１", 500, @0, @200, Dxl1, false);
	Rotate("エフェクト１", 500, @0, @0, 400, Dxl1, false);
	Zoom("エフェクト１", 500, 10000, 10000, Axl2, 300);
	Fade("色１", 200, 1000, null, true);

		//OnSE("se戦闘_攻撃_剣戟弾く01",1000);
		SoundPlay("ＳＥ５",0,1000,false);

		//▼雲消去
		CloudZoomFade2(0,false);

		//▼完全ランダム：停止
		MoveFRP1stop();
		//▼Ｘ軸ランダムＹ軸均等：停止
		MoveFTP1stop();

		Delete("ウィンドウ３");
		Delete("ウィンドウ４");
		Delete("敵機*");
		Delete("エフェクト*");
		Delete("色３");

		//OnSE("se戦闘_動作_空突進04",1000);
		SoundPlay("ＳＥ１",0,1000,false);

		CreateTextureSP("背景３", 100, 0, -2000, "旋回イメージ２");
		SetSurface("背景３","絵Suf2");
		Rotate("絵Suf2", 0, @0, @0, 0, null, false);
		Fade("絵Suf2", 0, 1000, null, true);

		CreateTextureEX("背景１", 100, Center, -288, "cg/bg/resize/bg001_空a_03.jpg");
		//CreateTextureEX("背景１", 100, 0, 0, "cg/bg/bg001_空a_03.jpg");
		Zoom("背景１", 0, 2000, 2000, Dxl2, true);

		CreateTextureEX("背景４", 100, 0, -5000, "旋回イメージ３");
		SetSurface("背景４","絵Suf2");

		//▼固定値ランダム
		MoveFFP1("@背景４",20000);

		//▼雲開始
		CloudZoomStart(700,1000,1000,500,1000);
		//▼雲移動
		CloudZoomVertex(0,@-500,@-200,Dxl2,true);

		//▼コクピット（瞬間表示）
		Cockpit_AllFade2();
		//▼コクピット（自機情報：振動）
		FrameShake();

		//▼コクピット（自機情報：回転軸）
		CP_RollBarMove2(0,0,Dxl1,true);
		//▼コクピット（自機情報：回転軸自動化）
		CP_RollBarMoveA();

	SoundPlay("ＳＥ６",0,1000,false);

	//▼コクピット（自機情報：方位）
	CP_AziChange(2000,-30,AxlDxl,false);
	//▼コクピット（自機情報：速度）
	CP_SpeedChange(2000,450,Dxl1,false);
	//▼コクピット（自機情報：高度）
	CP_HighChange2(2000,1500,Dxl1,false);
	//▼コクピット（自機情報：仰角）
	CP_AltChange2(2000,30,Dxl1,false);

	Move("背景３", 2000, @0, @1800, Dxl2, false);
	Fade("色１", 500, 0, null, true);
	Fade("背景１", 1500, 1000, Axl3, false);

	SetVolume("サウンド２", 2000, 0, NULL);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0910a00">
《雪車町……！》

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0920a12">
《へェへェヘッ！
　助けに行きたいなら、あたしをどうにかし
ないといけませんねェ！》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0930a00">
《……ッ……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　何故だ。
　この男は、何を考えている？

　単なる利害だけではないというのか？
　俺を襲うのは――

　いずれにしても。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/016vs0940a01">
《決裂よ！
　余計なことは忘れて！》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0950a00">
「く……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　太刀を取り直す。
　遺憾ながら、村正の言う通り。

　やはり、斬り破る他に道はない！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0960a12">
《へぇ、へへ……
　旦那に、あたしが殺せますかねぇ……》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0970a00">
《退かぬならば……
　斬る》

{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0980a12">
《旦那ァ……
　あたしは、<RUBY text="・・・・">殺せるか</RUBY>……てぇ、言ってるん
ですよ》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0990a00">
《……なに？》

{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1000a12">
《今のところ……
　旦那の切先には、ちぃとも殺気が乗っちゃ
おりませんが……？》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　――この男。

　確かに、雪車町を殺す気は端から無い。
　彼は〝卵〟を抱える寄生体ではないのだ。

　殺さねばならぬ、理由がない。
　――そこを、見切られている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1010a00">
《……無用の殺生は戒めるべき事。
　当然の心得だ》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1020a12">
《そうですか……。
　けど、今はそうも言ってられないんじゃあ
ないですかねぇ？》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1030a12">
《殺す気でやらなけりゃ、いつまでもここに
釘付けですよ……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1040a00">
《……》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1050a12">
《あたしを……
　殺しますか？》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1060a00">
《他に手が無いならば……
　<RUBY text="ばん">万</RUBY>やむ無し。斬り殺して、押し通る》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　できもしないことを云う。
　<RUBY text="ジツ">実</RUBY>はどうあれ表向きは、弱味を隠さねばならない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_満足.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1070a12">
《へ、へッ！
　それでこそ〝英雄〟ってもんで！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Delete("背景３");

//◆反転
	CreateTextureSP("敵機１", 500, -300, 710, "cg/st/3d八八式指揮官_騎突_戦闘.png");
	Zoom("敵機１", 0, 50, 50, Dxl2, true);

		CreateSE("ＳＥ１","se戦闘_動作_空突進07");

	CreateSE("サウンド２","se戦闘_動作_空突進05");
	SoundPlay("@サウンド２",2000,600,true);
	OnSE("se戦闘_動作_空突進08",1000);
	OnSE("se戦闘_動作_空急降下01",1000);

	//▼コクピット（自機情報：回転軸停止）
	CP_RollBar_ADelete();

	//▼コクピット（ロックオン：設置）
	//CockPit_LockSet(@0,@0);

	//▼コクピット（自機情報：方位）
	CP_AziChange(4000,30,AxlDxl,false);
	//▼コクピット（自機情報：速度）
	CP_SpeedChange(4000,650,Dxl1,false);
	//▼コクピット（自機情報：高度）
	CP_HighChange2(4000,1100,Dxl1,false);
	//▼コクピット（自機情報：仰角）
	CP_AltChange2(4000,-30,Dxl1,false);
	//▼コクピット（自機情報：回転軸）
	CP_RollBarMove2(4000,360,Dxl1,false);

	//▼雲移動
	CloudZoomVertex(1000,@0,@-300,Axl2,false);

	Fade("背景４", 500, 1000, null, false);

	Move("背景４", 4000, @0, -50, AxlDxl, false);
	Rotate("絵Suf2", 4000, @0, @0, 180, AxlDxl, 3000);

		SoundPlay("ＳＥ１",0,1000,false);
		SetVolume("サウンド２", 2000, 0, NULL);

	Move("敵機１", 1000, @0, @-1000, Dxl2, false);

	//▼雲移動
	CloudZoomVertex(1000,@0,@300,Dxl2,true);

	//▼コクピット（自機情報：回転軸自動化）
	CP_RollBarMoveA();
	//▼Ｘ軸ランダムＹ軸均等
	MoveFTP1("@敵機１",10000,1,3);
	//▼コクピット（ロックオン：自動追尾）
	//CP_LockOnGet("敵機１",500,20,20,Dxl1,false);
	//▼コクピット（ロックオン：切替）
	//CP_LockOnFade(500,"on",false);

	Delete("背景１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　からかうように言い放ち、雪車町が転進する。
　対応してこちらも兜角を返し、正面に入れた敵影を
見据える。

　……心胆知れぬ者を相手に、いつまでも時間を掛け
てはいられない。
　決着をつけねば……！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	SetVolume("@mbgm*", 1000, 0, NULL);
	SoundPlay("@mbgm13",0,1000,true);
	SetVolume("サウンド１", 2000, 1, NULL);


//◆接近
//◆村正中段
//◆雪車町上段
	OnSE("se戦闘_動作_空突進01",1000);
	OnSE("se戦闘_動作_空突進04",1000);
	OnSE("se戦闘_動作_空突進06",1000);

	Zoom("敵機１", 500, 1000, 1000, Axl2, false);
	Zoom("絵Suf2", 500, 2500, 2500, Axl2, false);
	Fade("色０", 500, 1000, null, true);

		//▼コクピット（消去）
		Cockpit_AllFade0();
		//▼コクピット（自機情報：回転軸停止）
		CP_RollBar_ADelete();
		//▼コクピット（自機情報：振動停止２）
		Shake("@CP_Frame", 0, 0, 0, 0, 0, 500, null, false);

		//▼雲消去
		CloudZoomFade(0,false);

		//▼固定値ランダム：停止
		MoveFFP1stop();
		//▼完全ランダム：停止
		MoveFRP1stop();
		//▼Ｘ軸ランダムＹ軸均等：停止
		MoveFTP1stop();

		//▼コクピット（ロックオン：削除）
		CP_LockOnDelete();

		Delete("背景*");
		Delete("絵Suf2");
		CreateTextureSP("背景１", 100, Center, Middle, "cg/bg/resize/bg073_海a_03l.jpg");
		Rotate("背景１", 0, @0, @0, @40, null, true);

		Zoom("自機１", 0, 500, 500, Dxl2, true);
		CreateTextureSP("自機１", 100, 129, -345, "cg/st/3d村正標準_騎航_戦闘d.png");
		Zoom("自機１", 0, 100, 100, Dxl2, true);
		CreateTextureEX("自機２", 100, 250, -513, "cg/st/3d村正標準_騎航_戦闘e.png");
		CreateTextureSP("敵機１", 100, -434, -404, "cg/st/3d九〇式竜騎兵_騎航_戦闘a.png");
		Zoom("敵機１", 0, 100, 100, Dxl2, true);
	Fade("色０", 1000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　太刀を体側、騎航中段の位置にとる。
　雪車町は右上段の構。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("色０", 1000, 1000, null, true);

	Move("自機１", 0, @0, @50, Axl1, true);
	Move("敵機１", 0, @0, @-50, Axl1, true);

	Zoom("背景１", 0, 1200, 1200, Dxl2, true);
	Zoom("自機１", 0, 300, 300, Dxl2, true);
	Zoom("敵機１", 0, 300, 300, Dxl2, true);
	Fade("色０", 1000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0471]
　こちらの下側へ斬り抜けるよう動く雪車町の機先を、
更に潜り込んで封じる。<k>
{
	Fade("色０", 1000, 1000, null, true);

	Move("自機１", 0, @0, @-50, Axl1, true);
	Move("敵機１", 0, @0, @50, Axl1, true);

	Zoom("背景１", 0, 1400, 1400, Dxl2, true);
	Zoom("自機１", 0, 500, 500, Dxl2, true);
	Zoom("敵機１", 0, 500, 500, Dxl2, true);
	Fade("色０", 1000, 0, null, true);
}
　封じ、封じられ――<k><?>
{
	Fade("色０", 1000, 1000, null, true);

	Move("自機１", 0, @0, @-100, Axl1, true);
	Move("敵機１", 0, -443, -243, Axl1, true);

	Zoom("背景１", 0, 1600, 1600, Dxl2, true);
	Zoom("自機１", 0, 1000, 1000, Dxl2, true);
	Zoom("敵機１", 0, 1000, 1000, Dxl2, true);
	Fade("自機１", 0, 0, null, true);
	Fade("自機２", 0, 1000, null, true);
	Fade("色０", 1000, 0, null, true);
}
競り負ける。

　我が下方を奪取する敵騎の軌道。
　封じられた――その刹那には、

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆剣閃
	CreateTextureEX("エフェクト１", 1000, 0, 0, "cg/ef/ef012_汎用斜め軌道.jpg");

	//Fade("色０", 500, 1000, null, true);
	Fade("エフェクト１", 1000, 500, null, true);
	//Fade("色０", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　俺の太刀は中段から下段へ移り、更に走っている。
　陣取りの鍔競り合いは騙し。太刀筋を隠蔽する為の
煙幕に過ぎない。

{	Fade("エフェクト１", 500, 1000, null, false);}
　こちらの下へ抜けようとする雪車町を、最適の形で
下段からの切り上げ太刀が迎え撃つ。
　敵の太刀よりも確実に速い。確実に先を制し、肩口
へ深々と切り込んで戦闘力を奪う。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitAction("エフェクト１", null);

//	SoundPlay("サウンド１",1000,1,true);
	SetVolume("@mbgm*", 1000, 0, NULL);

	Fade("色１", 500, 1000, null, false);
	Zoom("エフェクト１", 500, 2000, 2000, Axl2, true);
	Delete("エフェクト１");
	Fade("色０", 500, 1000, null, true);
	Fade("色１", 0, 0, null, true);
	
		Wait(2000);

	SetFwC("cg/fw/fw雪車町_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1080a12">
《……カカ》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　刃先が――
　指す――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEXover("エフェクト１", 19000, 0, 0, "cg/ef/ef002_汎用移動.jpg");

	Fade("背景１", 0, 0, null, true);
	Move("自機２", 0, -167, -487, Axl1, true);
	Move("敵機１", 0, -500, -322, Axl1, true);
	Fade("エフェクト１", 0, 1000, null, true);
	Fade("色０", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0501]
　<RUBY text="・・・">首筋を</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1090a00">
《――なッ》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　あろうことか。
　雪車町は上体をわずかに捻り、迫る刃へ首を晒して
いた。

　通常の姿勢であれば、首は兜に守られる。
　だがこのように、殊更首筋を曝け出せば――装甲は
無きに等しく――太刀を食い止められる筈もなく、

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("エフェクト０", 99, 0, 0, "cg/ef/ef007_汎用血しぶき.jpg");
	Rotate("エフェクト０", 0, @180, @180, @0, null, true);
	Fade("エフェクト０", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0521]
　<RUBY text="・・">死ぬ</RUBY>。
　<RUBY text="・・">殺す</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateTextureEX("エフェクト２", 19000, 0, 0, "cg/ef/ef002_汎用移動.jpg");
	Fade("エフェクト２", 300, 1000, null, true);

	SetFwC("cg/fw/fw雪車町_嘲笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1100a12">
《カカカカカカカカカカカ!!》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1110a00">
《何を――！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆両騎交差

	SL_leftup2(19000,@0,@0,1000);

	OnSE("se戦闘_攻撃_鎧_剣戟01",1000);
	SL_leftupfade2(0);

	Fade("色１", 300, 1000, null, true);

		Delete("敵機１");
		Delete("自機*");
		Delete("エフェクト*");

		CreateTextureEX("エフェクト１", 19001, 286, -103, "cg/ef/efRec_雲a01.png");
		Zoom("エフェクト１", 0, 100, 100, Dxl2, true);
		CreateTextureEX("エフェクト２", 19001, 0, -70, "cg/ef/efRec_雲a02.png");
		Zoom("エフェクト２", 0, 100, 100, Dxl2, true);
		CreateTextureEX("エフェクト３", 19001, -55, 3, "cg/ef/efRec_雲a03.png");
		Zoom("エフェクト３", 0, 100, 100, Dxl2, true);
		CreateTextureEX("エフェクト４", 19001, -105, 3, "cg/ef/efRec_雲a04.png");
		Zoom("エフェクト３", 0, 100, 100, Dxl2, true);

		//▼雲開始
		CloudZoomStart2(700,1000,1000,500,1000);
		//▼雲移動
		CloudZoomVertex2(0,@-500,@0,Dxl2,true);

		CreateTextureSP("背景３", 100, -4000, 0, "旋回イメージ１");
		CreateTextureSP("背景４", 100, -4000, 0, "旋回イメージ１");

		CreateSCR1("@背景３","@背景４",1000,0,@0);
		CreateTextureSP("自機１", 100, -73, -286, "cg/st/3d村正標準_騎航_戦闘e.png");

		//▼Ｘ軸ランダムＹ軸均等
		MoveFTP1("@自機１",10000,5,10);

		OnSE("se戦闘_動作_空上昇01",1000);

	Wait(3000);

	CreateSE("サウンド２","se戦闘_動作_空突進05");
	SoundPlay("@サウンド２",2000,300,true);
	SoundPlay("サウンド１",2000,1000,true);

	Fade("色１", 2000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
　……辛うじて、間に合った。
　寸での所で方向転換に成功した刀の先端が、雪車町
の首を掠め過ぎ、虚空へと流れ去る。

　無理な動作で捻られた手首は、電撃にも似た激痛を
脳髄まで送り届けてきた。
　苦悶と共に、声を絞り出す。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm34",0,1000,true);

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1120a00">
《何の、真似だ!?》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

			CreateTextureEX("背景１", 19000, Center, Middle, "cg/bg/resize/bg001_空c_03l.jpg");
			CreateTextureEX("敵機１", 19000, -500, -300, "cg2/st/3d九〇式竜騎兵_騎突_戦闘2.png");
			Zoom("背景１", 0, 1200, 1200, Dxl2, false);
			Move("背景１", 0, @100, @0, Dxl1, false);
			Rotate("背景１", 0, @0, @0, 60, Dxl1, false);
			Rotate("敵機１", 0, @0, @0, 60, Dxl1, false);
			Zoom("敵機１", 0, 2000, 2000, Dxl2, true);

	SoundPlay("@サウンド２",2000,1,true);
	SoundPlay("サウンド１",2000,1,true);

	Fade("背景１", 1000, 1000, null, false);

	SetFwC("cg/fw/fw雪車町_哄笑.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0551]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1130a12">
《駄目だぁーーーっ!!
　殺せねぇ殺せねぇ殺せねェーーーーーッ!!》
{
	WaitAction("背景１", null);

	OnSE("se戦闘_動作_空突進03",1000);
	Fade("敵機１", 0, 1000, null, false);
	Zoom("敵機１", 1000, 0, 0, Dxl1, false);
	Move("敵機１", 1000, @1000, @0, Axl1, false);
	Move("背景１", 1000, @-100, @0, Dxl1, false);

	Rotate("エフェクト４", 2000, @0, @0, 180, Dxl3, false);
	Zoom("エフェクト４", 2000, 1000, 1000, Dxl3, false);
	Fade("エフェクト４", 150, 1000, null, false);
	Wait(150);
	Fade("エフェクト４", 1000, 0, null, false);

	Rotate("エフェクト３", 2000, @0, @0, 120, Dxl3, false);
	Zoom("エフェクト３", 2000, 1000, 1000, Dxl3, false);
	Fade("エフェクト３", 150, 1000, null, false);
	Wait(150);
	Fade("エフェクト３", 1000, 0, null, false);

	Rotate("エフェクト２", 2000, @0, @0, 90, Dxl3, false);
	Zoom("エフェクト２", 2000, 800, 800, Dxl3, false);
	Fade("エフェクト２", 150, 1000, null, false);
	Wait(150);
	Fade("エフェクト２", 1000, 0, null, false);

	Rotate("エフェクト１", 2000, @0, @0, 60, Dxl3, false);
	Zoom("エフェクト１", 2000, 500, 500, Dxl3, false);
	Fade("エフェクト１", 150, 1000, null, false);
	Wait(150);
	Fade("エフェクト１", 1000, 0, null, false);
}<BR>

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
　侮蔑、嘲笑、玩弄の叫びが夜天を割る。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitFade("エフェクト*", null);

	Move("エフェクト１", 0, 246, -164, null, false);
	Rotate("エフェクト１", 0, @0, @0, 0, null, false);
	Zoom("エフェクト１", 0, 100, 100, null, false);
	Move("エフェクト２", 0, 180, -100, null, false);
	Rotate("エフェクト２", 0, @0, @0, 0, null, false);
	Zoom("エフェクト２", 0, 100, 100, null, false);
	Move("エフェクト３", 0, 254, 64, null, false);
	Rotate("エフェクト３", 0, @0, @0, 0, null, false);
	Zoom("エフェクト３", 0, 100, 100, null, false);
	Move("エフェクト４", 0, 355, 186, null, false);
	Rotate("エフェクト４", 0, @0, @0, 0, null, false);
	Zoom("エフェクト４", 0, 100, 100, null, false);
	Move("エフェクト*", 0, @-200, @0, Axl1, true);

	CreateTextureSP("背景０", 19900, 0, 0, SCREEN);
		CreateTextureSP("背景１", 19000, 0, 0, "cg/bg/resize/bg002_空a_03l.jpg");
		CreateTextureSP("自機２", 19000, -520, -400, "cg/st/3d村正標準_騎航_通常4a.png");
		CreateTextureSP("敵機１", 19001, -300, -600, "cg2/st/3d九〇式竜騎兵_騎突_戦闘.png");
		Zoom("自機２", 0, 50, 50, Dxl2, false);
		Zoom("敵機１", 0, 0, 0, Dxl2, true);

	SetFwC("cg/fw/fw雪車町_哄笑.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1140a12">
《ヘッヘェ！　へ、ヘヘヘヘヘ！
　やっぱあんたは英雄の器じゃねえよ！
　覚悟が足りねェよ！　駄目だ、駄目だァ！》
{
	OnSE("se戦闘_動作_空突進02",1000);
	OnSE("se戦闘_動作_空突進04",1000);

	FadeDelete("背景０", 300, false);
	Move("自機２", 1000, @-100, @0, null, false);
	Zoom("自機２", 1000, 0, 0, null, false);
	Zoom("敵機１", 1000, 2000, 2000, Dxl1, false);
	Move("敵機１", 1000, @700, @2000, Axl1, false);
	Move("背景１", 1000, @-200, @0, Dxl1, false);

	Rotate("エフェクト１", 2000, @0, @0, 60, Dxl3, false);
	Zoom("エフェクト１", 2000, 500, 500, Dxl3, false);
	Fade("エフェクト１", 150, 1000, null, false);
	Wait(150);
	Fade("エフェクト１", 1000, 0, null, false);

	Rotate("エフェクト２", 2000, @0, @0, 90, Dxl3, false);
	Zoom("エフェクト２", 2000, 800, 800, Dxl3, false);
	Fade("エフェクト２", 150, 1000, null, false);
	Wait(150);
	Fade("エフェクト２", 1000, 0, null, false);

	Rotate("エフェクト３", 2000, @0, @0, 120, Dxl3, false);
	Zoom("エフェクト３", 2000, 1000, 1000, Dxl3, false);
	Fade("エフェクト３", 150, 1000, null, false);
	Wait(150);
	Fade("エフェクト３", 1000, 0, null, false);

	Rotate("エフェクト４", 2000, @0, @0, 180, Dxl3, false);
	Zoom("エフェクト４", 2000, 1000, 1000, Dxl3, false);
	Fade("エフェクト４", 150, 1000, null, false);
	Wait(150);
	Fade("エフェクト４", 1000, 0, null, false);
}<BR>

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SoundPlay("サウンド２",2000,300,true);
	SoundPlay("サウンド１",2000,1000,true);

	FadeDelete("エフェクト*", 500, false);
	FadeDelete("背景１", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
　嘲りながら遠ざかる雪車町の竜騎兵甲。
　後に引く噴煙までもが<RUBY text="わら">嗤</RUBY>うように渦を巻いた。

　……何故だ。
　何故あの男は、確信を持てる。

　無意味な賭博に己の一命を投じられる程、世を達観
しているようにはとても見えない。
　あの男には確信があったのだ……！

　俺が、<RUBY text="けいけい">軽々</RUBY>には人を殺せないという。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("背景０", 19900, 0, 0, SCREEN);

		//▼雲消去
		CloudZoomFade2(0,false);
		SCR1stop();
		//▼固定値ランダム：停止
		MoveFTP1stop();

//		CreateTextureSP("背景１", 100, Center, Middle, "cg/bg/resize/bg001_空a_03.jpg");
		CreateTextureSP("背景１", 100, 0, -800, "旋回イメージ２");
		CreateSurfaceEX("絵Suf",200,2000,"背景１");
		Fade("絵Suf", 0, 1000, null, true);
		Rotate("絵Suf", 0, @0, @0, @-40, null, true);

		//▼雲正面
		CloudZoomStart(700,1000,1000,500,1000);
		//▼雲移動
		CloudZoomVertex(0,@700,@0,Dxl2,true);

		//▼コクピット（瞬間表示）
		Cockpit_AllFade2();
		//▼コクピット（自機情報：方位）
		CP_AziChange(0,0,AxlDxl,false);
		//▼コクピット（自機情報：速度）
		CP_SpeedChange(0,500,Dxl1,false);
		//▼コクピット（自機情報：高度）
		CP_HighChange2(0,1400,Dxl1,false);
		//▼コクピット（自機情報：仰角）
		CP_AltChange2(0,25,Dxl1,false);
		//▼コクピット（自機情報：回転軸）
		CP_RollBarMove2(0,20,null,true);

		//▼コクピット（自機情報：回転軸自動化）
		CP_RollBarMoveA();

		//▼固定値ランダム
		MoveFFP1("@絵Suf",10000);

		CreateTextureSP("敵機１", 200, -500, -200, "cg/st/3d九〇式竜騎兵_騎航_戦闘a.png");
		Rotate("敵機１", 0, @0, @0, -45, null, true);
		Zoom("敵機１", 0, 0, 0, Dxl2, true);

	SoundPlay("サウンド２",1000,0,true);

	Zoom("敵機１", 30000, 200, 200, Dxl1, false);
	Move("敵機１", 30000, 500, -500, null, false);
	Move("背景１", 30000, @-450, @0, null, false);
	FadeDelete("背景０", 500, true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1150a00">
《……先刻、口にしていたな。
　確かめたと》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1160a00">
《俺の何を確かめたと云う。
　雪車町一蔵》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1170a12">
《いやァ、なに……
　あんたがね、くっだらねぇ半端者だって事
ですよ》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆騎航−転回
//◆対峙

	CreateTextureEX("背景２", 17000, -100, -1500, "旋回イメージ２");
	CreateTextureEX("敵機２", 18000, -48, -342, "cg/st/3d九〇式竜騎兵_騎航_戦闘a.png");

	//▼Ｘ軸ランダムＹ軸均等
	MoveFTP1("@敵機２",10000,3,10);
	//▼固定値ランダム
	MoveFFP2("@背景２",10000);

	//▼雲消去
	CloudZoomFade(500,false);

	Fade("背景２", 1000, 1000, null, false);
	Fade("敵機２", 1000, 1000, null, false);
	Wait(1000);

	//▼雲開始
	CloudZoomStart2B(700,1000,1000);
	//▼雲移動
	CloudZoomVertex2(0,@1000,@-200,Dxl2,true);

	//▼Ｘ軸ランダムＹ軸均等：停止
	MoveFFP1stop();

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1180a12">
《嫌なんだろぉ？
　あたしを殺すのが嫌なんだろぉ……？》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1190a12">
《だって、ねぇ……
　あたしを殺したら、<RUBY text="・・・・">もう一人</RUBY>、罪も無い人
を殺さにゃならんもの、》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	//▼Ｘ軸ランダムＹ軸均等：停止
	MoveFTP1stop();

	SetBlur("敵機２", true, 1, 500, 50, false);

	OnSE("se戦闘_動作_空突進01",1000);

	Fade("色１", 300, 1000, null, false);
	Zoom("敵機２", 300, 2000, 2000, Axl1, false);
	Move("敵機２", 300, @100, @-300, Axl1, true);

	//▼固定値ランダム：停止
	MoveFFP2stop();

	CreateTextureSP("敵機２", 17100, -408, -327, "cg2/st/3d九〇式竜騎兵_騎突_戦闘.png");
	Zoom("敵機２", 0, 600, 600, Axl2, false);
	CreateTextureSP("自機２", 17100, 4, -261, "cg/st/3d村正標準_騎航_通常4a.png");
	Move("背景２", 0, -400, -500, Axl1, true);

	//▼雲消去
	CloudZoomFade2(1000,false);

	OnSE("se戦闘_動作_空突進07",1000);
	Fade("色１", 500, 0, null, false);

	Move("自機２", 500, @0, @50, Dxl1, false);
	Move("敵機２", 500, @0, @-100, Dxl1, false);
	Move("背景２", 500, @0, @-200, Dxl1, true);

	SetFwC("cg/fw/fw雪車町_満足.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0601]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1200a12">
《なァ？》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetBacklog("　　　　　　　　　　「!?」", "voice/ma04/016vs1210a00", 景明);
	SetBacklog("　　　　　　　　　　《!?》", "voice/ma04/016vs1220a01", 村正さん);

	CreateVOICE("景明","ma04/016vs1210a00");
	CreateVOICE("村正さん","ma04/016vs1220a01");
	SoundPlay("景明",0,1000,false);
	SoundPlay("村正さん",0,1000,false);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0604]
//（景明）（村正）
　
　　　　　　　　　　「!?」
　　　　　　　　　　《!?》

</PRE>
	SetTextEXC();
	Request("@text0604", NoLog);
	TypeBeginCIO();//―――――――――――――――――――――――――――――

/*
//◆声用一時退避
//◆同時
{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1210a00">
「!?」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/016vs1220a01">
《!?》
*/

//◆雪車町突進
//◆剣撃。がきーん。

	CreateTextureEX("エフェクト１", 18000, 0, 0, "cg/ef/ef045_スパーク.jpg");
	SetBlur("エフェクト１", true, 2, 500, 50, false);
	Zoom("エフェクト１", 0, 2000, 2000, Dxl2, true);



	OnSE("se戦闘_動作_空突進07",1000);

	Zoom("自機２", 300, 900, 900, Axl2, false);
	Zoom("敵機２", 300, 700, 700, Axl2, false);
	Fade("色１", 300, 1000, null, true);

	OnSE("se戦闘_攻撃_剣戟弾く01",1000);
	OnSE("se戦闘_攻撃_剣戟弾く02",1000);

	Fade("エフェクト１", 0, 1000, null, true);

	Shake("エフェクト１", 1000, 0, 30, 0, 0, 700, Dxl1, false);
	Zoom("エフェクト１", 1000, 1200, 1200, Dxl1, false);
	Fade("色１", 1000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
　反射的に繰り出した受け太刀が弾かれ、火花を撒く。
　しかし手首に走った衝撃は、心中のそれに比べれば
物の数でもなかった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Delete("絵Suf*");
	Delete("背景*");
	Delete("敵機*");
	Delete("自機*");

	CreateSE("サウンド２","se戦闘_動作_空突進05");
	SoundPlay("@サウンド２",2000,600,true);

		CreateTextureSP("背景２", 100, Center, -2000, "旋回イメージ２");
		//CreateSurfaceEX("絵Suf",200,2000,"背景２");
		//Fade("絵Suf", 0, 1000, null, true);
		//Rotate("絵Suf", 0, @0, @0, @-40, null, true);

		CreateTextureEX("背景１", 300, Center, -288, "cg/bg/resize/bg001_空a_03.jpg");

		//▼コクピット（瞬間表示）
		Cockpit_AllFade2();

		//▼コクピット（自機情報：方位）
		CP_AziChange(0,0,AxlDxl,true);
		//▼コクピット（自機情報：速度）
		CP_SpeedChange(0,650,Dxl1,true);
		//▼コクピット（自機情報：高度）
		CP_HighChange2(0,1000,Dxl1,true);
		//▼コクピット（自機情報：仰角）
		CP_AltChange2(0,-25,Dxl1,true);
		//▼コクピット（自機情報：回転軸）
		CP_RollBarMove2(0,0,null,true);

	FadeDelete("エフェクト１", 500, false);
	Shake("背景２", 1000, 0, 30, 0, 0, 700, Dxl1, false);
	Zoom("背景２", 1500, 1500, 1500, Dxl1, false);
	Move("背景２", 1500, @-200, @0, Dxl1, false);

	SetFwC("cg/fw/fw景明_驚き.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1230a00">
《な――何故》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitAction("背景２", null);

		CreateSE("ＳＥ１","se戦闘_動作_空突進03");
		CreateSE("ＳＥ２","se戦闘_動作_空突進04");

	OnSE("se戦闘_動作_空突進08",1000);
	OnSE("se戦闘_動作_空上昇01",1000);

		//▼雲正面
		CloudZoomStart(700,1000,1000,500,1000);
		//▼雲移動
		CloudZoomVertex(0,@-600,@-100,Dxl2,true);

		//▼コクピット（自機情報：方位）
		CP_AziChange(0,0,AxlDxl,false);
		//▼コクピット（自機情報：速度）
		CP_SpeedChange(3000,500,AxlDxl,false);
		//▼コクピット（自機情報：高度）
		CP_HighChange2(3000,1600,AxlDxl,false);
		//▼コクピット（自機情報：仰角）
		CP_AltChange2(3000,25,AxlDxl,false);
		//▼コクピット（自機情報：回転軸）
		CP_RollBarMove2(3000,0,null,false);

	Zoom("背景２", 2000, 1000, 1000, Axl1, false);
	Move("背景２", 2000, @0, @2000, Axl1, 1500);

	SoundPlay("ＳＥ１",0,1000,false);
	SetVolume("サウンド２", 1000, 0, NULL);
	SoundPlay("ＳＥ２",0,1000,false);

	Fade("背景１", 500, 1000, Axl2, false);
	Move("背景１", 500, @0, @100, Dxl1, true);


	SetFwC("cg/fw/fw景明_警戒.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0621]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1240a00">
《何故、お前が<RUBY text="・・">それ</RUBY>を！》

{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1250a12">
《見たんだよ》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
　見た――？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1260a12">
《あの夜。
　あの村。
　あの山の一軒家で》

{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1270a12">
《……てめェが蝦夷の子供を二人、泣き喚き
ながら殺すのをなァ……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フラッシュバック。姉妹殺害

	OnSE("se擬音_回想_フラッシュバック01",1000);

	Fade("色１", 0, 1000, null, true);

		CreateTextureSP("背景０", 18000, 0, 0, "cg/bg/bg023_弥源太の家_03a.jpg");
		SetTone("背景０", Monochrome);
		CreateTextureSP("立ち絵１", 18000, 622, InBottom, "cg/st/stふき_通常_私服.png");
		SetTone("立ち絵１", Monochrome);
		CreateTextureSP("立ち絵２", 18000, 531, InBottom, "cg/st/stふな_通常_私服.png");
		SetTone("立ち絵２", Monochrome);
	Fade("色１", 1000, 0, null, true);

	OnSE("se擬音_回想_フラッシュバック01",1000);

	Fade("色１", 0, 1000, null, true);
		Delete("背景０");
		Delete("立ち絵*");
		CreateTextureSP("エフェクト１", 18000, 0, 0, "cg/ef/ef007_汎用血しぶき.jpg");
		SetTone("エフェクト１", Monochrome);
	Fade("色１", 1000, 0, null, true);

	Fade("色１", 0, 1000, null, true);
			Delete("エフェクト１");
	Fade("色１", 300, 0, null, true);

	SetFwC("cg/fw/fw景明_疲労.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1280a00">
《……!!》

{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1290a12">
《なんでてめぇみてえな野郎があんな真似を
したんだか、わけがわかんなかった……
　だから調べたんだよ……》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1300a12">
《村正、ってぇ劔冑のことをさァ。
　そっちの方の文献を集めてる坊さんが知り
合いにいたんでねェ…………そしたら》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/016vs1310a01">
《……》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1320a12">
《いっこだけ、てめェに<RUBY text="ハマ">符合す</RUBY>る伝承が見つ
かってなぁ……
　<RUBY text="・・">呪い</RUBY>、が……あるんだろォ？　その劔冑に
はよぅ》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フラッシュバック。実家の宝殿？
	OnSE("se擬音_回想_フラッシュバック01",1000);
	Fade("色１", 0, 1000, null, true);
		CreateTextureSP("エフェクト１", 18000, 0, 0, "cg/bg/bg054_湊斗家祭殿a_01a.jpg");
		SetTone("エフェクト１", Monochrome);
	Fade("色１", 1000, 0, null, true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
　
　　　　　　　　　我が<RUBY text="な">銘</RUBY>は村正

　
　　　　　　我、鬼に逢うては鬼を斬り

　
　　　　　　仏に逢うては仏を斬るもの也

　
　　　　　　　　　我、善に非ず

　
　　　　　　　　　我、義に従わず

　
　　　　　　　　　我、正道を<RUBY text="ゆ">征</RUBY>かず

　
　　　　　　　　我、正邪を諸共に断つ

　
　　　　　　　　　我、一振の<RUBY text="ハガネ">凶刃</RUBY>也

　
　　　　　我との契りを求める者
　　　　　我と共に凶刃と<RUBY text="な">生</RUBY>る覚悟ありや

　
　　　　　　　　　無かりせば去れ

　
　　　　　　　　有りせば
　　　　　　　　己が覚悟を宣誓す<RUBY text="べ">可</RUBY>し

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	Fade("色１", 500, 1000, null, true);
			Delete("エフェクト１");
	Fade("色１", 500, 0, null, true);

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1330a00">
《………………》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1340a12">
《南北朝時代の争いが泥沼のどん底になっち
まったのは、村正がその呪いを<RUBY text="・・・">広めた</RUBY>からだ
って云うじゃねェか……
　へ、へ！　大したもんだねぇ》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フラッシュバック。銀星号に汚染された人々？
	OnSE("se擬音_回想_フラッシュバック01",1000);
	Fade("色１", 0, 1000, null, true);
		CreateTextureSP("エフェクト１", 18000, 0, 0, "cg/ev/ev001_銀星号事件イメージ１.jpg");
		SetTone("エフェクト１", Monochrome);
	Fade("色１", 1000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]
　
　　　　　<RUBY text="くるわし">磁気汚染</RUBY>：勅令封印／絶対禁戒

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	Fade("色１", 500, 1000, null, true);
			Delete("エフェクト１");
	Fade("色１", 500, 0, null, true);

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0690]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1350a12">
《……なぁ、あんた。
　なんで山奥にでも篭もっちまわねえんだ》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1360a12">
《そんな厄介な呪いを抱えて……
　なぁんで世間をうろつき回るんだよ？》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1370a00">
《…………》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1380a12">
《け、けけっ……
　呪われた劔冑を使ってる癖に、やってる事
は悪党退治》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1390a12">
《悪代官を成敗した後で、
　可愛い村娘も殺しちまう》

{	FwC("cg/fw/fw雪車町_嘲笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1400a12">
《け、け、ケケケ！
　あんた一体、何がしてぇんだよぉ？》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1410a00">
《……黙れ……
　貴様》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1420a12">
《悪党どもとやり合うために、とにかく強い
劔冑が欲しかったのかァ？
　沢山のひとを救うためなら、少しの犠牲は
やむ無し……かぁい？》

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1430a12">
《いいねェ。そいつは正義の英雄だ。
　でも英雄だってんなら、もっと堂々として
なけりゃいけねぇなぁ……》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1440a00">
《貴様》

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1450a12">
《それとも人殺しが好きなだけかぁ？
　いいねェ。そいつは悪鬼ってやつだ》

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1460a12">
《でも悪鬼だったら、もっと嬉しそうに殺さ
なきゃあなァ……》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1470a00">
《黙れと》

{	FwC("cg/fw/fw雪車町_嘲笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1480a12">
《ケ、ケ、ケハハハハハハ!!
　どっちでもねェ。半端野郎だ！　おめぇは
半端野郎だよぉ！》

{	FwC("cg/fw/fw雪車町_哄笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1490a12">
《くっっっだらねェェェェェェ!!
　ひゃひゃひゃひゃひゃひゃひゃひゃひゃ!!》

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1500a00">
《黙れと言っている!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆突進
		CreateTextureSP("背景２", 100, 0, 0, "旋回イメージ１");
		CreateSurfaceEX("絵Suf",200,2000,"背景２");
		Rotate("絵Suf", 0, @0, @0, -30, null, false);
		Fade("絵Suf", 0, 1000, null, true);

		CreateTextureEX("背景３", 17000, 0, -5000, "旋回イメージ２");
		CreateTextureEX("自機１", 18000, -100, -250, "cg/st/3d村正標準_騎航_戦闘a2.png");
		SetBlur("自機１", true, 1, 500, 50, false);

		//▼固定値ランダム：停止
		MoveFFP1stop();

	CreateSE("サウンド２","se戦闘_動作_空突進05");
	SoundPlay("@サウンド２",2000,600,true);
	OnSE("se戦闘_動作_空突進08",1000);


		//▼コクピット（自機情報：方位）
		CP_AziChange(4000,100,Dxl1,false);
		//▼コクピット（自機情報：速度）
		CP_SpeedChange(4000,650,Dxl1,false);
		//▼コクピット（自機情報：高度）
		CP_HighChange2(4000,1200,Dxl1,false);
		//▼コクピット（自機情報：仰角）
		CP_AltChange2(4000,-25,Dxl1,false);
		//▼コクピット（自機情報：回転軸）
		CP_RollBarMove2(4000,40,null,false);

		//▼コクピット（自機情報：出力）
		MyTr_Count(4000,471);


	Move("背景１", 500, @-200, @-476, Axl1, false);
	Fade("背景１", 500, 0, null, false);
	Rotate("絵Suf", 2000, @0, @0, -60, null, false);
	Move("背景２", 2000, @-3000, @0, Axl1, 1500);

	SetVolume("サウンド１", 2000, 1, NULL);
	SetVolume("サウンド２", 2000, 0, NULL);

	Fade("色０", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0700]
　おのれ。
　おのれ。
　おのれおのれおのれおのれおのれ――――

　何も知らぬ輩が。
　勝手に踏み込んで来て何を抜かす。

　堂々と殺せ、だと？
　嬉しそうに殺せ、だと？

　それができないなら半端者だと？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("サウンド１", 1000, 1000, NULL);

	Fade("背景３", 0, 1000, null, false);
	Fade("自機１", 0, 1000, null, false);
	Move("背景３", 120000, @-400, @5000, null, false);

	//▼Ｘ軸ランダムＹ軸均等
	MoveFTP1("@自機１",10000,3,10);

	//▼雲消去
	CloudZoomFade(0,true);

	//▼雲開始
	CloudZoomStart2(700,1000,1000);
	//▼雲移動
	CloudZoomVertex2(0,@500,@100,Dxl2,true);

	Fade("色０", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0701]
　己の尺度で物を計り、好き勝手を言ってくれる！

　意思の定まらぬ半端者なら……
　決して、俺のような真似はすまい。

　何からも耳を塞ぎ、目を閉じて、それこそ山奥にで
も隠遁するだろう。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("色１", 0, 1000, null, true);

		//▼Ｘ軸ランダムＹ軸均等：停止
		MoveFTP1stop();

		Delete("自機*");
		CreateTextureEX("背景２", 17000, 0, 0, "旋回イメージ２");
		Zoom("背景２", 0, 1500, 1500, Dxl2, true);
		CreateTextureEX("自機２", 17000, -456, -1111, "cg/st/resize/3d村正最終_騎航_戦闘2_m.png");
		SetBlur("自機２", true, 1, 500, 50, false);

	//▼Ｘ軸ランダムＹ軸均等
	MoveFTP2("@自機２",10000,3,10);

	SetVolume("@mbgm*", 2000, 0, NULL);

	CreateSE("サウンド２","se戦闘_動作_空突進05");
	SoundPlay("@サウンド２",2000,300,true);

	Move("背景２", 60000, @-400, @-4500, Axl1, false);
	Fade("背景２", 0, 1000, null, false);
	Fade("自機２", 0, 1000, null, false);

	Fade("色１", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0702]
　――おのれ。
　もしも、それが、<RUBY text="・・・・・・・・">許されていたなら</RUBY>！

　どんなにか良い事だろう！
　どんなにか幸福だったろう！

　それを――
　この男は――
　何も知らずに――

　何も知らずに――！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("サウンド１", 2000, 1, NULL);
	SetVolume("サウンド２", 2000, 0, NULL);

	Fade("色１", 0, 1000, null, true);

	//▼Ｘ軸ランダムＹ軸均等：停止
	MoveFTP2stop();

	//▼雲消去
	CloudZoomDelete2(0,true);

	Delete("背景２");
	Delete("自機２");

	CreateTextureSP("背景１", 17000, 0, 0, "cg/bg/bg001_空a_03.jpg");
	CreateTextureSP("自機１", 17000, -1495, -1708, "cg/st/resize/3d村正最終_騎航_戦闘2_l.png");

	CreateColorSP("色３", 19000, "#000000");
	CreateTextureSP("イベント１", 19000, -1000, 0, "cg/ev/ev996_景明カットイン.png");
	Rotate("イベント１", 0, @0, @180, @0, null, true);

	SetBacklog("　　　　　《雪車町一蔵ォォォォォッ!!》", "voice/ma04/016vs1510a00", 景明);

	//▼シェイク
	MoveSSP1("@自機１",100000,0,1,0,1,500,null);

	SoundPlay("@mbgm10",0,1000,true);

	Move("イベント１", 1000, @700, @0, Axl1, false);
	Fade("色１", 1000, 0, null, false);

//	SetFwR("cg/fw/fw景明_怒りb.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1510a00">
　
　　　　　《雪車町一蔵ォォォォォッ!!》
{	WaitAction("イベント１", null);
	Move("イベント１", 10000, @200, @0, null, false);
	Fade("イベント１", 1000, 500, null, false);
	Fade("色３", 1000, 0, null, true);}<BR>

</PRE>
	SetTextEXR();
	Request("@text0710", NoLog);
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("敵機１", 18000, -171, -369, "cg2/st/3d九〇式竜騎兵_騎突_戦闘.png");
	Zoom("敵機１", 0, 0, 0, Dxl2, true);
	SetBlur("敵機１", true, 1, 500, 50, false);
	CreateTextureEXadd("エフェクト１", 19000, 0, 0, "cg/ef/ef003_汎用移動.jpg");
	Zoom("エフェクト１", 0, 2100, 2100, Dxl2, true);

		CreateSE("サウンド２","se戦闘_動作_空突進05");
		CreateSE("ＳＥ１","se戦闘_動作_空突進03");

	//▼シェイク：停止
	MoveSSP1stop();

	//▼固定値ランダム
	MoveFFP1("@敵機１",5000);

	OnSE("se戦闘_動作_空急降下01",1000);
	OnSE("se戦闘_動作_空突進01",1000);

	FadeDelete("イベント１", 500, false);
	Fade("自機１", 500, 0, null, false);
	Move("自機１", 1000, @3000, @0, Axl1, 500);

		SoundPlay("@サウンド２",1000,600,true);
		SoundPlay("ＳＥ１",0,1000,false);

	Fade("エフェクト１", 500, 1000, null, false);
	Fade("敵機１", 500, 1000, null, false);

	Rotate("エフェクト１", 6000000, @0, @0, 3600000, null, false);
	Zoom("敵機１", 500, 500, 500, Dxl2, true);

	SetFwR("cg/fw/fw雪車町_哄笑.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0711]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1520a12">
《ひゃ、ひゃ、ヒャァーーーッ!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆剣撃交差
	OnSE("se戦闘_動作_空突進03",1000);
	SoundPlay("@サウンド２",1000,1000,true);

	Zoom("敵機１", 300, 1000, 1000, Axl2, false);
	Fade("色１", 300, 1000, null, true);

		Delete("敵機１");
		Delete("エフェクト１");
		Delete("背景*");
		Delete("絵Suf");
		Delete("イベント１");

		//▼コクピット（消去）
		Cockpit_AllFade0();
		//▼コクピット（自機情報：回転軸停止）
		CP_RollBar_ADelete();
		//▼コクピット（自機情報：振動停止２）
		Shake("@CP_Frame", 0, 0, 0, 0, 0, 500, null, false);

		//▼固定値ランダム：停止
		MoveFFP1stop();
		//▼完全ランダム：停止
		MoveFRP1stop();
		//▼Ｘ軸ランダムＹ軸均等：停止
		MoveFTP1stop();
		//▼シェイク：停止
		MoveSSP1stop();

		CreateTextureSP("背景３", 100, -4516, 220, "旋回イメージ１");
		CreateTextureEX("背景４", 100, -4516, 220, "旋回イメージ１");
		SetVertex("背景３", 5120, 864);
		SetVertex("背景４", 5120, 864);
		Rotate("背景３", 0, @0, @0, 40, null, true);
		Rotate("背景４", 0, @0, @0, 40, null, true);
		Zoom("背景３", 0, 2000, 2000, Dxl2, true);
		Zoom("背景４", 0, 2000, 2000, Dxl2, true);


		CreateTextureSP("自機１", 100, 326, -419, "cg/st/3d村正標準_騎航_戦闘e.png");
		Rotate("自機１", 0, @0, @0, -40, null, true);

		CreateWindow("ウィンドウ１", 150, 512, 0, 512, 576, false);
		SetAlias("ウィンドウ１", "ウィンドウ１");
		CreateTextureSP("ウィンドウ１/背景１", 100, 0, 0, "cg/bg/bg001_空a_03.jpg");
		CreateTextureSP("ウィンドウ１/敵機１", 100, -576, -478, "cg/st/3d九〇式竜騎兵_騎航_戦闘d.png");
		Rotate("ウィンドウ１/敵機１", 0, @0, @0, -40, null, true);
		CreateTextureSPadd("ウィンドウ１/エフェクト１", 100, 0, 0, "cg/ef/ef042_汎用打撃.jpg");
		Zoom("ウィンドウ１/エフェクト１", 0, 1200, 1200, Dxl2, true);

		CreateTextureSPadd("エフェクト３", 20100, -300, 200, "cg/ef/ef008_汎用上下軌道.jpg");
		SetVertex("エフェクト３", 512, 576);
		Rotate("エフェクト３", 0, @0, @0, @-90, Axl1, true);
	
		CreateTextureSPadd("エフェクト２", 20100, 300, 200, "cg/ef/ef008_汎用上下軌道.jpg");
		SetVertex("エフェクト２", 512, 576);
		Rotate("エフェクト２", 0, @0, @0, @90, Axl1, true);

		CreateSE("ＳＥ２","se戦闘_攻撃_鎧_剣戟02");
		CreateSE("ＳＥ３","se戦闘_攻撃_鎧_剣戟01");

		CreateSE("ＳＥ４","se戦闘_攻撃_鎧_吹っ飛ぶ01");
		CreateSE("ＳＥ５","se戦闘_攻撃_剣戟弾く02");
		CreateSE("ＳＥ６","se戦闘_攻撃_剣戟弾く03");
		CreateSE("ＳＥ７","se特殊_雰囲気_発光03");

	SetVolume("サウンド２", 1000, 1, NULL);

	Fade("色０", 200, 1000, null, false);

	SoundPlay("ＳＥ２",0,1000,false);

	Move("エフェクト３", 600, @1000, @0, Axl1, false);
	Rotate("エフェクト３", 600, @0, @0, @180, Axl1, false);
	Zoom("エフェクト３", 600, 5000, 5000, Dxl2, 200);

	SoundPlay("ＳＥ３",0,1000,false);

	Move("エフェクト２", 600, @-1000, @0, Axl1, false);
	Rotate("エフェクト２", 600, @0, @0, @-180, Axl1, false);
	Zoom("エフェクト２", 600, 5000, 5000, Dxl2, 500);

	SoundPlay("ＳＥ６",0,1000,false);

	Fade("色０", 100, 0, null, true);

	Delete("エフェクト２");
	Delete("エフェクト３");

	SoundPlay("ＳＥ５",0,1000,false);
	SoundPlay("ＳＥ４",0,1000,false);
	SoundPlay("ＳＥ７",0,1000,false);

	Shake("ウィンドウ１/エフェクト１", 500, 0, 30, 0, 0, 700, Dxl1, false);
	Fade("ウィンドウ１/エフェクト１", 1000, 0, null, false);

	Shake("ウィンドウ１/敵機１", 800, 0, 50, 0, 0, 700, Dxl1, false);
	Move("ウィンドウ１/敵機１", 1000, @600, @100, Dxl2, false);
	Move("自機１", 1000, @-600, @100, Dxl1, false);

	Fade("色１", 500, 0, null, true);

	Wait(200);

		CreateSE("ＳＥ８","se戦闘_動作_空突進03");
		CreateSE("ＳＥ９","se戦闘_動作_空突進07");

		SoundPlay("ＳＥ８",0,1000,false);

	Move("自機１", 500, @-500, @1000, Axl1, false);
	Move("ウィンドウ１/敵機１", 800, @500, @-500, Axl1, 300);
	Move("ウィンドウ１", 500, @513, @0, Axl1, true);

		CreateTextureSP("自機１", 100, 300, 1000, "cg/st/3d村正標準_騎航_戦闘e.png");
		Rotate("自機１", 0, @0, @0, 40, null, true);

	CreateSCR1("@背景３","@背景４",1000,0,4000);

		SetVolume("サウンド２", 2000, 400, NULL);
		SoundPlay("ＳＥ９",0,1000,false);

	Move("自機１", 1500, -259, -324, Dxl1, true);

	//▼Ｘ軸ランダムＹ軸均等
	MoveFTP1("@自機１",10000,3,5);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
　雪車町の太刀を打ち弾き、肩口にまで斬りつける。
　浅いが、確かに刃を届かせた。

　元々騎体性能が違うのだ。筋力で勝る上に高度優勢
も確保している。
　片腕しか利かなかろうと、単純に力の勝負となれば
負ける道理などない。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

		CreateWindow("ウィンドウ１", 150, 1024, -850, 512, 2276, false);
		SetAlias("ウィンドウ１", "ウィンドウ１");
		Zoom("ウィンドウ１", 0, 0, 1000, Dxl2, true);
		CreateTextureSP("ウィンドウ１/背景１", 100, 0, 0, "cg/bg/bg001_空a_03.jpg");
		CreateTextureSP("ウィンドウ１/敵機１", 100, -300, -282, "cg2/st/3d九〇式竜騎兵_騎突_戦闘.png");
		CreateTextureEX("ウィンドウ１/背景２", 300, 0, -5000, "旋回イメージ２");
		//CreateSurfaceEX("ウィンドウ１/絵Suf2",300,2000,"ウィンドウ１/背景２");
		CreateTextureEX("ウィンドウ１/敵機２", 300, 167, 506, "cg2/st/3d九〇式竜騎兵_騎突_戦闘2.png");

		CreateTextureSP("背景１", 100, 0, -5000, "旋回イメージ３");
		CreateSurfaceEX("絵Suf1",200,2000,"背景１");
		CreateTextureEX("自機２", 200, -2236, -931, "cg/st/3d村正標準_騎航_通常3a.png");

		CreateSE("ＳＥ１","se戦闘_動作_空突進02");
		CreateSE("ＳＥ２","se戦闘_動作_空突進07");
		SoundPlay("ＳＥ１",0,1000,false);
		SoundPlay("ＳＥ２",0,1000,false);

	Zoom("ウィンドウ１", 1000, 600, 1000, Dxl1, false);
	Rotate("ウィンドウ１", 1000, @0, @0, 225, Dxl1, false);
	Move("ウィンドウ１", 1000, @-480, @0, Dxl1, false);
	Move("ウィンドウ１/敵機１", 1000, @300, @0, Dxl1, true);

	//▼Ｘ軸ランダムＹ軸均等
	MoveFTP2("@ウィンドウ１/敵機１",20000,2,10);

	SetFwC("cg/fw/fw雪車町_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0730]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1530a12">
《へ、へ、へ！
　半端者が、半端者呼ばわりされると一丁前
に腹を立てるらしい》

{	FwC("cg/fw/fw雪車町_嘲笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1540a12">
《剣筋がちっとはマシになってきたぜェ！
　けっ、けぇっけけけけけけけッ！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0740]
　こいつ――
　まだ囀るか!?

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0750]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1550a00">
「黙らせてくれる……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/016vs1560a01">
《御堂！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆反転
//◆村正上段
//◆雪車町下段

		CreateSE("ＳＥ１","se戦闘_動作_空突進01");
		CreateSE("ＳＥ２","se戦闘_動作_空突進06");

		CreateSE("ＳＥ３","se戦闘_動作_空突進02");
		CreateSE("ＳＥ４","se戦闘_動作_空突進07");

		CreateSE("ＳＥ５","se戦闘_動作_空上昇01");
		CreateSE("ＳＥ６","se戦闘_動作_空上昇01");
		CreateSE("ＳＥ７","se戦闘_動作_空急降下01");
		CreateSE("ＳＥ８","se戦闘_動作_空急降下01");

		CreateSE("ＳＢ１","se戦闘_動作_空突進03");
		CreateSE("ＳＢ２","se戦闘_動作_空突進07");


	//▼Ｘ軸ランダムＹ軸均等：停止
	MoveFTP1stop();


		SoundPlay("ＳＥ１",0,1000,false);
		SoundPlay("ＳＥ２",0,1000,false);

	Move("自機１", 1000, @100, @2000, Axl1, false);
	Zoom("自機１", 1000, 2000, 2000, Dxl1, true);

	//▼Ｘ軸ランダムＹ軸均等：停止
	MoveFTP2stop();

		SetVolume("サウンド２", 1000, 600, NULL);
		SoundPlay("ＳＥ３",0,1000,false);
		SoundPlay("ＳＥ４",0,1000,false);
		MusicStart("ＳＥ５",0,1000,0,1000,null,false);

	Move("自機２", 500, @0, @500, Dxl1, false);
	Fade("自機２", 500, 1000, null, false);

	Fade("絵Suf1", 1000, 1000, null, false);
	Move("背景１", 4000, @0, 0, AxlDxl, false);
	Rotate("絵Suf1", 4000, @0, @0, 180, null, false);

	Rotate("ウィンドウ１/敵機１", 1000, @0, @0, 360, null, false);
	Move("ウィンドウ１/敵機１", 1000, @1000, @-300, null, 500);

		MusicStart("ＳＥ６",0,1000,0,1000,null,false);

	Move("自機２", 4000, @0, @400, null, false);

	Move("ウィンドウ１/敵機２", 500, @0, @-500, Dxl1, false);
	Fade("ウィンドウ１/敵機２", 500, 1000, null, false);

	Zoom("ウィンドウ１", 1000, 1000, 1000, Dxl1, false);
	Rotate("ウィンドウ１", 1000, @0, @0, 0, null, false);
	Move("ウィンドウ１", 1000, 512, -750, Dxl1, false);

	//Fade("ウィンドウ１/絵Suf2", 1000, 1000, null, false);
	//Rotate("ウィンドウ１/絵Suf2", 4000, @0, @0, 180, null, false);
	Fade("ウィンドウ１/背景２", 500, 1000, null, false);
	Move("ウィンドウ１/背景２", 4000, @0, -400, AxlDxl, 500);

		MusicStart("ＳＥ７",0,1000,0,500,null,false);
		MusicStart("ＳＥ８",0,1000,0,500,null,false);

	Move("ウィンドウ１/敵機２", 4000, @0, @-400, null, 2500);

		SoundPlay("ＳＢ１",0,1000,false);
		SoundPlay("ＳＢ２",0,1000,false);

	Move("自機２", 500, @0, @1500, Axl1, 200);
	Move("ウィンドウ１/敵機２", 500, @-0, @-1500, Axl1, true);

	SCR1stop();
	Delete("背景３");
	Delete("背景４");

	WaitAction("ウィンドウ１/背景２", null);

	CreateTextureSP("上背景", 19100, 0, 0, SCREEN);

		Delete("ウィンドウ１/*");
		Delete("ウィンドウ１");
		Delete("背景*");
		Delete("絵*");
		Delete("自機*");

		//▼雲正面
		CloudZoomSet3("マド２",10000,0,288,1024,576);
		//▼雲開始
		CloudZoomStart3(700,1000,1000);
		//▼雲移動
		CloudZoomVertex3(0,@500,@0,Dxl2,true);

		//▼雲正面
		CloudZoomSet2("マド",18000,0,0,1024,576);
		//▼雲開始
		CloudZoomStart2(700,1000,1000);
		//▼雲移動
		CloudZoomVertex2(0,@-500,@0,Dxl2,true);

		Move("マド", 0, @0, @-288, Axl1, true);

		CreateTextureSP("背景１", 100, 0, 0, "cg/bg/bg001_空a_03.jpg");
		CreateTextureSP("敵機１", 100, -1047, -242, "cg/st/3d九〇式竜騎兵_騎航_戦闘d.png");
		CreateTextureSP("マド/背景１", 1000, 0, 0, "cg/bg/bg001_空a_03.jpg");
		CreateTextureSP("マド/自機１", 1000, 768, -455, "cg/st/3d村正標準_騎航_戦闘a.png");

	SetVolume("ＳＥ７", 1000, 0, NULL);
	SetVolume("ＳＥ８", 1000, 0, NULL);

	OnSE("se戦闘_動作_空突進03",1000);
	OnSE("se戦闘_動作_空突進08",1000);

		SetVolume("サウンド２", 1000, 400, NULL);

	Move("敵機１", 300, @1000, @0, Dxl1, false);
	Move("マド/自機１", 300, @-1000, @0, Dxl1, false);
	FadeDelete("上背景", 300, true);

	//▼Ｘ軸ランダムＹ軸均等
	MoveFTP1("@マド/自機１",20000,3,10);
	//▼Ｘ軸ランダムＹ軸均等
	MoveFTP2("@敵機１",10000,3,5);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0760]
　制止のような金打声は聞き捨てて、太刀を右肩担ぎ、
上段へと取り直す。
　対して敵影は下段構。

　――陣取りを行わない腹だ。
　<RUBY text="ワレ">我</RUBY>は下位を取り、<RUBY text="カレ">彼</RUBY>は上位を取ることになり、競合
が無い。

　一刀流がこの挙に出るのであれば、狙う処は知れて
いる。

　――――一刀流、奥義が一
　
　　　　　　　　　　　〝<RUBY text="キリオトシ">切落</RUBY>〟

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0770]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1570a00">
《出来ぬと思うか！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆剣撃交差

	//▼Ｘ軸ランダムＹ軸均等：停止
	MoveFTP1stop();
	MoveFTP2stop();

		CreateSE("ＳＥ１","se戦闘_攻撃_鎧_剣戟04");
		CreateSE("ＳＥ２","se戦闘_衝撃_攻撃交錯01");
		CreateSE("ＳＥ３","se戦闘_動作_空突進07");
		CreateSE("ＳＥ４","se戦闘_破壊_金属");
		CreateSE("ＳＥ５","se戦闘_攻撃_剣戟弾く02");

		CreateSE("ＳＢ１","se戦闘_動作_空突進03");
		CreateSE("ＳＢ１","se戦闘_動作_空突進08");

		OnSE("se戦闘_動作_空突進01",1000);
		OnSE("se戦闘_動作_空突進02",1000);
		OnSE("se戦闘_動作_空突進08",1000);

	//▼雲消去
	CloudZoomDelete(500,false);

	Move("敵機１", 500, @1000, @0, Axl1, false);
	Move("マド/自機１", 500, @-1000, @0, Axl1, 200);

	DrawTransition("背景１", 300, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", false);
	DrawTransition("マド/背景１", 300, 1000, 0, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("背景０", 19000, 0, 0, SCREEN);
		Delete("敵機１");
		Delete("マド/*");

		//kopipe
		CreateTextureSP("背景１", 100, Center, Middle, "cg/bg/resize/bg002_空a_03l.jpg");
		Rotate("背景１", 0, @0, @0, 40, null, true);

		CreateTextureSP("敵機１", 200, -1398, -543, "cg/st/3d九〇式竜騎兵_騎航_戦闘d.png");
		SetBlur("敵機１", true, 1, 500, 50, false);
		CreateTextureSP("自機１", 200, 1078, -163, "cg/st/3d村正標準_騎航_戦闘a.png");
		SetBlur("自機１", true, 1, 500, 50, false);

		CreateTextureEXadd("エフェクト１", 300, 0, 0, "cg/ef/ef040_汎用衝突.jpg");

	MusicStart("ＳＢ１",0,1000,0,1500,null,false);
	MusicStart("ＳＢ２",0,1000,0,1500,null,false);

	FadeDelete("背景０", 300, false);

	Move("敵機１", 500, @1000, @0, Axl1, false);
	Move("自機１", 500, @-1000, @0, Axl1, 450);

		SoundPlay("ＳＥ１",0,1000,false);
		SoundPlay("ＳＥ２",0,1000,false);
		SoundPlay("ＳＥ５",0,1000,false);

	Shake("自機１", 500, 0, 50, 0, 0, 700, Dxl1, false);
	Shake("敵機１", 500, 0, 50, 0, 0, 700, Dxl1, false);
	Fade("エフェクト１", 50, 1000, null, true);

	MusicStart("ＳＥ４",0,1000,0,1500,null,false);

	Move("敵機１", 1000, @100, @0, null, false);
	Move("自機１", 1000, @-100, @0, null, false);
	Fade("色１", 300, 1000, null, true);

		CreateTextureSP("敵機１", 200, -398, -543, "cg/st/3d九〇式竜騎兵_騎航_戦闘a.png");
		SetBlur("敵機１", true, 1, 500, 50, false);
		CreateTextureSP("自機１", 200, 078, -163, "cg/st/3d村正標準_騎航_戦闘e.png");
		SetBlur("自機１", true, 1, 500, 50, false);

		SetVolume("サウンド１", 1000, 1, NULL);
		SetVolume("サウンド２", 1000, 1, NULL);

		SoundPlay("ＳＥ３",0,1000,false);

	Rotate("敵機１", 1000, @0, @0, 90, Dxl1, false);

	Move("敵機１", 1000, 167, -499, Dxl1, false);
	Move("自機１", 1000, -306, -236, Dxl1, false);

	Fade("色１", 500, 0, null, true);
	Fade("エフェクト１", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0780]
　優った。
　真っ向から打ち重なった刃と刃、俺の刃先が敵刃を
除け、鎖骨の近辺を襲い甲高い響を鳴らす。

　骨の一本は奪ったかもしれない。
　それだけの手応え。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

		OnSE("se戦闘_動作_空突進06",1000);
		OnSE("se戦闘_動作_空突進02",1000);
		OnSE("se戦闘_動作_空上昇01",1000);

		SetVolume("サウンド１", 1000, 1000, NULL);
		SetVolume("サウンド２", 1000, 200, NULL);


	Rotate("敵機１", 300, @0, @0, 180, Dxl1, false);
	Move("敵機１", 300, @1000, @0, Dxl1, false);
	Move("自機１", 300, @-1000, @0, Dxl1, true);

		Delete("自機１");
		Delete("敵機１");

		CreateTextureEX("背景２", 17000, Center, -512, "cg/bg/resize/bg001_空c_03l.jpg");
		CreateTextureEX("敵機１", 17000, 0, 0, "cg2/st/3d九〇式竜騎兵_騎突_戦闘2.png");


		OnSE("se戦闘_動作_空突進01",1000);
		OnSE("se戦闘_動作_空突進08",1000);


	Zoom("敵機１", 1000, 500, 500, Dxl1, false);
	Move("敵機１", 1000, @300, @-1000, Axl1, false);
	Fade("敵機１", 1000, 1000, null, false);

	Move("背景２", 1000, @0, @200, Dxl1, false);
	Fade("背景２", 1000, 1000, null, false);

	SetVolume("サウンド１", 2000, 1, NULL);
	SetVolume("サウンド２", 2000, 0, NULL);

	SetFwC("cg/fw/fw雪車町_苦悶.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0790]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1580a12">
《けへェッ!?》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

		CreateTextureSP("背景１", 100, -300, -4000, "cg/bg/bg203_旋回演出背景海_03.jpg");
		CreateSurfaceEX("絵Suf",100,2000,"背景１");
		Rotate("絵Suf", 0, @0, @0, 180, null, true);

		CreateTextureEX("背景３", 100, -512, -576, "cg/bg/resize/bg001_空c_03l.jpg");
		Request("背景３", Smoothing);
		CreateTextureSP("敵機１", 100, -190, -500, "cg2/st/3d九〇式竜騎兵_騎突_戦闘2.png");
		Zoom("敵機１", 0, 50, 50, Dxl2, true);

		CreateTextureSP("背景４", 17100, -300, -1000, "旋回イメージ２");
		CreateSurfaceEX("絵Suf2",17100,2000,"背景４");
		Rotate("背景４", 0, @0, @180, @0, null, true);
		Rotate("絵Suf2", 0, @0, @0, 40, AxlDxl, true);
		CreateTextureEX("敵機２", 17100, 66, -440, "cg/st/3d九〇式竜騎兵_騎航_戦闘a.png");
		Rotate("敵機２", 0, @0, @0, -40, null, true);

		//▼雲正面
		CloudZoomSet(1000);
		//▼雲移動
		//CloudZoomVertex(1000,@500,@200,Dxl2,true);

		//▼コクピット（瞬間表示）
		Cockpit_AllFade2();
		//▼コクピット（自機情報：振動）
		FrameShake();

		//▼コクピット（自機情報：方位）
		CP_AziChange(0,0,AxlDxl,false);
	
		//▼コクピット（自機情報：速度）
		CP_SpeedChange(0,680,Dxl1,false);
		//▼コクピット（自機情報：高度）
		CP_HighChange(0,1200,Dxl1,false);
		//▼コクピット（自機情報：仰角）
		CP_AltChange2(0,-25,Dxl1,false);
	
		//▼コクピット（自機情報：回転軸）
		CP_RollBarMove2(0,0,Dxl1,false);

		//▼雲開始
		CloudZoomStart(700,1000,1000,500,1000);
		//▼雲移動
		CloudZoomVertex(0,@0,@-300,Axl1,false);

		//▼固定値ランダム
		MoveFFP1("@絵Suf",5000);

		SetVolume("サウンド１", 1000, 1000, NULL);

	Fade("絵Suf", 0, 1000, null, true);
	FadeDelete("背景２", 1000, false);

	SetFwC("cg/fw/fw景明_怒りb.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0791]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1590a00">
《覚えたか――雪車町！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0800]
　一刀流〝切落〟は敵の一撃に対して全く対称の一撃
をもって迎え、これを切り落とし、更に敵の肉体をも
断つ技法。

　双方が同等の企図をもって打ち合った場合、剣撃の
威力と精密さで上回った側が勝利を収める。
　今の一合は俺が優越した。

　与えた傷は決して浅くない。
　これで趨勢が変わった筈！

　次の一合で決められるだろう。
　
　……この男とは、それまでだ。

　殺しはしないが動けぬ程に打ち据えて、怪物の相手
に向かわねばならない。
　そうだ――こんな筋者など。本当は相手取っている
場合ではないのだ。

　無駄な時間を食わされた……！
　返す返すも忌々しい！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0810]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/016vs1600a01">
《――御堂！
　敵騎、反転せず！》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1610a00">
《何!?》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆反転
//調整
	CreateSE("サウンド２","se戦闘_動作_空突進05");
	SoundPlay("@サウンド２",2000,600,true);

	OnSE("se戦闘_動作_空突進08",1000);

	CreateSE("ＳＥ１","se戦闘_動作_空突進03");

		//▼コクピット（自機情報：方位）
		CP_AziChange(0,180,AxlDxl,false);
	
		//▼コクピット（自機情報：速度）
		CP_SpeedChange(5000,440,AxlDxl,false);
		//▼コクピット（自機情報：高度）
		CP_HighChange(5000,1400,AxlDxl,false);
		//▼コクピット（自機情報：仰角）
		CP_AltChange2(5000,25,AxlDxl,false);
	
		//▼コクピット（自機情報：回転軸）
		CP_RollBarMove2(5000,360,Dxl1,false);

		//▼雲移動
		CloudZoomVertex(3000,@0,@300,Axl1,false);

	Rotate("絵Suf", 4000, @0, @0, 0, AxlDxl, false);
	Move("背景１", 4000, @0, @4000, AxlDxl, 3000);

	SoundPlay("ＳＥ１",0,1000,false);

	//▼雲消去
	CloudZoomFade(2000,false);

	Move("敵機１", 2000, @0, @100, Dxl1, false);
	Fade("背景３", 1000, 1000, null, false);
	Move("背景３", 2000, @0, @288, Dxl1, true);

	//▼固定値ランダム：停止
	MoveFFP1stop();
	Delete("背景１");
	Delete("絵Suf");

	CreateTextureSP("背景０", 17000, 0, 0, SCREEN);
		//▼コクピット（消去）
		Cockpit_AllFade0();
		//▼コクピット（自機情報：回転軸停止）
		CP_RollBar_ADelete();
		//▼コクピット（自機情報：振動停止２）
		Shake("@CP_Frame", 0, 0, 0, 0, 0, 500, null, false);

	//▼雲正面
	CloudZoomSet2("マド",18000,0,0,1024,576);
	//▼雲開始
	CloudZoomStart2B(700,1000,1000);
	//▼雲移動
	CloudZoomVertex2(0,@-500,@0,Dxl2,true);

	//▼固定値ランダム
	MoveFFP1("@絵Suf2",20000);
	//▼Ｘ軸ランダムＹ軸均等
	MoveFTP2("@敵機２",20000,3,5);

	SetVolume("サウンド２", 1000, 1, NULL);

	Move("背景４", 120000, @0, @1000, null, false);
	Fade("敵機２", 1000, 1000, null, false);
	Fade("絵Suf2", 1000, 1000, null, true);
	FadeDelete("背景０", 0, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0820]
　打ち合い、交差した雪車町はそのままに上空へ駆け
上がり――上がり続けている。
　騎航戦の定石に従うなら、兜角を巡らせて降下へと
移り、次の一合に備えて速度を稼がねばならない。

　逃げるつもりか。
　いや――戦域を離脱するにしても、下方へ向かって
速度を得るのが定法。

　ならば高度優勢を奪取するための奇手――まさか。
　このような方法で上位を取ったところで意味はない。
時間が掛かり過ぎる。高度を得、反転、突撃に入ろう
とした時には、全てを終えた敵を目前に迎えるだろう。

　……あるいは。
　逃げの姿勢を見せれば、こちらはすぐに怪物の方へ
向かうと踏んだか。

　そうしてこちらが下降した隙を狙い、上空から襲う。
　――これは、有る。あの男ならばその程度の手管、
造作なく用いるだろう。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_怒りa.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0830]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1620a00">
（乗らぬ）

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆進突
		CreateSE("ＳＥ１","se戦闘_動作_空突進01");
		CreateSE("ＳＥ２","se戦闘_動作_空突進06");

	//▼コクピット（瞬間表示）
	Cockpit_AllFade2();
	//▼コクピット（自機情報：振動）
	FrameShake();

	//▼コクピット（自機情報：速度）
	CP_SpeedChange(120000,200,DxlAuto,false);
	//▼コクピット（自機情報：高度）
	CP_HighChange(120000,2500,DxlAuto,false);
	//▼コクピット（自機情報：仰角）
	CP_AltChange2(120000,60,DxlAuto,false);

	//▼雲消去
	CloudZoomDelete2(500,false);

	//▼雲開始
	CloudZoomStart(700,1000,1000,500,1000);
	//▼コクピット（自機情報：回転軸自動化）
	CP_RollBarMoveA();

	SoundPlay("ＳＥ１",0,1000,false);
	SoundPlay("ＳＥ２",0,1000,false);

	SetVolume("サウンド２", 1000, 400, NULL);

	Zoom("敵機１", 120000, 100, 100, DxlAuto, false);
	Move("背景３", 1000, @0, -30, Dxl1, false);
	Move("敵機１", 1000, @0, -245, Dxl1, false);

	FadeDelete("敵機２", 1000, false);
	Fade("絵Suf2", 1000, 0, null, true);

	//▼完全ランダム
	MoveFRP1("@背景３",20000,15,15);
	//▼Ｘ軸ランダムＹ軸均等
	MoveFTP1("@敵機１",10000,2,2);

	//▼固定値ランダム：停止
	MoveFFP1stop();
	MoveFTP2stop();
	Delete("背景４");
	Delete("絵Suf");
	
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0840]
　上昇する雪車町の騎影を追う。
　間合を詰めるに労はいらない。重力に逆らい続ける
敵騎はもはや大幅に速力を失っている。

　それでいながら、尚も昇ってゆく。
　あまつさえ、<RUBY text="ピッチ">兜角</RUBY>を更に引き上げて。

　速力という空の戦いにあっては得難い代価を湯尽し、
竜騎兵は高度を貪る。
　際限なく。止め処なく。飽き足らず。

　天頂へ。
　届く筈もなき白の円宮を目掛け。

{	SetVolume("@mbgm*", 3000, 0, NULL);}
　雪車町は何を思うのか。
　追尾を受けてなお方針を翻さないのは、ただ諦めの
悪さからか。

　<RUBY text="こちら">当方</RUBY>とて速度はみるみる減殺されている。
　だが勢力を充分に確保してのち上昇に転じた村正と、
太刀打からそのまま上昇に移った竜騎兵との差は厳然。
詰まってはいるものの、優劣は明確に有る。

　打ち間に捕捉するのは時間の問題。
　雪車町が迎撃に転じたとしても、態勢を整える前に
斬り伏せられる。

　王手を掛けられている事に、彼は気付いている筈だ。
　<RUBY text="さ">然</RUBY>りながら翔天を止めない。

　月の狂気に魅入られ、戦いを忘れたのか――
　そんな事さえ思う。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("背景０", 19100, 0, 0, SCREEN);

		//▼固定値ランダム：停止
		MoveFRP1stop();
		MoveFTP1stop();

		//▼雲消去
		CloudZoomDelete(0,true);

		//▼コクピット（消去）
		Cockpit_AllFade0();
		//▼コクピット（自機情報：回転軸停止）
		CP_RollBar_ADelete();
		//▼コクピット（自機情報：振動停止２）
		Shake("@CP_Frame", 0, 0, 0, 0, 0, 500, null, false);

		CreateTextureSP("背景１", 17000, 0, 0, "cg/bg/bg001_空a_03.jpg");
		CreateTextureSP("エフェクト１", 17000, -400, 10, "cg/ef/resize/efRec_雲_ex.png");
		SetVertex("エフェクト１", 0, 576);
		Zoom("エフェクト１", 0, 2000, 2000, Dxl2, false);
		CreateTextureSP("エフェクト２", 18100, 0, 10, "cg/ef/resize/efRec_雲_ex.png");
		SetVertex("エフェクト２", 0, 576);
		Zoom("エフェクト２", 0, 1500, 1500, Dxl2, false);

		CreateTextureSP("敵機１", 17100, -1000, 1000, "cg/st/3d九〇式竜騎兵_騎航_戦闘a.png");
		Rotate("敵機１", 0, @0, @0, -60, null, true);
		CreateTextureSP("自機１", 17100, -1000, 1000, "cg/st/3d村正標準_騎航_戦闘a2.png");
		Rotate("自機１", 0, @0, @0, -60, null, true);

		CreateSE("ＳＥ１","se戦闘_動作_空突進01");
		CreateSE("ＳＥ２","se戦闘_動作_空突進03");
		CreateSE("ＳＥ３","se戦闘_動作_空突進01");
		CreateSE("ＳＥ４","se戦闘_動作_空突進03");

	SetVolume("サウンド２", 2000, 0, NULL);

	FadeDelete("背景０", 500, false);

	SoundPlay("ＳＥ１",0,1000,false);
	SoundPlay("ＳＥ２",0,1000,false);

	Move("敵機１", 300, @1500, @-2300, null, 200);
	Fade("エフェクト*", 300, 600, null, false);
	Shake("エフェクト*", 300, 0, 10, 0, 0, 700, Dxl1, false);
	Zoom("エフェクト１", 300, 2200, 2200, Dxl1, false);
	Zoom("エフェクト２", 300, 1700, 1700, Dxl1, false);

	SoundPlay("ＳＥ３",0,1000,false);
	SoundPlay("ＳＥ４",0,1000,false);

	Move("自機１", 300, @1500, @-2000, null, 200);
	Fade("エフェクト*", 1000, 0, null, false);
	Shake("エフェクト*", 300, 0, 20, 0, 0, 700, Dxl1, false);
	Zoom("エフェクト１", 300, 2400, 2400, Dxl1, false);
	Zoom("エフェクト２", 300, 1900, 1900, Dxl1, true);

	Wait(1000);

		CreateTextureEX("背景２", 17100, 0, -576, "cg/bg/resize/bg001_空a_03.jpg");

		CreateTextureEX("自機１", 17100, -337, -189, "cg/st/3d村正標準_騎航_戦闘a2.png");
		Rotate("自機１", 0, @0, @0, -40, null, true);
		Zoom("自機１", 0, 100, 100, Dxl2, true);
		CreateTextureEX("敵機１", 17100, 100, -561, "cg/st/3d九〇式竜騎兵_騎航_戦闘a.png");
		Rotate("敵機１", 0, @0, @0, -40, null, true);
		Zoom("敵機１", 0, 100, 100, Dxl2, true);

	//▼Ｘ軸ランダムＹ軸均等
	MoveFTP1("@敵機１",20000,2,2);
	//▼Ｘ軸ランダムＹ軸均等
	MoveFTP2("@自機１",25000,2,2);

	Move("背景２", 120000, @-1024, @576, null, false);
	Fade("背景２", 1000, 1000, null, false);
	Fade("敵機１", 1000, 1000, null, false);
	Fade("自機１", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0841]
　戦慄すべきはその低速域制御力だった。
　通常であれば<RUBY text="ストール">失速</RUBY>していてもおかしくない――いや
失速しているべき危険域まで速度を落としながら、彼
の見えない手綱は騎体をなお完璧に御している。

　精強さでは人後に落ちない六波羅の正規兵であって
も、この域では<RUBY text="かぜ">揚力</RUBY>を手放し、錐揉みして落ちてゆく
ほかに<RUBY text="すべ">術</RUBY>を持たないだろう。
　百万騎を号す六波羅、その幾人がこの男に<RUBY text="なら">倣</RUBY>えるか。

　九〇式竜騎兵甲の<RUBY text="スペック">性能</RUBY>とは到底思われない。
　雪車町一蔵の<RUBY text="ちから">性能</RUBY>に他ならなかった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("背景０", 19999, 0, 0, SCREEN);

		Delete("背景２");

		//▼Ｘ軸ランダムＹ軸均等：停止
		MoveFTP1stop();
		//▼Ｘ軸ランダムＹ軸均等：停止
		MoveFTP2stop();

		CreateTextureSP("背景１", 17000, 0, -2000, "旋回イメージ２");
		CreateTextureSP("エフェクト１", 17000, 0, 0, "cg/ef/resize/efRec_雲_ex.png");
		SetVertex("エフェクト１", 0, 576);
		CreateTextureSP("エフェクト２", 17000, 0, -577, "cg/ef/resize/efRec_雲_ex.png");
		SetVertex("エフェクト２", 1024, 576);
		Rotate("エフェクト２", 0, @180, @0, @0, null, true);

		CreateTextureSP("自機１", 17100, -350, -300, "cg/st/3d村正標準_騎突_戦闘.png");
//		Zoom("自機１", 0, 500, 500, Dxl2, true);
		CreateTextureSP("敵機１", 17100, 286, -271, "cg2/st/3d九〇式竜騎兵_騎突_戦闘.png");
		Zoom("敵機１", 0, 3000, 3000, Dxl2, true);
		SetShade("敵機１", MEDIUM);
		Request("敵機１", Smoothing);

		Zoom("エフェクト*", 120000, 10000, 10000, DxlAuto, false);

		//▼Ｘ軸ランダムＹ軸均等
		MoveFTP1("@敵機１",20000,10,10);
		//▼Ｘ軸ランダムＹ軸均等
		MoveFTP2("@自機１",25000,5,5);

	FadeDelete("背景０", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0842]
　後尾に迫る。
　こちらの速力も既に危険域だった。わずかでも気を
抜けばその刹那、俺は空から地上へ蹴り落とされるだ
ろう。

　間違ってもそんな無様は晒せない。
　速度の差はここに至って零に近くなりつつあるも、
しかしまだ確在。敵騎はより苛酷な騎航を成し遂げて
いるというに、こちらが先に屈せようか。

　あと一歩。
　あと一歩で斬れる。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("背景０", 19999, 0, 0, SCREEN);

		//▼Ｘ軸ランダムＹ軸均等
		MoveFTP1("@敵機１",20000,2,2);
		//▼Ｘ軸ランダムＹ軸均等
		MoveFTP2("@自機１",25000,2,2);

		Delete("背景１");
		Delete("エフェクト*");

			//▼コクピット（瞬間表示）
			Cockpit_AllFade2();
			//▼コクピット（自機情報：振動）
			FrameShake();
	
			//▼コクピット（自機情報：速度）
			CP_SpeedChange(0,165,DxlAuto,false);
			//▼コクピット（自機情報：高度）
			CP_HighChange(0,2800,DxlAuto,false);
			//▼コクピット（自機情報：仰角）
			CP_AltChange2(0,85,DxlAuto,false);
	
			//▼コクピット（自機情報：回転軸自動化）
			CP_RollBarMoveA();

		Fade("自機１", 0, 0, null, true);
		Fade("敵機１", 0, 0, null, true);

		Request("背景３", Smoothing);
		Zoom("背景３", 0, 1500, 1500, Dxl2, true);
		Move("背景３", 0, @0, 120, Axl1, true);

		CreateTextureSP("敵機２", 200, -170, -234, "cg2/st/3d九〇式竜騎兵_騎突_戦闘2.png");
		Zoom("敵機２", 0, 500, 500, Dxl2, true);

		//▼完全ランダム
		MoveFRP1("@背景３",20000,15,15);
		//▼Ｘ軸ランダムＹ軸均等
		MoveFTP1("@敵機２",10000,2,2);

	FadeDelete("背景０", 500, true);

	CreateTextureEX("背景０", 19998, 0, 0, SCREEN);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0843]
　彼我二騎の描く軌道はもはや垂直上昇に近い。
　このような騎航は何秒も保たない。

　騎体の限度だ。

{	SetVolume("サウンド１", 2000, 1, NULL);
	SetVolume("サウンド２", 2000, 1, NULL);}
　雪車町が――――<k>
{	Fade("背景０", 2000, 1000, null, true);}<?>
　止まる。

　遂に、速度を完全に失い。
　<RUBY text="・・・">倒れる</RUBY>。

　横倒しに――
　落ちる――

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――



		//▼固定値ランダム：停止
		MoveFFP1stop();
		//▼コクピット（消去）
		Cockpit_AllFade0();
		//▼コクピット（自機情報：回転軸停止）
		CP_RollBar_ADelete();
		//▼コクピット（自機情報：振動停止２）
		Shake("@CP_Frame", 0, 0, 0, 0, 0, 500, null, false);

		//▼完全ランダム：停止
		MoveFRP1stop();
		//▼Ｘ軸ランダムＹ軸均等：停止
		MoveFTP1stop();
		MoveFTP2stop();
		//▼シェイク：停止
		MoveSSP1stop();

		CreateTextureEX("イベント１", 100, -437, -249, "cg/ev/resize/evex003_雪車町_嘲笑.png");

	Fade("背景０", 1000, 0, null, false);
	Fade("イベント１", 1000, 500, null, false);

//	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0850]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1630a12">
《　　ケ　　　　　　　　　　ケ
　　ケケ　　　ケ　　　　　　　　ケケ　》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	Fade("背景０", 1000, 1000, null, true);

//	CreateTextureSP("背景０", 19999, 0, 0, SCREEN);

		CreateTextureSP("敵機２", 200, -170, -184, "cg2/st/3d九〇式竜騎兵_騎突_戦闘2.png");
		//SetVertex("敵機２", 650, 650);

		CreateTextureEX("敵機３", 200, -199, -519, "cg2/st/3d九〇式竜騎兵_騎突_戦闘.png");
		Zoom("敵機３", 0, 800, 800, Dxl2, false);
		Rotate("敵機３", 0, @0, @0, 180, null, true);
		//SetBlur("敵機３", true, 1, 500, 100, true);

		Move("背景３", 0, -512, 288, Axl1, true);
		Zoom("背景３", 0, 2000, 2000, Dxl2, true);
	
		Delete("イベント１");

//	FadeDelete("背景０", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0860]
　落ちて<k>
{	SoundPlay("@mbgm12",0,1000,true);
	FadeDelete("背景０", 500, true);
}
　　　　　　　　　<RUBY text="・・・">いない</RUBY>。

　雪車町一蔵は、落ちたのではない。
　上昇の極点で、<RUBY text="ラダー">方向翼</RUBY>を切ったのだ。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

		CreateTextureEX("背景４", 200, 0, 0, "cg/bg/bg001_空a_03.jpg");
		CreateTextureEX("敵機４", 200, 100, -350, "cg/st/3d九〇式竜騎兵_騎航_戦闘d.png");
		Rotate("敵機４", 0, @0, @0, -60, Dxl1, true);

		CreateTextureEX("背景５", 17000, 0, -2000, "旋回イメージ２");
		CreateTextureEX("エフェクト１", 17000, 0, 0, "cg/ef/resize/efRec_雲_ex.png");
		SetVertex("エフェクト１", 0, 576);
		CreateTextureEX("エフェクト２", 17000, 0, -577, "cg/ef/resize/efRec_雲_ex.png");
		SetVertex("エフェクト２", 1024, 576);
		Rotate("エフェクト２", 0, @180, @0, @0, null, true);

		CreateTextureEX("自機５", 17100, -226, -173, "cg/st/3d村正標準_騎突_戦闘.png");
//		Zoom("自機５", 0, 500, 500, Dxl2, true);
		CreateTextureEX("敵機５", 17100, 286, -271, "cg2/st/3d九〇式竜騎兵_騎突_戦闘.png");
		Zoom("敵機５", 0, 3000, 3000, Dxl2, true);
		SetShade("敵機５", MEDIUM);
		Request("敵機５", Smoothing);
		CreateTextureEX("敵機９", 17100, -345, -1600, "cg2/st/3d九〇式竜騎兵_騎突_戦闘2.png");
		Zoom("敵機９", 0, 3000, 3000, Dxl2, true);
		SetShade("敵機９", MEDIUM);
		Request("敵機９", Smoothing);

	OnSE("se特殊_雰囲気_発光02",1000);
	OnSE("se特殊_雰囲気_発光04",1000);

	Wait(1500);

	Fade("色０", 400, 1000, null, false);
	Rotate("敵機２", 400, @0, @0, 20, Axl1, false);
	Move("敵機２", 400, @-20, @-10, Axl1, true);

		Rotate("敵機２", 0, @0, @0, 0, Axl1, false);

		Fade("背景４", 0, 1000, null, false);
		Fade("敵機４", 0, 1000, null, false);
		Fade("色０", 0, 0, null, true);

	Fade("色０", 400, 1000, null, false);
	Rotate("敵機４", 400, @0, @0, @-30, Axl1, false);
	Move("敵機４", 400, @-300, @0, Dxl1, true);

		Delete("背景４");
		Delete("敵機４");

		Fade("エフェクト*", 0, 1000, null, false);
		Fade("背景５", 0, 1000, null, false);
		Fade("自機５", 0, 1000, null, false);
		Fade("敵機５", 0, 1000, null, false);
		Fade("色０", 0, 0, null, true);

	Fade("色０", 400, 1000, Axl2, false);
	Fade("敵機５", 400, 0, Axl2, false);
	Move("敵機５", 400, @200, @-1000, Axl1, false);
	Fade("敵機９", 400, 1000, Dxl2, false);
	Move("敵機９", 400, @0, @1000, Dxl1, true);

		Delete("背景５");
		Delete("敵機５");
		Delete("敵機９");
		Delete("自機５");
		Delete("エフェクト*");

		Fade("エフェクト*", 0, 1000, null, false);
		Fade("背景５", 0, 1000, null, false);
		Fade("自機５", 0, 1000, null, false);
		Fade("敵機５", 0, 1000, null, false);
		//Fade("色０", 0, 0, null, true);

	CreatePlainSP("絵板写", 100);
	Request("絵板写", AddRender);

	Fade("色１", 0, 1000, null, true);
	Fade("色０", 0, 0, null, true);
	Fade("色１", 1000, 0, null, false);

	Zoom("絵板写", 2000, 1500, 1500, Dxl1, false);
	Fade("絵板写", 2000, 0, null, false);

	Rotate("敵機２", 1000, @0, @0, 80, Axl1, false);
	Move("敵機２", 1000, @0, @-50, Axl1, false);
	Zoom("敵機２", 1000, 800, 800, Axl2, false);
	Fade("敵機２", 1000, 0, null, 500);

	Fade("敵機３", 500, 1000, null, false);
	Rotate("敵機３", 1000, @0, @0, 0, Dxl1, false);
	Move("敵機３", 1000, @0, @200, Dxl2, false);
	Zoom("敵機３", 1000, 1000, 1000, Dxl1, true);

	WaitAction("絵板写", null);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0861]
　くるり、と。
　魔術めいて鮮やかに、半瞬の間で騎体の上下が入れ
替わる。

　雪車町の兜角が、重力方向を――
　<RUBY text="・・">俺を</RUBY>指す。

　<RUBY text="ヴァーチカル・リバース">垂直反転</RUBY>。
　上昇速度が無になる刹那の、落下重力の発生を掴み、
利用して初めて成し得る所業。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	Request("敵機３", Smoothing);

	CreateTextureEX("イベント１", 100, -473, -210, "cg/ev/resize/evex003_雪車町_嘲笑.png");
	Fade("イベント１", 1000, 500, null, true);

//	SetFwC("cg/fw/fw雪車町_通常.png");
	SetBacklog("　　　　　　　　　《ケケ》", "voice/ma04/016vs1640a12", 雪車町);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0870]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1640a12">
　
　　　　　　　　　《ケケ》

</PRE>
	SetTextEXR();
	Request("@text0870", NoLog);
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	Wait(300);
	SetBacklog("　　　　　　　　《カカカカ》", "voice/ma04/016vs1650a12", 雪車町);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0871]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1650a12">
　
　　　　　　　　《カカカカ》

</PRE>
	SetTextEXR();
	Request("@text0871", NoLog);
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateEffect("エフェクト１", 1000, 0, 0, 1024, 576, "Monochrome");
	SetAlias("エフェクト１", "エフェクト１");
	Fade("エフェクト１", 0, 0, null, true);
	Fade("エフェクト１", 1000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0880]
　突如、俺は知った。
　何の前触れもなく。何の根拠もなく。

　ただ、天啓の閃きで、

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	WaitAction("エフェクト１", null);

	CreateWindow("ウィンドウ１", 150, 512, 0, 512, 576, false);
	SetAlias("ウィンドウ１", "ウィンドウ１");
	CreateTextureEX("ウィンドウ１/イベント４", 3000, 324, -211, "cg/ev/resize/evex003_景明_戦闘.png");
	Fade("ウィンドウ１/イベント４", 500,1000, null, true);

	CreateWindow("ウィンドウ２", 150, 0, 0, 512, 576, false);
	SetAlias("ウィンドウ２", "ウィンドウ２");
	CreateTextureEX("ウィンドウ２/イベント０", 3000, -473, -210, "cg/ev/resize/evex003_雪車町_嘲笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0881]
　
　　　<RUBY text="ミナトカゲアキ">湊斗景明</RUBY>の敵とは<k>
{	Fade("ウィンドウ２/イベント０", 500, 1000, null, true);}
　　　　　　　　　　　　　<RUBY text="ソリマチイチゾウ">雪車町一蔵</RUBY>なのだ

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("サウンド２","se戦闘_動作_空突進05");
	SoundPlay("サウンド２",2000,300,true);

	SetVolume("サウンド１", 1000, 1000, NULL);

	CreateTextureSP("背景０", 19999, 0, 0, SCREEN);
	Delete("エフェクト１");
	Delete("ウィンドウ*");
	Delete("イベント*");
	FadeDelete("背景０", 500, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0882]
　時間が動く。
　重力というちからが流れる。

　今や雪車町には一片の劣勢もない。
　姿勢は充分。

　速度比は――逆転する。
　何故ならば、純粋な重力が――垂直方向の重力が、
雪車町に加勢する。

　垂直方向の重力。
　俺が今、真っ向から敵にしているもの。

　寸毫の間に始まりそして終わった、完璧な逆転劇。
　観客の心境で、既に益体もない知識を引き出す。

　…………あれは。
　一刀流の始祖・伊東一刀斎が、師である中条流鐘巻
自斎から受け継いだ五つの秘法――

　一刀流の最極意。
　妙剣／絶妙剣／真剣／独妙剣……

　そして。
　この――――

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

		CreateTextureSP("敵機２", 200, -199, -319, "cg2/st/3d九〇式竜騎兵_騎突_戦闘.png");
		Request("敵機２", Smoothing);

		CreateTextureEX("イベント２", 3000, 117, -163, "cg/ev/resize/evex003_雪車町_哄笑.png");
//		Zoom("イベント２", 0, 3000, 3000, Dxl2, true);
		SetBlur("イベント２", true, 2, 500, 100, false);

		CreateTextureEXadd("エフェクト１", 1000, 0, 0, "cg/ef/ef003_汎用移動.jpg");
		Zoom("エフェクト１", 0, 20000, 20000, Dxl2, true);

		CreateSE("ＳＥ１","se戦闘_動作_空突進02");
		CreateSE("ＳＥ２","se戦闘_動作_空突進06");
		CreateSE("ＳＥ３","se戦闘_動作_空突進07");
		CreateSE("ＳＥ４","se戦闘_攻撃_殴る05");

		SetBacklog("　　《カァァァッカカカカカカカーーーーーッ!!》", "voice/ma04/016vs1660a12", 雪車町);

		SoundPlay("ＳＥ１",0,1000,false);
		SoundPlay("ＳＥ２",0,1000,false);
		SoundPlay("ＳＥ３",0,1000,false);
		SoundPlay("ＳＥ４",0,1000,false);

	SetVolume("サウンド１", 2000, 1, NULL);
	SetVolume("サウンド２", 2000, 0, NULL);

	Fade("エフェクト１", 300, 500, null, false);
	Zoom("エフェクト１", 500, 1000, 1000, Dxl1, false);

	Move("背景３", 500, @200, @-200, Dxl1, false);

	Fade("敵機２", 500, 500, null, false);
	Move("敵機２", 500, -528, -247, Dxl1, false);
	Move("敵機３", 500, -528, -247, Dxl1, false);
	Zoom("敵機２", 500, 1800, 1800, Axl1, false);
	Zoom("敵機３", 500, 1500, 1500, Axl1, false);

//	Zoom("イベント２", 500, 1000, 1000, Dxl1, false);
	Fade("イベント２", 500, 600, null, false);

//	SetFwC("cg/fw/fw雪車町_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0890]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1660a12">
　
　　《カァァァッカカカカカカカーーーーーッ!!》

</PRE>
	SetTextEXR();
	Request("@text0890", NoLog);
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆金翅鳥王剣
		CreateSE("ＳＥ５","se戦闘_攻撃_鎧_剣戟02");
		CreateSE("ＳＥ６","se戦闘_動作_空突進03");
		CreateSE("ＳＥ７","se特殊_雰囲気_発光03");
		CreateSE("ＳＥ８","se特殊_雰囲気_鎧登場演02");

	OnSE("se戦闘_動作_空突進08",1000);

	Fade("色１", 500, 1000, null, false);
	Zoom("イベント２", 500, 3000, 3000, Axl1, false);
	Rotate("エフェクト１", 500, @0, @0, 36000, null, false);

	Move("背景３", 500, @-200, @-200, Axl1, false);

	Fade("敵機２", 500, 0, null, false);
	Move("敵機２", 500, 0, -200, Dxl1, false);
	Move("敵機３", 500, 0, -200, Dxl1, false);
	Zoom("敵機２", 500, 2000, 2000, Axl1, false);
	Zoom("敵機３", 500, 1800, 1800, Axl1, true);

		Delete("エフェクト*");
		Delete("イベント２");
		Delete("敵機*");
		Delete("自機*");

		CreateTextureSP("イベント１", 100, -1000, -576, "cg/ev/resize/ev914_九〇式竜騎兵魔剣インメルマンターン_l.jpg");
		Zoom("イベント１", 0, 2000, 2000, Dxl2, true);
		SetBlur("イベント１", true, 1, 500, 50, false);

		CreateTextureEX("イベント２", 200, 0, 0, "cg/ev/ev914_九〇式竜騎兵魔剣インメルマンターン.jpg");
		SetVertex("イベント２", 628, 138);
		Zoom("イベント２", 0, 2000, 2000, Dxl2, true);
		SetBlur("イベント２", true, 2, 500, 100, false);

	SoundPlay("ＳＥ５",0,1000,false);
	SoundPlay("ＳＥ７",0,1000,false);

	Fade("色１", 500, 0, null, false);
	BezierMove("イベント１", 1000, (@0,@0){1000,700}{0,700}(-1200,100), Dxl2, 500);
	Fade("色１", 500, 1000, null, true);

	SoundPlay("ＳＥ６",0,1000,false);

		Fade("イベント２", 0, 1000, null, true);
	Fade("色１", 500, 0, null, false);
	Zoom("イベント２", 1000, 1000, 1000, Dxl2, false);

	Wait(500);

	SoundPlay("ＳＥ８",0,1000,false);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0900]
　
　　　　　　　　〝<RUBY text="インメルマン・ターン">金翅鳥王剣</RUBY>〟

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆どかーん。
	OnSE("se戦闘_動作_空突進04",1000);

	Zoom("イベント２", 1000, 3000, 3000, Axl1, false);
	Fade("色１", 1000, 1000, null, true);

	CreateMovie("ムービー１", 17100, 0, 0, false, false, "dx/mvインメルマン.ngs");
	SetAlias("ムービー１", "ムービー１");
	Request("ムービー１", Stop);

	Fade("色１", 500, 0, null, false);
	OnSE("se特殊_mv用_インメルマン",1000);
	Request("ムービー１", Play);
	WaitAction("ムービー１", null);

	Fade("色１", 0, 1000, null, true);

		Delete("ムービー１");
		Delete("イベント１");
		Delete("イベント２");
		Delete("背景*");
		Delete("絵Suf*");

	OnSE("se戦闘_攻撃_鎧_打撃02",1000);
	OnSE("se戦闘_攻撃_鎧攻撃命中03",1000);
	OnSE("se戦闘_破壊_爆発01",1000);
	OnSE("se戦闘_破壊_鎧02",1000);
	OnSE("se戦闘_動作_空突進03",1000);
	OnSE("se戦闘_攻撃_鎧_吹っ飛ぶ02",1000);

	Wait(3000);
	Fade("色１", 1000, 0, null, true);
	Wait(3000);

//◆イメージ画像？
	CreateTextureEX("イベント１", 17000, 0, 0, "cg/ev/ev270_インメルマンターン回想_a.jpg");
	CreateTextureEX("イベント２", 17000, 0, 0, "cg/ev/ev270_インメルマンターン回想_b.jpg");


	Fade("イベント１", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0910]
　マックス・インメルマン中尉。
　外暦一九一四年から一九一八年にわたって戦われた
欧州戦争において、比類なき勇名を鳴り響かせた<RUBY text="ドイツ">独逸</RUBY>
の誇る<RUBY text="エース">撃墜王</RUBY>の一人である。

　その名に〝<RUBY text="フォン">侯</RUBY>〟の一語が無い事からも明らかな通り、
彼は竜騎兵団に属してはいたものの、騎士階級の出身
ではなかった。
　<RUBY text="ブラッドクルス">真打劔冑</RUBY>の継承者ではなかったのである。

　この時代の撃墜王としては異例と云わねばならない。
　外暦一九〇〇年代初頭（国紀二五〇〇年代中盤）は
まだ数打劔冑が開発されて間もない頃であり、現在に
比べれば性能は著しく低いレベルに留まっていた。

　彼が愛騎としたフォッカーＥ３とてもそうだ。
　張線支持を採用した単翼騎――当時代の技術の粋が
凝らされた騎体ではあったが、真打劔冑との性能差を
埋めるものでは到底ない。

　その頃、戦場に華を添えた各国の撃墜王――由緒正
しい名門の騎士であり最高の劔冑を継承していた人々
――と、一介の騎兵将校インメルマンとの間に、騎体
性能の点で巨大な隔絶があったことは確実である。

　しかも、彼の配属された北フランス戦線は敵に正規
の騎士が多く、対して味方の騎士は大半が対露戦線に
派遣されていたためほとんど皆無という、実に苛酷を
極める状況下にあった。

　味方は彼を含めて新弱の<RUBY text="ドラグーン">竜騎兵</RUBY>ばかり。
　敵方は古強の<RUBY text="クルセイダー">騎士</RUBY>が居並ぶ。
　……武功を掲げるどころか、生き残るだけでも至難
であったに違いない。

　その死線にあってインメルマンを撃墜王たらしめた
のは、少年期に出会った異国人との体験だった。

　徳川時代の幕引き後、大和はやや閉鎖的であった前
時代の反動のように西洋文化を多く取り入れ、何それ
となく学んだが、軍事編制においてはプロイセン――
ドイツに倣う所が非常に多かった。

　プロイセン軍こそ欧州最精強と見る向きが強かった
ためである。
　幾度となく軍事交流団が派遣され、貪欲に技術知識
を求めた。

　そうして、ドイツに渡った男の一人に……
{	Wait(1000);
	Fade("イベント２", 500, 1000, null, true);}
　小野派一刀流一六代宗家、<RUBY text="ささきじゅんぞう">笹木純蔵</RUBY>がいたのだ。

　彼はふとした事から知り合ったインメルマン少年に、
一刀流剣術を手解きし、その才の尋常ならざるを知る
や、奥義の伝授まで行った。……軽々しいというか、
気前が良いというか、いささか変人だったようである。

　だが彼は帰国の後、国粋の文化を売ったとしてこの
行為に批判を浴びると、こう応えて一蹴した。
　――学ぶのみで教えぬ者は、即ち知恵の盗人である。
自分はドイツ軍に学び、返礼として少年に教えたのだ。

　かくしてインメルマンは一刀流の秘奥を拝受したの
だが、教えた笹木にして彼がその秘技を活用できるだ
ろうとまでは考えていなかったに違いない。

　一刀流五箇の秘伝は絶えず伝えられてきてこそいた
ものの、余りの難解さに使い得た者は始祖以来ついに
なく、技術ではなく単なる知識になり果てていた。
　免許皆伝を示す一種の形式に過ぎなかったのである。

　だが、北仏戦線の極限状況にあって――
　敵の剛強な騎士に追われたマックス・インメルマン
は、差し迫る死に抗う渦中で遂に、秘剣の一つを蘇生
させるに至ったのだ。

　金翅鳥王剣。
　垂直騎航からの反転落下攻撃。
　自己より圧倒的に優る敵を討つ、起死回生の剣。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("イベント１", 0, 0, null, true);

	Fade("イベント２", 1000, 0, null, true);
	Fade("イベント１", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0911]
　以後、インメルマンは常にこの技と共にあり、幾多
の騎士を空から墜として敵味方を瞠目させた。
　彼と彼の技は同一視され、その名は欧州を席巻し、
悪魔的な恐怖と戦神的な畏怖の的となった。

　一九一六年に戦死するまで、生涯の撃墜数は一七騎。
　全てがフランスの名だたる騎士である。

　現在なおその名は語り継がれ、知らぬ者とていない。
　最強、無敵、魔剣、神技――彼の死と共に消え失せ
た、<RUBY text="そら">戦場</RUBY>の<RUBY text="まぼろし">幻影</RUBY>を示すものとして、諸国の軍人そして
歴史書はその名をいつまでも叫び続ける。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("イベント１", 500, 0, null, true);

	CreatePlainSP("絵板写", 18010);
	CreateTextureSP("イベント２", 1000, -915, -168, "cg/ev/resize/ev914_九〇式竜騎兵魔剣インメルマンターン_l.jpg");
	Request("イベント２", Smoothing);
	Zoom("イベント２", 0, 900, 900, Dxl2, true);
	CreateTextureSPadd("イベント１", 17000, 400, 0, "cg/ev/ev270_インメルマンターン回想_a.jpg");
	Fade("イベント２", 0, 500, null, true);
	FadeDelete("絵板写", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0912]
〝インメルマン<RUBY text="・ターン">の反転</RUBY>〟と。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆現実復帰
//◆モニターが赤く点滅。露骨にヤバイ。

	SetVolume("@mbgm*", 3000, 0, NULL);

	Fade("色１", 3000, 1000, null, true);

		Delete("イベント*");

		//▼コクピット（瞬間表示）
		Cockpit_AllFade2();
		//▼コクピット（自機情報：振動）
		FrameShake();
	
		//▼コクピット（自機情報：方位）
		CP_AziChange(0,0,AxlDxl,false);
	
		//▼コクピット（自機情報：速度）
		CP_SpeedChange(0,150,Dxl1,false);
		//▼コクピット（自機情報：高度）
		CP_HighChange(0,2800,Dxl1,false);
		//▼コクピット（自機情報：仰角）
		CP_AltChange2(0,20,Dxl1,false);
	
		//▼コクピット（自機情報：装甲）
		MyLife_Count(0,250);
		//▼コクピット（自機情報：出力）
		MyTr_Count(0,180);
		//▼コクピット（自機情報：熱量）
		CP_PowerChange(100,200,null,false);
		//▼コクピット（自機情報：球体ＨＰ）
		CP_IHPChange(0,2,null,false);
		
		//▼コクピット（自機情報：回転軸）
		//CP_RollBarMove2(0,0,Dxl1,false);
		//▼コクピット（自機情報：回転軸自動化）
		CP_RollBarMoveA();
	
		//▼雲開始
		//CloudZoomStart(700,1000,1000,500,1000);
		//▼雲移動
		//CloudZoomVertex(0,@0,@-300,Axl1,false);

		CreateTextureSP("背景１", 100, -700, 0, "cg/bg/resize/bg001_空c_03l.jpg");
		Request("背景１", Smoothing);
		Zoom("背景１", 0, 2000, 2000, Dxl1, true);

		//▼固定値ランダム
		MoveFFP1("@背景１",5000);

		CreateTextureSPover("ノイズ１", 10000, 0, 0, "cg/data/noize_01_00_0.png");
		Zoom("ノイズ１", 0, 1200, 1200, Dxl2, true);

		CreateColorSPmul("上色１", 17000, "#772222");

		CreateColorSPmul("エフェクト１", 19000, "#AA2222");
		CreateColorSPmul("エフェクト２", 19000, "#AA2222");
		Request("エフェクト２", Erase);
		//▼繰り返し
		CreateAFB1("@エフェクト１","@エフェクト２",500,700,700,2);

	SetVolume("サウンド１", 4000, 1000, NULL);

	Shake("ノイズ１", 4000, 0, 50, 0, 0, 700, null, false);
	Fade("ノイズ１", 4000, 0, null, false);
	Fade("色１", 2000, 0, null, true);


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0920]
//◆「御堂、聞こえている!?
//◆　騎体を立て直して！　動けないの!?」
//◆と収録後に電波状況の悪い無線っぽく加工か。
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/016vs1670a01">
《みど……っ……いる!?
　きっ……ぃを………ない………》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0930]
　村正の声が遠い。
　視界は<RUBY text="くら">昏</RUBY>い――<RUBY text="あか">朱</RUBY>い。

　どれほどの損傷を受けたのか。
　他人事のようにはたらく意識が、現状から類推した。

　瀕死。

　生きているのが不思議だ。
　いや、死につつあるのかもしれないが。

　……<RUBY text="インメルマン・ターン">金翅鳥王剣</RUBY>。
　まさか、あんな亡霊が墓場から這い出してくるとは
思わなかった。

　インメルマンの後継者は、いないとされている。
　彼の剣は彼一人の<RUBY text="アート">術技</RUBY>に終わったのだ。

　<RUBY text="・・・・・・・・・・・・・">失速を乗りこなす騎体制御力</RUBY>。
　そんな代物を、彼以降の誰もが持ち合わせなかった
のは、痛恨というより<RUBY text="じねん">自然</RUBY>というべきだろう。

　だというのに。
　この男が――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雪車町_嘲笑.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0940]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1680a12">
《へ、へ、へ……
　ヘェひゃヒャヒャヒャヒャヒャ!!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0950]
　雪車町一蔵。
　この男がいた、とは。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一瞬ブラックアウト
	CreatePlainEX("背景０", 19998);
	SetShade("背景０", MEDIUM);
	Fade("背景０", 300, 1000, null, true);

	SetVolume("サウンド１", 300, 1, NULL);
	Fade("色０", 300, 1000, null, true);

		CreatePlainEX("背景９", 18000);

	SetVolume("サウンド１", 1000, 1000, NULL);

	Fade("色０", 300, 0, null, false);
	FadeDelete("背景０", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0960]
　<RUBY text="くら">眩</RUBY>む。
　俺はまだ、<RUBY text="とんで">騎航して</RUBY>いるのか。

　まだ、一瞬の時間の内なのか……
　それとも、実は落ちているのを、自覚できていない
だけなのか……

　どちらとも、判然としない。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("サウンド１", 1000, 1, NULL);

	//▼繰り返し：停止
	AFB1stop();
	Fade("エフェクト*", 500, 0, null, true);

	Fade("背景９", 1000, 1000, null, true);

		Shake("ノイズ１", 0, 0, 50, 0, 0, 700, null, false);
		Fade("ノイズ１", 0, 0, null, true);

		//▼Ｘ軸ランダムＹ軸均等：停止
		MoveFTP1stop();
		MoveFFP1stop();

		//▼コクピット（自機情報：振動停止）
		FrameShakeDelete();
		//▼コクピット（自機情報：回転軸停止）
		CP_RollBar_ADelete();

		//▼コクピット（自機情報：仰角）
		CP_AltChange(0,20,null,true);
		//▼コクピット（自機情報：速度）
		CP_SpeedChange2(0,150,null,true);
		//▼コクピット（自機情報：高度）
		CP_HighChange2(0,2800,null,true);
		//▼コクピット（自機情報：回転軸）
		CP_RollBarMove2(0,0,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0961]
　……ああ。
　ひとつわかった。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateSE("サウンド２","se戦闘_動作_空突進05");
	SoundPlay("@サウンド２",2000,200,true);

	CreatePlainSP("絵板写", 19999);
		FadeDelete("背景９", 0, false);
		SetShade("背景１", MEDIUM);
		CreateTextureSP("敵機１", 1000, -200, -488, "cg2/st/3d九〇式竜騎兵_騎突_戦闘.png");
		SetShade("敵機１", MEDIUM);
		Zoom("敵機１", 0, 50, 50, Dxl2, true);
	FadeDelete("絵板写", 500, true);
	CreatePlainSP("絵板写", 19999);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0962]
　来る。
　来ている。

{		SetVolume("サウンド２", 2000, 400, NULL);
		SetShade("敵機１", NULL);
		Zoom("敵機１", 0, 300, 300, Dxl2, true);
	FadeDelete("絵板写", 500, true);}
　あの男が、こちらへ――

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0970]
//◆「御堂！　回避して！」で、加工か。
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/016vs1690a01">
《み……っ…！
　か…避……っ！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆雪車町一撃
//◆ずがーん。また大ダメージ。
		OnSE("se戦闘_動作_空突進02",800);

		//▼コクピット（自機情報：振動）
		FrameShake();

	Move("敵機１", 300, @200, @2000, Axl1, false);
	Zoom("敵機１", 300, 2000, 2000, Dxl3, false);
	Wait(250);
	Fade("色０", 50, 1000, null, true);

		CreateSE("ＳＥ１","se日常_機械_ノイズ01");

		OnSE("se戦闘_攻撃_殴る06",1000);
		OnSE("se戦闘_動作_鉄壁吹っ飛ばす",1000);
		OnSE("se戦闘_破壊_鎧03",800);

		SetVolume("サウンド２", 2000, 0, NULL);
		SetVolume("サウンド１", 2000, 1000, NULL);

		MusicStart("ＳＥ１",2000,300,0,500,null,true);
	//	SoundPlay("ＳＥ１",2000,500,true);

	//▼コクピット（自機情報：方位）
	CP_AziChange(1000,60,Dxl1,false);
	//▼コクピット（自機情報：速度）
	CP_SpeedChange(1000,200,Dxl1,false);
	//▼コクピット（自機情報：高度）
	CP_HighChange(1000,2500,Dxl1,false);
	//▼コクピット（自機情報：仰角）
	CP_AltChange2(1000,360,Dxl1,false);
	//▼コクピット（自機情報：回転軸）
	CP_RollBarMove2(1000,-60,Dxl1,false);

		//▼コクピット（自機情報：装甲）
		MyLife_Count(1000,180);
		//▼コクピット（自機情報：出力）
		MyTr_Count(1000,180);
		//▼コクピット（自機情報：熱量）
		CP_PowerChange(1000,100,null,false);
	
	Shake("背景１", 500, 0, 50, 0, 0, 700, null, false);
	Move("背景１", 500, @100, @100, null, false);
	Fade("色０", 100, 0, null, false);
	Wait(100);
	Fade("色０", 300, 1000, null, true);

		//▼雲正面
		CloudZoomSet2("マド",1000,0,0,1024,576);
		//▼雲開始
		CloudZoomStart2B(700,1000,1000);
	
		//▼コクピット（自機情報：方位）
		CP_AziChange(0,0,AxlDxl,false);
		//▼コクピット（自機情報：速度）
		CP_SpeedChange(1000,200,Dxl1,false);
		//▼コクピット（自機情報：高度）
		CP_HighChange(600000,1500,Dxl1,false);
		//▼コクピット（自機情報：仰角）
		CP_AltChange2(0,-60,Dxl1,false);
		//▼コクピット（自機情報：回転軸）
		CP_RollBarMove2(0,180,Dxl1,true);
	
		//▼コクピット（自機情報：回転軸自動化）
		CP_RollBarMoveA();
	
		CreateTextureSP("背景１", 100, 0, 0, "cg/bg/bg001_空c_03.jpg");
		Rotate("背景１", 0, @180, @0, 0, null, true);
		Zoom("背景１", 0, 2000, 2000, Dxl1, true);

		CreateTextureEX("背景２", 100, Center, Middle, "旋回イメージ１");
		SetTone("背景２", Monochrome);
		CreateSurfaceEX("絵Suf",200,2000,"背景２");
		CreateTextureEX("背景３", 100, Center, -800, "旋回イメージ２");
		SetTone("背景３", Monochrome);
		SetSurface("背景３","絵Suf");
		CreateTextureEX("背景４", 100, Center, -5200, "旋回イメージ３");
		SetTone("背景４", Monochrome);
		SetSurface("背景４","絵Suf");

		//▼固定値ランダム
		MoveFFP1("@背景１",5000);
	
		//▼繰り返し
		CreateAFB1("@エフェクト１","@エフェクト２",500,700,700,2);
	
		Fade("ノイズ１", 0, 500, null, true);
	
		//▼シェイク
		MoveSSP1("@ノイズ１",100000,0,3,0,3,1000,null);

	Zoom("背景１", 1000, 2000, 2000, Dxl2, false);
	Fade("色０", 1000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0980]
　世界が激しく揺れ動く。
　それもまた、己の事として感じられない。

　痛みがないからだろう。
　深々と、肉体の何処かが切り裂かれている筈なのに、
神経からの信号がない。

　もう、麻痺してしまっているのか。
　信号を受け取るべき脳が破損したか……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆モニター白黒化

	//★ロック設置
	LockVideo(true);
		CreateEffect("エフェクト０", 19999, 0, 0, 1024, 576, "Monochrome");
		SetAlias("エフェクト０", "エフェクト０");
		Fade("エフェクト０", 0, 0, null, true);
	//★ロック設置
	LockVideo(false);

	CreateSE("ＳＥ２","se擬音_雰囲気_超回復");
	MusicStart("ＳＥ２",0,500,0,500,null,false);

	SetVolume("ＳＥ１", 3000, 0, NULL);

	OnSE("se特殊_ノイズ01",700);
	Fade("エフェクト０", 300, 1000, null, true);
	Fade("エフェクト０", 300, 0, null, true);

	CreatePlainSP("絵板写", 19998);
	Draw();
	Fade("エフェクト０", 2000, 1000, null, true);

		//▼繰り返し：停止
		AFB1stop();
	
		//▼シェイク：停止
		MoveSSP1stop();

		Fade("ノイズ１", 0, 0, null, false);
		Fade("上色１", 0, 0, null, false);
		Fade("エフェクト１", 0, 0, null, false);
		Fade("エフェクト２", 0, 0, null, true);
	
		Delete("上色１");
		Delete("ノイズ１");
		Delete("エフェクト１");
		Delete("エフェクト２");

		SetTone("@背景１", Monochrome);
		SetTone("@CP*", Monochrome);

		CreateTextureEXadd("エフェクト１", 15000, 0, 0, "cg/ef/ef038_汎用射撃.jpg");
		Zoom("エフェクト１", 0, 1100, 1100, Dxl2, true);
		Rotate("エフェクト１", 0, @0, @0, -40, null, true);
		CreateTextureEXadd("エフェクト２", 1000, 0, 0, "cg/ef/ef042_汎用打撃.jpg");
		Zoom("エフェクト２", 0, 1100, 1100, Dxl2, true);
	
		SetTone("@エフェクト１", Monochrome);
		SetTone("@エフェクト２", Monochrome);
		
		CreateTextureSP("敵機１", 200, -300, 1000, "cg2/st/3d九〇式竜騎兵_騎突_戦闘.png");
		Rotate("敵機１", 0, @0, @0, 90, null, true);
		Zoom("敵機１", 0, 0, 0, Axl2, true);
		SetTone("敵機１", Monochrome);

		//▼コクピット（自機情報：熱量）
		CP_PowerChange(500,20,null,false);

//	OnSE("se特殊_雰囲気_発光03",1000);

	FadeDelete("エフェクト０", 500, false);
	FadeDelete("絵板写", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0990]
　……グレイアウト。
　空の戦士に死を告げる生理現象だ。

　これが発生するということは、熱量の欠乏が致命的
なレベルに達しつつあるという事。
　今、俺の肉体からは血液と共に熱が根こそぎ排出さ
れていっているのだろう。

　視野は朧だが、聴覚はまだ鮮明だ。
　声が届く。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("サウンド１", 4000, 700, NULL);

	Zoom("敵機１", 4000, 100, 100, Dxl1, false);
	Move("敵機１", 4000, @0, @-1300, Dxl1, false);

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1000]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1700a12">
《何度でも言ってやるぜ……
　てめェはくだらねえ半端野郎だ》
{
	WaitAction("敵機１", null);
	SoundPlay("@mbgm31",0,1000,true);
	//▼Ｘ軸ランダムＹ軸均等
	MoveFTP1("@敵機１",10000,3,5);
}<BR>

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1010]
　…………。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1020]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1710a12">
《なんで、かァ？
　てめェは、<RUBY text="・・">嫌々</RUBY>、やってるじゃあねぇか》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1030]
　…………。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1040]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1720a12">
《あの村で子供を殺した時も……
　この間、サーキット場の騒動の後で殺した
時もそうだ……》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1730a12">
《てめぇは、嫌だ、嫌だって体で言いながら
殺してやがった……》

{	FwC("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1740a12">
《なァ!?》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆雪車町来襲
//◆どがーん。


	Rotate("敵機１", 500, @0, @0, @-90, null, false);
	Move("敵機１", 500, @200, @0, Axl1, false);
	Zoom("敵機１", 500, 2000, 2000, Axl2, false);
	Wait(400);
	Fade("エフェクト１", 100, 1000, null, false);
	Fade("色０", 100, 1000, null, true);

		//▼固定値ランダム：停止
		MoveFFP1stop();
		//▼Ｘ軸ランダムＹ軸均等：停止
		MoveFTP1stop();

		//▼雲消去
		CloudZoomFade2(0,true);
		//▼雲移動
		CloudZoomStart2(700,1000,1000);
		CloudZoomVertex2(0,@-500,@0,Dxl2,true);

		Fade("エフェクト１", 0, 0, null, false);

		Delete("敵機１");
		Fade("背景１", 0, 0, null, false);
		Fade("背景２", 0, 1000, null, false);
		Fade("絵Suf", 0, 1000, null, false);
		Rotate("絵Suf", 0, @0, @0, -180, Dxl1, false);
		Zoom("絵Suf", 0, 4000, 4000, Dxl2, true);

		//▼固定値ランダム
		MoveFFP1("@絵Suf",10000);

		//▼コクピット（自機情報：回転軸停止）
		CP_RollBar_ADelete();

		//▼コクピット（自機情報：装甲）
		MyLife_Count(1000,170);
		//▼コクピット（自機情報：出力）
		MyTr_Count(1000,160);

		//▼コクピット（自機情報：方位）
		CP_AziChange(0,-40,AxlDxl,false);
		//▼コクピット（自機情報：速度）
		CP_SpeedChange(2000,220,Dxl1,false);
		//▼コクピット（自機情報：高度）
		//CP_HighChange(600000,1500,Dxl1,false);
		//▼コクピット（自機情報：仰角）
		CP_AltChange2(2000,-70,Dxl1,false);
		//▼コクピット（自機情報：回転軸）
		CP_RollBarMove2(2000,150,Dxl1,false);

	Zoom("絵Suf", 2000, 2000, 2000, Dxl1, false);
	Rotate("絵Suf", 2000, @0, @0, 40, Dxl1, false);
	Shake("背景２", 2000, 0, 50, 0, 0, 700, Dxl1, false);
	Fade("色０", 2000, 0, null, true);

	//▼コクピット（自機情報：回転軸自動化）
	CP_RollBarMoveA();

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1050]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1750a00">
「が……ぐ……」

{	FwC("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1760a12">
《ほんとはこんなことやりたくねえんだって
……本音が透けて見えてたぜぇ》

{	FwC("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1770a12">
《け、けっ！
　嫌ならやらなきゃいいだろうがよ……》

{	FwC("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1780a12">
《<RUBY text="・・・・・・">意地悪爺さん</RUBY>を殺さなけりゃ、<RUBY text="・・・・・">正直爺さん</RUBY>
も殺さなくて済むんだろぅ？
　何もしなきゃいいんだよ、てめえは！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1060]
　…………。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1070]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1790a00">
《貴様は……知らない……》

{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1800a12">
《あァ……》

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1810a00">
《何も知らないだけだ》

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1820a00">
《俺が……やらねば、ならないのだ。
　嫌だからやらぬ、で……済む話では、ない
…………》

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1830a00">
《俺が……やらねば……》

{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1840a12">
《……へ》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銃撃
//◆ずがががが。

	CreateTextureSP("敵機１", 200, -1300, -500, "cg/st/3d九〇式竜騎兵_騎航_戦闘b.png");
	Rotate("敵機１", 0, @0, @0, 40, null, true);
	SetTone("敵機１", Monochrome);

		//▼コクピット（自機情報：装甲）
		MyLife_Count(1000,165);

	Rotate("エフェクト２", 0, @0, @180, @0, null, false);
	Fade("エフェクト２", 0, 500, null, true);

	Fade("エフェクト２", 1000, 0, null, false);
	Shake("エフェクト２", 1000, 0, 50, 0, 0, 700, Dxl1, false);

	Fade("色０", 0, 500, null, false);
	Shake("背景２", 2000, 0, 50, 0, 0, 700, Dxl1, 1500);
	Fade("色０", 500, 0, null, false);


	Zoom("敵機１", 500, 1500, 1500, null, false);
	Move("敵機１", 500, @2500, @500, null, true);

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1080]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1850a12">
《じゃあどんな話だってんだァ。
　てめぇ様が<RUBY text="・・・">そいつ</RUBY>をやってくださらないと、
この世が滅びてしまいますってか》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1860a12">
《いいじゃねえか。
　てめぇにしか救えねえ、でもてめぇはそれ
をやりたくねえ……ってんならさァ》

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1870a12">
《見捨てちまえよ。
　笑いながら、なァ》

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1880a00">
《……そ……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1090]
　そのような、事は。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_満足.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1100]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1890a12">
《どっちだっていいんだよ。
　救おうと、見捨てようと》

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1900a12">
《どっちだっていいけどよォ……
　てめぇで納得してからやれよ、なァ？》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1110]
　……納得。

　俺がやらねば……ならない。
　銀星号も……寄生体も……<RUBY text="おれ">村正</RUBY>の力で、止める以外
にないのだから……。

　だから……殺す。
　俺が、殺す。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1120]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1910a00">
《納得は……している》

{	FwC("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1920a12">
《してねえよ。
　してたらなんで、泣き喚いた》

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1930a00">
《……泣いてなどいない》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1130]
　流す涙などない。
　……あろう筈がない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1140]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1940a12">
《泣いてたさァ。みっともなくな。
　……けへっ！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1150]
　兜の裏で本当に唾を吐いたかのような音が、信号化
されて伝わってきた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1160]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1950a12">
《人間みんな、やりてぇ事やって生きてらァ。
　そりゃそうだ。どんな奴だって、<RUBY text="・・・・">自分の事</RUBY>
<RUBY text="・・・・・・・">しかわからねえ</RUBY>んだからな》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1960a12">
《他人の事なんてよくわからねえ。
　だから自分のやりてえようにやる……》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1970a12">
《てめぇで考えて、
　てめぇで納得した事をやる。
　みんなそうやって、<RUBY text="・・・・">真面目に</RUBY>生きてらァ》

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1980a12">
《お陰で世の中、面白ぇ……。
　今みたく生き難い世情だと、みんな余計に
真剣だしなァ》

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1990a12">
《付き合ってみても、ぶつかってみても……
みんな生きることに半端ってもんがねえから、
いい。
　どいつもこいつも楽しい奴らだァ……》

{	FwC("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2000a12">
《てめぇだけだよ》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆来襲
//◆ずどーん

	Rotate("エフェクト１", 0, @0, @0, -45, null, true);

	CreateTextureSP("敵機１", 200, 0, -1000, "cg/st/3d九〇式竜騎兵_騎航_戦闘a.png");
	Rotate("敵機１", 0, @0, @0, 150, null, true);
	SetTone("敵機１", Monochrome);

	Move("敵機１", 300, @-500, @1200, null, false);
	Wait(200);
	Rotate("エフェクト１", 100, @0, @0, -90, null, false);
	Fade("エフェクト１", 100, 1000, null, false);
	Fade("色０", 100, 1000, null, true);

		//▼固定値ランダム：停止
		MoveFFP1stop();
		//▼Ｘ軸ランダムＹ軸均等：停止
		MoveFTP1stop();

		//▼雲消去
		//CloudZoomFade2(0,true);
		//▼雲移動
		CloudZoomStart2(700,1000,1000);
		CloudZoomVertex2(0,@1000,@0,Dxl2,true);

		CreateTextureSP("敵機１", 200, 500, 500, "cg2/st/3d九〇式竜騎兵_騎突_戦闘2.png");
		Rotate("敵機１", 0, @0, @0, @-30, null, true);
		SetTone("敵機１", Monochrome);
		CreateTextureSP("敵機２", 200, -500, -500, "cg2/st/3d九〇式竜騎兵_騎突_戦闘.png");
		Zoom("敵機２", 0, 0, 0, Dxl1, false);
		Rotate("敵機２", 0, @0, @0, @-70, null, false);
		SetTone("敵機２", Monochrome);

		Fade("エフェクト１", 0, 0, null, false);

		Fade("背景２", 0, 0, null, false);
		Fade("背景３", 0, 1000, null, false);
		Fade("絵Suf", 0, 1000, null, false);
		Rotate("絵Suf", 0, @0, @0, 180, Dxl1, false);
		Zoom("絵Suf", 0, 4000, 4000, Dxl2, true);

		//▼固定値ランダム
		MoveFFP1("@絵Suf",10000);

		//▼コクピット（自機情報：回転軸停止）
		CP_RollBar_ADelete();

		//▼コクピット（自機情報：装甲）
		MyLife_Count(1000,155);
		//▼コクピット（自機情報：出力）
		MyTr_Count(1000,140);

		//▼コクピット（自機情報：方位）
		CP_AziChange(0,40,AxlDxl,false);
		//▼コクピット（自機情報：速度）
		CP_SpeedChange(2000,220,Dxl1,false);
		//▼コクピット（自機情報：高度）
		//CP_HighChange(600000,1500,Dxl1,false);
		//▼コクピット（自機情報：仰角）
		CP_AltChange2(2000,-70,Dxl1,false);
		//▼コクピット（自機情報：回転軸）
		CP_RollBarMove2(2000,-150,Dxl1,false);

	Zoom("絵Suf", 2000, 2000, 2000, Dxl1, false);
	Rotate("絵Suf", 2000, @0, @0, -40, Dxl1, false);
	Shake("背景３", 2000, 0, 50, 0, 0, 700, Dxl1, false);
	Fade("色０", 2000, 0, null, 1000);

	Zoom("敵機１", 2000, 0, 0, Dxl1, false);
	BezierMove("敵機１", 2000, (@0,@0){@200,@-400}{@-200,@-600}(@-700,@-700), Dxl1, false);

	//▼Ｘ軸ランダムＹ軸均等
	//MoveFTP1("@敵機２",20000,3,5);

	SetFwC("cg/fw/fw雪車町_無.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1170]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2010a12">
《自分で納得もしてねぇ事をやってやがる、
<RUBY text="・・・・・・">おちゃらけた</RUBY>野郎はてめぇだけだ。
　間抜けな生き方しやがって……》
{
	WaitAction("敵機１", null);
	//▼コクピット（自機情報：回転軸自動化）
	CP_RollBarMoveA();
	Move("敵機２", 20000, @100, @100, Axl1, false);
	Zoom("敵機２", 20000, 100, 100, Dxl1, false);
}<BR>


{	FwC("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2020a12">
《興醒めするんだよ！
　てめェみてえのがいるとなァ!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆攻撃
//◆ずがーん

	Rotate("敵機２", 600, @0, @0, @-180, null, false);
	Zoom("敵機２", 600, 2000, 2000, Axl1, false);
	Wait(400);
	Rotate("エフェクト１", 200, @0, @0, -160, Dxl1, false);
	Fade("エフェクト１", 200, 1000, null, false);
	Fade("色０", 200, 1000, null, true);

		//▼固定値ランダム：停止
		MoveFFP1stop();
		//▼Ｘ軸ランダムＹ軸均等：停止
		MoveFTP1stop();

		//▼雲消去
		//CloudZoomFade2(0,true);
		//▼雲移動
		CloudZoomStart2B(700,1000,1000);
		CloudZoomVertex2(0,@-400,@0,Dxl2,true);

		CreateTextureSP("敵機１", 200, 500, 500, "cg2/st/3d九〇式竜騎兵_騎突_戦闘2.png");
		Rotate("敵機１", 0, @0, @0, @-30, null, true);
		SetTone("敵機１", Monochrome);
		CreateTextureSP("敵機２", 200, -1000, 1000, "cg/st/3d九〇式竜騎兵_騎航_戦闘d.png");
		Rotate("敵機２", 0, @0, @0, @-30, null, false);
		SetTone("敵機２", Monochrome);

//		CreateTextureEX("背景１", 100, 0, 0, "cg/bg/bg001_空a_03.jpg");
//		Zoom("背景１", 0, 2000, 2000, Dxl2, true);

		Fade("エフェクト１", 0, 0, null, false);

		Fade("背景*", 0, 0, null, false);
		Fade("背景４", 0, 1000, null, false);
		Fade("絵Suf", 0, 1000, null, false);
		Rotate("絵Suf", 0, @0, @0, -180, Dxl1, false);
		Zoom("絵Suf", 0, 4000, 4000, Dxl2, true);

		//▼固定値ランダム
		MoveFFP1("@絵Suf",10000);

		//▼コクピット（自機情報：回転軸停止）
		CP_RollBar_ADelete();

		//▼コクピット（自機情報：装甲）
		MyLife_Count(1000,140);
		//▼コクピット（自機情報：出力）
		MyTr_Count(1000,130);

		//▼コクピット（自機情報：方位）
		CP_AziChange(0,-40,AxlDxl,false);
		//▼コクピット（自機情報：速度）
		CP_SpeedChange(2000,250,Dxl1,false);
		//▼コクピット（自機情報：高度）
		//CP_HighChange(600000,1500,Dxl1,false);
		//▼コクピット（自機情報：仰角）
		CP_AltChange2(2000,-30,Dxl1,false);
		//▼コクピット（自機情報：回転軸）
		CP_RollBarMove2(2000,-210,Dxl1,false);

	Zoom("絵Suf", 2000, 2000, 2000, Dxl1, false);
	Rotate("絵Suf", 2000, @0, @0, 70, Dxl1, false);
	Shake("背景４", 2000, 0, 50, 0, 0, 700, Dxl1, false);
	Fade("色０", 2000, 0, null, true);

	//▼コクピット（自機情報：回転軸自動化）
	CP_RollBarMoveA();

	SetFwC("cg/fw/fw雪車町_無.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1180]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2030a12">
《それで、てめぇが一人でどっかに引っ込ん
でるってんなら、まあいいさぁ。
　てめぇの勝手だよ》

{	FwC("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2040a12">
《……だがてめぇは殺しやがる……》

{	FwC("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2050a12">
《嫌々ながら殺しやがる》

{	FwC("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2060a12">
《あの餓鬼共を……
　あの姉妹を、嫌々ながら殺しやがった!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆連撃
//◆がんがんがーん。

	Move("敵機２", 500, @2000, @-2000, null, false);
	Wait(400);
	Rotate("エフェクト１", 200, @0, @0, -290, Dxl1, false);
	Fade("エフェクト１", 200, 1000, null, false);
	Fade("色０", 100, 1000, null, true);

		Fade("エフェクト１", 0, 0, null, false);
		Fade("色０", 400, 0, null, false);

		//▼コクピット（自機情報：回転軸停止）
		CP_RollBar_ADelete();

		//▼コクピット（自機情報：装甲）
		MyLife_Count(1000,145);
		//▼コクピット（自機情報：出力）
		MyTr_Count(1000,135);

		//▼コクピット（自機情報：回転軸）
		CP_RollBarMove2(1000,20,Dxl1,false);
	
		Move("背景４", 1000, @0, 0, Dxl1, false);
		Shake("背景４", 1000, 0, 50, 0, 0, 700, Dxl1, false);
		Rotate("絵Suf", 1000, @0, @0, 150, Dxl1, true);

//	WaitKey();

	Rotate("エフェクト１", 0, @0, @0, -45, Dxl1, false);
	Fade("エフェクト１", 200, 1000, null, false);
	Fade("色０", 200, 1000, null, true);

		Fade("エフェクト１", 0, 0, null, false);
		Fade("色０", 400, 0, null, false);

		//▼コクピット（自機情報：装甲）
		MyLife_Count(1000,135);
		//▼コクピット（自機情報：出力）
		MyTr_Count(1000,125);

		//▼コクピット（自機情報：回転軸）
		CP_RollBarMove2(1000,-120,Dxl1,false);
	
		Rotate("敵機１", 1950, @0, @0, 360, Dxl1, false);
		Zoom("敵機１", 950, 20, 20, null, false);
//		Move("敵機１", 950, @-1000, @-600, Dxl3, false);
		BezierMove("敵機１", 1950, (@0,@0){@-666,@-400}{@-666,@-400}(@-1000,@-600){@-666,@-700}{@-333,@-800}(@0,@-900), DxlAxl, false);

		Move("背景４", 1000, @0, -5200, Dxl1, false);
		Shake("背景４", 1000, 0, 50, 0, 0, 700, Dxl1, false);
		Rotate("絵Suf", 1000, @0, @0, 120, Dxl1, false);

		Wait(1000);
		Zoom("敵機１", 1000, 0, 0, AxlAuto, false);
		Wait(1000);

		//▼コクピット（自機情報：回転軸自動化）
		//CP_RollBarMoveA();

	WaitAction("敵機１", null);

//	WaitKey();

	Rotate("エフェクト１", 0, @0, @0, 0, Dxl1, false);
	Rotate("敵機２", 0, @0, @0, 180, null, true);
	Move("敵機２", 0, 1000, -1000, null, true);

	Move("敵機２", 500, @-1500, @800, null, false);
	Wait(300);
	Fade("エフェクト１", 200, 1000, null, false);
	Fade("色０", 200, 1000, null, true);

		//▼固定値ランダム：停止
		MoveFFP1stop();
		//▼Ｘ軸ランダムＹ軸均等：停止
		MoveFTP1stop();

		//▼雲消去
		CloudZoomFade2(0,true);
		//▼雲移動
		CloudZoomStart2(700,1000,1000);
		CloudZoomVertex2(0,@-100,@0,Dxl2,true);

		CreateTextureSP("敵機１", 200, -300, -1000, "cg2/st/3d九〇式竜騎兵_騎突_戦闘b.png");
		Rotate("敵機１", 0, @0, @0, 50, null, true);
		Zoom("敵機１", 0, 50, 50, Dxl2, true);
		SetTone("敵機１", Monochrome);
		Delete("敵機２");

		Fade("エフェクト１", 0, 0, null, false);

		Fade("背景*", 0, 0, null, false);
		Fade("背景３", 0, 1000, null, false);
		Fade("絵Suf", 0, 1000, null, false);
		Rotate("絵Suf", 0, @0, @0, -180, Dxl1, false);
		Zoom("絵Suf", 0, 4000, 4000, Dxl2, true);

		//▼固定値ランダム
		MoveFFP1("@絵Suf",10000);

		//▼コクピット（自機情報：回転軸停止）
		CP_RollBar_ADelete();

		//▼コクピット（自機情報：装甲）
		MyLife_Count(1000,125);
		//▼コクピット（自機情報：出力）
		MyTr_Count(1000,125);

		//▼コクピット（自機情報：方位）
		CP_AziChange(0,-40,AxlDxl,false);
		//▼コクピット（自機情報：速度）
		CP_SpeedChange(2000,250,Dxl1,false);
		//▼コクピット（自機情報：高度）
		//CP_HighChange(600000,1500,Dxl1,false);
		//▼コクピット（自機情報：仰角）
		CP_AltChange2(2000,-30,Dxl1,false);
		//▼コクピット（自機情報：回転軸）
		CP_RollBarMove2(2000,-30,Dxl1,false);

	Move("背景３", 2000, @0, @-1000, Dxl1, false);

	Zoom("絵Suf", 2000, 2000, 2000, Dxl1, false);
	Rotate("絵Suf", 2000, @0, @0, 70, Dxl1, false);
	Shake("背景３", 2000, 0, 50, 0, 0, 700, Dxl1, false);
	Fade("色０", 2000, 0, null, true);

	//▼コクピット（自機情報：回転軸自動化）
	CP_RollBarMoveA();


	SetFwC("cg/fw/fw景明_苦痛.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1190]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs2070a00">
「……ッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Move("敵機１", 2000, @0, @500, Dxl1, false);

	SetFwC("cg/fw/fw雪車町_怒り.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1191]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2080a12">
《ふざっけんじゃねェェェェェェェェ!!》
{
	WaitAction("敵機１", null);
	//▼Ｘ軸ランダムＹ軸均等
	MoveFTP1("@敵機１",10000,3,5);
}<BR>

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆強打
//◆ずどごーん
	Rotate("エフェクト１", 0, @0, @0, 0, Dxl1, false);

	Rotate("敵機１", 1000, @0, @0, -50, null, false);
	Zoom("敵機１", 1000, 2000, 2000, Axl2, false);
	BezierMove("敵機１", 1000, (@0,@0){@-100,@400}{@200,@400}(@400,@-800), Axl1, false);
	Wait(800);
	Rotate("エフェクト１", 200, @0, @0, -50, Dxl1, false);
	Fade("エフェクト１", 200, 1000, null, false);
	Fade("色０", 200, 1000, null, true);

		//▼固定値ランダム：停止
		MoveFFP1stop();
		//▼Ｘ軸ランダムＹ軸均等：停止
		MoveFTP1stop();

		//▼雲消去
		CloudZoomFade2(0,true);
		//▼雲移動
		CloudZoomStart2B(700,1000,1000);
		//CloudZoomVertex2(0,@-100,@0,Dxl2,true);

		CreateTextureSP("敵機１", 200, -1000, -1000, "cg2/st/3d九〇式竜騎兵_騎突_戦闘2.png");
		Rotate("敵機１", 0, @0, @0, @-30, null, true);
		SetTone("敵機１", Monochrome);
		CreateTextureSP("敵機２", 200, -200, -700, "cg2/st/3d九〇式竜騎兵_騎突_戦闘.png");
		Rotate("敵機２", 0, @0, @0, @-30, null, false);
		Zoom("敵機２", 0, 0, 0, Dxl2, true);
		SetTone("敵機２", Monochrome);

		CreateTextureEX("背景１", 200, 0, 0, "cg/bg/bg001_空a_03.jpg");
		Zoom("背景１", 0, 2000, 2000, Dxl2, true);
		SetSurface("背景１","絵Suf");
		SetTone("背景１", Monochrome);

		Fade("エフェクト１", 0, 0, null, false);

		Fade("背景*", 0, 0, null, false);
		Fade("背景１", 0, 1000, null, false);
		Fade("絵Suf", 0, 1000, null, false);
		Rotate("絵Suf", 0, @0, @0, -180, Dxl1, false);
		Zoom("絵Suf", 0, 4000, 4000, Dxl2, true);

		//▼固定値ランダム
		MoveFFP1("@絵Suf",10000);

		//▼コクピット（自機情報：回転軸停止）
		CP_RollBar_ADelete();

		//▼コクピット（自機情報：装甲）
		MyLife_Count(1000,95);
		//▼コクピット（自機情報：出力）
		MyTr_Count(1000,105);

		//▼コクピット（自機情報：方位）
		CP_AziChange(0,40,AxlDxl,false);
		//▼コクピット（自機情報：速度）
		CP_SpeedChange(2000,270,Dxl1,false);
		//▼コクピット（自機情報：高度）
		//CP_HighChange(600000,1500,Dxl1,false);
		//▼コクピット（自機情報：仰角）
		CP_AltChange2(2000,-60,Dxl1,false);
		//▼コクピット（自機情報：回転軸）
		CP_RollBarMove2(2000,360,Dxl1,false);

//	Move("背景３", 2000, @0, @-1000, Dxl1, false);

	Zoom("絵Suf", 2000, 2000, 2000, Dxl1, false);
	Rotate("絵Suf", 2000, @0, @0, 70, Dxl1, false);
	Shake("背景１", 2000, 0, 50, 0, 0, 700, Dxl1, false);
	Fade("色０", 2000, 0, null, false);

	Wait(1000);

	Rotate("敵機１", 1000, @0, @0, -360, Dxl1, false);
	Zoom("敵機１", 1000, 0, 0, null, false);
	Move("敵機１", 1000, @700, @600, Dxl3, false);

	//▼コクピット（自機情報：回転軸自動化）
	//CP_RollBarMoveA();

	SetFwC("cg/fw/fw雪車町_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1200]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2090a12">
《<RUBY text="・・・・・">嫌々ながら</RUBY>で、やった奴自身が納得もして
ねえような理由で、殺されちまった方の身に
なりやがれ!!
　あァ――》
{
	WaitAction("敵機１", null);
	Rotate("敵機２", 1000, @0, @0, -60, Dxl1, false);
	Zoom("敵機２", 1000, 50, 50, Dxl2, false);
	Fade("敵機２", 1000, 1000, null, false);
	Move("敵機２", 2000, @300, @200, Dxl1, false);
	WaitAction("敵機２", null);
	//▼Ｘ軸ランダムＹ軸均等
	MoveFTP1("@敵機２",10000,3,5);
}<BR>


{	FwC("cg/fw/fw雪車町_怒り.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2100a12">
《馬鹿馬鹿しくてしょうがねえだろうがぁ!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆強打
//◆ばぎゃがーん
//◆一度ブラックアウト

	//▼固定値ランダム：停止
	MoveFFP1stop();

	Rotate("エフェクト１", 0, @0, @0, -40, Axl1, true);

	Rotate("敵機２", 1000, @0, @0, 45, Axl1, false);
	Zoom("敵機２", 1000, 2000, 2000, Axl2, false);
	BezierMove("敵機２", 1000, (@0,@0){@-300,@-350}{@-400,@-350}(@-300,@300), Axl1, false);
	Wait(800);
	Rotate("エフェクト１", 200, @0, @0, -20, Dxl1, false);
	Fade("エフェクト１", 200, 1000, null, false);
	Fade("色０", 200, 1000, null, true);

		//▼Ｘ軸ランダムＹ軸均等：停止
		MoveFTP1stop();

		//▼雲消去
		//CloudZoomFade2(0,true);
		//▼雲移動
		//CloudZoomStart2(700,1000,1000);
		//CloudZoomVertex2(0,@500,@0,Dxl2,true);

		//CreateTextureSP("敵機１", 200, -1000, -1000, "cg2/st/3d九〇式竜騎兵_騎突_戦闘2.png");
		//Rotate("敵機１", 0, @0, @0, @-30, null, true);
		//CreateTextureSP("敵機２", 200, -100, -200, "cg2/st/3d九〇式竜騎兵_騎突_戦闘.png");
		//Rotate("敵機２", 0, @0, @0, @-30, null, false);
		//Zoom("敵機２", 0, 0, 0, Dxl2, true);

		//CreateTextureEX("背景１", 200, 0, 0, "cg/bg/bg001_空a_03.jpg");
		//Zoom("背景１", 0, 2000, 2000, Dxl2, true);
		//SetSurface("背景１","絵Suf");
		//SetTone("背景１", Monochrome);

		Delete("敵機*");

		Fade("エフェクト１", 0, 0, null, false);
		Move("背景２", 0, -100, -100, null, false);

		Fade("背景*", 0, 0, null, false);
		Fade("背景２", 0, 1000, null, false);
		Fade("絵Suf", 0, 1000, null, false);
		Rotate("絵Suf", 0, @0, @0, 0, Dxl1, false);
		Zoom("絵Suf", 0, 4000, 4000, Dxl2, true);

		//▼固定値ランダム
		//MoveFFP1("@絵Suf",10000);

		//▼コクピット（自機情報：回転軸停止）
		CP_RollBar_ADelete();

		//▼コクピット（自機情報：装甲）
		MyLife_Count(2000,65);
		//▼コクピット（自機情報：出力）
		MyTr_Count(2000,65);
		//▼コクピット（自機情報：熱量）
		CP_PowerChange(2000,10,null,false);
		//▼コクピット（自機情報：球体ＨＰ）
		CP_IHPChange(2000,1,null,false);

		//▼コクピット（自機情報：方位）
		CP_AziChange(5000,0,AxlDxl,false);
		//▼コクピット（自機情報：速度）
		CP_SpeedChange(5000,300,Dxl1,false);
		//▼コクピット（自機情報：高度）
		//CP_HighChange(600000,1500,Dxl1,false);
		//▼コクピット（自機情報：仰角）
		CP_AltChange2(5000,-80,Dxl1,false);
		//▼コクピット（自機情報：回転軸）
		CP_RollBarMove2(5000,-1800,Dxl1,false);

	Move("背景２", 5000, @-4000, @0, null, false);

	Zoom("絵Suf", 2000, 2000, 2000, Dxl1, false);
	Rotate("絵Suf", 5000, @0, @0, 1800, null, false);
	Shake("背景２", 5000, 0, 50, 0, 0, 700, null, false);
	Fade("色０", 500, 0, null, false);
	Wait(3000);
	Fade("色０", 500, 1000, null, true);

	SetVolume("サウンド１", 3000, 1, NULL);
	Wait(2000);

//とおい
//◆戻り

		Delete("背景*");
		Delete("絵Suf");
		Delete("旋回イメージ３");

		CreateTextureSP("背景１", 100, Center, 0, "cg/bg/resize/bg001_空c_03l.jpg");
		SetTone("背景１", Monochrome);
		CreateTextureSP("敵機１", 100, -199, -355, "cg2/st/3d九〇式竜騎兵_騎突_戦闘.png");
		SetTone("敵機１", Monochrome);
		Zoom("敵機１", 0, 0, 0, Dxl2, true);

		//▼コクピット（自機情報：回転軸停止）
		CP_RollBar_ADelete();

		//▼コクピット（自機情報：方位）
		CP_AziChange(0,0,AxlDxl,false);
		//▼コクピット（自機情報：速度）
		CP_SpeedChange(0,350,Dxl1,false);
		//▼コクピット（自機情報：高度）
		CP_HighChange(0,1500,Dxl1,false);
		//▼コクピット（自機情報：仰角）
		CP_AltChange2(0,-80,Dxl1,false);
		//▼コクピット（自機情報：回転軸）
		CP_RollBarMove2(0,-180,Dxl1,true);

		//▼コクピット（自機情報：高度）
		CP_HighChange(600000,1000,Dxl1,false);

		//▼固定値ランダム
		MoveFFP1("@背景１",10000);
		//▼Ｘ軸ランダムＹ軸均等
		MoveFTP1("@敵機１",10000,3,3);

		CreateTextureEXover("ノイズ１", 10000, 0, 0, "cg/data/noize_01_00_0.png");
		Zoom("ノイズ１", 0, 1200, 1200, Dxl2, true);

		CreateColorEXmul("色９", 19998, "#500000");
		CreateColorEXmul("上色１", 17000, "#772222");

		CreateColorEXmul("エフェクト１", 19000, "#AA2222");
		CreateColorEXmul("エフェクト２", 19000, "#AA2222");
		Request("エフェクト２", Erase);
		CreateTextureSPsub("エフェクト３", 18000, 0, 0, "cg/data/noize_01_00_0.png");
		CreateTextureSPsub("エフェクト４", 18000, 0, 0, "cg/data/noize_01_00_0.png");
		Rotate("エフェクト４", 0, @180, @180, @0, null, true);

		//▼繰り返し
		CreateAFB1("@エフェクト３","@エフェクト４",64,200,300,2);
		SetTone("@エフェクト３", Monochrome);
		SetTone("@エフェクト４", Monochrome);


	Fade("色０", 2000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1210]
　……遠い。
　音の世界さえも遠く離れ始めた。

　<RUBY text="むらまさ">劔冑</RUBY>の声は既に届いていない。
　だが、対敵の言葉はどうしてか、未だ聞こえている。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	Zoom("敵機１", 0, 10, 10, AxlAuto, false);
	Zoom("敵機１", 600000, 500, 500, DxlAuto, false);

	SetFwR("cg/fw/fw雪車町_無.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1220]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2110a12">
《……てめぇは何者だ。
　英雄か？　悪鬼か？　凡人か？》

{	FwR("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2120a12">
《英雄じゃねえなァ……。
　英雄だったら、殺す時は堂々と殺すさ……
必要な犠牲だって割り切って、真っ向から、
相手の目を見て斬り殺すだろうぜ》

{	FwR("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2130a12">
《てめぇはとてもそんな器じゃねえ……》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1230]
　…………ああ。
　それは、そうだ。

　俺は英雄などでは、ない。
　俺は――

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1240]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2140a12">
《じゃあ、悪鬼か》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1250]
　――悪鬼。

　そう。
　俺は、悪鬼。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw雪車町_満足.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1260]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2150a12">
《違うなァ……？
　悪鬼だったら嫌そうに殺したりしねえよ。
嬉しそうに、笑って殺すさ……》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1270]
　…………違う。
　それは、違う。

　そんな事は、関係ない。

　<RUBY text="・・・・">悪鬼たる</RUBY>とは、そんな事ではない。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1280]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2160a12">
《じゃあ、なんだ……
　凡人か……？》

{	FwR("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2170a12">
《そうだよ》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1290]
　凡人……。
　ふつうの、まっとうな、人間。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1300]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2180a12">
《てめぇはまともな人間だよ。
　親からちゃんとした教育受けて、ちゃんと
した道徳とか身に付けたんだろ》

{	FwR("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2190a12">
《だから、殺すのがそんなに嫌なんだろうが。
　違うかよ》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1310]
　…………。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1320]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2200a12">
《英雄でも悪鬼でもねぇし、そんなのに関わ
り合って生きる人間でもねえ。
　普通に市井で暮らしていける器だ……》

{	FwR("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2210a12">
《てめぇもそれが一番いいんだろう？》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1330]
　…………。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw雪車町_無.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1340]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2220a12">
《そうしてりゃ良かったんだよ。
　糞が、いらねぇ無理しやがって……》

{	FwR("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2230a12">
《汗水垂らして働いて、家族を養って日々を
過ごす……
　てめぇがそうして、何がいけねえ？》

{	FwR("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2240a12">
《せっかく<RUBY text="まっとう">正当</RUBY>に育って<RUBY text="まとも">正常</RUBY>な人間になった
んだからよ……》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ドクン。鼓動
	SetVolume("@mbgm*", 1000, 0, NULL);

	Wait(3000);

	OnSE("se人体_体_心臓の音02",1000);

	Fade("色９", 0, 1000, null, true);
	Fade("色９", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1350]
　
　　　　　　　　　　　違う

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

//◆視界が少し戻る
	CreatePlainSP("絵板写１", 19997);
		//▼コクピット（自機情報：出力）
		//MyTr_Count(0,65);
		//▼コクピット（自機情報：熱量）
		CP_PowerChange(0,50,null,false);
		//▼コクピット（自機情報：球体ＨＰ）
		CP_IHPChange(0,1,null,false);

		$FadeAFB1=100;
	Fade("絵板写１", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1360]
　血の巡りを感じた。
　曇っていた<RUBY text="レンズ">視覚</RUBY>が一拭き分だけ、鮮明さを取り戻す。

　――それは違う。
　それは違うぞ、雪車町一蔵。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ドクン。鼓動
	CreatePlainSP("絵板写１", 19997);
		//▼繰り返し：停止
		//AFB1stop();

		//▼コクピット（自機情報：出力）
		//MyTr_Count(0,65);
		//▼コクピット（自機情報：熱量）
		CP_PowerChange(0,100,null,false);
		//▼コクピット（自機情報：球体ＨＰ）
		CP_IHPChange(0,2,null,false);

		SetTone("@*", null);
		Fade("エフェクト*", 0, 0, null, false);
		Fade("上色１", 0, 1000, null, false);

		//▼繰り返し
		CreateAFB2("@エフェクト１","@エフェクト２",500,700,700,2);
		//Fade("ノイズ１", 0, 500, null, true);
		//▼シェイク
		//MoveSSP1("@ノイズ１",100000,0,3,0,3,1000,null);

	OnSE("se人体_体_心臓の音02",1000);

	FadeDelete("絵板写１", 500, true);

		CreateSE("ＳＥ０","se人体_体_心臓の音01_L");
		MusicStart("ＳＥ０",0,600,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1370]
　力が戻る。
　何かが疲弊した心臓に代わって、俺の体内に活力を
送り込んでいる。

　何か――

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw雪車町_無.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1380]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2250a12">
《まともな人間の分際で……
　殺し殺されの世界に手を出しやがった》

{	FwR("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2260a12">
《それがてめぇの間違いだァ……》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ドクン。鼓動
	OnSE("se人体_体_心臓の音02",1000);
	SetVolume("ＳＥ０", 2000, 1000, NULL);

	CreatePlainSP("絵板写１", 19997);
	SetBlur("絵板写１", true, 1, 500, 100, false);

		//▼コクピット（自機情報：出力）
		//MyTr_Count(0,65);
		//▼コクピット（自機情報：熱量）
		CP_PowerChange(0,200,null,false);
		//▼コクピット（自機情報：球体ＨＰ）
		CP_IHPChange(0,3,null,false);

		//▼繰り返し：停止
		AFB1stop();
		FadeDelete("エフェクト３", 0, false);
		FadeDelete("エフェクト４", 0, false);
		//$FadeAFB1=100;
		//Fade("ノイズ１", 0, 100, null, true);
	Zoom("絵板写１", 500, 2000, 2000, Axl2, false);
	FadeDelete("絵板写１", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1390]
　
　　　　　　　　　　　違う。

　普通の人間。
　まともな人間。
　まっとうな人間。

　俺が、
　――<RUBY text="・・">それ</RUBY>だと？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1400]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs2270a00">
（……は）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1410]
　酷い諧謔だ。
　洒落にしても捻りが利き過ぎている。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1420]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs2280a00">
（阿呆……が）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1430]
　雪車町一蔵。
　この男は一体、俺の何を見たのか。

　まっとうな親を得た。
　まっとうな教育を受けた。
　
　――そこまでは正しい。

　だが結論が酷い。
　単純計算に過ぎる。

　正しい環境からは、正しい人間が生まれる――
　もし宇宙にそんな法則があったなら、この世はどれ
ほどわかりやすく過ごしやすいであろうか。

　とんだ妄想だ。

　良い親を得て――
　良い教えを受けて――

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateSE("ＳＥ１","se人体_体_心臓の音02");
	CreateSE("ＳＥ２","se人体_体_心臓の音02");

	SoundPlay("ＳＥ１",0,1000,false);
	SoundPlay("ＳＥ２",0,1000,false);

	SetVolume("ＳＥ０", 0, 0, NULL);

	Fade("色０", 0, 500, null, false);
	CreatePlainSP("絵板写１", 19998);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1431]
　挙句に、<RUBY text="・・・・・・・・・・・・・">その子がその親を殺したなら</RUBY>。
　それはまともに育ったと言えるだろうか？

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1440]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs2290a00">
（は、は、ははは）

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateSE("ＳＥ１","se戦闘_動作_空突進08");
	MusicStart("ＳＥ１",0,1000,0,1500,null,false);

	OnSE("se特殊_陰義_発動03",1000);
	OnSE("se特殊_陰義_発動04",1000);

	SetVolume("サウンド１", 2000, 1000, NULL);

	SoundPlay("@mbgm11",0,1000,true);

	CreatePlainEX("絵板写２", 19998);
		//▼繰り返し：停止
		AFB2stop();
		MoveSSP1stop();
		Delete("ノイズ*");
		Delete("エフェクト*");
		Delete("上*");

		//▼コクピット（自機情報：出力）
		//MyTr_Count(0,65);
		//▼コクピット（自機情報：熱量）
		CP_PowerChange(0,300,null,false);
		//▼コクピット（自機情報：球体ＨＰ）
		CP_IHPChange(0,3,null,false);


		OnSE("se戦闘_動作_刀構え01",1000);


	Fade("色０", 500, 0, null, false);

	Fade("絵板写２", 0, 500, null, true);
	Zoom("絵板写２", 500, 1300, 1300, Axl1, false);
	Fade("色１", 500, 1000, null, true);
	Delete("絵板写*");
	Zoom("敵機１", 0, 500, 500, Axl2, true);

	Fade("色１", 2000, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1450]
　馬鹿げている！
　馬鹿げている！

　馬鹿馬鹿しいよ、雪車町一蔵!!

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆雪車町上昇
		Delete("色２");
		Delete("色３");
		Delete("色９");

		CreateTextureEX("敵機２", 1000, -199, -255, "cg2/st/3d九〇式竜騎兵_騎突_戦闘2.png");
		Zoom("敵機２", 0, 500, 500, Dxl2, true);
		Rotate("敵機２", 0, @0, @0, 50, Axl1, true);

	//▼Ｘ軸ランダムＹ軸均等：停止
	MoveFTP1stop();

	OnSE("se戦闘_動作_空突進02",1000);
	OnSE("se戦闘_動作_空突進03",1000);
	OnSE("se戦闘_動作_空突進07",1000);

	BezierMove("敵機１", 1300, (@0,@0){@-100,@-100}{@-100,@-100}(@0,@0), AxlDxl, false);
	BezierMove("敵機２", 1300, (@0,@0){@-100,@-100}{@-100,@-100}(@0,@0), AxlDxl, false);

	Rotate("敵機１", 1000, @0, @0, 360, AxlDxl, false);
	Rotate("敵機２", 1000, @0, @0, 360, AxlDxl, false);
//	Move("敵機１", 1300, @200, @200, AxlDxl, false);
//	Move("敵機２", 1300, @200, @200, AxlDxl, false);
	Zoom("敵機１", 1300, 550, 550, AxlDxl, false);
	Zoom("敵機２", 1300, 550, 550, AxlDxl, false);
	Wait(500);
	Fade("敵機１", 500, 0, null, false);
	Fade("敵機２", 500, 1000, null, false);

	Rotate("敵機２", 1300, @0, @0, @360, Axl1, false);
	BezierMove("敵機２", 1300, (@0,@0){@200,@200}{@200,@200}(@100,@100), AxlDxl, false);
	Zoom("敵機２", 1300, 10, 10, Dxl3, false);
	Wait(800);
	Fade("敵機２", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1460]
　視界のなか、月を背にした影が揺らめく。
　天へ昇る。

　その光景が意味するものは明白だった。
　――魔剣インメルマンターン。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	CreatePlainSP("絵板写", 19998);

	//★コクピット消去
		//▼コクピット（消去）
		Cockpit_AllFade0();
		//▼コクピット（自機情報：回転軸停止）
		CP_RollBar_ADelete();
		//▼コクピット（自機情報：振動停止２）
		Shake("@CP_Frame", 0, 0, 0, 0, 0, 500, null, false);

		//▼雲消去
		CloudZoomFade2(0,true);
		//▼雲開始
		CloudZoomStart2(700,1000,1000);

		Request("背景１", Smoothing);
		//Request("敵機２", Smoothing);
		Move("背景１", 0, -512, 142, Axl1, true);
		Zoom("背景１", 0, 1300, 1300, Dxl2, true);
		Zoom("敵機２", 0, 800, 800, Dxl3, true);
		Move("敵機２", 0, -100, -200, Axl1, true);
		Rotate("敵機２", 0, @0, @0, @-30, Axl1, false);
		Fade("敵機２", 0, 1000, null, true);

		//▼Ｘ軸ランダムＹ軸均等
		MoveFTP1("@敵機２",10000,3,5);

		CreateSE("サウンド２","se戦闘_動作_空突進05");
		SoundPlay("サウンド２",2000,300,true);

	Zoom("背景１", 30000, 1500, 1500, null, false);
	FadeDelete("絵板写", 500, true);


	SetFwL("cg/fw/fw雪車町_無.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1470]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2300a12">
《消えろォ……
　消えちまえ》

{	FwL("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2310a12">
《てめぇが<RUBY text="・・・・">真面目に</RUBY>やってりゃあ……
　あの餓鬼共がわけもわかんねぇで殺される
事もなくて済んだんだ》

{	FwL("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2320a12">
《てめぇの理由とやらは聞かねえよ。だが、
言っておいてやる。
　てめぇは誰も救っちゃいねえぜ……》

{	FwL("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2330a12">
《殺しただけだ……
　てめぇの勝手でなァ……》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 19998);

		//▼Ｘ軸ランダムＹ軸均等：停止
		MoveFTP1stop();

		//▼コクピット（瞬間表示）
		Cockpit_AllFade2();
		//▼コクピット（自機情報：振動）
		FrameShake();
		//▼コクピット（自機情報：仰角自動化）
		CP_AltChangeA();
		//▼コクピット（自機情報：速度自動化）
		CP_SpeedChangeA();
		//▼コクピット（自機情報：高度自動化）
		CP_HighChangeA();
		//▼コクピット（自機情報：回転軸自動化）
		CP_RollBarMoveA();

		//▼雲消去
		CloudZoomFade2(0,true);
		//▼雲開始
		CloudZoomStart2B(700,1000,1000);

		//▼Ｘ軸ランダムＹ軸均等
		MoveFTP1("@敵機２",10000,2,2);

		Request("背景１", Smoothing);
		Request("敵機２", Smoothing);
		Move("背景１", 0, -512, -20, Axl1, true);
		Zoom("背景１", 0, 1000, 1000, Dxl2, true);
		Zoom("敵機２", 0, 10, 10, Dxl3, true);
		Move("敵機２", 0, -170, -240, Axl1, true);
		Rotate("敵機２", 0, @0, @0, @0, Axl1, false);
		Fade("敵機２", 0, 1000, null, true);

	SetVolume("サウンド２", 1000, 1, NULL);

	FadeDelete("絵板写", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1480]
　然り。
　まさに然り。

　理由など関係ない。
　あの村の蝦夷の姉妹は――あるいはあの彼女は――
あるいはあの彼は――俺が殺した。

　俺が殺したのだ。
　俺の決断によって。

　俺の<RUBY text="・・">意思</RUBY>を満たすためだけに。

　……わかっているじゃないか、雪車町一蔵。
　なのに何故、もう一歩がわからないのだ。

　<RUBY text="・・・・・・・・・・・・">それこそが悪鬼の所業だと</RUBY>。

　喜ぼうが悲しもうが関係ない。
　己のために人を殺す者は、即ち悪鬼だ。

　いや――

　理想のためであろうと関わりはない。
　英雄と呼ばれる殺戮者もまた悪鬼だ。

　人を殺す者は皆、悪鬼だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1490]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs2340a00">
（そうだ）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1500]
　悪鬼たるか。
　悪鬼たらぬか。

　両者を区分けする条件はただ一項。
　――人の命を踏みにじる事ができるか否か。

　<RUBY text="ただ">唯</RUBY>それだけ。
　唯それだけだ！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreatePlainSP("絵板写", 15000);

		//▼コクピット（消去）
		Cockpit_AllFade0();
		//▼コクピット（自機情報：回転軸停止）
		CP_RollBar_ADelete();
		//▼コクピット（自機情報：振動停止２）
		Shake("@CP_Frame", 0, 0, 0, 0, 0, 500, null, false);

		//▼Ｘ軸ランダムＹ軸均等：停止
		MoveFTP1stop();
		//▼固定値ランダム：停止
		MoveFFP1stop();

		Request("背景１", Smoothing);
		Request("敵機２", Smoothing);
		Move("背景１", 0, -533, 80, Axl1, true);
		Zoom("背景１", 0, 1500, 1500, Dxl2, true);
		Zoom("敵機２", 0, 800, 800, Dxl3, true);
		Move("敵機２", 0, -100, -200, Axl1, true);
		Rotate("敵機２", 0, @0, @0, @0, Axl1, false);
		Fade("敵機２", 0, 1000, null, true);

		Move("敵機１", 0, -197, -525, Axl1, true);
		Zoom("敵機１", 0, 0, 0, Dxl1, true);

		CreateTextureEX("イベント１", 10000, 0, 0, "cg/ev/ev914_九〇式竜騎兵魔剣インメルマンターン.jpg");
		Zoom("イベント１", 0, 2000, 2000, Dxl2, true);
		SetBlur("イベント１", true, 2, 500, 100, false);

		CreatePlainEX("絵板写２", 100);
		Request("絵板写２", AddRender);

		CreateVOICE("雪車町","ma04/016vs2350a12");

		CreateSE("ＳＥ０","se特殊_雰囲気_発光02");
		CreateSE("ＳＥ１","se戦闘_動作_空突進02");
		CreateSE("ＳＥ２","se戦闘_動作_空上昇01");
		CreateSE("ＳＥ３","se戦闘_攻撃_鎧_剣戟02");
		CreateSE("ＳＥ４","se戦闘_破壊_爆発02");
		CreateSE("ＳＥ５","se戦闘_動作_空突進06");

//		CreateSE("ＳＥ６","se戦闘_攻撃_鎧_剣戟01");
		CreateSE("ＳＥ７","se戦闘_動作_空突進03");

		CreateSE("ＳＥ８","se戦闘_動作_空急降下01");
		CreateSE("ＳＥ９","se戦闘_動作_空突進04");

	FadeDelete("絵板写", 300, false);

	SoundPlay("雪車町",0,1000,false);
	SoundPlay("ＳＥ０",0,700,false);
	SoundPlay("ＳＥ１",0,700,false);
	SoundPlay("ＳＥ２",0,700,false);
	SoundPlay("ＳＥ３",0,700,false);
	SoundPlay("ＳＥ４",0,700,false);

	Zoom("敵機２", 1000, 0, 0, Dxl2, false);
	Move("敵機２", 1000, -100, -200, Axl2, false);
	Rotate("敵機２", 1000, @0, @0, 80, Axl2, false);

	Move("背景１", 1000, -502, 294, Dxl2, false);
	Zoom("背景１", 1000, 2200, 2200, Dxl2, false);
	Fade("色１", 1000, 1000, null, true);

	SoundPlay("ＳＥ５",0,700,false);

		//Move("背景１", 0, -502, 0, Dxl2, false);
		//SetVertex("背景１", 1024, 280);
		Move("背景１", 0, -502, -200, Dxl2, false);
		SetVertex("背景１", 1024, 380);

		SetVertex("敵機１", 600, 600);
		//SetBlur("敵機１", true, 1, 500, 50, false);

		Fade("絵板写２", 0, 500, null, true);

//	SoundPlay("ＳＥ６",0,700,false);
	SoundPlay("ＳＥ７",0,700,false);

	Fade("色１", 1000, 0, null, false);
	Zoom("絵板写２", 2000, 2000, 2000, Dxl1, false);
	Fade("絵板写２", 2000, 0, null, false);
	Rotate("背景１", 2000, @0, @0, 180, Dxl1, false);

	Fade("敵機１", 0, 1000, null, false);
	Zoom("敵機１", 2000, 2000, 2000, Axl1, false);
	Rotate("敵機１", 2000, @0, @0, @460, Dxl1, false);
	BezierMove("敵機１", 2000, (@0,@0){@500,@800}{@700,@400}(@-100,@50), Axl1, false);
	Zoom("敵機１", 2000, 1000, 1000, Axl1, false);

	Wait(1700);

		SoundPlay("ＳＥ８",0,700,false);
		SoundPlay("ＳＥ９",0,700,false);

	Fade("色１", 300, 1000, null, true);

	Fade("イベント１", 0, 1000, null, true);
	Zoom("イベント１", 1000, 1000, 1000, Dxl2, false);
	Fade("色１", 1000, 0, null, true);

	Delete("敵機*");
	Delete("絵板写");
	Delete("絵板写２");

	//▼雲消去
	CloudZoomFade2(0,true);

	SetFwL("cg/fw/fw雪車町_怒り.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1510]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2350a12" mode="off">
《消えちまえ……
　半端野郎がァァァァァァ!!》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――


		SetVolume("サウンド１", 2000, 1, NULL);
		SetVolume("@mbgm*", 2000, 0, NULL);

//◆魔剣インメルマン。急降下
	CreateTextureEX("イベント２", 10000, 0, 0, "cg/ev/ev914_九〇式竜騎兵魔剣インメルマンターン.jpg");
	SetTone("イベント２", Monochrome);
	Fade("イベント２", 1000, 1000, null, true);
	Delete("イベント１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1520]
　雪車町一蔵。
　貴様が俺を半端者と見るなら好きにしろ。

　俺が嫌々ながらに殺していると、
　殺す俺の眼に涙を見たと、
　そう云いたくば云うがいい。

　まともな人間と、云わば云え。
　だが俺は、

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆景明の被害者群像

	Fade("色０", 500, 1000, null, true);

	Delete("イベント*");
	Delete("敵機１");
	Delete("背景*");


	CreateColorSP("色４", 10000, "#000000");
	CreateTextureSP("死亡１", 17002, 495, InBottom, "cg/st/st雄飛_通常_制服.png");
	CreateTextureSP("死亡２", 17002, 196, InBottom, "cg/st/stふき_通常_私服.png");
	CreateTextureSP("死亡３", 17002, 114, InBottom, "cg/st/stふな_通常_私服.png");
	CreateTextureSP("死亡４", 17001, 353, InBottom, "cg/st/st鈴川_通常_制服.png");
	CreateTextureSP("死亡５", 17001, -28, InBottom, "cg/st/st皇路_通常_私服.png");
	SetTone("死亡*", Monochrome);
	Fade("色０", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1530]
　
　俺は、

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆景明の被害者群像
//◆順々表示。それに合わせて、新田雄飛・蝦夷姉妹・
//◆鈴川令法・皇路卓の「悪鬼！」「殺した！」ボイス
//◆を再生

		CreateVOICEEX("雄飛１","ex/0010030b56","雄飛");
		CreateVOICEEX("雄飛２","ex/0010040b56","雄飛");
		CreateVOICEEX("ふき１","ex/0010050b05","ふき");
		CreateVOICEEX("ふき２","ex/0010060b05","ふき");
		CreateVOICEEX("ふな１","ex/0010070b06","ふな");
		CreateVOICEEX("ふな２","ex/0010080b06","ふな");
		CreateVOICEEX("皇路１","ex/0010090b24","皇路");
		CreateVOICEEX("皇路２","ex/0010100b24","皇路");
		CreateVOICEEX("鈴川１","ex/0010015b57","鈴川");
		CreateVOICEEX("鈴川２","ex/0010025b57","鈴川");

	CreateTextureEX("エフェクト１", 10000, 0, 0, "cg/ef/ef007_汎用血しぶき.jpg");
	CreateTextureEX("エフェクト２", 10000, 0, 0, "cg/ef/ef006_汎用血しぶき.jpg");

	CreatePlainSP("絵板写", 18000);
		FadeDelete("死亡*", 0, true);


		CreateTextureEX("死者５", 17000, -28, InBottom, "cg/st/st皇路_憎悪_私服.png");
	FadeDelete("絵板写", 300, false);

	SetBacklog("悪鬼！", "voice/ex/0010090b24", 皇路);
	SoundPlay("皇路１",0,1000,false);
	$音声待ち時間=RemainTime("皇路１");

	WaitAction("絵板写", null);
	WaitKey($音声待ち時間);
	SetVolume("皇路１", 1000, 0, NULL);

	SetBacklog("殺した！", "voice/ex/0010100b24", 皇路);
	SoundPlay("皇路２",0,1000,false);
	$音声待ち時間=RemainTime("皇路２");

	Fade("死者５", 300, 1000, Dxl2, false);
	WaitKey($音声待ち時間);
	WaitAction("死者*", null);
	FadeDelete("死者５", 300, false);


		CreateTextureEX("死者２", 17001, 196, InBottom, "cg/st/stふき_憎悪_私服.png");
		CreateTextureEX("死者３", 17001, 114, InBottom, "cg/st/stふな_憎悪_私服.png");
	SetBacklog("悪鬼！", "voice/ex/0010050b05", ふき);
	SoundPlay("ふき１",0,1000,false);
	Wait(1000);
	SetBacklog("悪鬼！", "voice/ex/0010070b06", ふな);
	SoundPlay("ふな１",0,1000,false);
	$音声待ち時間=RemainTime("ふな１");
	WaitKey($音声待ち時間);

	WaitAction("死者*", null);
	SetVolume("ふき１", 1000, 0, NULL);
	SetVolume("ふな１", 1000, 0, NULL);

	SetBacklog("殺した！", "voice/ex/0010060b05", ふき);
	SetBacklog("殺した！", "voice/ex/0010080b06", ふな);
	SoundPlay("ふき２",0,1000,false);
	SoundPlay("ふな２",0,1000,false);
	$音声待ち時間=RemainTime("ふき２");
	$音声待ち時間=RemainTime("ふな２");

	Fade("死者２", 300, 1000, null, false);
	Fade("死者３", 300, 1000, null, false);
	WaitKey($音声待ち時間);
	WaitAction("死者*", null);
	FadeDelete("死者２", 300, false);
	FadeDelete("死者３", 300, false);



		CreateTextureEX("死者４", 17001, 353, InBottom, "cg/st/st鈴川_憎悪_制服.png");
	SetBacklog("悪鬼！", "voice/ex/0010015b57", 鈴川);
	SoundPlay("鈴川１",0,1000,false);
	$音声待ち時間=RemainTime("鈴川１");
	WaitKey($音声待ち時間);

	WaitAction("死者*", null);
	SetVolume("鈴川１", 1000, 0, NULL);

	SetBacklog("殺した！", "voice/ex/0010025b57", 鈴川);
	SoundPlay("鈴川２",0,1000,false);
	$音声待ち時間=RemainTime("鈴川２");

	Fade("死者４", 300, 1000, null, false);
	WaitKey($音声待ち時間);
	WaitAction("死者*", null);
	FadeDelete("死者４", 300, false);


		CreateTextureEX("死者１", 17002, 495, InBottom, "cg/st/st雄飛_憎悪_制服.png");
	SetBacklog("悪鬼！", "voice/ex/0010030b56", 雄飛);
	SoundPlay("雄飛１",0,1000,false);
	$音声待ち時間=RemainTime("雄飛１");
	WaitKey($音声待ち時間);

	WaitAction("死者*", null);
	SetVolume("雄飛１", 1000, 0, NULL);

	SetBacklog("殺した！", "voice/ex/0010040b56", 雄飛);
	SoundPlay("雄飛２",0,1000,false);
	$音声待ち時間=RemainTime("雄飛２");

	Fade("死者１", 300, 1000, null, false);
	WaitKey($音声待ち時間);
	WaitAction("死者*", null);
	FadeDelete("死者*", 300, true);


		CreateTextureEX("背景１", 10000, 0, 0, "cg/bg/bg002_空a_03.jpg");
		CreateTextureSP("自機１", 10000, -500, -200, "cg/st/3d村正標準_騎突_戦闘.png");
		Zoom("自機１", 0, 0, 0, Dxl2, true);

		CreateWindow("ウィンドウ１", 150, 256, 0, 512, 576, false);
		SetAlias("ウィンドウ１", "ウィンドウ１");
		CreateTextureEX("ウィンドウ１/イベント１", 10000, 59, -191, "cg/ev/resize/evex003_景明_戦闘.png");
		SetBlur("ウィンドウ１/イベント１", true, 2, 500, 100, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1540]
　
　俺は、<k>
{	Fade("ウィンドウ１/イベント１", 1000, 1000, null, true);}
　俺の邪悪を信じる!!

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆ＢＧＭ：邪悪宣言

//◆村正飛翔
	SetVolume("サウンド１", 2000, 1000, NULL);
	OnSE("se戦闘_動作_空突進02",1000);
	OnSE("se戦闘_動作_空突進07",1000);

	Fade("背景１", 1000, 1000, null, false);

	Move("自機１", 1000, @700, @0, Dxl1, false);
	Rotate("自機１", 1000, @0, @0, 360, Dxl1, false);
	Zoom("自機１", 1000, 2000, 2000, Axl2, false);
	Zoom("ウィンドウ１/イベント１", 1000, 1200, 1200, Axl2, false);
	Fade("ウィンドウ１/イベント１", 1000, 0, null, false);
	Fade("色１", 1000, 1000, null, true);

		Delete("背景１");
		Delete("敵機１");

		Delete("自機１");
		Delete("ウィンドウ１");
		Fade("色４", 0, 0, null, true);

/*
		CreateWindow("ウィンドウ１", 20150, 0, 0, 1024, 576, false);
		SetAlias("ウィンドウ１", "ウィンドウ１");
		CreateTextureSP("ウィンドウ１/イベント１", 10001, 0, 0, "cg/ev/ev504_村正突進.jpg");
		Zoom("ウィンドウ１/イベント１", 0, 2000, 2000, Dxl2, true);
		SetBlur("ウィンドウ１/イベント１", true, 2, 500, 100, false);
		Zoom("ウィンドウ１/イベント１", 500, 1000, 1000, Dxl2, false);
		Fade("色１", 500, 0, null, true);
*/

		//▼雲正面
		CloudZoomSet2("マド１",17500,-512,0,1024,576);
		//▼雲開始
		CloudZoomStart2B(700,1000,1000);
		//▼雲移動
		CloudZoomVertex2(0,@-300,@0,Dxl2,true);
	
		//▼雲正面
		CloudZoomSet3("マド２",17500,512,0,1024,576);
		//▼雲開始
		CloudZoomStart3(700,1000,1000);
		//▼雲移動
		CloudZoomVertex3(0,@300,@0,Dxl2,true);
	
		CreateTextureSP("マド１/背景", 17000, -50, 0, "cg/bg/bg001_空c_03.jpg");
		Zoom("マド１/背景", 0, 1100, 1100, Dxl2, true);
		CreateTextureSP("マド２/背景", 17000, 0, -2000, "旋回イメージ２");
		Zoom("マド２/背景", 0, 1100, 1100, Dxl2, true);
		Rotate("マド２/背景", 0, 180, 0, 0, null, true);
	
		CreateTextureSP("マド１/敵機１", 17500, -460, -328, "cg2/st/3d九〇式竜騎兵_騎突_戦闘b.png");
		Zoom("マド１/敵機１", 0, 100, 100, Dxl2, false);
		CreateTextureSP("マド２/自機１", 17001, 69, -248, "cg/st/3d村正標準_騎突_戦闘.png");
		Zoom("マド２/自機１", 0, 3000, 3000, Dxl2, true);

	//▼完全ランダム
	MoveFRP1("@マド１/背景",10000,5,5);
	MoveFRP2("@マド２/背景",10000,5,5);

	//▼Ｘ軸ランダムＹ軸均等
	MoveFTP1("@マド１/敵機１",15000,3,4);
	MoveFTP2("@マド２/自機１",10000,5,7);

	OnSE("se戦闘_動作_空突進06",1000);

	SoundPlay("@mbgm03",0,1000,true);

	Zoom("マド１/敵機１", 1500, 1000, 1000, Dxl1, false);
	Zoom("マド２/自機１", 1000, 1000, 1000, Dxl2, false);
	Fade("色１", 1500, 0, null, false);

	//▼完全ランダム：停止
	//MoveFRP1stop();
	//▼Ｘ軸ランダムＹ軸均等：停止
	//MoveFTP1stop();


	SetFwC("cg/fw/fw雪車町_無.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1550]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2360a12">
《……!?》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1560]
　それは確かに聞こえた。
　降り<RUBY text="きた">来</RUBY>る敵騎からの、驚愕の気息。

　この期に及んで俺が立ち向かうとは、まるで考えて
いなかったに違いない。
　俺自身にしてからが、今どうやって動いているのか
全くわからない。

　だが動いている。
　飛翔している。

　一直線に降下する、雪車町一蔵の騎影を仰いで。
　直上へ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	OnSE("se戦闘_動作_空突進02",1000);
	OnSE("se戦闘_動作_空突進07",1000);

	Zoom("マド１/敵機１", 300, 1500, 1500, Axl1, false);
	Zoom("マド２/自機１", 300, 1500, 1500, Axl1, false);

	Fade("色１", 300, 1000, null, true);
	//CreatePlainSP("絵板写", 19998);

		//▼完全ランダム：停止
		MoveFRP1stop();
		MoveFRP2stop();
		//▼Ｘ軸ランダムＹ軸均等：停止
		MoveFTP1stop();
		MoveFTP2stop();

		//▼雲消去
		CloudZoomFade2(0,true);
		//▼雲消去
//		CloudZoomDelete2(0,false);
//		CloudZoomDelete3(0,true);

		//▼雲開始
		CloudZoomStart2(700,1000,1000);
		//▼雲移動
		CloudZoomVertex2(0,@0,@300,Dxl2,true);
	
		//▼雲移動
		CloudZoomVertex3(0,@0,@-300,Dxl2,true);

		LoadImage("旋回イメージ４", "cg/bg/resize/bg204_横旋回背景_03ex.jpg");
		SetAlias("旋回イメージ４", "旋回イメージ４");
	
		CreateTextureSP("マド１/背景１", 17000, -300, 0, "旋回イメージ４");
		CreateTextureSP("マド１/背景２", 17000, -300, 0, "旋回イメージ４");
		CreateTextureSP("マド２/背景１", 17000, 500, -4500, "旋回イメージ４");
		CreateTextureSP("マド２/背景２", 17000, 500, -4500, "旋回イメージ４");

		CreateSCR1("@マド１/背景１","@マド１/背景２",1000,@0,-4500);
		CreateSCR2("@マド２/背景１","@マド２/背景２",1000,@0,0);
	
		CreateTextureSP("マド１/敵機１", 17001, -412, -585, "cg/st/3d九〇式竜騎兵_騎航_戦闘d.png");
		Rotate("マド１/敵機１", 0, @0, @0, 90, null, true);
		Zoom("マド１/敵機１", 0, 2000, 2000, Dxl2, true);
		CreateTextureSP("マド２/自機１", 17001, 87, -168, "cg/st/3d村正標準_騎航_戦闘a.png");
		Rotate("マド２/自機１", 0, @0, @0, 90, null, true);
		Zoom("マド２/自機１", 0, 2000, 2000, Dxl2, true);

		CreateSE("サウンド２","se戦闘_動作_空突進05");
		SoundPlay("@サウンド２",2000,300,true);

		Move("マド１/敵機１", 0, @0, @100, Dxl1, false);
		Move("マド２/自機１", 0, @0, @-100, Dxl1, true);

		//▼完全ランダム
		//MoveFRP1("@マド１/背景",10000,5,5);
		//MoveFRP2("@マド２/背景",10000,5,5);
		
		//▼Ｘ軸ランダムＹ軸均等
		MoveFTP1("@マド１/敵機１",15000,3,4);
		MoveFTP2("@マド２/自機１",10000,5,7);

		Zoom("マド１/敵機１", 600, 1000, 1000, Dxl2, false);
		Zoom("マド２/自機１", 600, 1000, 1000, Dxl2, false);
	Fade("色１", 600, 0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1561]
　迎撃すべきは堕天の魔剣、<RUBY text="インメルマンターン">金翅鳥王剣</RUBY>。
　必殺無比なる死の極技。

　落下と登上――
　エネルギー比における圧倒的不利を示す図式。

　何をもって迎え撃つ。
　何をもって――

　予測を裏切る事態に接して尚、雪車町の剣に乱れは
なかった。
　勝利の確信は揺らぎもせぬのだろう。

　確かにあれは信ずるに値する技だ。
　完成に至った討騎の術、悪夢的な幻想に等しくさえ
ある。

　拮抗するならば――
　同じ、<RUBY text="まぼろし">幻想</RUBY>に依るしかない。

　
　　　　　　　　　　――兜割

　それは、名高い夢物語。
　生身の人間が、一振りの太刀をもって、鋼鉄の鎧兜
を両断するという……

　決して起こり得ぬ幻想。
　現実から乖離せし妄想。

　いかな達人であれ、いかな名刀であれ、兜の頭頂を
ほんの数寸、斬り割るまでが関の山。通常、兜割とは
それを指して云う。
　一刀両断などは夢のまた夢の夢。

　もし――
　仮に、そんな夢が実現するならば。

　その一刀は物理法則を超えている。
　ある種の意思のちから、鍛えられ鍛え抜かれそして
<RUBY text="・・・">狂った</RUBY>技術によって成せる業。

　もし、それが在るのならば――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想・養母
	OnSE("se擬音_回想_フラッシュバック01",1000);

	Fade("色１", 0, 1000, null, true);
		CreateTextureSP("イベント１", 18000, 0, 0, "cg/ev/ev008_赤子を抱える女.jpg");
		SetTone("イベント１", Monochrome);
		SetShade("イベント１", MEDIUM);
	Fade("イベント１", 0, 1000, null, true);
	Fade("色１", 1000, 0, null, true);

//	Fade("イベント１", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1570]
　在るのならば――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想・両断された鎧兜のカット挿入
	OnSE("se擬音_回想_フラッシュバック01",1000);

	Fade("色１", 0, 1000, null, true);
		CreateTextureSP("イベント１", 18000, 0, 0, "cg/ev/ev005_斬り割られた兜.jpg");
		SetTone("イベント１", Monochrome);
		SetShade("イベント１", MEDIUM);
	Fade("イベント１", 0, 1000, null, true);
	Fade("色１", 1000, 0, null, true);

//	Fade("イベント１", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1580]
　どれほどに強き対手であれ。
　どれほどに硬き防壁であれ。
　どれほどに重き劣勢であれ。

　その一刀を阻むには不足であろう。

　その一刀は、何物をも断たずにおかぬであろう――

　<RUBY text="・・・">それが</RUBY>、<RUBY text="・・・・・・">在るのならば</RUBY>！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想・景明発狂カット挿入
	OnSE("se擬音_回想_フラッシュバック01",1000);

	Fade("色１", 0, 1000, null, true);
		CreateTextureSP("イベント１", 18000, 0, 0, "cg/ev/ev006_景明の狂相.jpg");
		SetTone("イベント１", Monochrome);
		SetShade("イベント１", MEDIUM);

	Fade("イベント１", 0, 1000, null, true);
	Fade("色１", 1000, 0, null, true);

	SetVolume("サウンド２", 1000, 1, NULL);
	SetVolume("サウンド１", 1000, 1, NULL);

	Fade("色０", 2000, 1000, null, true);
	Fade("イベント１", 0, 0, null, true);

	Wait(2000);

//	SetFwC("cg/fw/fw景明_通常a.png");
	SetBacklog("　　　　　　　　　　「――ガ」", "voice/ma04/016vs2370a00", 景明);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1590]
//◆狂相
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs2370a00">
　
　　　　　　　　　　「――ガ」

</PRE>
	SetTextEXC();
	Request("@text1590", NoLog);
	TypeBeginCIO();//―――――――――――――――――――――――――――――

		//▼完全ランダム：停止
		MoveFRP1stop();
		MoveFRP2stop();
		//▼Ｘ軸ランダムＹ軸均等：停止
		MoveFTP1stop();
		MoveFTP2stop();

		SCR1stop();
		SCR2stop();

		//▼雲消去
		CloudZoomFade2(0,true);
		CloudZoomFade3(0,true);

//◆レッドアウト
	CreateColorEX("色４", 19999, "#AA0000");
	Fade("色４", 2000, 1000, null, true);
	Wait(1000);


		Delete("イベント１");

//		CreateColorEXover("色５", 19997, "#AA0000");
//		Fade("色５", 0, 500, null, true);

		CreateTextureEX("マド１/イベント２", 18001, -119, -46, "cg/ev/resize/evex003_雪車町_怒り.png");
		CreateTextureEX("マド２/イベント２", 18001, 319, -308, "cg/ev/resize/evex003_景明_狂相.png");
		CreateColorSP("マド２/えろ", 19996, "#AA0000");
		CreateColorSP("マド２/色", 19997, "#000000");

		CreateTextureSP("マド１/イベント１", 18000, -300, 0, "cg/ev/ev914_九〇式竜騎兵魔剣インメルマンターン.jpg");
		Zoom("マド１/イベント１", 0, 2000, 2000, Dxl2, true);
		SetBlur("マド１/イベント１", true, 2, 500, 100, false);

		SetBacklog("　　　　　　　《死ィねェ――》", "voice/ma04/016vs2380a12", 雪車町);

	SetVolume("サウンド２", 1000, 600, NULL);
	SetVolume("サウンド１", 1000, 1000, NULL);

	Fade("色０", 300, 0, null, false);
	Fade("色４", 300, 0, null, false);

	Zoom("マド１/イベント１", 1000, 1000, 1000, Dxl2, false);

	Shake("マド１/イベント２", 1000, 0, 50, 0, 0, 700, Dxl1, false);
	Move("マド１/イベント２", 1000, @0, @-100, Dxl1, false);
	Fade("マド１/イベント２", 1000, 500, null, false);

	//Move("マド１", 1000, 0, @0, Dxl1, false);
	//Move("マド１/イベント１", 1000, 0, @0, Dxl1, false);
	//Move("マド１/イベント２", 1000, @100, @0, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1600]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2380a12">
　
　
　　　　　　　《死ィねェ――》

</PRE>
	SetTextEXC();
	Request("@text1600", NoLog);
	TypeBeginCIO();//―――――――――――――――――――――――――――――


		CreateTextureSP("マド２/イベント１", 18000, 328, 0, "cg/ev/ev504_村正突進.jpg");
		Zoom("マド２/イベント１", 0, 2000, 2000, Dxl2, true);
		SetBlur("マド２/イベント１", true, 2, 500, 100, false);

		SetBacklog("　　　「ゲェァァァァアアアアアアアアアアア!!」", "voice/ma04/016vs2390a00", 景明);

	Fade("マド２/色", 100, 0, null, true);
	Fade("マド２/えろ", 300, 0, null, false);

	Zoom("マド２/イベント１", 500, 1000, 1000, Dxl2, false);

	Shake("マド２/イベント２", 1000, 0, 30, 0, 0, 700, Dxl1, false);
	Move("マド２/イベント２", 1000, @0, @100, Dxl1, false);
	Fade("マド２/イベント２", 1000, 500, null, false);
	//Fade("マド２/イベント２", 500, 0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1601]
//◆狂相
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs2390a00">
　
　　　「ゲェァァァァアアアアアアアアアアア!!」

</PRE>
	SetTextEXC();
	Request("@text1601", NoLog);
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	//SetVolume("@mbgm*", 2000, 0, NULL);

	CreatePlainSP("絵板写", 19000);
	SetBlur("絵板写", true, 2, 500, 100, false);

	//▼雲消去
	CloudZoomDelete2(0,true);
	CloudZoomDelete3(0,true);

		CreateSE("ＳＥ１","se戦闘_攻撃_剣戟弾く03");
		CreateSE("ＳＥ２","se戦闘_攻撃_刀衝突01");
		CreateSE("ＳＥ３","se戦闘_攻撃_鎧_剣戟04");

	OnSE("se戦闘_動作_空突進06",1000);

	Zoom("絵板写", 500, 2000, 2000, Axl2, false);
	Fade("色１", 500, 1000, null, true);

		Fade("色５", 0, 0, null, true);
		Delete("マド*/*");
		Delete("絵板写");
		Delete("イベント*");
		Delete("エフェクト*");
		Delete("ウィンドウ１");
		Delete("ウィンドウ２");


		CreateTextureSP("背景１", 100, Center, 0, "cg/bg/resize/bg001_空c_03l.jpg");
		SetVertex("背景１", 1024, 287);

		CreateTextureSP("敵機１", 200, -551, -548, "cg/st/3d九〇式竜騎兵_騎航_戦闘d.png");
		Zoom("敵機１", 0, 50, 50, Dxl2, true);
		Rotate("敵機１", 0, @0, @0, 40, null, true);
		SetBlur("敵機１", true, 1, 500, 50, false);

		CreateTextureSP("自機１", 200, 283, -124, "cg/st/3d村正標準_騎航_戦闘a.png");
		Zoom("自機１", 0, 50, 50, Dxl2, true);
		Rotate("自機１", 0, @0, @0, 40, null, true);
		SetBlur("自機１", true, 1, 500, 50, false);

		CreateTextureEX("イベント９", 100, -1000, -576, "cg/ev/resize/ev914_九〇式竜騎兵魔剣インメルマンターン_l.jpg");
		Zoom("イベント９", 0, 2000, 2000, Dxl2, true);
		SetBlur("イベント９", true, 1, 500, 50, false);

		LoadImage("エフェクトイメージ", "cg/ef/ef042_汎用打撃.jpg");
		SetAlias("エフェクトイメージ", "エフェクトイメージ");
	
		CreateTextureEX("イベント１", 100, 0, 0, "cg/ev/ev947_村正斬撃汎用.jpg");
		SetVertex("イベント１", 100, 100);
		SetBlur("イベント１", true, 2, 500, 50, false);
		Zoom("イベント１", 0, 1200, 1200, Axl1, false);

		CreateTextureEXsub("イベント０", 100, 0, 0, "cg/ev/ev947_村正斬撃汎用.jpg");
		SetVertex("イベント０", 100, 100);

		CreateTextureEXadd("イベント２", 100, -107, -68, "cg/ev/resize/ev947_村正斬撃汎用_l.jpg");
	
		CreateTextureEXsub("エフェクト１", 100, 0, 0, "エフェクトイメージ");
		Rotate("エフェクト１", 0, @0, @180, @0, null, true);
		Zoom("エフェクト１", 0, 1200, 1200, Dxl2, true);
		CreateTextureEXmul("エフェクト２", 100, 0, 0, "エフェクトイメージ");
		Rotate("エフェクト２", 0, @0, @180, @0, null, true);
		Zoom("エフェクト２", 0, 1200, 1200, Dxl2, true);
		CreateTextureEXmul("エフェクト３", 100, 0, 0, "cg/ef/ef003_汎用移動.jpg");
		Zoom("エフェクト３", 0, 2000, 2000, Axl1, false);
//		SetBlur("敵機１", true, 2, 500, 50, false);

	CreatePlainSP("絵板写", 10000);

	CreateSE("ＳＥ５","se戦闘_攻撃_鎧_剣戟02");
	CreateSE("ＳＥ６","se戦闘_動作_空突進03");
	CreateSE("ＳＥ７","se特殊_雰囲気_発光03");

//インメルバンク
	OnSE("se戦闘_動作_空突進02",1000);
	OnSE("se戦闘_動作_空突進07",1000);
	OnSE("se戦闘_動作_空突進08",1000);

	Fade("色１", 300, 0, null, false);

	Zoom("絵板写", 500, 1300, 1300, Dxl2, false);
	Fade("絵板写", 500, 0, null, false);

	Move("敵機１", 500, -412, -591, Axl1, false);
	Move("自機１", 500, 120, -60, Axl1, false);

	Zoom("背景１", 500, 5000, 5000, Axl1, false);
	Zoom("敵機１", 500, 1000, 1000, Axl1, false);
	Zoom("自機１", 500, 1000, 1000, Axl1, false);
	Wait(300);

	Fade("色１", 200, 1000, null, true);

		Delete("自機１");
		Delete("敵機１");
		Delete("背景*");

//◆雪車町・金翅鳥王剣
	SoundPlay("ＳＥ５",0,1000,false);
	SoundPlay("ＳＥ６",0,1000,false);
	SoundPlay("ＳＥ７",0,1000,false);

	Fade("イベント９", 0, 1000, null, true);
	Fade("色１", 500, 0, null, false);
	BezierMove("イベント９", 1000, (@0,@0){1000,700}{0,700}(-1200,100), Dxl2, 500);
	Fade("色１", 500, 1000, null, true);

//◆景明・魔剣装甲悪鬼
	SetVolume("@mbgm*", 2000, 0, NULL);

	OnSE("se戦闘_破壊_爆発01",1000);
	OnSE("se戦闘_動作_空突進01",1000);
	OnSE("se戦闘_動作_空突進03",1000);

//	Zoom("敵機１", 200, 2000, 2000, Dxl1, false);
//	Fade("色１", 200, 1000, Axl1, true);
//	Delete("敵機１");
//	Delete("自機１");

	OnSE("se戦闘_動作_空突進07",1000);
	OnSE("se戦闘_攻撃_斧振る01",1000);
	OnSE("se戦闘_攻撃_鎧かする01",1000);

	Fade("色１", 0, 0, null, false);


	Fade("イベント０", 0, 500, null, true);
	Fade("イベント１", 0, 1000, null, true);

	Shake("イベント１", 2000, 0, 50, 0, 0, 700, Dxl1, false);
	Zoom("イベント１", 2000, 2000, 2000, Axl1, false);
	Zoom("イベント０", 2000, 2000, 2000, Dxl1, false);

	Rotate("エフェクト３", 10000, @0, @0, 3600, null, false);
	Zoom("エフェクト３", 500, 3000, 3000, Axl1, false);
	Fade("エフェクト３", 300, 500, null, false);
	Fade("色１", 300, 700, null, false);
	Wait(400);

		SoundPlay("ＳＥ１",0,1000,false);
		SoundPlay("ＳＥ２",0,1000,false);

	Fade("イベント０", 300, 0, null, false);

	Shake("エフェクト１", 1000, 0, 50, 0, 0, 700, Dxl1, false);
	Shake("エフェクト２", 1000, 0, 50, 0, 0, 700, Dxl1, false);

	Fade("色１", 200, 0, null, false);
	Fade("エフェクト１", 0, 1000, null, true);
	Wait(300);

		SoundPlay("ＳＥ３",0,1000,false);
	Fade("エフェクト２", 0, 1000, null, true);
	Wait(300);
	Fade("エフェクト１", 600, 0, null, false);
	Fade("エフェクト２", 600, 0, null, false);

	Fade("イベント２", 600, 1000, null, false);
	Shake("イベント２", 600, 0, 50, 0, 0, 700, Dxl1, false);
	Zoom("イベント２", 600, 2000, 2000, Dxl2, false);

	Fade("色１", 600, 1000, Axl2, true);

	OnSE("se戦闘_破壊_爆発01",1000);
	OnSE("se戦闘_破壊_鎧05",1000);
	OnSE("se戦闘_衝撃_鎧散華",1000);
	OnSE("se戦闘_衝撃_鎧転倒03",1000);

//◆すげー激突。どっかーん。
		Delete("イベント*");
		Delete("エフェクト*");

		CreateSE("サウンド２","se戦闘_動作_空突進05");
		SoundPlay("@サウンド２",2000,300,true);

		CreateTextureSP("背景１", 17000, -5000, 3200, "旋回イメージ１");
		CreateTextureSP("背景２", 17000, -5000, 3200, "旋回イメージ１");
		Zoom("背景１", 0, 2000, 2000, null, true);
		Rotate("背景１", 0, @0, @0, @-45, null, true);
		Zoom("背景２", 0, 2000, 2000, null, true);
		Rotate("背景２", 0, @0, @0, @-45, null, true);

		CreateTextureSP("敵機１", 19500, -88, -400, "cg/st/3d九〇式竜騎兵_騎航_戦闘d.png");
		Rotate("敵機１", 0, @0, @0, -90, null, true);

		CreateTextureSPadd("アサス１", 19998, 0, 0, "cg/ef/ef022_汎用武者散華.jpg");
		Zoom("アサス１", 0, 1500, 1500, Dxl2, true);

	CloudZoomStart2(700,1000,1000,500,1000);
	CloudZoomVertex2(0,@-500,@0,Dxl1,true);

	CreateSCR1("@背景１","@背景２",1000,1200,-3100);

	//▼シェイク
	MoveSSP1("@敵機１",100000,0,10,0,10,1000,null);
	//Ｘ軸ランダムＹ軸均等
	//MoveFTP1("@敵機１",20000,3,5);

	//SetBlur("敵機１", true, 2, 500, 200, false);
	Fade("敵機１", 0, 1000, null, false);

	Move("アサス１", 1000, @200, @0, Axl1, false);
	Fade("アサス１", 1000, 0, null, false);
	Rotate("敵機１", 1000, @0, @0, -180, Dxl2, false);
	Fade("色１", 1000, 0, null, true);

	SetFwC("cg/fw/fw雪車町_苦悶.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1610]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2400a12">
《……なっ……》

{	FwC("cg/fw/fw雪車町_怒り.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2410a12">
《てめぇ……糞……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆雪車町墜落
	Fade("色０", 100, 1000, null, false);
	DrawTransition("色０", 300, 0, 1000, 100, null, "cg/data/circle_11_00_0.png", true);

		//▼雲消去
		CloudZoomDelete2(0,false);
	
		//▼シェイク：停止
		MoveSSP1stop();
		SCR1stop();

		Delete("敵機*");
		Delete("背景*");

		CreateTextureSP("背景１", 17000, Center, Middle, "旋回イメージ２");
		Move("背景１", 0, @0, @400, Axl1, true);
		Rotate("背景１", 0, @0, @0, 90, null, true);
		CreateTextureSP("敵機１", 17000, -243, -299, "cg/st/3d九〇式竜騎兵_騎航_通常.png");

		CreateTextureEX("エフェクト１", 17000, 0, 0, "cg/ef/efRec_雲a01.png");
		Zoom("エフェクト１", 0, 100, 100, Dxl2, true);
		CreateTextureEX("エフェクト２", 17000, 0, 0, "cg/ef/efRec_雲a02.png");
		Zoom("エフェクト２", 0, 100, 100, Dxl2, true);
		CreateTextureEX("エフェクト３", 17000, 0, 0, "cg/ef/efRec_雲a03.png");
		Zoom("エフェクト３", 0, 100, 100, Dxl2, true);
		CreateTextureEX("エフェクト４", 17000, 0, 0, "cg/ef/efRec_雲a04.png");
		Zoom("エフェクト４", 0, 100, 100, Dxl2, true);

		OnSE("se戦闘_破壊_鎧01",1000);
		SetVolume("サウンド２", 1000, 0, NULL);
		SetVolume("サウンド１", 1000, 1, NULL);

	Fade("色０", 200, 0, null, false);

	Move("背景１", 2000, @-500, @0, Dxl2, false);

	Rotate("敵機１", 3000, @0, @0, 180, Dxl1, false);
	Zoom("敵機１", 3000, 100, 100, Dxl1, false);
	Shake("敵機１", 3000, 0, 50, 0, 0, 700, Dxl3, false);
	Move("敵機１", 3000, @200, @-200, Axl1, false);

	Rotate("エフェクト１", 2000, @0, @0, 90, Dxl3, false);
	Zoom("エフェクト１", 2000, 1000, 1000, Dxl2, false);
	Fade("エフェクト１", 150, 1000, null, false);
	Wait(300);
	Fade("エフェクト１", 1000, 0, null, false);

	Rotate("エフェクト２", 2000, @0, @0, 90, Dxl3, false);
	Zoom("エフェクト２", 2000, 1000, 1000, Dxl2, false);
	Fade("エフェクト２", 150, 1000, null, false);
	Wait(300);
	Fade("エフェクト２", 1000, 0, null, false);

	Rotate("エフェクト３", 2000, @0, @0, 90, Dxl3, false);
	Zoom("エフェクト３", 2000, 1000, 1000, Dxl2, false);
	Fade("エフェクト３", 150, 1000, null, false);
	Wait(300);
	Fade("エフェクト３", 1000, 0, null, false);

	Fade("色０", 500, 1000, null, false);

	Rotate("エフェクト４", 2000, @0, @0, 90, Dxl3, false);
	Zoom("エフェクト４", 2000, 1000, 1000, Dxl2, false);
	Fade("エフェクト４", 150, 1000, null, false);
	Wait(300);
	Fade("エフェクト４", 1000, 0, null, false);

	SetFwC("cg/fw/fw雪車町_怒り.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1611]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2420a12">
《てめェはァァァァァァァァッ!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆海に落ちた。ずぱーん。
	CreateSE("ＳＥ１","se人体_動作_水中飛び込み01");
	CreateSE("ＳＥ２","se自然_水_波の音強01");
	CreateSE("ＳＥ３","se人体_動作_水中飛び込み01");
	CreateSE("ＳＥ４","se自然_水_波の音強01");

	OnSE("se人体_動作_水中飛び込み01",1000);
	OnSE("se自然_水_波の音強01",1000);

	MusicStart("ＳＥ１",0,1000,0,1500,null,false);
	MusicStart("ＳＥ２",0,1000,0,1500,null,false);
	MusicStart("ＳＥ３",0,1000,0,500,null,false);
	MusicStart("ＳＥ４",0,1000,0,500,null,false);



//◆一度ブラックアウト
	Fade("色０", 300, 1000, null, true);
	Delete("敵機*");
	Delete("背景*");

	Wait(4000);

	SetVolume("ＳＥ*", 3000, 0, NULL);

	Wait(2000);

//◆戻り

		//▼雲正面
		CloudZoomSet2("マド",1000,0,0,1024,576);

		//▼コクピット（瞬間表示）
		Cockpit_AllFade2();
		//▼コクピット（自機情報：振動）
		FrameShake();

		//▼コクピット（自機情報：方位）
		CP_AziChange(0,0,AxlDxl,false);
	
		//▼コクピット（自機情報：速度）
		CP_SpeedChange(0,311,Dxl1,false);
		//▼コクピット（自機情報：高度）
		CP_HighChange(0,1200,Dxl1,false);
		//▼コクピット（自機情報：仰角）
		CP_AltChange2(0,0,Dxl1,false);
		//▼コクピット（自機情報：回転軸）
		CP_RollBarMove2(0,0,Dxl1,true);

		//▼コクピット（自機情報：装甲）
		MyLife_Count(0,65);
		//▼コクピット（自機情報：出力）
		MyTr_Count(0,251);
		//▼コクピット（自機情報：熱量）
		CP_PowerChange(0,300,null,false);
		//▼コクピット（自機情報：球体ＨＰ）
		CP_IHPChange(0,3,null,false);

		//▼コクピット（自機情報：回転軸自動化）
		CP_RollBarMoveA();

		CreateTextureSP("背景１", 100, Center, -500, "cg/bg/bg201_旋回演出背景市街地_03.jpg");
		CreateSurfaceEX("絵Suf",200,2000,"背景１");
		Fade("絵Suf", 0, 1000, null, true);

		//▼雲開始
		CloudZoomStart2(700,1000,1000);
		//▼固定値ランダム
		MoveFFP1("@絵Suf",5000);

	SetVolume("サウンド１", 2000, 1000, NULL);

	Fade("色０", 2000, 0, null, true);


	SetFwC("cg/fw/fw景明_悲しみ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1620]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs2430a00">
「………………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/016vs2440a01">
《……御堂。
　……………御堂！》

{	FwC("cg/fw/fw景明_悲しみ.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs2450a00">
「…………」

{	FwC("cg/fw/fw景明_悲しみ.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs2460a00">
「……ああ……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/016vs2470a01">
《……今……
　貴方、何を……したの？》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs2480a00">
「わからん」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/016vs2490a01">
《……》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs2500a00">
「……わからん……
　忘れた……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/016vs2510a01">
《……御堂》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs2520a00">
「……それはいい。
　島へ戻るぞ、村正」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs2530a00">
「怪物を放置し過ぎた。急がねばならぬ。
　騎体状況は如何」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/016vs2540a01">
《……どうにか動けるというところ。
　どうにか、ね》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//徒歩：しゅうせい（わね）
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/016vs2550a01">
《貴方も私も、とっくに限界よ……。
　いつ墜ちても自然の<RUBY text="ことわり">理</RUBY>、<RUBY text="こんじん">金神</RUBY>さまに文句を
言えた筋合いじゃない》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs2560a00">
「ならば即刻に済ませよう。
　行くぞ。村正」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/016vs2570a01">
《……ええ》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("サウンド０","se戦闘_動作_空突進06");
	SoundPlay("サウンド０",0,1000,false);
	SetVolume("サウンド*", 2000, 0, NULL);

	//▼雲移動
	CloudZoomVertex2(1000,@-500,@200,Dxl1,false);

	Move("背景１", 2000, @0, @-1000, Axl1, false);
	Rotate("絵Suf", 2000, @0, @0, @180, Axl2, false);
	Fade("色０", 2000, 1000, null, true);

	Wait(2000);

	WaitPlay("サウンド０", null);

	//▼雲消去
	CloudZoomDelete2(500,false);

	ClearWaitAll(2000, 1000);
	CP_AllDelete();

..//ジャンプ指定
//次ファイル　"ma04_017.nss"


}