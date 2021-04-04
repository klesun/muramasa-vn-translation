//<continuation number="290">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_043vs.nss_MAIN
{

	
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
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	Cockpit_AllFade0();

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene mc04_043vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	Delete("上背景");

..//ジャンプ指定
//前ファイル　"mc04_042vs.nss"


//◆村正サイド
	PrintBG("上背景", 30000);

	CreateSE("SE10","se戦闘_動作_空突進05");
	MusicStart("SE10",2000,1000,0,1000,null,true);

	Wait(1000);

	CreateColorSP("黒幕１", 18000, "BLACK");
	CreateTextureSP("絵背景50", 100, Center, -1400, "cg/bg/bg202_旋回演出背景山_01.jpg");
	Request("絵背景50", Smoothing);

	Delete("上背景");


	Cockpit_AllFade2();

	CP_HighChangeA();
	CP_AltChangeA();
	CP_SpeedChangeA();
	FrameShake();

	MyLife_Count(0,189);
	MyTr_Count(0,160);
	CP_PowerChange(0,272,null,false);
	CP_IHPChange(0,3,null,false);

	CP_LockOnFade(0,"off",false);
	CP_EnemyFade(0,10,220,300);
	CP_HighChange(0,453,null,false);
	CP_SpeedChange(0,440,null,false);
	CP_AziChange(0,-189,nul,false);

	SetVolume("SE10", 3000, 300, null);
	SetFrequency("SE10", 3000, 900, null);

	OnSE("se戦闘_動作_空突進01",1000);

	DrawDelete("黒幕１", 200, 100, "slide_02_01_1", false);
	Move("絵背景50", 1000, @0, @-100, Dxl2, true);

	SoundPlay("@mbgm13",0,1000,true);

	BGMoveAuto("@絵背景50",1);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……狂笑が聴こえる。
　歪み切った、壊れ切った悦びを唄う声が。

　忌まわしい響き。
　あの騎士は養父を殺した後にも、こんな声で嗤った
のだろうか。

　侮蔑して。
　喜悦して。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/043vs0010a01">
《御堂っ！
　<RUBY text="たつみのかみ">一三五度上方</RUBY>から――》


{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/043vs0020a00">
「ぐっ……！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	BGMoveDelete();

	SetVolume("SE10", 2000, 500, null);
	SetFrequency("SE10", 4000, 1100, null);


	CreateTextureEX("絵背景100", 1500, 0, -2500, "cg/bg/bg202_旋回演出背景山_01.jpg");
	Zoom("絵背景100", 0, 1000, 1000, null, true);
	Move("絵背景100", 0, @0, -1500, null, true);
	CreateTextureEX("絵狸", 100, Center, middle, "cg/st/3dバロウズ_騎突_戦闘.png");
	Request("絵狸", Smoothing);
	Zoom("絵狸", 0, 50, 50, null, true);
	SetBlur("絵狸", true, 1, 300, 100, false);
	Move("@絵狸", 0, @0, @-50, null, true);

	CreateSurfaceEX("絵Suf",1000,2000,"絵背景100");

	OnSE("se戦闘_動作_空突進03",1000);

	CP_HighChange(1000,421,null,false);
//	CP_SpeedChange(1000,540,null,false);
	CP_AziChange(1000,-22,Axl1,false);

	Fade("絵背景100", 0, 1000, null, true);
	Fade("絵Suf", 300, 1000, null, false);
	Rotate("絵Suf", 1500, @0, @0, @-180, AxlDxl,false);
	Move("絵背景100", 1500, @0, -4000, AxlDxl, false);
	Move("@絵背景50", 500, @0, @-200, Axl2, false);

	CP_SpeedChange(2000,350,null,false);
	CP_HighChange(2000,657,null,false);

	CP_RollBarMove2(1000,180,AxlDxl,true);
	CP_RollBarMove("@絵背景50",0,0,null,true);


	Move("@絵背景50", 0, -512, -388, null, true);
	Fade("絵Suf", 300, 0, null, false);
	Move("@絵背景50", 300, -512, -158, Dxl2, true);
	Move("@絵狸", 0, @0, @-50, Dxl2, false);
	Fade("@絵狸", 300, 1000, null, false);
	Move("@絵背景50", 300, -512, -188, AxlDxl, true);

	BGMoveAuto("@絵背景50",1);

	Delete("絵背景100");
	Delete("絵Suf");

	SetVolume("SE10", 3000, 300, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　気力を奮い、せめて攻撃への備えを取ろうと試みる。
　身体は重くはない――むしろ<RUBY text="・・">無い</RUBY>。胸から下が消え
失せたかのようだ。

　あるいは、事実そうなのか。
　腹部を貫通した<RUBY text="ボルト">回転矢</RUBY>が、臓腑の全てをもぎ取って
いったのか。

　だからこんなにも、
　何もかも……

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆バロウズ襲撃。ずがーん。
	CreateColorEXadd("絵色100", 18500, "WHITE");
	CreateTextureEX("絵背景100", 18000, Center, Middle, "cg/ev/ev949_バロウズ構え.jpg");
	SetBlur("絵背景100", true, 1, 500, 70, false);

	Move("@絵狸", 400, @0, @50, Axl3, false);
	Zoom("@絵狸", 400, 1500, 1500, Axl3, false);

	Wait(200);

	Fade("絵背景100", 200, 1000, null, false);
	Zoom("絵背景100", 500, 1100, 1100, Dxl2, true);
	Move("絵背景100", 500, @2000, @500, Axl3, false);
	Zoom("絵背景100", 500, 5000, 5000, Axl2, false);
	Wait(350);
	Fade("絵色100", 100, 1000, null, true);

	Delete("絵背景100");

	OnSE("se戦闘_攻撃_鎧攻撃命中02",1000);
	SetFrequency("SE10", 2000, 900, null);

	Delete("@絵狸");

	BGMoveDelete();
	MyLife_Count(2000,152);
	MyTr_Count(2000,132);
	CP_HighChange(2000,386,Dxl1,false);
	CP_SpeedChange(2000,391,Dxl1,false);

	Wait(300);

	FadeDelete("絵色100", 1000, false);
	Shake("絵背景50", 3000, 30, 15, 0, 0, 1000, Dxl2, false);
	Move("絵背景50", 2000, @0, -1200, Dxl2, true);

	BGMoveAuto("@絵背景50",1);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　意識がふと遠ざかり、
　
　また浮上する。

　今の一撃は兜を襲っていた。
　頭骨を砕かれずに済んだのは僥倖だろう。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/043vs0030a00">
（……いや）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　単なる幸運ではない、か？
　
　……敵騎の攻撃は、どうも<RUBY text="・・">軽い</RUBY>。

　騎体重量の軽さが打撃力にも影響するであろう事は
最初からわかっていたが、それにしても弱過ぎる気が
する。
　素人の棒振り芸も同然だ。

　遊んでいるのか。
　簡単には始末せず、嬲り物にする肚で――

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/043vs0040a00">
（違う……な）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　直観で否定する。
　あの騎士に、そんな<RUBY text="・・・">不純物</RUBY>は無い。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆バロウズ
	SetVolume("SE10", 1000, 1, null);


	CreateTextureEX("絵背景200", 18020, Center, Middle, "cg/ev/ev205_矢を撃ち放つバロウズ_a.jpg");
	CreateTextureEX("絵背景300", 18030, Center, Middle, "cg/ev/ev205_矢を撃ち放つバロウズ_b.jpg");

	Fade("絵背景200", 500, 1000, null, true);
	BGMoveDelete();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　あの殺意は純粋だ。
　<RUBY text="ひたむき">直向</RUBY>に俺の死を求め、その過程において歓喜する。

　純粋、純一の殺害意思。
　殺すと決めたならば迷いなき、その、

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆香奈枝のシルエット？重ねる
	Fade("絵背景300", 500, 100, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　――――全く不意に。
　
　脳裏で、何かが重なり合った。

　敵騎の<RUBY text="イメージ">心象</RUBY>と、
　もう一つ、全く別の――<k>別である<RUBY text="・・">筈の</RUBY>心象が、

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/043vs0050a01">
《み――御堂!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("SE10", 1000, 300, null);
	FadeDelete("絵背景200", 300, false);
	FadeDelete("絵背景300", 300, false);
	Move("絵背景50", 500, @0, -900, Dxl3, true);

	BGMoveAuto("@絵背景50",1);

//◆現実復帰

	SetFwR("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/043vs0060a00">
「……村正？」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/043vs0070a01">
《余計なことは考えないで》


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/043vs0080a00">
「いや――」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　頭部へ受けた打撃の影響か。
　村正の急な声で現実に引き戻された俺は、一瞬前の
思考を忘却していた。

　……しかし、今。
　掴みかけた何かは、俺にとって大切なことであった
――ような。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/043vs0090a01">
《<RUBY text="・・">それ</RUBY>は余計だからっ！
　忘れて、今は戦いのことを考えて……》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/043vs0100a01">
《来る！》


{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/043vs0110a00">
「!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆また一撃。がーん。
	CreateTextureEX("絵狸", 100, Center, middle, "cg/st/3dバロウズ_騎突_戦闘.png");
	Request("絵狸", Smoothing);
	Zoom("絵狸", 0, 50, 50, null, true);
	SetBlur("絵狸", true, 1, 300, 100, false);
	Move("@絵狸", 0, @0, @-50, null, true);

	CreateColorEXadd("絵色100", 18500, "WHITE");

	OnSE("se戦闘_動作_空突進03",1000);
	Fade("@絵狸", 200, 1000, null, false);
	Move("@絵狸", 500, @0, @-50, Dxl2, true);
	Move("@絵狸", 400, @0, @50, Axl3, false);
	Zoom("@絵狸", 400, 1500, 1500, Axl3, false);

	Wait(300);
	Fade("絵色100", 0, 1000, null, true);

	OnSE("se戦闘_破壊_鎧03",1000);
	SetFrequency("SE10", 2000, 800, null);

	Delete("@絵狸");
	BGMoveDelete();
	FadeDelete("絵色100", 500, false);
	Shake("絵背景50", 3000, 30, 15, 0, 0, 1000, Dxl2, false);
	Move("絵背景50", 2000, @0, -1200, Dxl2, true);

	BGMoveAuto("@絵背景50",1);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　……刃先から、急所を庇う動作だけは間に合った。
　右篭手に深い衝撃を浴び、骨髄までが震撼する。

　醜態。
　村正の言う通りだ。雑念に囚われてさえいなければ、
もう少しはましな受けができたものを！

　俺は自分を恥じつつ、騎航姿勢の回復を図った。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆そんな機動
	BGMoveDelete();

	SetVolume("SE10", 2000, 500, null);
	SetFrequency("SE10", 4000, 1100, null);


	CreateTextureEX("絵背景100", 1500, 0, -2500, "cg/bg/bg202_旋回演出背景山_01.jpg");
	Zoom("絵背景100", 0, 1000, 1000, null, true);
	Move("絵背景100", 0, @0, -1500, null, true);
	CreateTextureEX("絵狸", 100, Center, middle, "cg/st/3dバロウズ_騎突_戦闘.png");
	Request("絵狸", Smoothing);
	Zoom("絵狸", 0, 50, 50, null, true);
	SetBlur("絵狸", true, 1, 300, 100, false);
	Move("@絵狸", 0, @0, @-50, null, true);

	CreateSurfaceEX("絵Suf",1000,2000,"絵背景100");

	OnSE("se戦闘_動作_空突進03",1000);

	CP_HighChange(1000,-150,null,false);
	CP_SpeedChange(1000,540,null,false);
	CP_AziChange(1000,189,Axl1,false);

	Fade("絵背景100", 0, 1000, null, true);
	Fade("絵Suf", 300, 1000, null, false);
	Rotate("絵Suf", 1500, @0, @0, @180, AxlDxl,false);
	Move("絵背景100", 2000, @0, -4000, AxlDxl, false);
	Move("@絵背景50", 500, @0, @-200, Axl2, false);

	CP_SpeedChange(2000,350,null,false);
	CP_HighChange(2000,657,null,false);

	CP_RollBarMove2(1000,180,AxlDxl,true);
	CP_RollBarMove("@絵背景50",0,0,null,true);
	Zoom("@絵背景50", 0, 1100, 1100, null, true);


	Move("@絵背景50", 0, -512, -388, null, true);
	Fade("絵Suf", 300, 0, null, false);
	Move("@絵背景50", 300, -512, -158, Dxl2, true);
	Move("@絵狸", 0, @0, @-50, Dxl2, false);
	Fade("@絵狸", 300, 1000, null, false);
	Move("@絵背景50", 300, -512, -188, AxlDxl, true);

	BGMoveAuto("@絵背景50",1);

	Delete("絵背景100");
	Delete("絵Suf");

	SetVolume("SE10", 3000, 300, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　……しかし今の一撃も、甲鉄を破られあるいは両断
までされていても不思議ではないところだ。
　それが衝撃だけで済んでいる。

　理由は、つまり。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/043vs0120a00">
「敵騎も消耗している……？」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/043vs0130a01">
《……そのようね。
　陰義の負担が大きかったんでしょう》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　推測を、劒冑が補足した。
　確かに。射撃の軌道を捻じ曲げるなどという魔法は
相応の代償なくして成立するまい。

　あれ一度きりで、続けて使って来ないのは、石弓の
準備時間の他にその理由もあったのか。
　と、すると。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/043vs0140a00">
「反撃するなら……まだしも今のうちという
ことか。
　あちらがもしも消耗状態から回復したなら、
戦力差は覆せなくなる」


{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/043vs0150a01">
《どころか、あの陰義がもう一度来るかも》


{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/043vs0160a00">
「……く」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　口腔に充満する、鉄錆の味を飲み下す。
　言うことを聞かない身体に、精神力の鞭を打つ。

　敵騎は迫っている。
　軽い打撃とて、幾度も積み重なれば重く響く。もう
これ以上もらうわけにはいかない。

　太刀を構え、攻勢に応じる――

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆村正上段
//◆バロウズ
	OnSE("se戦闘_動作_空突進01",1000);
	EffectZoomadd(10000, 500, 200, "cg/ef/ef003_汎用移動.jpg", false);
	Move("@絵狸", 400, @0, @50, Dxl3, false);
	Zoom("@絵狸", 400, 500, 500, Dxl3, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　敵騎はこちらの構えに反応を見せなかった。
　技も術もなく、まっしぐらに襲来する。

　既に勝負は決したという確信の発露か。
　
　ならば、間違っていたと思い知らせてやる……！

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("SE10", 1000, 1, null);

//◆村正上段→八相
	CreateColorSP("黒幕１", 18000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);


	Delete("絵狸");
	Cockpit_AllFade0();
	BGMoveDelete();

	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg002_空a_01.jpg");
	Request("絵背景50", Smoothing);

	CreateWindow("絵ＷＬ", 150, Center, 144, 1024, 288, true);
	SetAlias("絵ＷＬ","絵ＷＬ");
	CreateTextureSP("絵ＷＬ/絵背景Ｌ100", 100, Center, middle, "cg/bg/bg001_空a_01.jpg");
	CreateTextureEX("絵ＷＬ/絵ＳＴＬ", 500, Center, 0, "cg/st/3d村正標準_騎航_戦闘a.png");
	CreateTextureEX("絵ＷＬ/絵ＳＴＬ２", 500, Center, 0, "cg/st/3d村正標準_騎航_戦闘d.png");
	SetBlur("絵ＷＬ/絵ＳＴＬ２", true, 1, 300, 100, false);
	Request("絵ＷＬ*", Smoothing);
	Move("絵ＷＬ/絵ＳＴＬ", 0, @190, @0, null, true);
	Move("絵ＷＬ/絵ＳＴＬ２", 0, @100, @0, null, true);

	OnSE("se戦闘_動作_空突進01",1000);


	Fade("絵ＷＬ/絵ＳＴＬ", 300, 1000, null, false);
	Move("絵ＷＬ/絵ＳＴＬ*", 500, @-190, -450, Dxl2, false);
	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);

	Wait(500);

	OnSE("se戦闘_動作_刀構え01",1000);

	Fade("絵ＷＬ/絵ＳＴＬ２", 200, 1000, null, false);
	FadeDelete("絵ＷＬ/絵ＳＴＬ", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　接触の瞬刹。
　太刀取りを変える。

　上段から<RUBY text="はっそう">八相</RUBY>。
　刺突を期す構。

　敵の剣も盾も、こちらの変化に対応する気配はない。
　したとしても、もう遅い！

　対手のお株を奪う一刀で、形勢を振り戻す！

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆刺突
	OnSE("se戦闘_動作_空突進02",1000);

	Move("絵ＷＬ/絵ＳＴＬ２", 300, @-1500, @0, Axl3, true);
	CreateColorSP("黒幕１", 18000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("絵背景50", 100, Center, -400, "cg/bg/bg202_旋回演出背景山_01.jpg");
	Request("絵背景50", Smoothing);
	Zoom("絵背景50", 0, 1100, 1100, null, true);
	Cockpit_AllFade2();

	CreateTextureEX("絵狸", 100, Center, middle, "cg/st/3dバロウズ_騎突_戦闘.png");
	Request("絵狸", Smoothing);
	Zoom("絵狸", 0, 500, 500, null, true);
	SetBlur("絵狸", true, 1, 300, 100, false);
	Move("@絵狸", 0, @0, @-50, null, true);

	SetVolume("SE10", 1000, 300, null);
	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);

	OnSE("se戦闘_動作_空突進03",1000);
	Fade("@絵狸", 200, 1000, null, false);
	Zoom("@絵狸", 500, 550, 550, Dxl2, false);
	Move("@絵狸", 500, @0, @-50, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　敵騎が無芸に直進して来ているのが幸いだ。
　今なら当てるのは難しくない。

　決定打まで狙う欲を出さねば尚更容易。
　とにかく一打を加えて、反抗の契機にする――――

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆凶眼
//◆バロウズ回避
	SetVolume("SE10", 300, 1, null);
	SetVolume("@mbgm*", 300, 0, null);

	CreateTextureEX("絵背景100", 18000, Center, Middle, "cg/ev/ev004_香奈枝の凶眼_b.jpg");
	Request("絵背景100", Smoothing);
	SetBlur("絵背景100", true, 1, 300, 100, false);

	OnSE("se戦闘_バロウズ_ボーガン構え01",1000);
	EffectZoomadd(19000, 500, 100, "cg/ev/ev004_香奈枝の凶眼_b.jpg", false);
	Fade("絵背景100", 100, 1000, null, true);

	Wait(500);

	SL_centerout(@0, @0,1000);


	FadeDelete("絵背景100", 500, true);


	OnSE("se戦闘_バロウズ_ボーガン構え02",1000);
	Zoom("@絵背景", 300, 1200, 1200, Axl3, false);
	Move("@絵狸", 200, @1500, @50, Axl3, false);
	Zoom("@絵狸", 200, 1500, 1500, Axl3, true);

	SL_centeroutfade2(10);
	FadeDelete("@絵狸", 100, true);

	Wait(300);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/043vs0170a00">
「……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　繰り出した太刀の<RUBY text="ぼうし">鋩子</RUBY>は……
　何物も捉えず、虚空を泳いだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/043vs0180a00">
（見切られた――）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　いや。
　違う。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/043vs0190a00">
（見られていた……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　<RUBY text="・・・">全てを</RUBY>。
　最初から、ずっと。

　髪の毛一筋の<RUBY text="・・・・">たなびき</RUBY>に至るまで。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/043vs0200a00">
（捕まっていた）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　悟る。
　
　俺は、最初から、囚われていたのだ。
　全てを掌握されていたのだ。

　この<RUBY text="め">瞳</RUBY>に。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆凶眼
//◆攻撃ずがーん。強烈
	CreateTextureEX("絵背景100", 18000, Center, Middle, "cg/ev/ev004_香奈枝の凶眼_b.jpg");
	Request("絵背景100", Smoothing);
	SetBlur("絵背景100", true, 1, 300, 100, false);

//おがみ：シェード重いので特殊素材
	CreateTextureEX("絵背景50ぼかし", 100, Center, 0, "cg/bg/resize/bg202_旋回演出背景山_01ex.jpg");
//	SetShade("絵背景50ぼかし", MEDIUM);

	OnSE("se戦闘_バロウズ_ボーガン構え01",1000);
	EffectZoomadd(19000, 500, 100, "cg/ev/ev004_香奈枝の凶眼_b.jpg", false);
	Fade("絵背景100", 100, 1000, null, true);

	Wait(500);

	FadeDelete("絵背景100", 500, true);


	CreateColorEXadd("絵色100", 18500, "WHITE");
	Fade("絵色100", 0, 1000, null, true);
	BGMoveDelete();


	OnSE("se戦闘_攻撃_鎧攻撃命中03",1000);
	SetFrequency("SE10", 10000, 500, AxlDxl);

	SetVolume("SE10", 1000, 500, null);
	FadeDelete("絵色100", 500, false);
	Shake("絵背景50", 3000, 30, 15, 0, 0, 1000, Dxl2, false);
	Move("絵背景5*", 2000, @0, -1200, Dxl2, true);



	CreateColorEX("絵色100", 18500, "BLACK");

//◆フェードアウト
	SetVolume("SE10", 1000, 1, null);
	FadeF4("絵背景50ぼかし", 2000, 1000, 2000, 0, 0, Axl3, false);
	FadeF4("絵背景50", 2000, 1000, 2000, 0, 0, Axl3, false);
	Fade("絵色100", 2000, 1000, null, true);

	Wait(200);

//◆短ウェイト
//◆フェードイン

	SetVolume("SE10", 2000, 300, null);
	FadeF4("絵背景50ぼかし", 4000, 500, 60000, 0, 0, Dxl2, false);
	FadeF4("絵背景50", 1000, 1000, 60000, 0, 0, Dxl2, false);
	Fade("絵色100", 1000, 300, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　再び意識が落ちかける。
　浮上して……また沈む。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
	SetVolume("SE10", 1000, 1, null);
	FadeF4("絵背景50ぼかし", 2000, 1000, 2000, 0, 0, Axl3, false);
	FadeF4("絵背景50", 2000, 1000, 2000, 0, 0, Axl3, false);
	Fade("絵色100", 2000, 1000, null, true);

	Wait(500);

//◆フェードイン
	SetVolume("SE10", 2000, 300, null);
	FadeF4("絵背景50ぼかし", 4000, 500, 60000, 0, 0, Dxl2, false);
	FadeF4("絵背景50", 1000, 1000, 60000, 0, 0, Dxl2, false);
	Fade("絵色100", 1000, 300, null, true);

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/043vs0210a00">
（まずい……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　村正が呼びかけているように思う。
　だが遠い。聴こえない。

　沈む。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
	SetVolume("SE10", 1000, 1, null);
	FadeF4("絵背景50ぼかし", 2000, 1000, 2000, 0, 0, Axl3, false);
	FadeF4("絵背景50", 2000, 1000, 2000, 0, 0, Axl3, false);
	Fade("絵色100", 2000, 1000, null, true);

	Wait(500);


//◆フェードイン
	SetVolume("SE10", 2000, 300, null);
	SetFrequency("SE10", 4000, 1000, null);
	Fade("絵色100", 2000, 0, null, false);
	Move("絵背景5*", 2000, @0, -400, AxlDxl, false);
	Fade("絵背景50ぼかし", 2500, 0, null, true);



//◆敵騎接近。ロックオン
	CreateTextureEX("絵狸", 100, Center, middle, "cg/st/3dバロウズ_騎突_戦闘.png");
	Request("絵狸", Smoothing);
	Zoom("絵狸", 0, 100, 100, null, true);
	SetBlur("絵狸", true, 1, 200, 50, false);

	CockPit_LockSet(@0,@0);
	CreateSE("SEロックオン","se特殊_コックピット_起動音02");

//	SetFrequency("SE10", 1000, 800, null);
	SetVolume("SE10", 1000, 300, null);

	CP_LockOnMove("@絵狸",0,@-200,@-50,null,true);


//おがみ：ロックオン
	MusicStart("SEロックオン",0,1000,0,1000,null,false);
	CP_LockOnMove("@絵狸",800,@200,@50,Dxl2,false);
	Zoom("絵狸", 5000, 200, 200, Dxl1, false);
	Fade("@絵狸", 600, 1000, null, false);

	CP_LockOnFade(100,"on",false);
	CP_EnemyFade(300,10,420,300);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　……意識を飛ばしている内に、貴重な数秒間ないし
十数秒間が過ぎ去ったようだ。
　敵騎の猛追が、はや至近の距離にある。

　だというのに――意識はまた、更に深い奥底へ潜り
込もうとする。
　これまで幾度となく無理を強いられた、その債権を
行使でもしているのか。全身が眠りを求めていた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/043vs0220a00">
（駄目だ）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　もう一度沈んだら、次の目覚めはない。
　目覚めの機会を与えられない。

　そのまま終わる。
　
　……だから、沈んではならないのに、

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
	SetVolume("SE10", 3000, 0, null);
	Fade("絵背景50ぼかし", 2000, 1000, null, false);
	Fade("絵色100", 2000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　駄目だ！
　この闇に己を埋めてはならない。

　<RUBY text="た">起</RUBY>ち上がり――戦わねば……

　
　　　　　　　　　　　何故。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/043vs0230a00">
（……何故？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　そんな自問が浮かんでくる。
　意識の拡散は、何か大切な事を見失わせてしまった
のか。

　戦う理由が……
　ふと気付けば、俺の掌中になかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/043vs0240a00">
（いかぬ）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　<RUBY text="・・">根拠</RUBY>を失くしては立ち直れない。

　思い出せ！
　理由は……何だった？

　俺は今、何のために戦っていた!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆選択：守るため／殺すため

}

..//ジャンプ指定
//◆守るため　"mc04_043vsa.nss"
//◆殺すため　"mc04_043vsb.nss"

//★選択肢シーン
scene mc04_043vs.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	Cockpit_AllFade0();

	CreateColorSP("絵色100", 18500, "BLACK");

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("守るため","殺すため");
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
//◆守るため　"mc04_043vsa.nss"
				$GameName = "mc04_043vsa.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆殺すため　"mc04_043vsb.nss"
				$GameName = "mc04_043vsb.nss";
		}
	}
}


