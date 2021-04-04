//<continuation number="1380">

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

scene ma02_009vs.nss_MAIN
{

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
	#bg201_旋回演出背景市街地_02=true;
	#bg001_空a_02=true;
	#bg002_空a_02=true;

	#ev504_村正突進=true;
	#ev943_村正ＶＳ月山=true;

	//▼ルートフラグ、選択肢、次のGameName
	#av_九〇式竜騎兵=true;

	$PreGameName = $GameName;

	$GameName = "ma02_010.nss";

	CP_AllDelete();

}

scene ma02_009vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_008vs.nss"

//	if($GameDebugSelect==1){CP_AllSet("アベンジ");}

//◆フライトモニター展開
	PrintBG("上背景", 30000);

	CreateTextureSP("絵背景100", 500, Center, -500, "cg/bg/bg201_旋回演出背景市街地_02.jpg");
	CreateColorSP("絵色100", 1500, "Black");

	FadeDelete("上背景", 500, true);

	Cockpit_AllFade(300,641,200);


	DrawTransition("絵色100", 300, 1000, 0, 100, null, "cg/data/slide_05_00_0.png", true);

	Wait(300);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_04_01_1.png", true);

	Cockpit_AllFade0();

	CreateTextureEX("絵村正1", 1200, Center, Middle, "cg/st/resize/3d村正標準_騎航_通常3a_ex.png");
	CreateTextureEX("絵村正2", 1200, Center, Middle, "cg/st/resize/3d村正標準_騎航_通常3b_ex.png");
	Move("絵村正1", 0, @-100, @+50, null, true);

	DrawDelete("黒幕１", 200, 100, "slide_04_01_0", true);

	Move("絵村正1", 300, @+100, @-50, Dxl1, false);
	Fade("絵村正1", 300, 1000, null, true);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");

	OnSE("se戦闘_動作_空突進03",1000);

	Fade("フラッシュ白",0,1000,null,true);
	Fade("絵村正1", 0, 0, null, true);
	Fade("絵村正2", 0, 1000, null, true);
	Shake("絵村正2", 10000, 1, 2, 0, 0, 500, null, false);
	FadeDelete("フラッシュ白",1500,false);

	Wait(1500);

//	Move("絵村正2", 400, @+700, @-200, Dxl1, false);

	CreateColorSP("黒幕１", 17000, "Black");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Delete("絵村正*");


	CP_SpeedChange(0,300,null,true);
	CP_HighChange(0,200,Dxl1,true);
	CP_PowerChange(0,500,null,true);

	Cockpit_AllFade2();
	MyLife_Count(0,720);
	MyTr_Count(0,513);
	CP_AziChange(0,10,null,false);
	CP_SpeedChange(2000,412,null,false);
	CP_HighChange(10000,1013,Dxl1,false);
	CP_AltChange2(1000,30,null,false);
	FrameShake();

	CreateColorSP("白幕", 11000, "White");
	Zoom("絵背景100", 0, 1500, 1500, Dxl1, true);


	OnSE("se戦闘_動作_空上昇01",1000);

	Move("絵背景100", 10000, @0, @+350, Dxl1, false);
	Zoom("絵背景100", 1000, 1000, 1000, Dxl1, false);
	FadeDelete("白幕", 500,false);
	DrawDelete("黒幕１", 300, 100, "circle_01_00_1", true);

//嶋：デバッグ用
//	CP_StateDebug();

	SoundPlay("@mbgm08",0,1000,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0001]
　空を裂いて天頂へ駆け昇る体感、心地良いと思った
ことはない。それはむしろ肌を怯えで粟立たせた。
　底知れぬ深淵、果てなき果て、無の領域――未知。
そこへ突き進む己を知れば、冷たい畏怖が脊髄を刺す。

　合当理の推力は常よりもやや低い。思うほど高度が
伸びてゆかない。いつもより、<RUBY text="・・・・">空が鈍い</RUBY>。
　やはり熱量が足りていないようだ。それでも、なま
なかな相手には後れを取らぬ筈だが……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CP_AltChange2(3000,0,null,false);
	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0010a01">
《……やっぱり、間違いない》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0020a00">
「どうした」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0030a01">
《あれは寄生体よ、御堂。
　<RUBY text="かかさま">銀星号</RUBY>と同質の気配！》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0040a00">
「……確かか」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0050a01">
《言ったでしょう。あれの匂いは漠然としか
辿れない……けれど、眼にすれば特定できる。
　あの劔冑は間違いなく卵を受け入れている。
代官と同じ。ここには二騎いたのよ、御堂！》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0060a00">
「大盤振る舞いだな……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　喜べる話ではないが。
　いや、やはり喜ばねばならないのか。不可避の難題
と、少しでも早くに出会えたと思えば。

　しかしこれで、途切れていた糸は繋がった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵月山", 2000, Center, Middle, "cg/st/3d月山_騎突_戦闘.png");
	Zoom("絵月山", 0, 20, 20, null, true);
	Move("絵月山", 0, @-100, @-250, null, true);

	CockPit_LockSet(@-100,@-250);

	Move("絵背景100", 1000, @0, @50, Dxl2, false);
	CP_LockOnMove("@絵月山",1000,@0,@100,Dxl2,false);
	Fade("絵月山", 200, 1000, null, false);
	CP_LockOnFade(300,"off",true);

//嶋：月山 life412/Tr524
	CP_EnemyFade(300,10,412,524);


	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0070a00">
《――<RUBY text="せいしょう">西湘</RUBY>の悪狼！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateTextureEX("絵演窓上/絵演背景", 16100, -100, -144, "cg/bg/resize/bg002_空a_02.jpg");
	CreateTextureEX("絵演窓上/絵立絵", 16200, -185, -250, "cg/st/3d月山_騎突_戦闘.png");
	Move("絵演窓上", 0, @0, @-288, null, true);
	SetBlur("絵演窓上/絵立絵", true, 1, 300, 100, false);


	OnSE("se戦闘_動作_空突進02",1000);

	Move("絵演窓上", 300, @0, @432, Dxl2, false);

//	BGMoveAuto("@絵演窓上/絵演背景",1);
	Move("絵演窓上/絵演背景", 200000, @-800, @0, null, false);
	BGMoveAuto("@絵演窓上/絵立絵",1);

	Fade("絵演窓上/絵演背景", 300, 1000, null, true);
	Fade("絵演窓上/絵立絵", 300, 1000, null, true);

	Wait(300);


	SetFwR("cg/fw/fw月山_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0080b35">
《ほっほぉ！　良い空じゃ！
　そうは思わぬか、湊斗景明！》

{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0090a00">
《答えろ……銀星号を知っているな!?》

{	FwR("cg/fw/fw月山_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0100b35">
《はぁてさて――》

{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0110a00">
《韜晦無用！
　然らばこそ、この村正を知った筈！》

{	FwR("cg/fw/fw月山_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0120b35">
《はあっは！　如何にも左様！
　かの美姫から主のことは聞いておる！》

//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0130b35">
《可愛がってやってくれと、<RUBY text="ねんご">懇</RUBY>ろに頼まれて
しもうたわい！》

{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0140a00">
《何処だ！
　<RUBY text="あいつ">銀星号</RUBY>は何処にいるッ！》

{	FwR("cg/fw/fw月山_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0150b35">
《知らんのう――
　風に乗り雲と去る、まっこと凡人にはなか
なか手の届かぬお人であったゆえ！》

{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0160a00">
《……ッッ！》

{	FwR("cg/fw/fw月山_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0170b35">
《月の影でも探してみてはどうじゃ？
　天女の宮はきっとそこいらにあるでな――
ほっほっほっ！》

{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0180a00">
《<RUBY text="ざ">戯</RUBY>れるかッ!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆速度メーターの上昇が徐々に微速化、やがて低下

	OnSE("se戦闘_動作_空突進02",1000);

	Zoom("@絵演窓上*", 200, 2000, 2000, null, false);
	FadeDelete("@絵演窓上*", 200, true);

	BGMoveDelete();


	CreateSE("SE01","se戦闘_動作_鎧_速度失速01");


	CP_LockOnMove("@絵月山",1000,@+100,@+100,AxlDxl,false);
	Move("絵背景100", 1000, @+100, @+100, AxlDxl, false);
	Zoom("絵背景100", 1000, 1100, 1100, AxlDxl, true);
	Zoom("@絵月山", 1000, 100, 100, AxlDxl, false);
	CP_SpeedChange(1000,512,null,true);

	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("@絵月山", 2000, 10, 10, AxlDxl, false);
	Move("絵背景100", 2000, @-100, @-100, AxlDxl, false);
	Zoom("絵背景100", 3000, 1000, 1000, AxlDxl, false);
	CP_SpeedChange(10000,285,DxlAxl,false);

	Wait(500);

	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0190a00">
「……く！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　速度が――落ちる。
　瞬発力が切れた……！

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0200a01">
《御堂、これまで！》

{	FwR("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0210a00">
「承知」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　背筋を煽って反転。
　激突の準備に移る――

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ピッチアップして展開
//◆なだらかに下降、速度回復


	BGMoveDelete();

	OnSE("se戦闘_動作_空急降下01",1000);

	Zoom("絵背景100", 1000, 900, 900, AxlDxl, false);
	Shake("絵背景100", 6000, 1, 3, 0, 0, 1000, null, false);
	CP_LockOnMove("@絵月山",3000,@0,-2100,Axl2,false);
	CP_AltChange(3000,-70,Dxl1,false);
	Move("絵背景100", 3000, @0, -2100, AxlDxl, true);

	CP_HighChange(2000,200,null,false);
	CP_SpeedChange(2000,600,null,false);
	Zoom("絵背景100", 1200, 1300, 1300, Dxl1, false);
	Move("絵背景100", 1200, @0, -1800, Dxl1, false);

	Wait(600);
	Shake("絵背景50", 30000, 3, 4, 0, 0, 1000, null, false);

	Wait(603);

	OnSE("se戦闘_動作_空上昇01",1000);
	CP_SpeedChange(2000,497,null,false);
	CP_HighChange(2000,700,null,false);
	Zoom("絵背景100", 2000, 2000, 2000, Axl1, false);
	Move("絵背景100", 2000, @0, 1200, Axl1, false);

	Wait(1700);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Cockpit_AllFade0();
	Delete("絵背景50");
	Delete("絵月山");
	CP_LockOnDelete();

	CreateTextureSP("絵背景100", 500, Center, Middle, "cg/bg/resize/bg002_空a_02.jpg");
	CreateTextureEX("絵St100", 1000, 0, -500, "cg/st/resize/3d村正標準_騎航_戦闘bm.png");
	Fade("絵St100", 0, 1000, null, true);

	Shake("絵背景100", 50000, 1, 1, 0, 0, 500, null, false);
	BGMoveAuto("@絵St100",1);

	CloudZoomSet(2000);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@-1024,@-100,Dxl2,true);

	DrawDelete("黒幕１", 300, 100, "slide_02_01_1", true);

	SetFwC("cg/fw/fw月山_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0220b35">
《ほっ。どうしたどうした如何した！
　存外にだらしのない。そんなことでは到底、
月までは辿り着けぬぞ！》

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0230a00">
《要らぬご配慮痛み入る！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆上昇へ
	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵St100");
	Cloud_MoveDelete();
	Shake_LoopDelete();
	CloudZoomDelete(0,true);

	Cockpit_AllFade0();

	CreateColorSP("絵色100", 1500, "Black");

	CreateWindow("帯", 15000, 0, 100, 1024, 376, true);
	SetAlias("帯","帯");

	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	CreateTextureEX("帯/絵背景", 2000, Center, Middle, "cg/bg/bg001_空a_02.jpg");
	Fade("帯/絵背景", 0, 1000, null, false);
	DrawTransition("帯/絵背景", 300, 0, 2100, 100, Dxl1, "cg/data/slide_02_00_1.png", true);

//嶋：月山後ろ姿希望
	CreateTextureSP("帯/絵月山", 2200, -1024, 576, "cg/st/3d月山_騎航_戦闘d.png");
	SetBlur("帯/絵月山", true, 2, 300, 50, false);
	Request("帯/絵月山", Smoothing);
	Zoom("帯/絵月山", 0, 2500, 2500, null, true);

	CreateTextureSP("帯/絵月山2", 2200, 400, -500, "cg/st/3d月山_騎航_戦闘a.png");
	Rotate("帯/絵月山2", 0, @0, @180, @0, null,true);
	SetBlur("帯/絵月山2", true, 3, 500, 50, false);
	Zoom("帯/絵月山2", 0, 0, 0, null, true);

	CreateSE("SE01","se戦闘_動作_空突進08");
	CreateSE("SE02","se戦闘_動作_空突進04");
	MusicStart("SE01",0,1000,0,1000,null,false);


	Move("帯/絵月山", 500, -565, -449, AxlDxl, true);

	Move("帯/絵月山", 1500, @+800, @-50, AxlDxl, false);
	Zoom("帯/絵月山", 1500, 10, 10, AxlDxl, true);

	Move("帯/絵月山", 500, @+100, @0, AxlDxl, false);
	Zoom("帯/絵月山", 500, 1, 1, AxlDxl, true);

	MusicStart("SE02",0,1000,0,1000,null,false);
	Zoom("帯/絵月山2", 1000, 2500, 2500,AxlDxl, false);
	BezierMove("帯/絵月山2", 1000, (@0,@0){@+500,@0}{@+500,@0}(@-2500,@-200), AxlDxl, true);


	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);


	Delete("絵色100");

	CreateTextureSP("絵背景100", 1000, Center, InBottom, "cg/bg/resize/bg001_空a_02.jpg");

	Delete("帯/*");
	Delete("帯");

	CP_AltChange(0,0,null,true);
	Cockpit_AllFade2();

	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0240a01">
《敵騎反転、降下体勢に移行。
　迎撃を！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆上昇へ

	CreateTextureEX("絵月山", 2200, Center, Middle, "cg/st/3d月山_騎航_戦闘a.png");
	Move("絵月山", 0, @0, @-100, AxlDxl, true);
	SetBlur("絵月山", true, 3, 500, 50, false);
	Zoom("絵月山", 0, 10, 10, null, true);
	CockPit_LockSet(@0,@-100);

	CP_SpeedChange(2000,400,null,false);
	CP_HighChange(2000,1500,null,false);
	CP_AltChange(2000,40,null,false);
	Move("絵背景100", 2000, @0, 0, AxlDxl, true);

	Fade("絵月山", 200,1000,null,false);
	CP_LockOnFade(200,"off",true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0084]
　村正の諜報を受けて<RUBY text="ピッチアップ">兜角仰向</RUBY>。
　敵影が視野に入る。

　高度優勢は敵騎！
　圧倒的に不利な戦形から太刀合わせに入る――

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――



//◆接近
//◆敵影ロックオン
//◆ＣＩ：村正騎航上段
//◆ＣＩ：月山騎航下段

	OnSE("se特殊_コックピット_ロックオン",1000);


	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_04_01_0.png", true);

	Cockpit_AllFade0();
	CP_LockOnDelete();

	CreateWindow("ウィンドウ上", 15001, 0, -288, 1024, 576, true);
	CreateWindow("ウィンドウ下", 15000, 0, 288, 1024, 576, true);
	SetAlias("ウィンドウ上","ウィンドウ上");
	SetAlias("ウィンドウ下","ウィンドウ下");

	CreateTextureEX("ウィンドウ上/絵背景01", 3600, -300, -100, "cg/bg/resize/bg002_空a_02.jpg");
	CreateTextureEX("ウィンドウ上/絵ga01", 3600, Center, -100, "cg/st/3d月山_騎航_戦闘a.png");

	Move("ウィンドウ上/絵背景01", 0, @-200, @0, null, true);

	CreateTextureEX("ウィンドウ下/絵背景01", 3600, -512, 0, "cg/bg/resize/bg002_空a_02.jpg");
	CreateTextureEX("ウィンドウ下/絵mura01", 3600, 100, -450, "cg/st/3d村正標準_騎航_戦闘a.png");

	Move("ウィンドウ下/絵背景01", 0, @+200, @0, null, true);
	Move("ウィンドウ下/絵mura01", 0, @-300, @0, null, true);

	Fade("ウィンドウ上/絵背景01", 0, 1000, null, false);
	Fade("ウィンドウ下/絵背景01", 0, 1000, null, true);

	Fade("ウィンドウ下/絵mura01", 0, 1000, Dxl1, false);
	Fade("ウィンドウ上/絵ga01", 0, 1000, Dxl1, true);

	Move("ウィンドウ上/絵背景01", 1500, @+200, @0, null, false);
	Move("ウィンドウ下/絵背景01", 1500, @-200, @0, null, false);

	Move("ウィンドウ上/絵ga01", 1500, @-300, @0, Dxl1, false);
	Move("ウィンドウ下/絵mura01", 1500, @+300, @0, Dxl1, false);

	DrawDelete("黒幕１", 300, 100, "slide_04_01_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0085]
　……下段！
　ならば<RUBY text="こちら">当方</RUBY>の上へ抜けつつ斬り上げて来る筈。

　相手の下へ抜けつつ斬り下げたい、上段の当方とは
狙いが一致する。
　ならば勝敗を分かつは剣速のみ……！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＣＩ：月山騎航下段→八相
	CreateTextureEX("ウィンドウ上/絵ga02", 3600, Center, -100, "cg/st/3d月山_騎航_戦闘b.png");
	SetBlur("ウィンドウ上/絵ga02", true, 3, 300, 50, false);
	Move("ウィンドウ上/絵ga02", 0, @-300, @0, Dxl1, true);

	Move("ウィンドウ下", 500, @0, @+288, Dxl1, false);
	Move("ウィンドウ上", 500, @0, @+288, Dxl1, false);
	Move("ウィンドウ上/*", 500, @+250, @+88, Dxl1, true);

	OnSE("se戦闘_動作_刀構え02",1000);

	Fade("ウィンドウ上/絵ga02",300,1000,Dxl1,false);
	Fade("ウィンドウ上/絵ga01",300,0,Axl1,true);

	OnSE("se戦闘_動作_空突進01",1000);
	Move("ウィンドウ上/絵ga02", 500, @+2000, @+800, Dxl1, false);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0250a00">
「……っ!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＣＩ：袈裟懸け
//◆ＣＩ：刺突
//◆じゃきゃーん。

	CreateColorEX("絵色100", 20000, "Black");

	Fade("絵色100", 300, 1000, null,true);

	SL_centerin2(21000,@0, @0,1000);

	OnSE("se戦闘_攻撃_刀振る01",1000);
	SL_centerinfade2(10);

	CreateColorEXadd("フラッシュ白", 21000, "WHITE");

	OnSE("se戦闘_破壊_鎧03",1000);
	Fade("フラッシュ白",0,1000,null,true);

	Delete("絵色100");

	Delete("絵月山");

	Delete("ウィンドウ上/*");
	Delete("ウィンドウ下/*");

	Delete("ウィンドウ上");
	Delete("ウィンドウ下");

	Cockpit_AllFade2();

	CreateColorEXmul("フラッシュ赤", 20000, "RED");
	Fade("フラッシュ赤",0,500,null,true);

	CreateTextureEX("絵背景50", 1000, Center, Middle, "cg/bg/resize/bg201_旋回演出背景市街地a_02.jpg");
	Fade("絵背景50", 0, 1000, null, true);
	Move("絵背景50", 0, @0, @-200, AxlDxl, true);

	CP_RollBarMove("@絵背景50",0,15,null,true);

	Shake("@CP_Frame", 1000, 24, 47, 0, 0, 500, Dxl1, false);

	CP_RollBarMove("@絵背景50",1000,0,null,false);

	CP_AltChange(500,0,null,false);


	FadeDelete("フラッシュ赤",1000,false);
	Fade("フラッシュ白",300,0,null,true);

	Wait(700);

	FrameShake();

	Delete("フラッシュ白");



	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0260a00">
「ち……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　寸前で――下へ抜けてきた！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0270a00">
「村正！　損傷！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0280a01">
《右脇腹を削られた！
　損傷は軽微、戦闘続行に支障なし》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0290a00">
「腸を掻き出されたかと思ったが……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0300a01">
《危なかったけれどね……もう少し狙われて
いたら心臓串刺しよ、今の<RUBY text="つき">刺突</RUBY>は》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　心なしか、肝を冷やした声で告げてくる村正。
　その言い条が誇大でないことは骨身に沁みていた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0310a00">
《……八相とは、珍しき構を使う》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	WindowXSet(18000, 100);
	WindowXSetBG(18000, @+0, @+0,"cg/bg/bg002_空a_02.jpg");
	WindowXSetSt(18000, @0, @0,"cg/st/3d月山_騎航_戦闘b.png");

	OnSE("se戦闘_動作_空突進02",1000);
	WindowFadeBG(1,500,0,null,"slide_05_00_1",true);

	SetFwR("cg/fw/fw月山_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0320b35">
《ほっほ！　年寄りに長丁場はしんどいでの、
一合で済ませられぬかと思うたが。
　や、なかなか簡単にはゆかぬものよのう！》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　陽気な<RUBY text="メタルエコー">装甲通信</RUBY>が耳を打つ。
　内容に反して、声音には悔しさの片鱗もない。

　<RUBY text="たいそく">体側</RUBY>に、体と平行に太刀を構える八相。
　そこから刺突を繰り出す技法は、武者合戦において
主流とはいえない。高速で飛来する武者を狙って刺し
貫く事は、斬り伏せる以上に至難の業だからだ。

　しかし。
　その難を越え、剣尖が敵を捉えたならば、ただ一点
に集約された武者の金剛力は例え砲弾を嘲笑う甲鉄で
あろうとも、薄紙同然に貫通してのける！

　完璧な刺突を受けて耐え得る武者などおそらく皆無。
　故に、これが用いられる局面は劣勢からの起死回生
というのが定石。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_動作_空突進03",1000);
	Window_StMove(300, @+1000, @-500, Dxl1, false);
	Window_WipeDelete(300,"slide_05_00_1",true);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0330a00">
「それを優位の立場から用いるとは……
　人を食った戦い方をする」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0340a01">
《貴方とは相性が良くなさそうね》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0350a00">
「かもしれん」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆反転降下

	OnSE("se戦闘_動作_空突進02",1000);

	CreateSE("SE01","se戦闘_動作_空急降下01");
	CreateSE("SE02","se戦闘_動作_空上昇01");

	CreateTextureEX("絵背景100", 500, Center, -5000, "cg/bg/bg201_旋回演出背景市街地_02.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	CP_SpeedChange(3000,350,null,false);
	CP_HighChange(3000,150,null,false);

//	OnSE("se戦闘_動作_空急降下01",1000);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@絵背景50", 1500, @0, @+200, null, false);
	CP_RollBarMove("@絵背景50",1500,180,Dxl1,true);
	Delete("@絵背景50");

	MyTr_Count(500,450);
	Move("絵背景100", 3000, @0, 0, AxlDxl, false);
	CP_SpeedChange(3000,540,null,false);

	Wait(1500);

	CP_RollBarMove2(0,0,null,true);

	CP_AziChange(1000,189,Axl1,false);

	CP_SpeedChange(2000,350,null,false);
	CP_HighChange(2000,657,null,false);

	MyTr_Count(500,320);
	Wait(1000);


	MusicStart("SE02",0,1000,0,1000,null,false);
//	OnSE("se戦闘_動作_空上昇01",1000);
//	Move("絵背景100", 2000, @0, 800, Dxl1, false);
//	Zoom("絵背景100", 2000, 1500, 1500, Dxl1, false);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("@FrameShake_Stall");
	Delete("絵背景100");
	CP_LockOnDelete();

	Cockpit_AllFade0();

	CreateTextureEX("絵背景50", 100, Center, Middle, "cg/bg/resize/bg001_空a_02.jpg");
	Fade("絵背景50", 0, 1000, null, true);


	CreateSE("SE01","se戦闘_動作_空走行02_L");
	MusicStart("SE01",0,1000,0,1000,null,true);

	BGMoveDelete();

	CreateTextureEX("絵村正１", 2000, 0, -188, "cg/ev/resize/ev504_村正突進l.jpg");
	CreateTextureEX("絵村正２", 2100, Center, Middle, "cg/ev/ev504_村正突進.jpg");
	CreateTextureEX("絵村正３", 2000, Center, Middle, "cg/ev/ev504_村正突進.jpg");
	SetBlur("絵村正１", true, 3, 500, 50, false);


	Fade("絵村正１", 0, 1000, null, true);
	Move("絵村正１", 500, @-1024, @0, Axl1, false);

	OnSE("se戦闘_動作_空突進03",1000);
	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);

	Wait(100);


	Shake("絵村正２", 100000, 0, 1, 0, 0, 500, null, false);
	Fade("絵村正３", 500, 1000, null, false);
	Fade("絵村正２", 500, 1000, null, true);

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0360a00">
「……だが。
　そのような事、<RUBY text="おれ">村正</RUBY>には関係がない」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0370a01">
《ええ。
　<RUBY text="わたし">村正</RUBY>にはどうだっていい事よ》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0380a00">
「――ならば。
　村正を始めよう」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0390a01">
《始めましょう、御堂》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ピッチアップ。上昇
//◆敵影ロックオン。接近

//◆ＣＩ：月山騎航上段
//◆ＣＩ：村正騎航下段
//◆ＣＩ：撃剣

	SetVolume("SE*", 300, 0, null);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵村正*");

	CreateTexture("絵背景100", 100, -512, -288, "cg/bg/resize/bg001_空a_02.jpg");
	CreateTexture("絵St100", 100, -120, -352, "cg/st/3d月山_騎航_戦闘b.png");
	Rotate("絵St100", 0, @0, @0, @+30, null,true);
	Request("絵St100",Smoothing);
	Move("絵St100", 0, @-1000, @-1000, null, true);
	SetBlur("絵St100", true, 3, 500, 30, false);

	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	OnSE("se戦闘_動作_空上昇01",1000);

	Move("絵St100", 500, @+1800, @+1800, Dxl1, true);

	CreateTextureEX("絵背景200", 2000, -180, -250, "cg/bg/resize/bg201_旋回演出背景市街地a_02.jpg");
	CreateTextureEX("絵St100", 2100, 88, -120, "cg/st/3d村正標準_騎航_戦闘b.png");
	Request("絵St100",Smoothing);
	Rotate("絵St100", 0, @0, @0, @+35, null,true);
	Move("絵St100", 0, @+800, @+300, Dxl1, true);
	SetBlur("絵St100", true, 3, 500, 30, false);

	Fade("絵背景200", 0, 1000, null, false);
	DrawTransition("絵背景200", 300, 0, 1000, 100, null, "cg/data/slide_03_01_1.png", true);

	OnSE("se戦闘_動作_空上昇01",1000);
	Fade("絵St100", 300, 1000, null, false);
	Move("絵St100", 300, @-1000, @-500, Dxl1, true);
	Move("絵St100", 300, @-2000, @-1000, Dxl1, true);


	CreateTextureEX("絵EF100", 15000, Center, Middle, "cg/ef/ef040_汎用衝突.jpg");
	Rotate("絵EF100", 0, @0, @180, @0, null,true);
	CreateTextureEX("絵EF50", 14000, Center, Middle, "cg/ef/ef040_汎用衝突.jpg");
	Rotate("絵EF50", 0, @0, @180, @0, null,true);
	CreateTextureEX("絵EF200", 16000, Center, Middle, "cg/ef/ef040_汎用衝突.jpg");
	Rotate("絵EF200", 0, @0, @180, @0, null,true);

	CreateColorEXadd("白幕", 16000, "White");

	OnSE("se戦闘_衝撃_衝突01",1000);
	Fade("絵EF200", 0, 1000, null, true);
	Fade("絵EF100", 0, 1000, null, false);
	Fade("絵EF50", 0, 1000, null, false);
	Zoom("絵EF200", 300, 2000, 2000, null, false);
	Shake("絵EF50", 1000, 25, 50, 0, 0, 500, Dxl1, false);
	Shake("絵EF200", 500, 25, 50, 0, 0, 500, Dxl1, false);
	FadeDelete("絵EF200", 300, false);

	Wait(200);

	Fade("白幕", 200, 1000, null, true);

	Delete("絵EF*");
	Delete("絵背景100");
	Delete("絵背景200");
	Delete("絵St100");

	CreateTexture("絵背景100", 100, -512, -288, "cg/bg/resize/bg001_空a_02.jpg");
	CreateTexture("絵St100", 100, -390, -191, "cg/st/3d村正標準_騎航_戦闘b.png");
	Rotate("絵St100", 0, @0, @0, @+30, null,true);
	Request("絵St100",Smoothing);

	CreateMask("マスク１", 2000, 0, 0, "cg/mask/ciスラッシュ_01_00.png", false);
//	Rotate("マスク１", 0, @180, @0, @0, null,true);

	CreateTexture("マスク１/絵背景100", 2000, -180, -250, "cg/bg/resize/bg201_旋回演出背景市街地a_02.jpg");
	CreateTexture("マスク１/絵St100", 2100, 160, -412, "cg/st/3d月山_騎航_戦闘b.png");
	Request("マスク１/絵St100",Smoothing);
	Rotate("マスク１/絵背景100", 0, @0, @0, @+35, null,true);
	Rotate("マスク１/絵St100", 0, @0, @0, @+20, null,true);

	Move("マスク１/絵St100", 0, @-500, @-500, null, true);
	Move("絵St100", 0, @+500, @+500, null, true);

	Move("マスク１/絵St100", 500, @+500, @+500, Dxl2, false);
	Move("絵St100", 500, @-500, @-500, Dxl2, false);


	FadeDelete("白幕", 1000, true);


	SetFwC("cg/fw/fw月山_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0400b35">
《ほっほぅ！　これは驚き。
　どこぞの<RUBY text="もうろく">耄碌</RUBY>が勇名高き村正と互角に渡り
合っておる！》

{	FwC("cg/fw/fw月山_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0410b35">
《いや、儂も捨てたものではないのう。
　それとも、そちらが評判倒れなのかのう？》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0420a01">
《そちらは評判通りのようね、月山。
　出羽雄峰の息吹を感じる見事な甲鉄よ……
けれど、一つ疑問がある》

{	FwC("cg/fw/fw月山_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0430b35">
《はて何かな、蜘蛛の<RUBY text="ひめごぜ">姫御前</RUBY>？》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0440a01">
《……月山鍛冶といえば平安朝末期の鬼王丸
を開祖とするはず。
　でも、その劔冑はとてもとても古い。私の
見立て違いでなければ、鬼王丸より更に昔》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0450a01">
《……平安前期の頃の作と見えるのだけれど。
　違って？》

{	FwC("cg/fw/fw月山_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0460b35">
《ほっほ！　流石は天下の村正！
　如何にも明察の通り、この月山は貞観年間
に打ち上げられたもの。鬼王丸以降の月山流
とは少々系譜が異なるかの》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0470a01">
《……やはりね。
　それがどうして、月山を名乗るのかしら？》

{	FwC("cg/fw/fw月山_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0480b35">
《貞観六年、出羽國月山神社の祭神が従三位
を贈られた折に打たれたものでの。
　故に月山従三位》

{	FwC("cg/fw/fw月山_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0490b35">
《後、天王将門公が月山と並んで出羽三山に
数えられる羽黒山へ五重塔を寄進した時その
手に渡り、更に将門公に仕えた我が家の遠祖、
<RUBY text="いぼろせきねん">飯母呂石念</RUBY>へ下賜されたという次第よ》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0500a01">
《……そういう事。
　なら、奥州<RUBY text="もくさ">舞草</RUBY>鍛冶の特色が濃く残るその
<RUBY text="つくりこみ">造込</RUBY>も納得がいく》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　舞草鍛冶。劔冑の歴史において、まだ黎明の時代に
現れる名だ。
　その系統にあるということはあの劔冑、現存する中
では最古に近い部類に属するとみて違いない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0510a01">
《舞草鍛冶は<RUBY text="やじりづくり">単鋭装甲</RUBY>の先駆者という意味で
画期的だった。
　彼らは初めて甲鉄の工夫による加速性上昇
という発想を持ち、しかも成功した……》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0520a01">
《先程から貴方が見せている、見事な<RUBY text="あし">速力</RUBY>。
　……正直、先人の叡智には感嘆の溜息しか
洩れてこないわね》

{	FwC("cg/fw/fw月山_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0530b35">
《ほっほっほ……そのように持ち上げられっ
ぱなしでは心苦しいのう。
　これから主らを打ち伏せねばならんという
に、何やら気が差してくるわ》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0540a01">
《いいのよ、気にしないで。これから<RUBY text="・・・">落とす</RUBY>
つもりだから。
　……彼らは速度の重要性には気付いていた。
けれど、そこまで》

{	FwC("cg/fw/fw月山_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0550b35">
《……うぬ？》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆反転下降

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵背景50");
	Delete("絵背景100");
	Delete("絵St100");
	Delete("マスク１/*");
	Delete("マスク１");

	Cockpit_AllFade2();
	CP_SpeedChange2(0,400,null,false);
	CP_HighChange2(0,2000,null,false);
	CP_RollBarMove2(0,180,null,true);

	CreateTextureSP("絵背景50", 1000, Center, InBottom, "cg/bg/bg201_旋回演出背景市街地_02.jpg");


	OnSE("se戦闘_動作_空上昇01",1000);
	CP_SpeedChange2(1500,712,DxlAxl,false);
	CP_HighChange2(1500,1210,DxlAxl,false);
	CP_AltChange(1600,83,DxlAxl,false);
	Move("絵背景50", 1600, @0, -3000, DxlAxl, false);

	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);

	Wait(1200);

	CP_RollBarMove2(0,0,Dxl1,false);
	CP_AziChange(500,180,Dxl1,false);
	CP_SpeedChange(2000,530,Dxl1,false);
	CP_HighChange(2000,1820,Dxl1,false);
	CP_AltChange(2000,0,Dxl1,false);
	Move("絵背景50", 2000, @0, 470, Dxl1, false);

	Zoom("絵背景50", 500, 1500, 1500, Dxl1, true);

	Wait(1500);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0560a01">
《<RUBY text="かかりわざ">空戦技術</RUBY>の体系化が始まるのは彼らの次の
時代から……。
　当時の彼らは旋回性の重要さを明確に知る
ところまでは達していなかったのよ》

{	FwC("cg/fw/fw月山_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0570b35">
《……おおぅ!?》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆上昇
//◆敵影ロックオン。高度差ほぼ無し

	CreateTextureEX("絵月山", 2000, Center, Middle, "cg/st/3d月山_騎突_戦闘.png");
	Zoom("絵月山", 0, 0, 0, null, true);
	Move("絵月山", 0, @0, @-50, null, true);

	CockPit_LockSet(@0,@-50);

	OnSE("se特殊_コックピット_ロックオン",1000);

	Zoom("絵月山", 300, 50, 50, null, false);
	Fade("絵月山", 300, 1000, null, false);
	CP_LockOnFade(300,"off",true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0219]
　三合目の<RUBY text="ヘッドオン">正面相撃</RUBY>。
　高度の優劣は――既に無し！

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0580a00">
《<RUBY text="あし">速力</RUBY>は備前、<RUBY text="こし">旋回</RUBY>は関……
　劔冑に造詣あらば聞いたことはあろう》

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0590a01">
《村正一門は美濃、関鍛冶衆の系統。
　旋回力を駆使する格闘戦で、<RUBY text="よそ">他所</RUBY>の後塵は
拝さない！》

{	FwR("cg/fw/fw月山_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0600b35">
《ぬかったわ！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆接近
//◆ＣＩ：村正騎航上段
//◆ＣＩ：月山騎航下段
//◆ＣＩ：撃剣

	CreateTextureEX("絵背景010", 21000, -1024, Middle, "cg/bg/resize/bg002_空a_02.jpg");
	CreateTextureEX("絵mura", 700, Center, Middle, "cg/st/3d村正標準_騎航_戦闘a.png");
	Move("絵mura", 0, @+1000, @0, null, true);
	SetBlur("絵mura", true, 3, 500, 10, false);

	CreateTextureEX("絵背景002", 1000, 0, Middle, "cg/bg/resize/bg002_空a_02.jpg");
	CreateTextureEX("絵gassa", 1200, Center, Middle, "cg/st/3d月山_騎航_戦闘a.png");
	Move("絵gassa", 0, @-1000, @0, null, true);
	SetBlur("絵gassa", true, 3, 500, 50, false);


	Fade("絵背景010", 300, 1000, null, true);
	CreateTextureSP("絵背景001", 600, -1024, Middle, "cg/bg/resize/bg002_空a_02.jpg");
	Cockpit_AllFade0();
	CP_LockOnDelete();
	Delete("絵背景50");
	Delete("絵月山");

	Delete("絵背景010");

	OnSE("se戦闘_動作_空突進01",1000);

	Fade("絵mura", 300, 1000, Dxl1, false);
	Move("絵mura", 350, @-2500, @0, Dxl1, true);

	Fade("絵背景002", 100, 1000, Dxl1, true);

	OnSE("se戦闘_動作_空突進02",1000);

	Fade("絵gassa", 300, 1000, Dxl1, false);
	Move("絵gassa", 400, @+2000, @0, Dxl1, false);

	Wait(300);

	CreateTextureEX("絵ef001", 6000, Center, Middle, "cg/ef/ef040_汎用衝突.jpg");


	OnSE("se戦闘_衝撃_衝突01",1000);
	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("絵ef001",200,1000,null,true);

	Fade("フラッシュ白",200,1000,null,true);

	Delete("絵gassa");
	Delete("絵mura");

	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");

	CreateColorSPadd("黒幕１", 16000, "White");
	DrawTransition("黒幕１", 300, 0, 1000, 100, Dxl1, "cg/data/circle_03_00_0.png", true);

	Delete("絵ef001");
	Delete("絵背景001");
	Delete("絵背景002");

	CreateTextureSP("絵背景100", 1000, Center, -800, "cg/bg/bg201_旋回演出背景市街地_02.jpg");
	Zoom("絵背景100", 0, 950, 950, null, true);

	Cockpit_AllFade2();

	Shake("絵背景100", 600, 2, 5, 0, 0, 500, Dxl1, false);
	Zoom("絵背景100", 1000, 1000, 1000, Dxl1, false);
	FadeDelete("黒幕１", 500, false);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0610a00">
「……ふっ！」


{	FwC("cg/fw/fw月山_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0620b35">
「……ぬっ！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆上昇
//◆反転下降
//◆敵影ロックオン。やや下方
	OnSE("se戦闘_動作_空突進03",1000);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_03_01_1.png", true);

	Cockpit_AllFade0();

	CreateTextureSP("絵背景100", 500, Center, Middle, "cg/bg/bg001_空a_02.jpg");

	DrawDelete("黒幕１", 300, 100, "slide_03_01_0", true);

	CreateTextureSP("絵mura01", 700, Center, Middle, "cg/st/3d村正標準_騎航_通常3a.png");
	CreateTextureEX("絵mura02", 800, Center, Middle, "cg/st/3d村正標準_騎航_通常3b.png");
	Rotate("絵mura01", 0, @0, @0, @-45, null,true);
	Request("絵mura01", Smooting);
	Rotate("絵mura02", 0, @0, @0, @-45, null,true);
	Request("絵mura02", Smooting);


	Move("絵mura01", 0, @-2000, @+1000, null, true);
	Zoom("絵mura01", 0, 2000, 2000, null, true);

	Move("絵mura01", 300, @+2000, @-1000, Dxl1, false);
	Zoom("絵mura01", 300, 1000, 1000, Dxl1, true);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);

	Fade("絵mura02", 0, 1000, Dxl1, true);

	Fade("絵mura02", 0, 1000, Dxl1, false);
	Fade("絵mura01", 0, 0, Axl1, true);

	OnSE("se戦闘_動作_空突進01",1000);
	Move("絵mura02", 500, @+1500, @-1500, Dxl1, false);
	Fade("フラッシュ白",300,0,null,true);

	Fade("絵mura02", 300, 0, Dxl1, false);
	Delete("フラッシュ白");

	Wait(200);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_03_01_1.png", true);

	Delete("絵mura01");
	Delete("絵mura02");

	CreateTextureEX("絵背景100", 1000, Center, -300, "cg/bg/resize/bg201_旋回演出背景市街地a_02.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	Cockpit_AllFade2();

	Zoom("絵背景100", 1000, 1250, 1250, Dxl1, false);
	Move("絵背景100", 500, @0, @-300, Dxl1, false);

	CreateTextureEX("絵月山", 2000, Center, Middle, "cg/st/3d月山_騎突_戦闘.png");
	Zoom("絵月山", 0, 0, 0, null, true);
	Move("絵月山", 0, @0, @+100, null, true);

	CockPit_LockSet(@0,@+100);

	OnSE("se特殊_コックピット_ロックオン",1000);

	DrawDelete("黒幕１", 300, 100, "slide_03_01_0", true);

	Zoom("絵月山", 300, 10, 10, null, false);
	Fade("絵月山", 300, 1000, null, false);
	CP_LockOnFade(300,"off",true);

	SetFwR("cg/fw/fw月山_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0630b35">
「うむっ……!?」


{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0640a00">
《貴様の遊びは終わりだ、相州乱破。
　この先の時間は俺が貰う》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ＣＩ：村正騎航上段
//◆ＣＩ：月山騎航上段
//◆ＣＩ：撃剣

	CreateColorEX("絵色100", 21000, "Black");
	SL_leftdown2(22000,@0, @0,1500);

	CP_LockOnChangeW(300);
	Zoom("絵月山", 500, 2000, 2000, Dxl1, false);

	Wait(300);

	Fade("絵色100", 100, 1000, null, true);

	OnSE("se戦闘_攻撃_刀振る03",1000);
	SL_leftdownfade2(12);

	Wait(100);
	CP_LockOnDelete();
	Move("絵背景100", 0, @0, -400, null, true);


	CreateColorEX("フラッシュ白", 21000, "WHITE");
	Fade("フラッシュ白",300,1000,null,true);

	Move("絵月山", 0, @0, @+300, Dxl1, true);
	Delete("絵色100");

	CP_EHPChange(500,7,null,false);
	OnSE("se戦闘_破壊_鎧03",1000);
	Move("絵背景100", 2000, @0, @100, Dxl2, false);
	Move("絵月山", 600, @0, @+2000, Dxl1, false);
	Shake("@CP_Frame", 500, 5, 10, 0, 0, 500, null, false);
	Fade("フラッシュ白",500,0,null,true);
	FadeDelete("絵月山", 300,false);
	Delete("フラッシュ白");


	SetFwC("cg/fw/fw月山_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0650b35">
「ぐほぉっ!!」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0660a01">
《敵騎、左肩部に被撃。中破！》

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0670a00">
《そして俺は、<RUBY text="いくさごと">戦事</RUBY>に遊びを持ち込むほどの
興は持たない。
　次の一合で<RUBY text="おと">撃墜</RUBY>す》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　手応えは充分。
　今一度、同一箇所に剣撃を加えれば必ず、甲鉄ごと
肉体までも斬り断てる。

　そして、そうせぬ理由はない！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆上昇
//◆反転降下

	CreateColorSP("黒幕１", 21000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Cockpit_AllFade0();

	CreateTextureEX("絵mura01", 1700, -36, -647, "cg/st/resize/3d村正標準_騎航_戦闘am.png");
	Move("絵mura01", 0, @+2000, @-500, Dxl1, true);

	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);

	CloudZoomSet(2000);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@-1024,@+100,Dxl2,true);
	Fade("絵mura01", 300, 1000, null, false);
	Move("絵mura01", 300, @-2000, @+500, Dxl1, true);

	BGMoveAuto("@絵mura01",1);


	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0680a00">
《参る》

{	FwR("cg/fw/fw月山_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0690b35">
《……ほっ、ほっほっほ。
　いや、これは確かに戯れが過ぎたようだの。
返す言葉もない》

{	FwR("cg/fw/fw月山_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0700b35">
《いやいや、いくつになっても説教とは耳に
痛いものだて》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆敵騎ロックオン

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	BGMoveDelete();
	Cloud_MoveDelete();
	CloudZoomDelete(0,true);

	Delete("絵mura01");

	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/bg/bg001_空a_02.jpg");

	Cockpit_AllFade2();

	CreateTextureEX("絵月山", 2000, Center, Middle, "cg/st/3d月山_騎突_戦闘.png");
	Zoom("絵月山", 0, 0, 0, null, true);
	Move("絵月山", 0, @0, @+100, null, true);

	CockPit_LockSet(@0,@+100);

	OnSE("se特殊_コックピット_ロックオン",1000);
	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	Zoom("絵月山", 300, 10, 10, null, false);
	Fade("絵月山", 300, 1000, null, false);
	CP_LockOnFade(300,"off",true);


	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0710a00">
《――――》

{	FwR("cg/fw/fw月山_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0720b35">
《しかし、のう……村正よ。
　主の時間は今ここまで。ここからは再び、
儂が頂く》

{	FwR("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0730a00">
《……させぬ》

{	FwR("cg/fw/fw月山_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0740b35">
《いやいや？》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆接近
//◆ＣＩ：村正騎航上段
	Zoom("絵月山", 300, 30, 30, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0286]
　――五合！
　騎航剣術の基本たる右上段にとり、両断を期す。

　対して、相手は太刀をだらりと下げた無構。
　そこから何をするつもりか――

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	CreateTextureEX("絵背景1000", 17000, Center, -200, "cg/bg/resize/bg201_旋回演出背景市街地a_02.jpg");
	Fade("絵背景1000", 300, 1000, null, true);

	CreateTextureEX("絵月山01", 18000, Center, InBottom, "cg/st/3d月山_立ち_通常.png");
	CreateTextureEX("絵月山02", 17700, Center, InBottom, "cg/st/3d月山_立ち_陰義.png");
	CreateTextureEX("絵月山03", 17200, Center, InBottom, "cg/st/3d月山_立ち_陰義.png");
	CreateStencil("sten",1000,center,InBottom,128,"cg/st/3d月山_立ち_陰義.png",false);
	SetAlias("sten","sten");
	CreateMask("sten/マスク１", 17500, Center, Middle, "cg/st/3d月山_立ち_陰義.png", false);
	SetAlias("sten/マスク１","sten/マスク１");
	CreateTextureEX("sten/マスク１/絵背景", 17500, Center, -500, "cg/bg/resize/bg201_旋回演出背景市街地a_02.jpg");
	Move("sten/マスク１/絵背景", 0, @0, @+10, null, true);
	Zoom("sten/マスク１/絵背景", 0, 1050, 1200, null, true);

	Fade("絵月山01", 300,1000,null,true);

	Wait(500);

	OnSE("se戦闘_動作_刀構え03",1000);
	EffectZoomadd(18000, 1000, 100, "cg/ef/ef003_汎用移動.jpg", false);

	Fade("絵月山02", 300,1000,Dxl1,false);
	Fade("絵月山01", 300,0,Axl1,true);

	Wait(300);

	SetFwR("cg/fw/fw月山_通常.png");

	SetBacklog("　　《慙愧・懺悔・六根清浄……慙愧・懺悔・六根清浄……》", "voice/ma02/009vs0750b35", 小太郎);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//◆読みは「ざーんきさんげろっこんしょうじょう」
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0750b35">
　
　　　《慙愧・懺悔・六根清浄……
　　　　慙愧・懺悔・六根清浄……》

</PRE>
	SetTextEXR();
	Request("@text0290", NoLog);
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);

//◆敵影がじわっと消えていく。ロックオン解除。ピッ。
	Fade("絵月山03", 0,1000,Dxl1,true);
	Fade("sten/マスク１/絵背景", 0,1000,Dxl1,true);

	Fade("絵月山02", 1500,0,Dxl1,false);
	DrawTransition("絵月山2", 2000, 1000, 0, 200, Dxl1, "cg/data/wave_01_00_0.png", true);

	Wait(1000);

	FadeDelete("絵月山0*",500,true);
	FadeDelete("sten/マスク１/*", 1000, false);
	FadeDelete("sten/*", 1000, false);
	FadeDelete("sten", 1000, true);

	CreateColorSP("黒幕１", 30000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵背景1000");

	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/bg/resize/bg002_空a_02.jpg");


	Cockpit_AllFade2();

	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	OnSE("se特殊_鎧_電子音01",1000);
	CP_LockOnFadeT(300,false);
	FadeDelete("絵月山", 500,true);
	CP_LockOnDelete();

	Wait(1000);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0760a00">
「……何？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0770a01">
《えっ!?》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　消え――――――た？

　馬鹿な!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆旋回。周囲確認

//嶋：方位計調整必須
	Move("絵背景100", 500, @+200, @-100, Dxl1, true);
	Move("絵背景100", 500, @-300, @-100, Dxl1, true);
	Move("絵背景100", 500, @-100, @+100, Dxl1, true);
	Move("絵背景100", 500, @+500, @+200, Dxl1, true);
	Move("絵背景100", 500, @-300, @-100, Dxl1, true);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0780a00">
「いない……!?
　何処へ！」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0790a01">
《待って！
　今、周囲を探査する！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ちょっと旋回
	Wait(300);
	OnSE("se特殊_コックピット_ロックオン",1000);
	Wait(300);


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0800a01">
《――いた！
　敵騎<RUBY text="ひのえからうまのしも">一七〇度下方</RUBY>、距離四〇〇！》


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0810a00">
「承知！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆そっち向く


	Zoom("絵背景100", 500, 1500, 1500, Dxl1, false);
	Move("絵背景100", 500, @-300, @0, Dxl1, false);
	Wait(200);
	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	OnSE("se戦闘_動作_空突進02",1000);

	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/bg/resize/bg201_旋回演出背景市街地a_02.jpg");
	Move("絵背景100", 0, @+300, @0, null, true);


	CP_AziChange(500,351,Dxl1,false);
	Move("絵背景100", 500, @-300, @0, Dxl1, false);
	DrawDelete("黒幕１", 300, 100, "slide_01_01_0", true);


	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0820a00">
「……？
　何処だ!?」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0830a01">
《――えっ!?
　そんな……反応は確かに！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆剣撃音
//◆衝撃。どかーん

	CreateSE("SE01","se戦闘_攻撃_鎧_剣戟01");
	MusicStart("SE01",0,1000,0,1000,null,false);

//	WaitPlay("SE01", null);

	Wait(800);

	OnSE("se戦闘_攻撃_鎧攻撃命中02",1000);

	CreateColorEXadd("フラッシュ白", 21000, "WHITE");
	Fade("フラッシュ白",100,1000,null,true);

	CreateColorEXmul("フラッシュ赤", 20000, "RED");
	Fade("フラッシュ赤",0,500,null,true);

//嶋：ダメージポイント加算
//	CP_IHPChange(500,10,null,false);
//	MyLife_Count(500,300);



	Shake("@CP_Frame", 1000, 10, 30, 0, 0, 500, null, false);
	Shake("絵背景100", 1000, 20, 30, 0, 0, 500, null, false);
	Fade("フラッシュ赤",800,0,null,false);
	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");


	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0840a00">
「ぐあッッ!!」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0850a01">
《こっ……攻撃!?
　何処から！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆旋回。なんもいませんねハイ。

//嶋：方位計調整必須
	Move("絵背景100", 500, @+250, @-150, Dxl1, true);
	Move("絵背景100", 500, @-300, @+100, Dxl1, true);
	Move("絵背景100", 500, @+150, @-150, Dxl1, true);
	Move("絵背景100", 500, @-300, @+300, Dxl1, true);
	Move("絵背景100", 500, @+200, @-100, Dxl1, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0860a01">
《こ――これは……》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0870a01">
《どういうこと。
　私の耳が騙されている!?》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0880a00">
「……月山の陰義……か？」

{	SoundPlay("@mbgm13",0,1000,true);
	FwC("cg/fw/fw月山_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0890b35">
《ほっほっほっ》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆旋回。いねー。


//嶋：【ev】素材着次第調整
	CreateTextureEX("絵EV100", 18000, Center, Middle, "cg/ev/ev943_村正ＶＳ月山.jpg");
	SetBlur("絵EV100", true, 2, 300, 100, false);

	Zoom("絵EV100", 0, 2000, 2000, null, true);


	Zoom("絵EV100", 1200, 1000, 1000, Dxl3, false);
	Fade("絵EV100", 1000, 1000, Axl3, true);
	Cockpit_AllFade0();

	Wait(500);

/*
	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_04_01_1.png", true);

	Cockpit_AllFade0();

	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/bg/resize/bg201_旋回演出背景市街地a_02.jpg");

	CreateTextureSP("絵村正", 3000, Center, Middle, "cg/st/3d村正標準_騎航_戦闘e.png");
	Move("絵村正", 0, @+800, @0, null, true);

	Move("絵村正", 350, @-800, @+100, Dxl1, false);
	DrawDelete("黒幕１", 300, 100, "slide_04_01_0", true);

*/

	SetFwL("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0900a00">
「今の発信源は！」


{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0910a01">
《き、<RUBY text="きのえのかみ">七五度上方</RUBY>……》

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

//◆そっち向く。いねー。
/*
	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	Delete("絵村正");

	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/bg/resize/bg001_空a_02.jpg");
	Move("絵背景100", 0, @-200, @0, null, true);

	Cockpit_AllFade2();

	CP_AziChange(500,351,Dxl1,false);
	Move("絵背景100", 500, @+200, @0, Dxl1, false);
	DrawDelete("黒幕１", 300, 100, "slide_01_01_0", true);
*/


	FwL("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0920a00">
「……っ！」


{	FwL("cg/fw/fw月山_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs0930b35">
《如何かな？　我が<RUBY text="キリガクレ">霧隠</RUBY>の術は！
　口に合えば良いのだがのう！》

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//◆探す。いないけど。
//嶋：方位計調整必須
/*
	Move("絵背景100", 500, @+200, @-100, Dxl1, true);
	Move("絵背景100", 500, @-300, @-100, Dxl1, true);
	Move("絵背景100", 500, @-100, @+100, Dxl1, true);
	Move("絵背景100", 500, @+500, @+200, Dxl1, true);
	Move("絵背景100", 500, @-300, @-100, Dxl1, true);
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0382]
　……霧隠の術？
　姿を完全に隠してのけたというのか。

　しかも村正の<RUBY text="レーダー">探査機能</RUBY>まで欺かれている！

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0940a00">
「これほど強力な陰義があったのか!?」


{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0950a01">
《初耳よ！》

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　村正の<RUBY text="メタルエコー">金打声</RUBY>は悲鳴じみていた。
　無理もないが。

　武者の陰義は理外の業。
　驚天、動地の代物が珍しくない。文字通り天を裂き
地を砕く力もかつて見たことがある。村正自身、並み
の武者からは魔神と恐れられるだけの能力を行使する。

　だが。
　ここまで<RUBY text="・・・">反則的</RUBY>な能力は未だ知らなかった。

　敵の姿を目視できず、探査機能さえあてにならない
ときては、そもそも勝負にならない。
　言語道断、無道の極みであった。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――


	SetFwL("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0960a00">
「<RUBY text="クイーンズアーミー">大英連邦騎士団</RUBY>が<RUBY text="ステルス">隠身甲鉄</RUBY>の開発を進めて
いるとは聞いたことがあるが……」


{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0970a01">
《いくら舞草鍛冶が先駆的だったと言っても、
千年分は先駆け過ぎよ！》

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　尤もだ。
　それに隠身装甲はあくまでも対レーダー用の技術で
あり、しかも、『探査され<RUBY text="・・・">にくく</RUBY>する』という程度を
目標に実用化の目処をつけられている筈。

　視覚的な隠蔽のうえ敵の探査機能へ誤情報を飛ばす
などという超越兵器ではない。少なくとも、知られて
いる限りにおいては。
　となればやはり、あれは陰義……。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――


	SetFwL("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs0980a01">
《御堂！　回避して！》

{	FwL("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs0990a00">
「!?」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆ロール
//◆攻撃喰らう。ずしゃーん。

	Cockpit_AllFade2();

	FadeDelete("絵EV100", 500, true);

	OnSE("se戦闘_動作_空突進03",1000);

	BGMoveDelete();
	CP_RollBarMove("@絵背景100",500,90,Dxl1,false);

	Wait(300);

	CP_AltChange2(500,45,null,false);
	Zoom("絵背景100", 1300, 1500, 1500, Axl1, false);
	Move("絵背景100", 1800, @+200, @+550, Dxl1, false);
	MyTr_Count(1000,545);
	CP_SpeedChange(1000,400,null,false);
	CP_HighChange(1000,1200,null,false);
	CP_AziChange(1300,92,Axl1,false);
	Wait(500);
	CP_SpeedChange(1500,512,null,false);
	CP_HighChange(1500,600,null,false);

	Wait(300);

	CreateSE("SE01","se戦闘_攻撃_鎧_剣戟01");
	MusicStart("SE01",0,1000,0,1000,null,false);

//	WaitPlay("SE01", null);
	Wait(800);
	OnSE("se戦闘_攻撃_鎧攻撃命中02",1000);

	CreateColorEXadd("フラッシュ白", 21000, "WHITE");
	Fade("フラッシュ白",100,1000,null,true);

	Delete("絵背景100");

	CreateTextureSP("絵背景50", 1000, Center, Middle, "cg/bg/resize/bg201_旋回演出背景市街地a_02.jpg");
	Move("絵背景50", 0, @0, @-200, AxlDxl, true);

	CP_RollBarMove("@絵背景50", 0, -20, null, true);

//嶋：ダメージポイント加算
//	CP_IHPChange(500,10,null,false);
//	MyLife_Count(500,300);



	Shake("@CP_Frame", 1000, 2, 5, 0, 0, 500, null, false);
	Shake("絵背景50", 1000, 3, 4, 0, 0, 500, null, false);
	CP_RollBarMove("@絵背景50", 600, 0, Axl1, false);
	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");


	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs1000a00">
「……ッッ」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs1010a01">
《敵騎攻撃、兜側面を擦過！
　危なかった……あと一瞬遅かったら、今頃
首が自由落下していたところね》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs1020a01">
《御堂、大丈夫？》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs1030a00">
「……っ、問題ない。
　それより今、どうして攻撃を察した？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs1040a01">
《探査機能を<RUBY text="みみ">信号探査</RUBY>から<RUBY text="はだ">熱源探査</RUBY>へと切り
替えてみたの。
　当たりだったみたいね。敵の能力はこちら
には及ばない様子よ》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs1050a00">
「そうか……
　流石に万能ではないか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　敵騎の隠身能力は視覚と通常探査からの隠蔽に限ら
れるらしい。
　ならばやりようはある――

　とは、言い難い。
　圧倒的不利は依然、動かしようもなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs1060a00">
「熱源探査に頼った戦闘は可能か？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs1070a01">
《……それは、無理よ。
　有効範囲が狭過ぎる》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　そういう事。
　熱源探査は本来陸戦用の補助機能に過ぎず、空での
使用は想定されていない。その性能はあくまで空中戦
と比べれば格段に戦場が狭い陸上戦に相応のものだ。

　陸戦を主眼に置かれた劔冑であれば通常より優秀な
熱源探査を備えていることもままあるが……その点、
村正はごくオーソドックスな仕様である。
　主戦場はあくまで空、従って熱源探査を重視しない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs1080a01">
《致命打を避けるのが関の山でしょうね……》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs1090a00">
「無いよりは良いが……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　霧隠の術とやらを破るには足りない。
　それには何か、もっと何か――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆適当に飛行



	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs1100a00">
「……村正」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs1110a01">
《なに？》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs1120a00">
「奴が消えてから、既に何秒経過した？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs1130a01">
《……！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
　答えはなかったが、俺の言わんとするところはすぐ
察したらしい。
　息を呑むような気配があった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs1140a00">
「陰義は多大な熱量を代償に発動する。
　強力なものであればあるほど消耗は激しい」

//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs1150a00">
「姿を消すようなふざけた術を延々と維持し
ながら、あまつさえ騎航し戦闘する……。
　必要な熱量はどれ程のものだ？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs1160a01">
《……法外な桁になるはずね。
　まともな人間ならとっくに熱量欠乏で墜落、
いえ、凍死していなくてはおかしい》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs1170a00">
「同意する。
　どうもこの相手には常識が通じぬようだ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
　植えつけられた〝卵〟の効果とも考え難い。
　あの真改――鈴川令法も強大な陰義を駆使したが、
<RUBY text="フリーズ">熱量欠乏</RUBY>は避けられずに墜ちていったのだ。

　果たして如何なる仕儀か。
　まったく見えてこない。まさしく五里霧中の只中に
ある心地がする。

　霧隠の術とはよくぞ言った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs1180a01">
《……どうするの？》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs1190a00">
「奴の〝卵〟の危険性はどうだ。
　見たところ孵化は近そうだったか？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs1200a01">
《いえ……そうね。
　正確にはわからないけれど、今日や明日と
いうことはないと思う》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs1210a00">
「そうか……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
　ならば状況は、一つの決断を促していた。

　状況。

　敵騎の慮外の力。
　自己の不調。

　――勝利の見込みなし。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs1220a00">
「この場の敗北を認める。
　戦域より離脱、後日の再戦を期す」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs1230a01">
《……諒解！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
　口惜しさを滲ませながら村正が応じる。

　その心持は理解できた。
　が、どうということでもない。

　<RUBY text="われら">村正</RUBY>にとって重要事は、目的を遂げる、唯一事のみ。
　必要ならば敗退も方法として選択する。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆反転

	OnSE("se戦闘_動作_空突進01",1000);

	CreateTextureEX("絵背景100", 500, Center, -5000, "cg/bg/bg201_旋回演出背景市街地_02.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	CP_SpeedChange(3000,350,null,false);
	CP_HighChange(3000,150,null,false);

	Move("@絵背景50", 1500, @0, @+200, null, false);
	CP_RollBarMove("@絵背景50",2000,180,Dxl1,true);
	Delete("@絵背景50");

	MyTr_Count(500,450);
	Move("絵背景100", 4500, @0, -500, Axl2, false);
	CP_SpeedChange(3000,540,null,false);

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


	CreateTextureSP("絵St100", 1000, Center, Middle, "cg/st/resize/3d村正標準_騎航_戦闘bm.png");

	Move("絵St100", 0, @+300, @0, Dxl1, true);

	CloudZoomSet(2000);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@-1224,@-100,Dxl2,true);

	Move("絵St100", 400, @-200, @0, Dxl1, false);
	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	BGMoveAuto("@絵St100",1);
	Shake_Loop("@絵St100","shake01");

	SetFwC("cg/fw/fw月山_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs1240b35">
《おやおや？
　ほっほぅ、あの村正が尻に帆を掛けておる
ぞ！　これは異なこと！》

//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs1250b35">
《まさかとは思うがこの老人と月山に、村正
ともあろう者が負けたというのかのう!?
　ほっほっほっ、そんな馬鹿な！》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs1260a01">
《……っ！》

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs1270a00">
《残念ではあるが御説の通り。
　交戦を継続すれば敗北は必至と判断した。
我々は撤退する》

{	FwC("cg/fw/fw月山_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/009vs1280b35">
《おおぅ、なんと情けない！
　あのお方が聞いたら何というやら！　何と
いって嘆くやら！　きっとこう云うのだろう
のぉ――景明、それで届くつもりか、と！》

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs1290a00">
《……く！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
　聞くな。
　重要なことは唯一つ――目的を遂げること！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	CloudZoomDelete(0,true);
	Cloud_MoveDelete();
	BGMoveDelete();
	Shake_LoopDelete();

	Delete("フラッシュ赤");
	Delete("絵St100");

	Cockpit_AllFade2();

	FrameShake();


	CreateTextureSP("絵背景50", 1000, Center, 0, "cg/bg/bg201_旋回演出背景市街地_02.jpg");
	Request("絵背景50", Smoothing);

	BGMoveAuto("@絵背景50",1);


	DrawDelete("黒幕１", 300, 100, "slide_01_01_0", true);


	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs1300a00">
《村正――降下！》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs1310a01">
《諒解……！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆降下

	BGMoveDelete();
	OnSE("se戦闘_動作_空突進02",1000);

	Move("絵背景50", 1500, @0, @-1000, AxlDxl, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0602]
　兜角を下げ、速度を上げる。
　……風が<RUBY text="・・・・">硬くなる</RUBY>。

　敵騎は速力重視の単鋭装甲。
　振り切れるかどうかは難しいところだが――やって
みるしかない。

　後方から追いすがって致命打を与えることは困難だ。
　武者の甲鉄は頑強至極、正面衝突の衝撃力があって
初めて斬り破ることが可能となる。

　それに地表へ近付けば攻撃は危険さを増す。
　敵の上方から降下攻撃を仕掛けたはいいがそのまま
地表へ激突、という結果になりかねないからだ。

　一撃二撃、食らうことは覚悟しておかねばならない。
　だが焦って手を誤らねば、過度の損害を被ることは
ない、筈――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs1320a01">
《……御堂ッッ!!》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs1330a00">
「!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆敵影急速接近。ロックオン
	CreateTextureEX("絵90", 14000, Center, Middle, "cg2/st/3d九〇式竜騎兵_騎突_戦闘b.png");
	Request("絵90",Smoothing);
	Zoom("絵90", 0, 0, 0, null, true);
	Fade("絵90", 0, 0, null, true);
	Move("絵90", 0, @0, @+100, null, true);
	SetBlur("絵90", true, 2, 300, 100, false);

	CockPit_LockSet(@0,@100);

	OnSE("se戦闘_動作_空突進01",1000);

	Fade("絵90", 100, 1000, null, false);
	CP_LockOnFade(300,"off",false);
	Zoom("絵90", 300, 200, 200, Dxl2, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0612]
　な――――
　新手ッ!?

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆急速接近

	OnSE("se戦闘_動作_空突進02",1000);
	CP_LockOnChangeW(300);
	CP_LockOnMove("@絵90",500,@0,@-100,Dxl2,false);
	Zoom("絵90", 500, 500, 500, Dxl3, true);

	SetFwR("cg/fw/fw九〇式_通常.png");

	SetBacklog("　　　　　《……お邪魔しますよ》", "voice/ma02/009vs1340a12", 雪車町);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/009vs1340a12">
　
　　　　　《……お邪魔しますよ》

</PRE>
	SetTextEXR();
	Request("@text0620", NoLog);
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆一閃、命中。どがーん。ひでー衝撃
//◆吹っ飛ばされ。ぐるぐる。
//◆モニターが赤くなる？　致命弾命中とかのノリ
	OnSE("se戦闘_動作_空突進03",1000);
	CP_LockOnMove("@絵90",500,@0,@-40,null,false);
	Zoom("絵90", 500, 1000, 1000, Axl3, false);

	Wait(380);

	CreateColorEX("絵色100", 20000, "Black");
	Fade("絵色100", 100, 1000, null, true);

	SL_rightup2(20010,@0, @0,1500);
	CreateSE("SE01c","se戦闘_攻撃_振る04");
	MusicStart("SE01c",0,1000,0,1000,null,false);
	SL_rightupfade2(15);

	CreateSE("SE01a","se戦闘_攻撃_鎧_剣戟02");
	CreateSE("SE01b","se戦闘_攻撃_鎧攻撃命中03");

	CreateColorEXadd("フラッシュ白", 22000, "WHITE");
	MusicStart("SE01a",0,750,0,750,null,false);
	MusicStart("SE01b",0,750,0,1000,null,false);
	Fade("フラッシュ白",100,1000,null,true);

	Delete("絵色100");

	CreateColorEXmul("redmask", 17000, "RED");
	Fade("redmask", 0, 500, null, true);

	Delete("絵90");
	CP_LockOnDelete();

	CreateTextureSP("絵背景50", 10100, Center, -576, "cg/bg/bg201_旋回演出背景市街地_02.jpg");
	SetBlur("絵背景50", true, 3, 300, 100, false);
	CreateSurfaceEX("絵効果サフ", 10000,2000,"@絵背景50");
	Fade("絵効果サフ", 0, 1000, null, true);

	CP_RollBarMove2(7500,680,DxlAxl,false);
	Rotate("絵効果サフ", 7500, @0, @0, @-680, DxlAxl,false);
	Move("絵背景50", 7500, @0, @-2304, DxlAxl, false);

	CP_PowerChange(300,200,null,false);
	CP_SpeedChange(10000,50,null,false);
	CP_AltChange(10000,-85,null,false);
	MyLife_Count(500,121);
	CP_IHPChange(500,1,null,false);
	Shake_Loop("@絵背景50","shake01");

	CreateSE("SE00","se戦闘_動作_空急降下01");
	MusicStart("SE00",2000,1000,0,350,null,false);

	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/009vs1350a01">
《なんて……不覚！
　<RUBY text="みみ">通常探査</RUBY>を断っていたから……見過ごした
……！》

{	FwR("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/009vs1360a00">
「く……おおっ!!」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

	SetFrequency("SE00", 3000, 1000, null);
	CP_RollBarMove("@絵背景50", 1000, @+45, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
　姿勢――制御！
　せめて……軟着陸を――――

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ぐらぐらしながら降下。地面が近付く
//◆ずどーん。
	SetVolume("@mbgm*", 2000, 0, null);

	CreateSE("SE01","se戦闘_動作_空落下01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorEX("絵色100", 20000, "Black");
	SetBlur("絵背景50", true, 3, 500, 50, false);

	Move("絵背景50", 2000, @0, @-500, null, false);
	Zoom("絵背景50", 1000, 2000, 2000, Dxl1, false);

	Fade("絵色100", 1000, 1000, Dxl1, true);

	WaitAction("SE01", null);

	Cockpit_AllFade0();

	Delete("絵効果*");
	Delete("redmask");
	Delete("絵背景50");

//◆空
//◆九〇式竜騎兵
	#av_九〇式竜騎兵=true;

	PrintGO("上背景", 30000);

	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/bg/bg002_空a_02.jpg");
	CreateTextureSP("絵st100", 1200, -420, -432, "cg/st/3d九〇式竜騎兵_騎航_通常.png");
	Request("絵st100", Smoothing);
	Rotate("絵st100", 0, @0, @0, @-15, null,true);

	BGMoveAuto("@絵st100",2);

	FadeDelete("上背景", 1000, true);

	SetFwR("cg/fw/fw九〇式_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/009vs1370a12">
「……クヒッ」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma02/009vs1380a12">
「クヒヒヒヒヒヒヒヒ……」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ウェイト
//◆黒

	Wait(2000);
	ClearWaitAll(2000, 2000);
	BGMoveDelete();

..//ジャンプ指定
//次ファイル　"ma02_010.nss"

}


