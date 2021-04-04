//<continuation number="110">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_027vs.nss_MAIN
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
	#bg056_建長寺三門前_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md03_028vs.nss";

}

scene md03_027vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md03_026vs.nss"


//◆茶々丸と村正

	PrintBG("上背景", 30000);
	OnBG(100, "bg056_建長寺三門前_03.jpg");
	FadeBG(0, true);
	CreateColorSP("黒幕１", 20000, "BLACK");
	Delete("上背景");
	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_01_02_1.png", true);
	SoundPlay("@mbgm09", 0, 1000, true);

	SetFwC("cg/fw/fw村正_驚きa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/027vs0010a01">
「――――」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/027vs0020a07">
「なに余裕かましてんだおめー。
　余所見してられる状況かって……」

{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/027vs0030a07">
「――――なぁッ!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　茶々丸も、それを見た。
　予想外だったのだろう。愕然と絶句している。

　景明と黒瀬童子の対峙。
　それだけなら状況は従前と同じだ。

　違うのは、黒瀬童子が<RUBY text="・・">装甲</RUBY>していること。
　
　彼は武者だったのだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StR(1000, @50, @0, "cg/st/st茶々丸_通常_制服b.png");
	FadeStR(300, true);

	SetFwC("cg/fw/fw茶々丸_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/027vs0040a07">
「――――――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　茶々丸の焦りは、手に取るようにわかった。

　周囲を見れば、黄金の劒冑の巨漢武者は一条を完全
に圧倒しているものの、景明らとの距離はやや離れて
いてすぐ助けに入れる状態にはない。
　寺の包囲に散らした兵も、呼び戻すには時間が要る。

　誰も支援に来なければ……両者の戦闘は瞬き一つの
間に終わるだろう。
　武者と生身の人間。勝負にならない。

　誰も間に割って入らなければ。
　
　今、割り込める者は――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆茶々丸、動く
//◆村正、阻止
	OnSE("se人体_動作_後ずさり01",1000);
	StL(1000, @-50, @0, "cg/st/st村正_戦闘_私服.png");
	Request("@StL*", Smoothing);
	Rotate("@StL*", 0, @0, @180, @0, null,true);

	Move("@StR*", 100, @-50, @0, DxlAuto, false);

	SetBlur("@StL*", true, 1, 500, 50, false);
	Move("@StL*", 300, @50, @0, DxlAuto, false);
	FadeStL(300, true);

	SetFwC("cg/fw/fw茶々丸_歯噛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/027vs0050a07">
「てめ――どけよ!!」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/027vs0060a01">
「お断りね。
　さっき立場が逆だった時、貴方も私の邪魔
をしたでしょう」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/027vs0070a07">
「こ、この……
　つーかお兄さんが殺されたらてめーだって
困るだろうが!!」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/027vs0080a01">
「黒瀬童子に命まで取る気はない。
　怪我は負うにしても……あとで私が治して
あげればいいことだもの」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/027vs0090a01">
「景明との決着がついたら、黒瀬童子に次は
貴方の相手をしてもらう。
　その間に私は景明の精神を元通りにして、
傷も治す」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/027vs0100a01">
「詰みよ、茶々丸!!」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/027vs0110a07">
「ざッッけんなァ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆激突

	OnSE("se人体_動作_後ずさり01",1000);
	DeleteStR(100, false);
	DeleteStL(100, true);
	WaitKey(100);

	OnSE("se戦闘_攻撃_鎧_剣戟03", 1000);

	CreateColorSP("黒幕１", 20000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_02_1.png", true);

	SetVolume("SE*", 800, 0, Axl2);
	Wait(800);


}

..//ジャンプ指定
//次ファイル　"md03_028vs.nss"