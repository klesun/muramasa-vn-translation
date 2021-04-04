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

scene md05_013b.nss_MAIN
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
	#bg108_荒れ狂う海b_00=true;
	#bg108_荒れ狂う海a_00=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mz00_000.nss";

}

scene md05_013b.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md05_013.nss"


//●船上に降りる
//◆降下。近付く

	PrintBG("上背景", 30000);
	OnBG(100, "bg108_荒れ狂う海b_00.jpg");
	FadeBG(0, true);
	CreateSE("暴風", "se自然_風_暴風");
	MusicStart("暴風", 0, 1000, 0, 1000, null,true);
	Delete("上背景");

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/013b0010a01">
《<RUBY text="へり">縁</RUBY>に蟹文字が書いてある……》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/013b0020a00">
「船名らしいな」

//◆アンドレア・ゲイル
{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/013b0030a00">
「……ＡＮＤＲＥＡ……ＧＡＩＬ……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　俺がその名を、読み上げた刹那だった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆空間ぶれ
	SetVolume("暴風", 500, 0, null);
	Wait(500);

	CreateTextureSP("下", 90, @0, @0, "cg/bg/bg108_荒れ狂う海a_00.jpg");


//	OnBG(90, "bg108_荒れ狂う海a_00.jpg");
//	FadeBG(0, true);

	CreatePlainEX("絵板写", 100);

	OnSE("se特殊_その他_空間歪曲",1000);

	Fade("絵板写", 200, 900, null, true);
	Zoom("絵板写", 1000, 1300, 1300, null, false);


//	DrawEffect("絵板写", 36000, "MiddleWave", 30, 30, null);

//◆戻り
	EffectZoom(17000, 1000, 0, "cg/bg/bg108_荒れ狂う海b_00.jpg", false);

	Delete("@OnBG*");
	FadeDelete("絵板写",1000,true);


	Wait(1000);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/013b0040a01">
《――――え!?》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/013b0050a00">
「消えた!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　消えてしまった。
　船はもはや、海上の何処にも見えない。

　一瞬にして波に呑まれてしまったのか？
　いや、それにしても……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md05/013b0060a00">
「村正、何が起こったかわかるか？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/013b0070a01">
《…………》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/013b0080a01">
《今……
　時間歪曲が、そこで》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/013b0090a00">
「……何……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/013b0100a01">
《あの船は……
　<RUBY text="・・・・・・・">私達の代わりに</RUBY>、連れて行かれた》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/013b0110a01">
《だから、私達はもう――》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　……………………。

　何を思えば良いのかわからなかった。

　己の軽挙を悔やめば良いのか。
　これから数奇な運命を辿るだろう船とその乗組員に
ついて思いを馳せれば良いのか。

　いずれにせよ。
　元の世界へ戻る手蔓を失った俺には、考え悩む時間
だけなら充分にあった……。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("黒2", 15000, "BLACK");

	SetVolume("SE*", 3000, 0, null);
	SetVolume("@mbgm*", 3000, 0, null);

//	Fade("黒2", 3000, 1000, null, true);

	ClearWaitAll(3000, 1500);

/*
//◆ゲームオーバー


	CreateTextureEX("絵背景100", 18000, Center, Middle, "cg/ev/ev009_ゲームオーバー.jpg");
	Fade("絵背景100", 1000, 1000, null, true);

//	WaitKey();

	ClearWaitAll(1500, 1500);
*/
}

..//ジャンプ指定
//次ファイル