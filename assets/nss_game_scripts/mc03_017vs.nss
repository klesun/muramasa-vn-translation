//<continuation number="150">

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

scene mc03_017vs.nss_MAIN
{

	

	//CP_AllSet("村正");

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
	#ev946_村正ＶＳガッタイダー_b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	Cockpit_AllFade0();

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene mc03_017vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc03_016.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}

//●戦闘開始
//◆村正ＶＳガッタイダー
	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 5000, "#000000");
	CreateTextureSP("絵背景", 1000, Center, Middle, "cg/bg/bg001_空e_01.jpg");
	CreateTextureSP("絵ＥＶ", 100, Center, -90, "cg/ev/ev946_村正ＶＳガッタイダー_b.jpg");
	Delete("上背景");
	FadeDelete("絵色黒", 2000, true);

	SoundPlay("@mbgm10",0,1000,true);

	WaitKey(1000);
	
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010a]
　太陽は西の空にあった。
　もうじき山の<RUBY text="は">端</RUBY>へ沈み、夕暮れが訪れるだろう。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵背景", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010b]
　その前に決着をつけたいものだと、切に願った。
　<RUBY text="・・・・・">あんな代物</RUBY>と昏い世界で対峙したくない、それだけ
でも理由としては足りる。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ガッタイダー迫る
//あきゅん「ＣＰ：必須定義まとめ」
	CreatePlainSP("絵板写", 20000);

	Cockpit_AllFade2();

	MyLife_Count(0,432);
	CP_IHPChange(0,6,null,false);
	CP_PowerChange(50,300,null,false);

	CP_SpeedChange(0,558,null,false);
	MyTr_Count(0,451);

	CP_HighChange(0,1212,null,false);
	CP_AziChange(0,90,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,null,true);

	CreateTextureSP("絵演航空背景", 100, Center, -864, "cg/bg/bg202_旋回演出背景山_01.jpg");

	Delete("絵ＥＶ");
	FadeDelete("絵板写", 500, true);

	CockPit_LockSet(@0,@0);
	CreateTextureEX("絵演立絵合体", 1000, Center, Middle, "cg/st/3dガッタイダー_騎突_戦闘b.png");
	CP_LockOnMove("@絵演立絵合体",0,@-100,@-60,null,true);
	Zoom("絵演立絵合体", 0, 100, 100, null, true);
	Request("絵演立絵合体", Smoothing);

	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CP_LockOnMove("@絵演立絵合体",300,@0,@-30,null,false);
	Fade("絵演立絵合体", 300, 1000, null, true);

	CreateSE("SE02","se特殊_コックピット_ロックオン");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CP_LockOnFade(300,"off",true);

	Wait(300);

	CP_LockOnMove("@絵演立絵合体",1000,@0,@-100,null,false);
	Wait(800);
	CP_LockOnMove("@絵演立絵合体",1000,@0,@-30,null,false);
	Wait(200);

	CreateSE("SE02a","se戦闘_動作_空上昇01");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	Zoom("絵演立絵合体", 400, 750, 750, Axl2, false);
	Rotate("絵演立絵合体", 400, @0, @0, @30, Axl2,false);
	CP_LockOnMove("@絵演立絵合体",400,@50,@40,Axl2,false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/017vs0010a01">
《敵騎至近！》


{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/017vs0020a00">
「つぁ――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　だが、より切実な事情もあった。
　現在の俺の身体状況を鑑みるに、この尋常ならざる
<RUBY text="パワー">勢威</RUBY>を誇る敵と長時間に渡って鎬を削り合うのは……<k>
全くの無謀！

　<RUBY text="カロリー">熱量</RUBY>が不足している！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwガッタイダー_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc03/017vs0030b33">
《死体とかはいい！　歯ブラシの色を言え！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色黒", 20000, "#000000");

	CP_LockOnChange(200,false);
	Rotate("絵演立絵合体", 400, @0, @0, @10, Axl2,false);
	Zoom("絵演立絵合体", 400, 1500, 1500, Axl2, false);
	CP_LockOnMove("@絵演立絵合体",400,@50,@80,Axl2,false);

	Wait(300);

	Fade("絵色黒", 150, 1000, null, true);
	Delete("絵演立絵合体*");
	CP_LockOnDelete();

//◆チェーンソー
//◆避ける。でも軽く食らう。ズガー。
	CreateSE("SE01a","se戦闘_攻撃_チェーンソー02_L");
	MusicStart("SE01a",0,1000,0,1000,null,true);

	CreateTextureSPadd("絵演上上", 20120, Center, Middle, "cg/ef/ef044_火花b.png");
	SetVertex("絵演上上", 526, 287);
	Move("絵演上上", 0, @270, @280, null, true);
	Zoom("絵演上上", 0, 3000, 3000, null, true);

	CreateTextureSP("絵演", 20100, Center, Middle, "cg/ef/ef011_汎用斜め軌道.jpg");
	Zoom("絵演", 0, 1200, 1200, null, true);
	Request("絵演", Smoothing);

	Fade("絵演上上", 200, 0, null, false);
	Move("絵演上上", 200, -294, -285, null, false);
	Zoom("絵演上上", 200, 1000, 1000, null, false);
	Rotate("絵演上上", 200, @0, @0, @36000, null,false);
	Shake("絵演上上", 200, 40, 10, 0, 0, 500, Dxl2, false);

	Shake("絵演", 200, 100, 0, 0, 0, 1000, null, true);

	CreateColorSP("絵色白", 21000, "#FFFFFF");

	Delete("絵演*");
	Delete("絵色黒*");

	Wait(12);

	CreateTextureSP("絵演航空背景", 100, Center, -864, "cg/bg/bg202_旋回演出背景山_01.jpg");
	CreatePlainEXadd("絵板写", 1000);
	Fade("絵板写", 0, 500, null, true);

	FadeDelete("絵板写", 1500, false);
	Shake("絵板写", 1200, 0, 40, 0, 0, 500, null, false);
	Shake("@CP_Frame", 1700, 20, 20, 0, 0, 1000, null, false);

	FadeDelete("絵色白", 200, true);

	SetVolume("SE*", 1600, 0, null);

	CreateSE("SE02","se戦闘_攻撃_鎧攻撃命中");
	MusicStart("SE02",0,1000,0,850,null,false);

	MyLife_Count(300,360);
	CP_IHPChange(300,5,null,false);

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/017vs0040a00">
「……糞！
　避け損ねたか!?」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/017vs0050a01">
《左肩甲鉄破損!!
　何でよ、直撃でもないのにっ！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　手足が重い。鉛を詰められたようだ。
　実際に詰まっているのは、自業自得という四文字で
あろうが。

　逆上に任せて粗雑な猛攻を仕掛けた<RUBY text="ツケ">債務</RUBY>だ。
　<RUBY text="ブレス">呼吸</RUBY>、<RUBY text="バーン">燃焼</RUBY>、<RUBY text="ブラッド">血流</RUBY>――武者として軽視すべからざる
<RUBY text="３Ｂ">身体機能</RUBY>が全て狂ってしまっていた。

　俺の戦闘能力は大幅に低下した状態にある。
　
　対して、敵は前と同様、<RUBY text="フルスピード・アンド・フルスイング">全速突進＋全力攻撃</RUBY>。

　前と違うのはその武装だ。
　<RUBY text="チェーンソー">回転鋸刀</RUBY>――それは本来叩き付けて使うような道具
ではない筈だが、戦闘用に改良を加えられているせい
なのか、そんな扱いでも充分に性能を発揮している。

　最も重厚な肩部甲鉄を薄紙も同然に切り裂かれては、
その見た目に安直な<RUBY text="ステージセット">舞台装置</RUBY>を嘲笑ってやる事もでき
なかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/017vs0060a00">
「何という裁断力だ」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/017vs0070a01">
《掠めて<RUBY text="・・">これ</RUBY>だと……
　直撃した場合のことは、考えない方が心の
健康に良さそうね》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/017vs0080a00">
「毒の斧を捨てさせたのは失敗だった。結果
論だが……。
　どれほど嫌らしくとも、あちらの方がまだ
しも対処は容易だった気がする」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/017vs0090a01">
《かもね……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵演航空背景前", 2000, Center, -864, "cg/bg/bg202_旋回演出背景山_01.jpg");

//◆旋回して対峙
	CreateTextureEX("絵演航空背景", 1100, Center, -960, "cg/bg/bg201_旋回演出背景市街地_01.jpg");
	CreateTextureSP("絵演空旋回専用", 100, InRight, Middle, "cg/bg/bg204_横旋回背景_01.jpg");
	SetBlur("絵演空旋回専用", true, 3, 500, 60, false);
	PlainSurface("絵演空旋回専用",1000,2000);

	FadeDelete("絵演航空背景前", 300, false);

	CreateSE("SE01","se戦闘_動作_空突進02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CP_ProcessDelete("ロール");
	CP_ProcessDelete("速度");
	CP_ProcessDelete("高度");
	CP_ProcessDelete("俯角");

	CP_AziChange(3000,270,DxlAuto,false);
	Move("絵演空旋回専用", 3000, 0, @0, AxlDxl, false);
	CP_AltChange(600,45,null,false);
	CP_RollBarMove2(600,-90,null,false);
	RotateSurface(600,90,DxlAxl,false);

	Wait(600);

	CreateSE("SE01a","se戦闘_動作_空急降下01");
	MusicStart("SE01a",2000,1000,0,1000,null,false);

	Wait(1800);

	CreateSE("SE01b","se戦闘_動作_空上昇01");
	MusicStart("SE01b",0,1000,0,1000,null,false);

	Wait(200);

	CP_AltChange(600,0,null,false);
	CP_RollBarMove2(600,0,DxlAuto,false);
	RotateSurface(600,0,DxlAuto,false);

	Wait(300);

	SetVolume("SE*", 2000, 0, null);
	Move("絵演航空背景", 300, @0, @40, DxlAuto, false);
	Fade("絵演航空背景", 300, 1000, DxlAuto, true);

	DeleteSurface();

	CockPit_LockSet(@0,@0);
	CreateTextureEX("絵演立絵合体", 2000, Center, Middle, "cg/st/3dガッタイダー_騎突_戦闘b.png");
	CP_LockOnMove("@絵演立絵合体",0,@100,@-60,null,true);
	Zoom("絵演立絵合体", 0, 100, 100, null, true);
	Request("絵演立絵合体", Smoothing);

	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CP_LockOnMove("@絵演立絵合体",300,@0,@-30,null,false);
	Fade("絵演立絵合体", 300, 1000, null, true);

	CreateSE("SE02","se特殊_コックピット_ロックオン");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CP_LockOnFade(300,"off",true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　……要するに。
　我が状態は最悪で、敵は以前にも増して危険。

　もう一撃たりと貰えない。
　一撃で間違いなく、俺は戦闘継続能力を奪われる。

　自ら招いたこの窮地は、自らの才知で脱する以外に
なかった。
　この一合、そして次の一合が、おそらく俺の生死を
分かつ山場となる。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆近付く。正面相撃
	CP_LockOnMove("@絵演立絵合体",1000,@0,@-100,null,false);
	Wait(800);
	CP_LockOnMove("@絵演立絵合体",1000,@0,@-30,null,false);
	Wait(200);

	CreateSE("SE02a","se戦闘_動作_空上昇01");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	Rotate("絵演立絵合体", 400, @0, @0, @-20, Axl2,false);
	Zoom("絵演立絵合体", 400, 300, 300, Axl2, false);
	CP_LockOnMove("@絵演立絵合体",400,@-50,@40,Axl2,true);

	CreateColorEX("絵色黒", 19900, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　――戦術を組み立てよう。
　今、<RUBY text="カン">勘</RUBY>任せの戦いをすれば命を落とす。

　息を切らしたこの身体が、剛力の怪物を相手にして、
如何にせば敗北を免れ得るか。
　慎重に考慮して決めねばならない。

　勝負に出るか、凌いで態勢を立て直すか、それとも。
　
　……いずれにせよ、一度決めたなら、もう修正する
余裕は無いであろう。

　誤りに気付いた時には死んでいるに違いない。
　だから――今この一瞬に、よくよく考え抜いて決め
なくては。

　俺はまず、確認すべき事柄を脳裏にまとめた。
　順々、手短に村正へと問う。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitAction("絵色黒", null);

	Delete("絵演合体*");
	Cockpit_AllFade0();
	CP_LockOnDelete();

	CreateTextureSP("絵演", 19000, Center, Middle, "cg/ev/ev504_村正突進.jpg");

	FadeDelete("絵色黒", 1000, true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/017vs0100a00">
「陰義の使用は可能か？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/017vs0110a01">
《今は自殺行為ね。比喩ではなくて》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/017vs0120a00">
「敵騎がまた<RUBY text="・・">分離</RUBY>して攻撃をかけてくる事は
あると思うか？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/017vs0130a01">
《どうかしら。
　各個の騎体性能は大きく低下していたよう
だし……あれは奇襲か緊急回避のための<RUBY text="からくり">機巧</RUBY>
で、何度も使っては来ないと思うけれど》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/017vs0140a00">
「……列車が落ちた地点はまだ近いか？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/017vs0150a01">
《戦闘で移動したから、少し離れてる。
　方角はほぼ真北よ》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　良し。
　最低限、訊くべきことは訊いた。これ以上の質問を
重ねるゆとりも無い。

　作戦手順を決定しよう。
　まず、最初の一合は……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆選択：攻める／防ぐ

}

..//ジャンプ指定
//◆攻める　"mc03_017vsa.nss"
//◆防ぐ　"mc03_017vsb.nss"

//★選択肢シーン
scene mc03_017vs.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm10",0,1000,true);

	CreateTextureSP("絵演", 5000, Center, Middle, "cg/ev/ev504_村正突進.jpg");

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("攻める","防ぐ");
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
//◆攻める　"mc03_017vsa.nss"
				$GameName = "mc03_017vsa.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆防ぐ　"mc03_017vsb.nss"
				$GameName = "mc03_017vsb.nss";
		}
	}
}

