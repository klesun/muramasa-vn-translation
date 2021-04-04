//<continuation number="280">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_016.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc03_017vs.nss";

}

scene mc03_016.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc03_015vs.nss"

//◆付近

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	SoundPlay("@mbgm35", 0, 1000, true);
	OnBG(100, "bg022_山林a_01.jpg");
	FadeBG(0, true);
	Delete("上背景");
	FadeDelete("黒幕１".0.true);

//◆雪車町

	StL(1000, @0, @0, "cg/st/st雪車町_通常_私服.png");
	FadeStL(300, true);

	SetFwC("cg/fw/fw雪車町_満足.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0160010a12">
「へ……へッ！　クヘッヘヘヘ」


{	FwC("cg/fw/fw雪車町_嘲笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0160020a12">
「いいね。いいねェェ。
　その調子だァ……」


//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0160030a12">
「その調子で――」


{	NwC("cg/fw/nwその他.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0160040a04">
「村正どのを墜とせというのは、少々、注文
が過ぎるかと」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆雪車町の背後にさよ
	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵ＳＴ100", 900, Center, InBottom, "cg/st/stさよ_戦闘_私服.png");

	CreateStencil("マスク１",910,Center,InBottom,128,"cg/st/stさよ_戦闘_私服.png",false);
	SetAlias("マスク１","マスク１");
	CreateColorSP("マスク１/色１", 920, "#000000");

	Move("絵ＳＴ100", 0, @-400, @0, null, true);
	Move("マスク１", 0, @-400, @0, null, true);

	DrawTransition("マスク１/色１", 0, 0, 700, 100, null, "cg/data/slide_02_00_0.png", true);

	FadeDelete("絵板写", 300, false);

	SetFwC("cg/fw/fw雪車町_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0160050a12">
「!!」


{	FadeDelete("マスク１/色１", 1000, false);
	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0160060a04">
「動かれませぬよう。
　脊椎を割ってしまいます」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0160070a12">
「……お付きの婆さま……。
　ご無事でしたかァ」


{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0160080a04">
「この老体に寒中水泳はきつうございました。
　さっきから震えが止まりませぬ」


{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0160090a04">
「手元もいつ狂ってしまうやら……。
　不穏な所作は厳に慎んでくださいませ」


{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0160100a12">
「……けへ……」


{	FwC("cg/fw/fw雪車町_嘲笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0160110a12">
「ヒェッッ!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//■刀振る→避けながら殴るって感じで、ちょっと混ざってしまう　斜め軌道もありだろうか。 inc櫻井


//◆抜刀一閃
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	DeleteStCL(0,true);
	CreateTextureSPadd("絵背景500", 10000, Center, Middle, "cg/ef/ef012_汎用斜め軌道.jpg");
	Rotate("絵背景500", 0, @0, @0, @30, null, false);
	Delete("絵ＳＴ100")
	OnSE("se戦闘_攻撃_刀振る02",1000);


//◆拳打。ずばーん。
	CreateTextureSPadd("絵背景501", 10000, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");

	OnSE("se戦闘_攻撃_殴る03", 1000);

	Zoom("絵背景501", 0, 1200, 1200, null, false);
	Zoom("絵背景501", 200, 1000, 1000, Dxl2, false);
	Shake("絵背景501", 500, 50, 0, 0, 0, 1000, Dxl3, false);


	FadeDelete("絵背景*", 500, true);
	Delete("黒幕１");

//◆雪車町とさよ。離れて対峙。
	OnSE("se人体_動作_一歩", 1000);

	StR(1000, @-80, @0, "cg/st/stさよ_戦闘_私服.png");
	FadeStR(300, false);
	Move("@StR*", 150, @80, @0, Dxl1, true);

	SetFwC("cg/fw/fw雪車町_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0160120a12">
「…………」


{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0160130a04">
「密着の形から、身を沈めて抜き打ち。
　……躱せるかと思ったのですが」


{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0160140a04">
「歳は食いたくないもので。
　皮一枚、取られましたな」


{	FwC("cg/fw/fw雪車町_怒り.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0160150a12">
「……げばッッ」


</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆雪車町倒れる

	OnSE("se人体_衝撃_転倒04", 1000);
	DeleteStL(300, false);
	
	SetFwC("cg/fw/fw雪車町_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0160160a12">
「ぐっ……ひ……」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0160170a04">
「……犬死をなさる。
　キャノン中佐に命懸けの忠義を捧げていた
わけでもありますまい」


{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0160180a04">
「お空の上の、愉快痛快ビックリマシンも。
　面白い騎体である事は認めますが、惜しむ
らくは中身――」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0160190a04">
「あの大半は単なる素人でございましょう？
　薬物投与で反応速度と運動能力を引き上げ
られただけの俄か武者……違いますかな」


{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0160200a12">
「…………」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0160210a04">
「村正どのの敵とはなり得ませぬ」


{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0160220a12">
「……へ、へ。
　そう……」


{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0160230a12">
「そうでしょう……ねェ」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0160240a04">
「……？」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0160250a12">
「野郎の勝つところ……
　……見てやりたかったぜぇ……」


{	FwC("cg/fw/fw雪車町_嘲笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0160260a12">
「ヒヘ……ヘヘ……。
　ヒェッヘヘヘヘヘヘヘヘ」


{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0160270a12">
「へ……………………………………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト
	WaitKey(1000);

	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0160280a04">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);
}

..//ジャンプ指定
//次ファイル　"mc03_017vs.nss"