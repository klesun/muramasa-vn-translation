//<continuation number="190">

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

scene mc01_020vs.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/mc01_020vs.nss","DelusionIn",true);
	Conquest("nss/mc01_020vs.nss","LensMove",true);
	

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

	Request("@レンズ１", UnLock);
	Request("@レンズプロセス１", UnLock);
	Request("レンズ１", UnLock);
	Request("レンズプロセス１", UnLock);
	Delete("@レンズプロセス１");
	Delete("レンズプロセス１");
	Delete("@レンズ１");
	Delete("レンズ１");

	Cockpit_AllFade0();

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene mc01_020vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_019vsaa.nss"
//前ファイル　"mc01_019vsab.nss"
//前ファイル　"mc01_019vsb.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}

//◆合流
	SoundPlay("@mbgm10",0,1000,true);

	PrintBG("上背景", 30000);
	CreateSE("SEL01a","se戦闘_動作_空走行02_L");
	CreateSE("SEL01b","se戦闘_動作_空走行02_L");
	CreateColorSP("絵色黒", 20000, "#000000");
	CreateTextureSP("絵背景", 100, Center, InBottom, "cg/bg/bg202_旋回演出背景山a_01.jpg");
	CreateTextureSP("絵演村正立絵", 1000, Center, Middle, "cg/st/3d村正標準_騎航_通常3b.png");
	SetBlur("絵演村正立絵", true, 2, 300, 150, false);
	Move("絵演村正立絵", 0, @-380, @60, null, true);

	MusicStart("SEL01a",1000,1000,0,500,null,true);
	MusicStart("SEL01b",1000,500,0,2000,null,true);
	Shake("絵演村正立絵", 2160000, 2, 1, 0, 0, 1000, null, false);
	Move("絵演村正立絵", 2300, @30, @-60, Dxl2, false);
	Fade("絵演村正立絵", 300, 1000, null, true);

	Delete("上背景");
	FadeDelete("絵色黒", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……兎も角も趨勢は定まったと云えるだろう。
　重装甲を恃んで執拗に食い下がる敵騎を<RUBY text="くだ">降</RUBY>すのは骨
だが、こちらが焦って隙を見せでもしない限り、まず
負ける要素はない。

　<RUBY text="もっと">尤</RUBY>も、それはそれで充分に難儀ではある。
　焦るべき理由がこちらにはあった――目の前の敵と
おそらく同じ旗を仰ぐのであろう誰かが建朝寺の舞殿
宮を今まさに襲っているかもしれないのだ。

　そう思えば、腹の下に焦燥の火が<RUBY text="・・・・">ちりちり</RUBY>と<RUBY text="くすぶ">燻</RUBY>る。
　つまるところ最大の敵は自分自身の<RUBY text="こころ">精神</RUBY>に他ならな
かった。

　冷静さの維持が何より肝要だ……。
　手を急いで打ち負かされては元も子もないのだから。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 500, 0, null);
	SetBlur("絵演村正立絵", true, 0, 500, 200, false);


//◆反転
	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("絵演村正立絵", 600, 1250, 1250, Axl2, false);
	Move("絵演村正立絵", 600, @-700, @576, Axl2, true);

	SetBlur("絵背景", true, 2, 500, 60, false);
	Move("絵背景", 1800, @0, 0, Axl2, false);

	Wait(1400);

	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	CreateTextureSP("絵背景", 100, Center, InTop, "cg/bg/resize/bg002_空a_01.jpg");
	Wait(700);

	Move("絵背景", 650, @0, @-100, Dxl2, false);
	DrawDelete("絵色黒", 150, 100, "slide_02_01_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　弧を描いて回り、再び敵影を正面視界に収める。
　
　――――良し。<RUBY text="こし">旋回性</RUBY>の鈍い敵騎は進撃態勢の再興
が遅れている様子だ。

　今の内に押し出し、優位を確保するに如かず！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆進撃
	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Delete("絵演村正立絵");

	CreateSE("SEL01a","se戦闘_動作_空走行02_L");
	CreateSE("SEL01b","se戦闘_動作_空走行02_L");
	CreateTextureSP("絵背景", 100, Center, InTop, "cg/bg/bg201_旋回演出背景市街地_01.jpg");

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

	$合体戦生命基本値 = 9;
	if($First_Battle_Damage >= 1){
		$合体戦生命調整値 = $合体戦生命基本値 - ($First_Battle_Damage*3);
	}else{
		$合体戦生命調整値 = $合体戦生命基本値 ;
	}

	CP_IHPChange(0,$合体戦生命調整値,null,false);

	MyTr_Count(0,440);
	CP_SpeedChange(0,531,null,false);

	CP_PowerChange(0,680,null,false);

	CP_HighChange(0,1800,null,false);
	CP_AziChange(0,251,null,false);
	CP_AltChange(0,-2,null,false);
	CP_AltChangeA();

	CP_RollBarMove2(0,0,null,true);

	FrameShake();

//あきゅん「ＣＰ：俯角が下に向いているので微妙に降下させる」
	CP_HighChange(60000,1673,null,false);
	Move("絵背景", 60000, @0, @-288, null, false);

	MusicStart("SEL01a",1000,1000,0,500,null,true);
	MusicStart("SEL01b",1000,500,0,2000,null,true);

	DrawDelete("絵色黒", 150, 100, "circle_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　母衣の制御を誤りでもしたのか、敵はこちらが指呼
の距離まで迫ってようやく転回を終えた。
　今更突撃を仕掛けようが、ろくに勢威など得られる
わけはない。

　今が――好機！
　損傷を与えやすい部位を狙って打つだけの余裕すら
ある。

{	CreateSE("SE02","se戦闘_動作_刀構え02");
	MusicStart("SE02",0,1000,0,1000,null,false);}
　俺は太刀を取り直し、

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	SetVolume("SE*", 100, 0, null);
	SetVolume("@mbgm*", 100, 0, null);

//◆変なエフェクト。赤い走査線がみみっと？
//◆毒の効果っぽく見えれば良し。
	CreateSE("SE01","se人体_血_吐血01");
	CreateColorSPmul("絵色毒", 17010, "#9900CC");
	CreateTextureSPover("絵演効果", 17000, Center, Middle, "cg/data/worm_01_00_0.png");
	DrawTransition("絵演効果", 0, 0, 500, 500, null, "cg/data/zoom_01_00_0.png", true);

	MusicStart("SE01",0,1000,0,500,null,false);
	DelusionIn();

	FadeDelete("絵色毒", 600, false);
	DrawDelete("絵演効果", 600, 100, "worm_01_00_0", true);

//◆がくっと姿勢が崩れる
	MyTr_Count(300,262);
	CP_SpeedChange(2000,337,AxlDxl,false);

	CP_HighChange(60000,896,null,false);
	Move("絵背景", 60000, @0, @-576, null, false);

	CP_AltChange(0,-6,null,false);
	CP_AltChangeA();
	CP_RollBarMoveA();

	CP_RollBarMove2(300,10,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　――――――――――――――指、が。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/020vs0010a01">
《……御堂？》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/020vs0020a01">
《な、何やってるの!?
　ちょっと、遊んでる場合じゃ――》


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/020vs0030a00">
「ゆぃ――あ――うを……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　<RUBY text="・・・・・・">指が動かない</RUBY>、
　
　……と告げる筈だった俺の応えは、珍妙な呻き声に
しかならなかった。

　舌もだ。
　舌――そして唇も動かない。

　<RUBY text="・・">麻痺</RUBY>している。
　指が、舌が、唇が。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/020vs0040a00">
（これは――まさか）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　全身の皮膚が粟立った。
　考えたくもない可能性が脳裏に閃き、そして、それ
を否定するような分析は一切出て来ない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090a]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/020vs0050a01">
《御堂!?》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆サーチ音
	CreateSE("SE03","se特殊_コックピット_起動音04");
	MusicStart("SE03",0,1000,0,1000,null,false);

	$残時間=RemainTime("SE03") / 2;

	CreateColorEXover("絵色探査", 20000, "#66FF66");
	Fade("絵色探査", $残時間, 1000, null, true);
	DrawDelete("絵色探査", $残時間, 1000, "slide_02_00_0", true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090b]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/020vs0060a01">
《え？
　……まさかっ》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　異常を察した村正の<RUBY text="サーチ">探査</RUBY>が、俺の体内を駆け巡った。
　その結論はどうやら俺のおぞましい仮説を裏付ける
ものでしかなかったらしい。

　敵騎は目前。
　重兵器を振り上げるその騎体に、充分な突撃衝力は
宿らず――しかし、今の<RUBY text="おれ">村正</RUBY>に比べれば……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,500,0,1000,null,false);
	CreateTextureEX("絵演合体", 1100, Center, Middle, "cg/st/3dガッタイダー_騎突_戦闘a.png");
	Move("絵演合体", 0, @-300, @-120, null, true);
	Request("絵演合体", Smoothing);
	Zoom("絵演合体", 0, 150, 150, null, true);
	Move("絵演合体", 300, @0, @-30, null, false);
	Fade("絵演合体", 300, 1000, null, true);

	OnSE("se特殊_コックピット_ロックオン",1000);
	CockPit_LockSet(@-300,@-150);
	CP_LockOnFade(300,"on",false);

	SetFwC("cg/fw/fwガッタイダー_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc01/020vs0070b33">
《噛まれた腕は切らないと駄目なのー！
　いえもう手遅れだから首を斬ろーーーお!!》

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/020vs0080a00">
「きぃ……」

//【景明】
<voice name="景明" class="景明" src="voice/mc01/020vs0090a00">
（きさっ――まァ!!）


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/020vs0100a00">
（仮にも、武者の身で――）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　殺意を湛えて煌く斧の刃。
　その光沢は……単に金属のそれではなく。

　そこに塗布された――――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/020vs0110a00">
（毒を使うのかぁッッ!?）


{	FwC("cg/fw/fwガッタイダー_通常.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc01/020vs0120b33">
《ひゃぁっほーーーう!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm08",0,1000,true);

//◆ガッタイダー
	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSP("絵色黒", 30000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);

	CreateTextureSP("絵空背景", 100, -512, Middle, "cg/bg/bg204_横旋回背景_01.jpg");

	CreateTextureSP("絵演合体立絵", 17100, Center, Middle, "cg/st/3dガッタイダー_騎突_戦闘a.png");
	Request("絵演合体立絵", Smoothing);
	Zoom("絵演合体立絵", 0, 100, 100, null, true);

	Cockpit_AllFade0();
	CP_LockOnDelete();

	Request("@レンズ*", UnLock);

	Delete("@レンズプロセス１");
	Delete("@レンズ*");
	Delete("絵演合体");
	Delete("絵背景");

	DrawDelete("絵色黒", 150, 100, "slide_01_03_1", true);

	CreateSE("SE02","se戦闘_動作_空上昇01");
	CreateSE("SE02a","se戦闘_動作_空突進01");
	MusicStart("SE02",600,1000,0,1000,null,false);
	SetBlur("絵演合体立絵", true, 2, 500, 80, true);
	Zoom("絵演合体立絵*", 5000, 200, 200, null, false);
	Move("絵演合体立絵*", 1800, @0, @-80, DxlAuto, true);
	Wait(100);
	Zoom("絵演合体立絵*", 5000, 280, 280, null, false);

	Wait(800);

	MusicStart("SE02a",0,1000,0,1000,null,false);
	Move("絵演合体立絵*", 200, @0, @40, DxlAuto, false);
	Zoom("絵演合体立絵*", 200, 1000, 1000, null, true);

	CreatePlainEX("絵板写", 18010);
	CreatePlainEX("絵板写二", 18020);
	Fade("絵板写", 4000, 400, null, false);
	Fade("絵板写二", 4000, 200, null, false);
	Zoom("絵板写", 4000, 1100, 1100, Dxl2, false);
	Zoom("絵板写二", 4000, 1300, 1300, Dxl2, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　対敵の、悪魔的なる外形は……
　人倫、武道など心得ぬまさに悪魔の本性を、隠しも
せず露骨に<RUBY text="さら">曝</RUBY>け出したものであったのだ。

　今更ながらに、俺は刃を交える相手の何者なるかを
骨髄に沁みて思い知った。
　何もかも、既に遅過ぎた。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/020vs0130a01">
《御堂ッ!!
　いけないっ――》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　毒刃が、
　俺に――――

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆選択：受け止める／回避する

}

..//ジャンプ指定
//◆受け止める　"mc01_020vsa.nss"
//◆回避する　"mc01_020vsb.nss"

//★選択肢シーン
scene mc01_020vs.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm08",0,1000,true);

	CreateTextureSP("絵空背景", 100, -512, Middle, "cg/bg/bg204_横旋回背景_01.jpg");
	CreateTextureSP("絵演合体立絵", 17100, -338, -502, "cg/st/3dガッタイダー_騎突_戦闘a.png");
	Request("絵演合体立絵", Smoothing);
	Zoom("絵演合体立絵", 0, 100, 100, null, true);

	Cockpit_AllFade0();
	CP_LockOnDelete();
	Request("@レンズ*", UnLock);
	Delete("@レンズプロセス１");
	Delete("@レンズ*");

	Zoom("絵演合体立絵*", 0, 1000, 1000, null, true);

	CreatePlainEX("絵板写", 18010);
	CreatePlainEX("絵板写二", 18020);
	Fade("絵板写", 0, 400, null, false);
	Fade("絵板写二", 0, 200, null, false);
	Zoom("絵板写", 0, 1100, 1100, Dxl2, false);
	Zoom("絵板写二", 0, 1300, 1300, Dxl2, false);

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("受け止める","回避する");
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
//◆受け止める　"mc01_020vsa.nss"
				$GameName = "mc01_020vsa.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆回避する　"mc01_020vsb.nss"
				$GameName = "mc01_020vsb.nss";
		}
	}
}


.//プロセス用======================================================

..//毒の効果
function DelusionIn()
{
	$SYSTEM_effect_lens_curvature = 10000;
	$SYSTEM_effect_lens_distance = 15;

	CreateEffect("レンズ１", 19000, -88, -312, 1200, 1200, "Lens");
	SetAlias("レンズ１", "レンズ１");
	CreateProcess("レンズプロセス１", 1000, 0, 0, "LensMove");
	SetAlias("レンズプロセス１","レンズプロセス１");

	Request("レンズ１", Lock);
	Request("レンズプロセス１", Lock);

	Request("レンズプロセス１", Start);
}

..LensMove
function LensMove()
{
	while(1)
	{
		BezierMove("@レンズ１", 3000, (@0,@0){@5,@-30}{@25,@-30}(@30,@0){@25,@30}{@5,@30}(@0,@0), null, true);
		BezierMove("@レンズ１", 3000, (@0,@0){@-5,@-30}{@-25,@-30}(@-30,@0){@-25,@30}{@-5,@30}(@0,@0), null, true);
	}
}
