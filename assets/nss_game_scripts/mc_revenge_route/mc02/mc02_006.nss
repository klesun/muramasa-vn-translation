//<continuation number="200">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_006.nss_MAIN
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

	$GameName = "mc02_007.nss";

}

scene mc02_006.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc02_002.nss"


//◆フェードイン

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");

	OnBG(11, "bg030_ＧＨＱ監禁部屋_01.jpg");
	FadeBG(500, false);

	SoundPlay("@mbgm35",0,1000,true);

	Delete("上背景");
	FadeDelete("黒幕１",1000,true);

	WaitKey(1000);

//◆ガチャ。ドア開く
	OnSE("se日常_建物_扉開く01",1000);

//◆香奈枝軍服。元気良く登場

	StL(1000, @-500, @0, "cg/st/st香奈枝_通常_制服c.png");
	Move("@StL*", 300, @500, @0, Dxl1, false);
	FadeStL(300, true);


	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0060010a03">
「やっほー景明さまー♪
　快適な囚人ライフを過ごしておられますか
しらぁー？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆上から景明の立ち絵がぬーっと。逆向きに

	StR(1000, @0, @-550, "cg/st/st景明_通常_私服.png");
	FadeStR(0, false);
	Rotate("@StR*", 0, @0, @180, @180, null, true);
	Move("@StR*", 100, @0, @50, Axl1, true);
	WaitKey(1000);
	Move("@StR*", 150, @0, @-10, Axl1, true);
	Move("@StR*", 1000, @0, @250, Axl1, false);

	Shake("@StL*", 1000, 5, 0, 0, 0, 1000, DxlAuto, false);

	SetFwC("cg/fw/fw香奈枝_ショックb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0060020a03">
「ギャーーーーーーーーーーーーーーーー!!」

{	OnFwC("cg/fw/fw景明_通常a.png");
	Request("@FwC*", Smoothing);
	Rotate("@FwC*", 0, @180, @0, @0, null,true);
	Move("@FwC*", 0, @0, @-1, null, true);
	FadeFwC(0,false);}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0060030a00">
「大尉殿……」

{	StCL(1000, @-70, @0, "cg/st/stさよ_通常_私服.png");
	FadeStCL(300, false);
	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0060040a04">
「これはこれは湊斗さま。
　天井からご出現とは……さすが一筋縄では
ゆかぬ御方でございますなァ。ホッホッホッ」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0060050a04">
「いや、何やってんだよアンタ」

{	OnFwC("cg/fw/fw景明_黙考.png");
	Request("@FwC*", Smoothing);
	Rotate("@FwC*", 0, @180, @0, @0, null,true);
	Move("@FwC*", 0, @0, @-1, null, true);
	FadeFwC(0,false);}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0060060a00">
「は。休んでいようと思ったのですが……
　どうにも落ち着かず。つい、普段の拘置所
生活のように体を動かしてしまっていました」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0060070a04">
「普段の？」

{	OnFwC("cg/fw/fw景明_笑顔a.png");
	Request("@FwC*", Smoothing);
	Rotate("@FwC*", 0, @180, @0, @0, null,true);
	Move("@FwC*", 0, @0, @-1, null, true);
	FadeFwC(0,false);}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0060080a00">
「お気になさらず」


{	FwC("cg/fw/fw香奈枝_ショックb.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0060090a03">
「気になりますわやーーーっ！
　あな貴方は体を動かしたくなると天井から
ぶら下がるんですかっ。普段からっ!?」


{	OnFwC("cg/fw/fw景明_笑顔b.png");
	Request("@FwC*", Smoothing);
	Rotate("@FwC*", 0, @180, @0, @0, null,true);
	Move("@FwC*", 0, @0, @-1, null, true);
	FadeFwC(0,false);}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0060100a00">
「血行が活発になるせいか、健康に良いよう
です」


{	FwC("cg/fw/fw香奈枝_怒り.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0060110a03">
「んなこたァ訊いてません！」

{	OnFwC("cg/fw/fw景明_困惑.png");
	Request("@FwC*", Smoothing);
	Rotate("@FwC*", 0, @180, @0, @0, null,true);
	Move("@FwC*", 0, @0, @-1, null, true);
	FadeFwC(0,false);}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0060120a00">
「足と腹筋の鍛錬にもなるのですが」


{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0060130a03">
「地球人と会話している気がしない!!」


{	FwC("cg/fw/fwさよ_老兵.png");}
//嶋：修正（お父上）【090930】
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0060140a04">
「落ち着かれませお嬢さまっ！
　たとえ天井から人間が垂れ下がってきても
取り乱してはならないと、お父様が口をすっ
ぱくして仰っておられたのをお忘れですか！」


{	FwC("cg/fw/fw香奈枝_ショックb.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0060150a03">
「忘れる以前にそんなピンポイントな教育は
受けてませんっ！」

{	DeleteStL(300, false);
	DeleteStCL(300, false);}

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――


//◆ガチャ
	OnSE("se日常_建物_扉開く01",1000);
	WaitKey(1000);
	
	SetNwC("cg/fw/nw番兵.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//◆ボイス「ファッツハプニン――」What's happening?
//【ｅｔｃ／ＧＨＱ見張り】
<voice name="ｅｔｃ／ＧＨＱ見張り" class="その他男声" src="voice/mc02/0060160e000">
「大尉殿、何かありま――」


//◆ボイス「マイガーーーーーーッ!!」
//【ｅｔｃ／ＧＨＱ見張り】
<voice name="ｅｔｃ／ＧＨＱ見張り" class="その他男声" src="voice/mc02/0060170e000">
「何じゃァーーーーーーーーーーーーーー!?」

{	OnFwC("cg/fw/fw景明_通常a.png");
	Request("@FwC*", Smoothing);
	Rotate("@FwC*", 0, @180, @0, @0, null,true);
	Move("@FwC*", 0, @0, @-1, null, true);
	FadeFwC(0,false);}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0060180a00">
「……？
　扉の外におられた方ですか？」

{	OnFwC("cg/fw/fw景明_黙考.png");
	Request("@FwC*", Smoothing);
	Rotate("@FwC*", 0, @180, @0, @0, null,true);
	Move("@FwC*", 0, @0, @-1, null, true);
	FadeFwC(0,false);}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0060190a00">
「先刻はお騒がせしました」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0060200a04">
「いえ、今も騒がせておりますよ……
　ていうかそろそろ降りろよ。怪奇蝙蝠男」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆次のファイルでも同じBGMを使うため停止していません。 inc櫻井
//◆シーン切り

	ClearFadeAll(1000, true);
}

..//ジャンプ指定
//次ファイル　"mc02_007.nss"