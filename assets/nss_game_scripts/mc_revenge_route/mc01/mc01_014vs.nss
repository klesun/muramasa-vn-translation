//<continuation number="210">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_014vs.nss_MAIN
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

	$GameName = "mc01_015vs.nss";

}

scene mc01_014vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_013.nss"

//◆門前
//◆六波羅兵×２
	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 5000, "#000000");
	OnBG(100,"bg056_建長寺三門前_01.jpg");
	FadeBG(0,true);
	StL(1100, @-95, @0,"cg/st/st六波羅兵士_通常_制服.png");
	StCL(1000, @95, @0,"cg/st/st六波羅兵士_通常_制服.png");
	FadeStA(0,true);
	Delete("上背景");
	FadeDelete("絵色黒", 2000, true);

	SoundPlay("@mbgm34",0,1000,true);

	SetNwC("cg/fw/nw駐屯隊兵士Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010a]
//【ｅｔｃ／駐屯隊Ａ】
<voice name="ｅｔｃ／駐屯隊Ａ" class="その他男声" src="voice/mc01/014vs0010e202">
「そこの女、止まれ！」


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st香奈枝_通常_私服b.png");
	FadeStR(300,true);

	SetNwC("cg/fw/nw駐屯隊兵士Ｂ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010b]
//【ｅｔｃ／駐屯隊Ｂ】
<voice name="ｅｔｃ／駐屯隊Ｂ" class="その他男声" src="voice/mc01/014vs0020e203">
「現在、建朝寺は幕府の管理下にある。
　一般客の参拝は認められない」

//【ｅｔｃ／駐屯隊Ｂ】
<voice name="ｅｔｃ／駐屯隊Ｂ" class="その他男声" src="voice/mc01/014vs0030e203">
「退去せよ！」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/014vs0040a03">
「参拝客ではございませんの。
　通してくださいましな」


{	NwC("cg/fw/nw駐屯隊兵士Ｂ.png");}
//【ｅｔｃ／駐屯隊Ｂ】
<voice name="ｅｔｃ／駐屯隊Ｂ" class="その他男声" src="voice/mc01/014vs0050e203">
「何……？
　寺の関係者か？」


{	NwC("cg/fw/nw駐屯隊兵士Ａ.png");}
//【ｅｔｃ／駐屯隊Ａ】
<voice name="ｅｔｃ／駐屯隊Ａ" class="その他男声" src="voice/mc01/014vs0060e202">
「ならば証明証を見せろ」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/014vs0070a03">
「証明証？」


{	NwC("cg/fw/nw駐屯隊兵士Ａ.png");}
//【ｅｔｃ／駐屯隊Ａ】
<voice name="ｅｔｃ／駐屯隊Ａ" class="その他男声" src="voice/mc01/014vs0080e202">
「駐屯隊長が発行したものだ。
　本当に関係者なら、持っているはずだぞ」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/014vs0090a03">
「ああ……はい、はい。
　これでよろしいのかしら？」


{	NwC("cg/fw/nw駐屯隊兵士Ａ.png");}
//【ｅｔｃ／駐屯隊Ａ】
<voice name="ｅｔｃ／駐屯隊Ａ" class="その他男声" src="voice/mc01/014vs0100e202">
「ん……？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆香奈枝→ライフル構え→発砲二発
//◆抜き打ちの素早さを演出で表現
	CreateColorSP("絵色白", 5000, "#FFFFFF");
	CreateSE("SE01","se戦闘_攻撃_ライフル撃つ01");
	CreateSE("SE01a","se戦闘_攻撃_ライフル撃つ01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Wait(80);
	MusicStart("SE01a",0,1000,0,1000,null,false);

	StR(1000, @0, @0,"cg/st/st香奈枝_射撃_私服a.png");
	FadeStR(0,true);

	FadeDelete("絵色白", 1000, true);

	SetNwC("cg/fw/nw駐屯隊兵士Ｂ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／駐屯隊Ｂ】
<voice name="ｅｔｃ／駐屯隊Ｂ" class="その他男声" src="voice/mc01/014vs0110e203">
「なっ――」


{	NwC("cg/fw/nw駐屯隊兵士Ａ.png");}
//【ｅｔｃ／駐屯隊Ａ】
<voice name="ｅｔｃ／駐屯隊Ａ" class="その他男声" src="voice/mc01/014vs0120e202">
「あが……」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/014vs0130a03">
「万国共通の通行許可証。
　確かに、お渡ししましてよ？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばたばた。
	CreateSE("SE01","se人体_衝撃_転倒05");
	CreateSE("SE01a","se人体_衝撃_転倒03");
	Shake("@StL*", 300, 2, 1, 0, 0, 1000, null, false);
	Shake("@StML*", 300, 2, 1, 0, 0, 1000, null, false);

	Move("@StL*", 300, @-30, @60, Dxl1, false);
	Move("@StML*", 300, @10, @60, Axl2, false);
	DeleteStL(300,false);
	DeleteStCL(300,true);
	MusicStart("SE01*",0,1000,0,1000,null,false);

	SetNwC("cg/fw/nw駐屯隊兵士Ｂ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／駐屯隊Ｂ】
<voice name="ｅｔｃ／駐屯隊Ｂ" class="その他男声" src="voice/mc01/014vs0140e203">
「き……貴様」


{	DeleteStR(300,false);
	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/014vs0150a03">
「御免あそばせ」


{	NwC("cg/fw/nw駐屯隊兵士Ｂ.png");}
//【ｅｔｃ／駐屯隊Ｂ】
<voice name="ｅｔｃ／駐屯隊Ｂ" class="その他男声" src="voice/mc01/014vs0160e203">
「……ろ――」

//【ｅｔｃ／駐屯隊Ｂ】
<voice name="ｅｔｃ／駐屯隊Ｂ" class="その他男声" src="voice/mc01/014vs0170e203">
「六波羅武士を……舐めるな！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆呼子。ふぃーっ。
	CreateSE("SE01","se戦闘_楽器_呼子鳴る");
	MusicStart("SE01",0,1000,0,1000,null,false);

	$残時間=RemainTime("SE01");
	WaitKey($残時間);

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/014vs0180a03">
「あら……」


{	NwC("cg/fw/nw駐屯隊兵士Ｂ.png");}
//【ｅｔｃ／駐屯隊Ｂ】
<voice name="ｅｔｃ／駐屯隊Ｂ" class="その他男声" src="voice/mc01/014vs0190e203">
「すぐに仲間が来る……竜騎兵も……。
　自分の愚かな行為を……後悔すると、いい
……」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/014vs0200a03">
「根性がおありなのね。
　胸を撃ち抜かれてなお、呼子を吹くなんて」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/014vs0210a03">
「素敵でしてよ」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆ずどん。頭に一発。
	CreateColorSP("絵色白", 5000, "#FFFFFF");
	CreateSE("SE01","se戦闘_攻撃_ライフル撃つ01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	$残時間=RemainTime("SE01");
	WaitKey($残時間);

	ClearWaitAll(2000, 2000);

..//ジャンプ指定
//次ファイル　"mc01_015vs.nss"

}
