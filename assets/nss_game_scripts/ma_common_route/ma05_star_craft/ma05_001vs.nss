//<continuation number="380">

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

scene ma05_001vs.nss_MAIN
{

	$TITLE_NOW = "　";

//嶋：コックピット用Ｓｅｔ
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
	#ev126_青江にんまり笑い_a = true;
	#ev126_青江にんまり笑い_b = true;
	#ev126_青江にんまり笑い_c = true;

	//▼ルートフラグ、選択肢、次のGameName
	CP_AllDelete();

	#voice_on_青江=true;

	#av_青江貞次=true;

/*
	if($魔王編解放 == true){
		$Others_Flag = 4;
		$OthersFav_After = 4;
	}else if($一条死亡 == true){
		$Others_Flag = 4;
		$OthersFav_After = 4;
	}else if($香奈枝死亡 == true){
		$Others_Flag = 4;
		$OthersFav_After = 4;
	}else{
		$Others_Flag = 2;
		$OthersFav_After = 2;
	}
*/


	$PreGameName = $GameName;
	$GameName = "ma05_002.nss";

}

scene ma05_001vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_023.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}

//◆夕空
//◆戦闘音
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg002_空a_02.jpg");
	FadeBG(0,true);

	CreateSE("SE01","se戦闘_特殊_空中戦風景_L");
	MusicStart("SE01",2000,1000,0,800,null,true);

	WaitKey(2000);

	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　<RUBY text="いくさ">戦</RUBY>の作法を心得た武者同士の一騎打は、その噴煙が
空に<RUBY text="ふたわ">∞</RUBY>を描き出す。
　武者の戦闘が<RUBY text="ふたわがかり">双輪懸</RUBY>と呼ばれる所以である。

　劒冑の性能が拮抗している程――仕手の技量が肉迫
している程、双輪は完全で美しい。
　しかしどれほど美しく描こうと、その芸術は一瞬の
ものであり、当人達ですら見届ける事は叶わなかった。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm10",0,1000,true);
	SetVolume("SE*", 300, 0, null);

//◆村正ＶＳ〝ニッカリ〟青江貞次
	#av_青江貞次=true;

//◆ニッカリ青江は気色悪い笑顔を象った面相で。
//◆太刀打ち一合。ずがーん。
	CreateSE("SE001","se戦闘_動作_空突進01");
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_1.png", true);

	CreateTextureSP("絵演背景", 900, InRight, InTop, "cg/bg/resize/bg002_空a_02.jpg");
	CreateTextureSP("絵演空立絵", 1000, 120, -430, "cg/st/3d村正標準_騎航_戦闘a.png");

	MusicStart("SE001",0,1000,0,750,null,false);
	Move("絵演背景", 10000, @1024, @0, null, false);
	Move("絵演空立絵", 300, @-60, @10, DxlAuto, false);
	Shake("絵演空立絵", 2160000, 0, 4, 0, 0, 1000, null, false);

	DrawDelete("絵黒幕", 150, 100, "slide_01_03_0", true);

	Wait(650);

	CreateSE("SE01","se戦闘_動作_空突進02");
	MusicStart("SE01",0,1000,0,900,null,false);
	SetBlur("絵演空立絵", true, 1, 500, 60, true);
	Move("絵演空立絵", 200, @-5000, @300, Axl2, false);
	Zoom("絵演空立絵", 200, 3000, 3000, Axl2, true);

	WaitKey(500);

	CreateSE("SE001","se戦闘_動作_空突進01");
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	CreateTextureSP("絵演背景", 900, InLeft, InBottom, "cg/bg/resize/bg002_空a_02.jpg");
	CreateTextureSP("絵演空立絵", 1000, -900, -410, "cg/st/3d青江_騎航_戦闘.png");
	MusicStart("SE001",0,1000,0,750,null,false);

	Move("絵演背景", 10000, @-1024, @0, null, false);
	Move("絵演空立絵", 300, @600, @-10, DxlAuto, false);
	Shake("絵演空立絵", 2160000, 0, 4, 0, 0, 1000, null, false);

	DrawDelete("絵黒幕", 150, 100, "slide_01_03_1", true);

	Wait(650);

	CreateSE("SE01","se戦闘_動作_空突進02");
	MusicStart("SE01",0,1000,0,900,null,false);
	SetBlur("絵演空立絵", true, 1, 500, 60, true);
	Move("絵演空立絵", 200, @5000, @-300, Axl2, false);
	Zoom("絵演空立絵", 200, 800, 800, Axl2, true);

	CreateColorSP("絵色黒", 5000, "#000000");
	DrawTransition("絵色黒", 200, 0, 1000, 100, null, "cg/data/circle_01_00_1.png", true);
	CreateSE("SE02","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE02",0,1000,0,1500,null,false);
	SL_centerin2(5100,@0, @0,2000);
	SL_centerinfade2(10);

	Delete("絵色黒");
	Delete("絵演*");

	CreateSE("SE01","se戦闘_衝撃_攻撃交錯02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵白転", 20000, "#FFFFFF");

//あきゅん「ＣＰ：必須定義まとめ」
	Cockpit_AllFade2();

	MyLife_Count(0,680);
	CP_IHPChange(0,10,null,false);
	CP_PowerChange(0,1000,null,false);

	CP_SpeedChange(0,570,null,false);
	MyTr_Count(0,463);

	CP_HighChange(0,1212,null,false);
	CP_AziChange(0,47,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,null,true);

	FrameShake();

	CreateTextureSP("絵背景百", 110, Center, -5486, "cg/bg/bg202_旋回演出背景山a_02.jpg");
	CreateSurfaceEX("絵効果サフ", 100,1000,"@絵背景百");
	Fade("絵効果サフ", 0, 1000, null, true);

	MoveFFP1("@絵背景百",20000);

	CreateSE("SEL01a","se戦闘_動作_空走行01_L");
	CreateSE("SEL01b","se戦闘_動作_空走行02_L");
	MusicStart("SEL01a",2000,750,0,1000,null,true);
	MusicStart("SEL01b",2000,750,0,1500,null,true);
	FadeDelete("絵白転", 1000, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/001vs0010a01">
《御堂！
　またあの気色悪い<RUBY text="・・">笑み</RUBY>が来る！》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/001vs0020a00">
「性懲りもなく。
　ニッカリとは良く言ったものだが」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色黒", 20000, "#000000");

//◆反転
//あきゅん「演出：ＣＰで反転して突進」
	MoveFFP1stop();

	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵効果サフ", 2800, 2000, 2000, null, false);
	CP_SpeedChange(300,614,null,false);
	MyTr_Count(300,494);

	Move("絵背景百", 3000, @0, -350, Axl2, false);
	CP_HighChange(3000,1540,null,false);
	CP_AltChange(1250,90,AxlDxl,false);

	Wait(1250);
	Wait(250);

	CP_RollBar_ADelete();
	CP_RollBarMove2(0,-180,null,true);
	CP_AziChange(2000,225,Dxl2,false);

	Wait(250);

	CP_AltChange(2000,0,AxlDxl,false);

	Wait(1250);

	WaitZoom("絵効果サフ", null);
	Move("絵背景百", 2000, @0, -100, Dxl2, false);
	CP_HighChange(2000,1488,DxlAuto,false);
	Rotate("絵効果サフ", 1200, @0, @0, @-180, AxlDxl,false);
	CP_RollBarMove2(1200,0,AxlDxl,false);

	Wait(1600);

//◆突進ー。
	Zoom("絵効果サフ", 150, 1500, 1500, Dxl2, false);

	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵色黒", 0, 1000, null, true);
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	CreateTextureSP("絵背景百", 110, Center, -5190, "cg/bg/bg202_旋回演出背景山a_02.jpg");
	CreateSurfaceEX("絵効果サフ", 100,1000,"@絵背景百");
	Fade("絵効果サフ", 0, 1000, null, true);
	MoveFFP1("@絵背景百",20000);

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,AxlDxl,false);

	DrawDelete("絵色黒", 150, 1000, "circle_01_00_1", true);

	Wait(500);

	CreateSE("SE01","se戦闘_動作_空突進02");
	CreateTextureEX("絵演青江幻", 1110, Center, -290, "cg/st/resize/3d青江_立ち_抜刀bs.png");
	CreateTextureEX("絵演青江", 1100, Center, -290, "cg/st/resize/3d青江_立ち_抜刀bs.png");
	Request("絵演青江*", Smoothing);
	Zoom("絵演青江*", 0, 60, 60, null, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵演青江*", 300, @0, -320, DxlAuto, false);
	Fade("絵演青江", 300, 1000, null, true);

	CreateSE("SE01a","se特殊_コックピット_起動音02");
	MusicStart("SE01a",0,1000,0,1000,null,false);

//嶋：変更
	CP_EnemyFade(300,7,480,444);
//	CP_EHPChange(300,7,null,true);
//	EnLife_Count(300,480);
//	EnTr_Count(300,444);

	MoveFRP1("@絵演青江",40000,10,10);
	MoveFRP2("@絵演青江幻",30000,20,20);

	SetFwR("cg/fw/fw青江_通常.png");

	#voice_on_青江=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【青江】
<voice name="青江" class="青江" src="voice/ma05/001vs0030b41">
《呵！　呵！
　呵呵呵呵呵呵呵呵呵呵!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	Zoom("絵演青江*", 100000, 400, 400, null, false);
	Fade("絵演青江幻", 2000, 500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　奇妙に粘っこい大笑が虚空を渡る。
　それが可笑しさの表現でない事は既にわかっていた。

　あれは<RUBY text="コマンド">呪句</RUBY>だ。
　空気が震え、ゆらめき――幻像を形作る。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 300, 0, null);

//◆ニッカリの笑い面ズームアップ
//◆それがなんか恐ろしげなもんに変化
//◆音響効果もつけるか。キシャー。
	CreateSE("SE01","se特殊_陰義_幻影01");
	MusicStart("SE01",0,1000,0,1500,null,false);
	CreateColorSPadd("絵色白", 20000, "#FFFFFF");
	CreateTextureSP("絵演ＥＶ", 19100, Center, Middle, "cg/ev/ev126_青江にんまり笑い_a.jpg");
	CreateTextureEXadd("絵演ＥＶ上", 19110, Center, Middle, "cg/ev/ev126_青江にんまり笑い_a.jpg");
	FadeDelete("絵色白", 500, false);
	Zoom("絵演ＥＶ上", 500, 1500, 1500, Dxl2, false);
	Fade("絵演ＥＶ上", 250, 1000, null, true);
	Fade("絵演ＥＶ上", 250, 0, DxlAuto, true);

	Delete("絵St*");
	Delete("@Cloud*");
	Delete("@BGMAP*");
	Delete("@shake*");

	SetFwR("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/001vs0040a00">
《その手にはもう飽いている！》

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//――――――――――――――――――――――――

//◆村正剣閃
	CreateColorSP("絵色黒", 10000, "#000000");
	CreateSE("SE01","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_leftdown2(20010,@0, @0,2000);
	SL_leftdownfade2(10);

//◆ずばー。
	CreateColorSP("絵白転", 30000, "#FFFFFF");
	Delete("絵色黒");
	Delete("絵演ＥＶ*");
	Delete("絵演青江*");
	CreateSE("SE01a","se戦闘_攻撃_鎧攻撃命中");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	WaitKey(10);
	FadeDelete("絵白転", 300, false);
	CreatePlainSP("絵板写", 4999);
	FadeFR2("絵板写",0,1000,300,0,0,30,Dxl3, true);
	Delete("絵板写");

	SetFwR("cg/fw/fw青江_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【青江】
<voice name="青江" class="青江" src="voice/ma05/001vs0050b41">
「がひっっっ!?」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/001vs0060a00">
《種の尽きた<RUBY text="マジシャン">奇術師</RUBY>は退場の頃合だ。
　貴様が手に掛けた人々のもとへ去れ、青江》

{	FwR("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/001vs0070a00">
《……いずれは俺も其処へゆく。
　怨讐はその時に承ろう》

{	FwR("cg/fw/fw青江_通常.png");}
//【青江】
<voice name="青江" class="青江" src="voice/ma05/001vs0080b41">
《ぬっ……か、せェェェェェェェェ!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色黒", 20000, "#000000");

//◆騎航戦演出てきとー。
	MoveFFP1stop();

	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵効果サフ", 2800, 2000, 2000, null, false);
	CP_SpeedChange(300,614,null,false);
	MyTr_Count(300,494);

	Move("絵背景百", 3000, @0, -350, Axl2, false);
	CP_HighChange(3000,1540,null,false);
	CP_AltChange(1250,90,AxlDxl,false);

	Wait(2000);

	CreateSE("SE01a","se戦闘_動作_空突進01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Fade("絵色黒", 0, 1000, null, true);
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Cockpit_AllFade0();
	Delete("絵背景百");
	Delete("絵効果サフ");
	MoveFRP1stop();
	MoveFRP2stop();

	CreateTextureSP("絵演青江", 1100, -700, -230, "cg/st/3d青江_騎航_戦闘.png");
	CreateTextureSP("絵演背景", 100, InLeft, Middle, "cg/bg/bg204_横旋回背景b_02.jpg");
	Move("絵演背景", 40000, -5088, @0, DxlAuto, false);
	Move("絵演青江", 450, -225, -400, Dxl2, false);
	Shake("絵演青江", 2160000, 2, 1, 0, 0, 1000, null, false);

	DrawDelete("絵色黒", 150, 1000, "slide_01_03_0", true);

	SetFwR("cg/fw/fw青江_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【青江】
<voice name="青江" class="青江" src="voice/ma05/001vs0090b41">
《我が〝ニッカリ〟が貴様などに劣るものか！
　貴様などにィ！》

//【青江】
<voice name="青江" class="青江" src="voice/ma05/001vs0100b41">
《村正ァ!!
　妖甲の名は貴様より、我が劔冑にこそ相応
しいィィィ!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵演青江", 300, 2048, @0, Axl3, false);

	Wait(1000);

	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_02_1.png", true);

	CreateTextureSP("絵演村正", 1100, 450, -460, "cg/st/3d村正標準_騎航_戦闘a.png");
	CreateTextureSP("絵演背景", 100, InRight, Middle, "cg/bg/bg204_横旋回背景b_02.jpg");
	Move("絵演背景", 40000, 0, @0, DxlAuto, false);
	Move("絵演村正", 450, 10, -340, Dxl2, false);
	Shake("絵演村正", 2160000, 2, 1, 0, 0, 1000, null, false);

	CreateSE("SE01a","se戦闘_動作_空突進03");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	DrawDelete("絵色黒", 150, 100, "slide_01_02_1", true);

	SetFwL("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/001vs0110a01">
《……人の趣味はそれぞれだけど。
　まさか、<RUBY text="・・・・・">そんなもの</RUBY>を欲しがられるとはね》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵演村正", 300, -2048, @0, Axl3, false);

	Wait(1000);

//◆再び相突進
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	Delete("絵演*");

	CreateMask("絵覆", 6000, 0, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("絵覆","絵覆");
	CreateTextureSP("絵覆/絵演背景", 6000, -193, -980, "cg/bg/bg202_旋回演出背景山_02.jpg");
	CreateTextureSP("絵覆/絵演立絵", 6100, 81, -280, "cg/st/3d村正標準_騎突_戦闘.png");
	Request("絵覆/絵演立絵", Smoothing);
	Rotate("絵覆/絵演立絵", 0, @0, @0, @20, null,true);
	Zoom("絵覆/絵演立絵", 0, 850, 850, null, true);

	CreateTextureSP("絵演背景", 100, -30, -1180, "cg/bg/bg201_旋回演出背景市街地_02.jpg");
	CreateTextureSP("絵演青江", 1000, -250, -160, "cg/st/resize/3d青江_立ち_抜刀bs.png");

	CreatePlainEX("絵板写", 7000);
	Fade("絵板写", 0, 500, null, true);
	Zoom("絵板写", 0, 1500, 1500, null, true);
	SetBlur("絵板写", true, 3, 500, 60, false);

	CreateSE("SE01a","se戦闘_動作_空急降下01");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	FadeDelete("絵板写", 400, false);
	Zoom("絵板写", 450, 1000, 1000, Dxl2, false);
	DrawDelete("絵色黒", 150, 100, "zoom_01_00_0", true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/001vs0120a01">
《でもくれてはやれない、青江貞次。
　それがおまえに負けることを意味するなら》

{	FwC("cg/fw/fw青江_通常.png");}
//【青江】
<voice name="青江" class="青江" src="voice/ma05/001vs0130b41">
《呵呵呵ァ――》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆再び幻像
	CreateSE("SE01","se特殊_陰義_幻影01");
	MusicStart("SE01",0,1000,0,1500,null,false);
	CreateColorSPadd("絵色白", 20000, "#FFFFFF");
	CreateTextureSP("絵演ＥＶ", 18100, Center, Middle, "cg/ev/ev126_青江にんまり笑い_a.jpg");
	CreateTextureEXadd("絵演ＥＶ上", 18110, Center, Middle, "cg/ev/ev126_青江にんまり笑い_a.jpg");
	FadeDelete("絵色白", 500, false);
	Zoom("絵演ＥＶ上", 500, 1500, 1500, Dxl2, false);
	Fade("絵演ＥＶ上", 250, 1000, null, true);
	Fade("絵演ＥＶ上", 250, 0, DxlAuto, true);

	Delete("絵覆");
	Delete("絵演青江");

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/001vs0140a01">
《私は<RUBY text="・・">生前</RUBY>からおまえのことを良く知ってる。
　私たちは同じ時代にいたのだものね》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/001vs0150a01">
《青江一門の面汚し！
　幾人もの仕手を惑わし唆し、女子供ばかり
を狙って殺戮させた希代の駄作。おまえなど、
<RUBY text="・・・・・・・・・・・・・・・・">鋳潰されて仏像にでもなってしまえ</RUBY>!!》

{	FwC("cg/fw/fw青江_通常.png");}
//【青江】
<voice name="青江" class="青江" src="voice/ma05/001vs0160b41">
《――吐いたな、村正！
　劔冑に向かってその台詞をォ!!》

//【青江】
<voice name="青江" class="青江" src="voice/ma05/001vs0170b41">
《許さんンンッ!!》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆幻像が更に変化
//◆超エグイ方向へ。
//◆音響効果もえれー感じに。
	CreateSE("SE01","se特殊_陰義_幻影01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetFrequency("SE01", 2000, 500, AxlDxl);
	CreateColorSPadd("絵色白", 20000, "#FFFFFF");
	CreateTextureSP("絵演ＥＶ", 18100, Center, Middle, "cg/ev/ev126_青江にんまり笑い_b.jpg");
	CreateTextureEXadd("絵演ＥＶ上", 18110, Center, Middle, "cg/ev/ev126_青江にんまり笑い_b.jpg");
	FadeDelete("絵色白", 500, false);
	Zoom("絵演ＥＶ上", 500, 1500, 1500, Dxl2, false);
	Fade("絵演ＥＶ上", 250, 1000, null, true);
	Fade("絵演ＥＶ上", 250, 0, DxlAuto, true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/001vs0180a00">
「……ッッ」

{	FwC("cg/fw/fw青江_通常.png");}
//【青江】
<voice name="青江" class="青江" src="voice/ma05/001vs0190b41">
《どぉぅだァ！
　死ィッ、ねェェェェェェェェェ!!》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆青江、剣撃
	CreateColorSP("絵色黒面", 20000, "#000000");
	CreateColorSP("絵色黒", 100, "#000000");
	Wait(10);
	Delete("絵演ＥＶ*");
	Delete("絵色黒面");

	CreateSE("SE01","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_rightdown(@0, @0,2000);
	SL_rightdownfade(0);

	WaitKey(200);

//◆弾き返して一撃。どぎゃー。
	CreateSE("SE01","se戦闘_攻撃_剣戟弾く01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPover("絵演上", 3100, Center, Middle, "cg/ef/ef044_火花a.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ef/ef044_火花a.jpg");
	SetBlur("絵演上", true, 3, 300, 100, false);

	Delete("絵黒幕");
	Delete("@slash*");

	Zoom("絵演上", 500, 1100, 1100, Dxl1, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	WaitKey(250);
	FadeDelete("絵演上", 250, true);

	CreateColorSP("絵白転", 5000, "#FFFFFF");
	CreateSE("SE02","se戦闘_攻撃_鎧攻撃命中03");
	MusicStart("SE02",0,1000,0,1000,null,false);
	WaitKey(10);

	Delete("絵演*");

	CreateTextureSP("絵演青江", 1110, 270, -190, "cg/st/resize/3d青江_立ち_抜刀bs.png");
	Zoom("絵演青江", 0, 950, 950, null, true);
	CreateTextureSP("絵演村正", 1100, -345, -260, "cg/st/3d村正標準_騎航_通常4a.png");
	Zoom("絵演村正", 0, 600, 600, null, true);
	Request("絵演*", Smoothing);

	CreateTextureSP("絵演背景", 100, Center, Middle, "cg/bg/resize/bg002_空a_02.jpg");

	Zoom("絵演村正", 10000, 500, 500, null, false);
	Move("絵演村正", 10000, -446, -270, DxlAuto, false);

	Zoom("絵演青江", 10000, 1000, 1000, null, false);
	Move("絵演青江", 10000, 310, -170, DxlAuto, false);

	FadeDelete("絵白転", 300, false);

	CreatePlainEX("絵板写", 2000);
	Fade("絵板写", 0, 500, null, true);
	Zoom("絵板写", 1000, 1250, 1250, null, false);
	FadeFR2("絵板写",0,500,300,0,0,30,Dxl3, true);
	FadeDelete("絵板写", 700, false);

	SetFwC("cg/fw/fw青江_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【青江】
<voice name="青江" class="青江" src="voice/ma05/001vs0200b41">
「がっ……はァッッ!?」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/001vs0210a00">
《……飽いたと言った》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色黒", 20000, "#000000");

	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("絵演村正", 300, 300, 300, Axl3, false);
	Move("絵演村正", 300, -1024, -320, Axl3, false);

	Zoom("絵演青江", 300, 1100, 1100, null, false);
	Move("絵演青江", 300, 370, -140, DxlAuto, false);

	Wait(300);

	Fade("絵色黒", 0, 1000, null, true);
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Delete("絵演*");

	Cockpit_AllFade2();

	MyLife_Count(0,680);
	CP_IHPChange(0,10,null,false);
	CP_PowerChange(0,900,null,false);

	CP_SpeedChange(0,570,null,false);
	MyTr_Count(0,463);

	CP_HighChange(0,1150,null,false);
	CP_AziChange(0,135,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,null,true);

	CreateTextureSP("絵背景百", 100, Center, -5536, "cg/bg/bg203_旋回演出背景海a_02.jpg");
	CreateSurfaceEX("絵効果サフ", 100,1000,"@絵背景百");
	Fade("絵効果サフ", 0, 1000, null, true);

	CreateSE("SEL01a","se戦闘_動作_空走行01_L");
	CreateSE("SEL01b","se戦闘_動作_空走行02_L");
	MusicStart("SEL01a",2000,750,0,1000,null,true);
	MusicStart("SEL01b",2000,750,0,1500,null,true);

	FrameShake();
	MoveFFP1("@絵背景百",10000);

	DrawDelete("絵色黒", 150, 1000, "circle_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　大きく姿勢を崩し、乱騎航を始める騎影に向かって
呟きを送る。
　<RUBY text="つかいて">快楽殺人者</RUBY>と<RUBY text="つるぎ">殺人嗜好劔冑</RUBY>――惹き合い遂には<RUBY text="・・">融合</RUBY>
した様子の<RUBY text="あおえ">両者</RUBY>の意識は、それを聴き留めたかどうか。

　極上の甲鉄に守られて、いまだ致命打には至ってい
ない。だが戦闘力はほぼ尽きている筈だった。
　あと一撃を重ねれば、敵騎――第六の<RUBY text="ヘイタイアリ">寄生体</RUBY>は活動
を停止するだろう。

　今回も危ういところではあったが、辛うじて〝卵〟
の孵化は防げそうだった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw青江_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【青江】
<voice name="青江" class="青江" src="voice/ma05/001vs0220b41">
《何故だァァァァ!!
　何故貴様は耐えられるぅぅぅぅ!!》

//【青江】
<voice name="青江" class="青江" src="voice/ma05/001vs0230b41">
《この青江の見せる地獄がァ！　悪夢がァ！
　どうして<RUBY text="こた">堪</RUBY>えぬのだァァァァァ!?》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/001vs0240a00">
《地獄か。悪夢か。
　そんなものは、貴様に見せてもらうまでも
ない》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/001vs0250a00">
《<RUBY text="・・">自前</RUBY>で見尽くしている。
　貴様の見せるただの幻など、生憎だが、俺
には不出来な前衛芸術としか思えぬ》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/001vs0260a00">
《ピカソ氏のゲルニカに学んで表現力を磨け》

{	FwC("cg/fw/fw青江_通常.png");}
//【青江】
<voice name="青江" class="青江" src="voice/ma05/001vs0270b41">
《ぬぅぅ――》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色黒", 20000, "#000000");

//◆反転
	MoveFFP1stop();

	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵効果サフ", 2800, 2000, 2000, null, false);
	CP_SpeedChange(300,614,null,false);
	MyTr_Count(300,494);

	Move("絵背景百", 3000, @0, -350, Axl2, false);
	CP_HighChange(3000,1540,null,false);
	CP_AltChange(1250,90,AxlDxl,false);

	Wait(1250);
	Wait(250);

	CP_RollBar_ADelete();
	CP_RollBarMove2(0,-180,null,true);
	CP_AziChange(2000,-42,Dxl2,false);

	Wait(250);

	CP_AltChange(2000,0,AxlDxl,false);

	Wait(1250);

	WaitZoom("絵効果サフ", null);
	Move("絵背景百", 2000, @0, -100, Dxl2, false);
	CP_HighChange(2000,1488,DxlAuto,false);
	Rotate("絵効果サフ", 1200, @0, @0, @-180, AxlDxl,false);
	CP_RollBarMove2(1200,0,AxlDxl,false);

	Wait(1600);

//◆村正上、敵騎下方
	Zoom("絵効果サフ", 150, 1500, 1500, Dxl2, false);

	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵色黒", 0, 1000, null, true);
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	CreateTextureSP("絵背景百", 110, Center, -5340, "cg/bg/bg202_旋回演出背景山a_02.jpg");
	CreateSurfaceEX("絵効果サフ", 100,1000,"@絵背景百");
	Fade("絵効果サフ", 0, 1000, null, true);
	MoveFFP1("@絵背景百",20000);

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,AxlDxl,false);

	DrawDelete("絵色黒", 150, 1000, "circle_01_00_1", true);

	Wait(500);

	CreateSE("SE01","se戦闘_動作_空突進02");
	CreateTextureEX("絵演青江幻", 1110, Center, -130, "cg/st/resize/3d青江_立ち_抜刀bs.png");
	CreateTextureEX("絵演青江", 1100, Center, -130, "cg/st/resize/3d青江_立ち_抜刀bs.png");
	Request("絵演青江*", Smoothing);
	Zoom("絵演青江*", 0, 60, 60, null, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵演青江*", 300, @0, -120, DxlAuto, false);
	Fade("絵演青江", 300, 1000, null, true);

	CreateSE("SE01a","se特殊_コックピット_起動音02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CP_EHPChange(300,4,null,true);
	EnLife_Count(300,265);
	EnTr_Count(300,243);

	MoveFRP1("@絵演青江",40000,10,10);
	MoveFRP2("@絵演青江幻",30000,20,20);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　敵影を<RUBY text="モニター">視界</RUBY>内に収める。
　流暢さとは無縁の動きながら、敵も体勢を取り直し
ていた。

　逃走の選択を捨てたのは矜持ゆえか、怒りゆえか。
それとも速度差を見越しての計算か。
　いずれにしても、こちらのすべきことに変化は無い。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/001vs0280a00">
「村正。次で仕留める。
　この期に及んで暇を与え、孵化を許しては
元も子もない」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/001vs0290a01">
《諒解。
　見苦しい代物を始末してやりましょう》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	MoveFRP1stop();
	MoveFRP2stop();

//◆突進
	CreateSE("SE01","se特殊_鎧_駆動音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵背景百", 800, @0, -5480, DxlAuto, false);
	CP_AltChange(1600,-16,AxlDxl,false);
	CP_HighChange(30000,1310,null,false);

	Move("絵演青江*", 800, @0, -260, DxlAuto, true);

	MoveFRP1("@絵演青江",40000,10,10);
	MoveFRP2("@絵演青江幻",30000,20,20);

	CreateSE("SE01a","se戦闘_動作_空突進03");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演速度", 5000, Center, Middle, "cg/ef/ef034_精神汚染.jpg");
	Zoom("絵演速度", 300, 1500, 1500, null, false);
	FadeDelete("絵演速度", 1000, false);

	Zoom("絵演青江*", 300000, 500, 500, null, false);
	Zoom("絵効果サフ", 300000, 3000, 3000, null, false);
	CP_SpeedChange(300,630,null,false);
	MyTr_Count(300,506);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　降下進撃を開始する。
　敵騎も応じて駆け上がって来る。勝負を捨てぬその
意気地は見上げたものだが。

　高度差。速度差。負傷の度による身体能力差。
　全てにおいて、既に勝敗は決している――――

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw青江_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【青江】
<voice name="青江" class="青江" src="voice/ma05/001vs0300b41">
《……悪夢も、地獄も通じぬと云うなら。
　これでどうだ》

{	FwR("cg/fw/fw青江_通常.png");}
//【青江】
<voice name="青江" class="青江" src="voice/ma05/001vs0310b41">
《呵！　呵！
　呵ァッ呵呵呵呵呵呵呵呵呵!!》

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

//◆幻像
	CreateSE("SE01","se特殊_陰義_幻影01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 20000, "#FFFFFF");
	CreateTextureSPover("絵演ＥＶ", 18100, Center, Middle, "cg/ev/ev126_青江にんまり笑い_a.jpg");
	CreateTextureEXadd("絵演ＥＶ上", 18110, Center, Middle, "cg/ev/ev126_青江にんまり笑い_a.jpg");
	FadeDelete("絵色白", 500, false);
	Zoom("絵演ＥＶ上", 500, 1500, 1500, Dxl2, false);
	Fade("絵演ＥＶ上", 250, 1000, null, true);
	Fade("絵演ＥＶ上", 250, 0, DxlAuto, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　笑声に乗って、幻が展開する。
　この空でもう幾度となく見た光景だ。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/001vs0320a01">
《しつこい馬鹿ね！》

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/001vs0330a00">
「己の<RUBY text="わざ">陰義</RUBY>に殉ずるか――？」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureSPover("絵演ＥＶ２", 18090, Center, Middle, "cg/ev/ev126_青江にんまり笑い_b.jpg");
	DrawDelete("絵演ＥＶ", 1000, 100, "wave_01_00_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　幻像が徐々に形を取る。
　今更何を見せられようと、飽きた観衆としては欠伸
を洩らす以外にない――

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

//◆幻像
	CreateSE("SOUND01","se特殊_陰義_幻影01");
	MusicStart("SOUND01",0,1000,0,1000,null,false);
	CreateTextureSPover("絵演ＥＶ３", 18080, Center, Middle, "cg/ev/ev126_青江にんまり笑い_c.jpg");
	DrawDelete("絵演ＥＶ２", 1000, 100, "wave_01_00_0", true);

//◆養母。初対面時の笑顔？
	SetVolume("SE*", 100, 0, null);
	SetVolume("@mbgm*", 100, 0, null);
	CreateTextureSP("絵演ＥＶ４", 18100, -283, -45, "cg/ev/resize/ev132_笑う統m.jpg");
	CreateTextureSPsub("絵演ＥＶ４面", 18110, -273, -37, "cg/ev/resize/ev132_笑う統m.jpg");
	FadeFR4("絵演ＥＶ４面",0,750,80,0,0,30,Dxl2,true);
	Delete("絵演ＥＶ４*");

	SetFwR("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/001vs0340a00">
「――なっ――」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　何故。
　なぜ、こんな、ものが。

　
　　　　　　　　　……<RUBY text="すばる">統</RUBY>様。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw青江_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【青江】
<voice name="青江" class="青江" src="voice/ma05/001vs0350b41">
《ははははははは！
　何が見えた!?　何が見えたァ！》

//【青江】
<voice name="青江" class="青江" src="voice/ma05/001vs0360b41">
《それは貴様の<RUBY text="・・・">安らぎ</RUBY>だ!!
　地獄の冷たさには耐えられようと――その
温かさには抗えまい!?》

//【青江】
<voice name="青江" class="青江" src="voice/ma05/001vs0370b41">
《沈め！
　安らぎの夢に沈んでしまえぇぇェェェ!!》

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/001vs0380a01">
《御堂――――!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆養母の幻に呑まれる
//◆ホワイトアウト
	CreateSE("SE01","se特殊_雰囲気_発光02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureEX("絵演ＥＶ４", 18100, -283, -45, "cg/ev/resize/ev132_笑う統m.jpg");
	CreateTextureEXmul("絵演ＥＶ４面", 18110, -283, -45, "cg/ev/resize/ev132_笑う統m.jpg");
	CreateColorEXadd("絵色白", 30000, "#FFFFFF");
	Fade("絵演ＥＶ４", 3000, 1000, null, false);
	FadeFR4("絵演ＥＶ４面",3000,1000,3000,0,0,20,Dxl2,false);
	Fade("絵色白", 2600, 1000, null, true);

	CP_AllDelete();

	WaitPlay("SE*", null);

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma05_002.nss"

