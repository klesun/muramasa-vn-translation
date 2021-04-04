//<continuation number="20">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_012b.nss_MAIN
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
	#bg088_チェイテ城のホール_01b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md05_013.nss";

}

scene md05_012b.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md05_012.nss"


//●逃げる
//◆逃走

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm34", 0, 1000, true);

	OnBG(100, "bg088_チェイテ城のホール_01b.jpg");
	FadeBG(0, true);

	OnSE("se戦闘_動作_空突進01",1000);
	OnSE("se戦闘_動作_鎧_踏み込み01",1000);

	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　<RUBY text="きびす">踵</RUBY>を返して走り出す。

　恐怖があった。
　この世界に捕まる事への恐怖ではない。

　<RUBY text="・・">ソレ</RUBY>への恐怖だ。

　……含み笑うような息使いが背に聴こえた。

　何か――迫ってくる。
　するする、するすると……細い何かが、俺を捕まえ
ようと追ってきている。

　振り返ってはならない。
　振り返れば捕まる。

　逃げるのだ。

　会ってはならないものから逃げるのだ。

　しかし、いつまで逃げれば良いのか……!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆空間ぶれ

	CreatePlainEX("絵板写", 100);

	OnSE("se特殊_その他_空間歪曲",1000);

	DrawEffect("絵板写", 36000, "MiddleWave", 30, 30, null);

	Fade("絵板写", 500, 900, null, false);
	Zoom("絵板写", 1000, 1300, 1300, AxlDxl, false);

	Wait(500);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/012b0010a01">
《御堂！》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/012b0020a00">
「来たか！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　時間移動の力――――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆移動
	OnSE("se戦闘_動作_鉄壁吹っ飛ばす", 1000);

	CreateColorSP("黒幕１", 25000, "WHITE");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);
	SetVolume("@mbgm*", 1000, 0, null);

	WaitKey(1500);
}

..//ジャンプ指定
//次ファイル　"md05_013.nss"