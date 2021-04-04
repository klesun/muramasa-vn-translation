
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031souko2ab.nss_MAIN
{

	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	$振動_Flag = true;
	$兵士気絶_Flag = true;

	$PreGameName = $GameName;


	$GameName = "mc02_031rouka2.nss";

	$Next_GameName = $GameName;
	$GameName = "mc02_031time.nss";

}

scene mc02_031souko2ab.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc02_031souko2a.nss"


//●素手
//◆ドア開けて飛び込む
//◆倉庫２＋兵士
//◆正拳一閃
	PrintBG("上背景", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateColorSP("絵色黒", 5000, "#000000");
	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/bg/bg081_飛行船船室Bb_01b.jpg");
	CreateSE("SE01","se日常_建物_扉開く07");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("上背景", 150, 100, "circle_01_00_1", true);
	DrawDelete("絵色黒", 150, 100, "circle_01_00_1", true);

	CreateColorSP("フラッシュ白", 15000, "WHITE");
	DrawTransition("フラッシュ白", 100, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	OnSE("se戦闘_動作_突進01", 1000);

	WaitKey(500);

	OnSE("se戦闘_攻撃_鎧攻撃命中", 1000);

	WaitKey(300);

	CreatePlainEX("絵板写", 5000);
	FadeFR2("絵板写",0,500,600,@0,@0,50,Dxl2, false);

	FadeDelete("フラッシュ白", 300, true);

	SetNwC("cg/fw/nw警備兵Ａ.png");
	//SetNwC("cg/fw/nw兵士.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／倉庫兵士】
<voice name="ｅｔｃ／倉庫兵士" class="その他男声" src="voice/mc02/031so0250e145">
「ぐふォォォォォォッッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆吹き飛ぶ。どがーん。
	CreateSE("SE02","se戦闘_攻撃_鎧_吹っ飛ぶ02");
	MusicStart("SE02",0,1000,0,1000,null,false);

	Shake("絵板写", 300, 0, 80, 0, 0, 1000, Dxl2, true);
	Delete("絵板写");

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031so0260a00">
「……しまった」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　力の程度を壮大に間違えた。
　というより――武者である俺がこんな役目を買った
時点で間違っていた。

　何かうまく手加減のできる道具でも持っていれば別
だったのだろうが。
『生かさず殺さず』の曖昧な力加減で放った拳は結果
として兵士を派手に吹き飛ばし、壁へ叩き付けていた。

　慌てて容態を確かめる。
　
　……幸い、重傷を負ってはいなかった。

　当分は意識を取り戻せないだろうが、このまま放置
しておいても死にはすまい。
　ほっと、安堵の息をつく。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_含羞.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031so0270a03">
「容赦なっしんぐ……
　でもそこにしびれるあこがれる」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031so0280a04">
「流石は湊斗さま。
　獅子は兎を狩るにも全力、の心得でござい
ますな！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　心から褒めているような口調で、老若の女性は俺を
遺憾なく罵倒してくれた。
　まぁ、こういう際は下手に慰められるよりそうして
貰えた方が助かる。

　俺達は室内を手早く見回り、不審な物が何もないの
を確かめた上でその部屋から出た。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕", 15000, "BLACK");
	DrawTransition("黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


//◆士官室振動フラグ
//◆兵士ＫＯフラグ？
//◆フラグ調整
//◆$振動_Flag = true;
//◆$兵士気絶_Flag = true;

//◆→●廊下２

}

..//ジャンプ指定
//次ファイル　"mc02_031rouka2.nss"