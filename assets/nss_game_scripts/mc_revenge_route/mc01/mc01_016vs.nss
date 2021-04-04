//<continuation number="170">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_016vs.nss_MAIN
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

	$GameName = "mc01_017vs.nss";

}

scene mc01_016vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_015vs.nss"

//◆移動
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg076_建朝寺境内_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	DrawDelete("絵暗転", 150, 100, "slide_01_02_1", true);

	SoundPlay("@mbgm13",0,1000,true);

	SetNwC("cg/fw/nw駐屯隊伍長.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／駐屯隊伍長】
<voice name="ｅｔｃ／駐屯隊伍長" class="その他男声" src="voice/mc01/016vs0010e210">
「そこの女！
　侵入者とは貴様かッ!?」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/016vs0020a03">
「いえその方ならあっちへ行きました。
　わたくしは見ての通りただの尼さんです」


{	NwC("cg/fw/nw駐屯隊兵士Ｄ.png");}
//【ｅｔｃ／駐屯隊Ｄ】
<voice name="ｅｔｃ／駐屯隊Ｄ" class="その他男声" src="voice/mc01/016vs0030e205">
「ご、伍長殿……女の背後を！
　第三分隊が殲滅されております!!」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/016vs0040a03">
「あら本当みなさんお倒れになって。
　昼寝でもしていらっしゃるのかしら？」


{	NwC("cg/fw/nw駐屯隊伍長.png");}
//【ｅｔｃ／駐屯隊伍長】
<voice name="ｅｔｃ／駐屯隊伍長" class="その他男声" src="voice/mc01/016vs0050e210">
「殺せぇっ!!」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/016vs0060a03">
「少しくらい話を聞いてくださいません？」


{	NwC("cg/fw/nw駐屯隊伍長.png");}
//【ｅｔｃ／駐屯隊伍長】
<voice name="ｅｔｃ／駐屯隊伍長" class="その他男声" src="voice/mc01/016vs0070e210">
「貴様が地面に這いつくばった後でな！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆ぱんぱんぱん
//◆香奈枝ザ・ワールド。色反転フリーズ
//◆元の世界へ
	CreateSE("SE01a","se戦闘_攻撃_ライフル撃つ4回");
	CreateSE("SE01b","se戦闘_攻撃_ライフル撃つ4回");
	MFlash(50, 100);
	MusicStart("SE01a",0,1000,0,850,null,false);
	Wait(10);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Wait(10);

	SetVolume("SE*", 100, 0, null);

	Delete("@MF*");

	CreateSE("SE01","se特殊_その他_辰気流蒸発");
	CreateEffect("絵効果", 10000, 0, 0, 1024, 576, "NegaPosi");
	SetAlias("絵効果","絵効果");
	Fade("絵効果", 0, 0, null, true);

	MusicStart("SE01",0,1000,0,2000,null,false);
	Fade("絵効果", 200, 1000, Dxl2, false);
	DrawTransition("絵効果", 200, 0, 1000, 100, Dxl2, "cg/data/circle_03_00_0.png", true);

	Wait(500);

	FadeDelete("絵効果", 600, true);

	SetNwC("cg/fw/nw駐屯隊伍長.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／駐屯隊伍長】
<voice name="ｅｔｃ／駐屯隊伍長" class="その他男声" src="voice/mc01/016vs0080e210">
「――――!?」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/016vs0090a03">
「……そう。
　わたくしと同じ趣味なのね、伍長さん」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぱんぱんぱん。兵士全滅。
	CreateSE("SE01","se戦闘_攻撃_ライフル撃つ4回");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵色白", 5000, "#FFFFFF");
	Wait(20);
	FadeDelete("絵色白", 600, true);

//◆香奈枝
	StR(1000, @60, @0,"cg/st/st香奈枝_射撃_私服a.png");
	Move("@StR*", 300, @-60, @0, DxlAuto, false);
	FadeStR(300,true);

	SetNwC("cg/fw/nw駐屯隊伍長.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／駐屯隊伍長】
<voice name="ｅｔｃ／駐屯隊伍長" class="その他男声" src="voice/mc01/016vs0100e210">
「なんっ……だとォ!?」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/016vs0110a03">
「わたくしも相手を這いつくばらせて話すの
は大好きです。
　丁度……こんなふうに」


{	NwC("cg/fw/nw駐屯隊伍長.png");}
//【ｅｔｃ／駐屯隊伍長】
<voice name="ｅｔｃ／駐屯隊伍長" class="その他男声" src="voice/mc01/016vs0120e210">
「き、貴様……
　弾を……避け……っ!?」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/016vs0130a03">
「ふふふっ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばーん。
	CreateSE("SE01","se戦闘_攻撃_ライフル撃つ01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵色白", 5000, "#FFFFFF");
	FadeStA(0,true);
	Wait(20);
	FadeDelete("絵色白", 300, true);

	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/016vs0140a03">
「さぁーて。
　なんかわたくし一人で勝手に盛り上がって
まいりましてよーっ」


{	FwC("cg/fw/fw香奈枝_含羞.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/016vs0150a03">
「笑っても笑っても笑ってもわたくしだけ。
　周りで皆さん死体になっていて、何も答え
てくださらない」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/016vs0160a03">
「……なんだかとても惨めなわたくし。
　まるで世界の全てに置き去りにされたよう」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/016vs0170a03">
「ふふふ――あははははっ」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


..//ジャンプ指定
//次ファイル　"mc01_017vs.nss"

}