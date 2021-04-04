//<continuation number="150">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_004.nss_MAIN
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

	$GameName = "mc03_005.nss";

}

scene mc03_004.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc03_003.nss"

//◆回想
//◆山道？
	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 10000, "#000000");	

//■村正空飛んでる　櫻井
	CreateTextureSP("絵空背景", 100, InRight, InTop, "cg/bg/bg204_横旋回背景_01.jpg");
	Move("絵空背景", 10000, 0, -278, Axl2, false);

	Delete("上背景");
	FadeDelete("絵色黒",1500,true);

	StR(1000,@500,@0,"cg/st/3d村正標準_騎航_通常.png");
	FadeStR(0,true);

	CreateSE("SEL01","se戦闘_動作_空走行02_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);
	Shake("@StR*", 10000, 1, 0, 0, 0, 1000, Dxl3, false);
	Move("@StR*", 1500, @-500, @200, Dxl1, true);

	WaitKey(2000);

	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Wait(200);
	SetVolume("SEL*", 1000, 0, null);
	Move("@StR*", 400, @-1500, @600, Dxl3, true);

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	SetVolume("@OnSE*", 1000, 0, null);
	OnBG(100, "bg005_山中_01.jpg");
	FadeBG(0, true);
	DeleteStA(0,false);

	Delete("絵背景*");
	DrawTransition("黒幕１", 200, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);
	Delete("黒幕１");

//◆村正武者飛来、着地
//◆解甲
	CreateSE("着地", "se戦闘_動作_鎧_着地01");
	MusicStart("着地", 0, 1000, 0, 1000, null,false);

	WaitKey(2000);

	SetVolume("着地", 1000, 0, null);

	OnSE("se特殊_鎧_駆動音02", 1000);

	StR(1000,@20,@50,"cg/st/3d村正標準_立ち_通常.png");
	FadeStR(300,true);
	Move("@StR*", 500, @-20, @-50, DxlAuto, true);

	
	Wait(200);

	CreateColorEXadd("フラ", 10000, "#FFFFFF");
	CreateSE("SE01","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	Fade("フラ", 300, 1000, null, true);

	Delete("絵回想400");
	CreateColorSPadd("フラ", 10000, "#FFFFFF");
	StR(1000, @0, @0, "cg/st/st景明_通常_私服.png");
	FadeStR(300, true);
	Delete("上背景");

	FadeDelete("フラ", 1600, true);

	SetVolume("SE*", 1000, 0, null);


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0040010a00">
「大尉、侍従殿」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆二人

	StL(1000, @70, @0, "cg/st/st香奈枝_通常_私服c.png");
	StCL(1010, @-90, @0, "cg/st/stさよ_通常_私服.png");
	FadeStL(300, false);
	FadeStCL(300, true);

	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0040020a04">
「首尾は如何で？」


{	SoundPlay("@mbgm16", 0, 1000, true);
	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0040030a00">
「遺漏なく。
　敵の移動手段は全て破壊しました。増援の
到着は大幅に遅延する筈です」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0040040a03">
「では、今のうちに那須から白河へ抜けてし
まいましょう」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0040050a00">
「この辺りの安全は？」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0040060a04">
「確保したとは、生憎ながら。
　早々に移動した方がよろしゅうございます」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0040070a00">
「諒解」


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0040080a03">
「――――」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0040090a00">
「大尉殿？」


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0040100a03">
「伏せてっ！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆景明を突き飛ばす香奈枝
	OnSE("se人体_衝撃_肩にぶつかる01", 1000);
	StC(1000, @100, @0, "cg/st/st香奈枝_通常_私服c.png");
	DeleteStL(200,false);
	DeleteStCL(200,false);
	Move("@StC*", 150, @150, @0, null, false);
	FadeStC(200, false);
	Move("@StR*", 500, @150, @0, null, false);
	DeleteStR(300,true);

//◆銃声。撃たれた
	OnSE("se戦闘_銃器_拳銃発砲01", 1000);
	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);
	Fade("フラッシュ白",300,0,null,true);

	Shake("@StC*", 500, 10, 0, 0, 0, 1000, DxlAuto, false);

//	WaitKey(1000);

	SetFwC("cg/fw/fw香奈枝_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0040110a03">
「ぐッ……!!」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0040120a00">
「な――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆香奈枝銃構え
	StC(1000, @250, @0,"cg/st/st香奈枝_射撃_私服b.png");
	FadeStC(150,true);
	OnSE("se戦闘_銃器_拳銃構え01", 1000);

	Wait(300);

//◆撃つ
	OnSE("se戦闘_銃器_拳銃発砲01", 1000);
	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);
	Fade("フラッシュ白",300,0,null,true);

	WaitKey(1000);

	SetNwC("cg/fw/nw狙撃手.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
<voice name="ｅｔｃ／狙撃手" class="その他男声" src="voice/mc03/0040130e144">
「がふッッ!?」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆どさっ。兵士が倒れる音
	OnSE("se人体_衝撃_転倒04", 1000);

	SetFwC("cg/fw/fw香奈枝_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0040140a03">
「……っ……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆香奈枝、膝を突き
//◆倒れる
	OnSE("se人体_衝撃_転倒04", 1000);
	Move("@StC*", 300, @-10, @100, DxlAuto, false);
	DeleteStC(300,true);

	SetFwC("cg/fw/fwさよ_老兵.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0040150a04">
「お嬢さま!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);
	SetVolume("SE*", 2000, 0, null);
	SetVolume("@OnSE*", 2000, 0, null);

//◆回想終了。戻り
	CreateColorEX("白", 10000, "WHITE");
	Fade("白", 1500, 1000, null, true);

	WaitPlay("@mbgm*", null);

}

..//ジャンプ指定
//次ファイル　"mc03_005.nss"