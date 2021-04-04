
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031souko2b.nss_MAIN
{

	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc02_031rouka2.nss";

//嶋：カウント調整
//	$Next_GameName = $GameName;
//	$GameName = "mc02_031time.nss";

}

scene mc02_031souko2b.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"mc02_031souko2.nss"


//●香奈枝

//◆ドア開けて飛び込む
//◆倉庫２＋兵士
//◆銃床アッパー

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateColorSP("絵色黒", 5000, "#000000");
	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/bg/bg081_飛行船船室Bb_01b.jpg");
	CreateSE("SE01","se日常_建物_扉開く07");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("上背景", 150, 100, "circle_01_00_1", true);
	DrawDelete("絵色黒", 150, 100, "circle_01_00_1", true);

	OnSE("se戦闘_動作_突進02", 1000);

	WaitKey(1000);

	CreateColorSP("フラッシュ白", 5000, "#FFFFFF");
	OnSE("se戦闘_攻撃_殴る01", 1000);

	WaitKey(100);

	SetNwC("cg/fw/nw警備兵Ａ.png");
	//SetNwC("cg/fw/nw兵士.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／倉庫兵士】
<voice name="ｅｔｃ／倉庫兵士" class="その他男声" src="voice/mc02/031so0290e145">
「おご――――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばた。兵士倒れる

	StL(1100, @0, @,"cg/st/st香奈枝_通常_制服c.png");
	FadeStL(0,false);

	OnSE("se人体_衝撃_転倒02", 1000);

	Fade("フラッシュ白",1500,0,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　…………見事。
　大鳥大尉の銃床による一打は完璧な正確さで兵士の
顎を捉え、その意識を天上世界へ吹き飛ばしていた。

{	DeleteStL(300, false);}
　数十秒間は目覚めまい。
　俺達は手分けして室内を捜索し、最小限度の時間で
不審物がないことを確かめると、その部屋を出た。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateColorSP("黒幕", 15000, "BLACK");
	DrawTransition("黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


//◆→●廊下２

..//ジャンプ指定
//次ファイル　"mc02_031rouka2.nss"

}


