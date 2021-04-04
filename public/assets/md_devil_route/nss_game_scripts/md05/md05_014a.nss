//<continuation number="10">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_014a.nss_MAIN
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
	#bg003_荒れ野_01=true;
	#ev235_迫る鍛造雷弾_e=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mz00_000.nss";

}

scene md05_014a.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md05_014.nss"


//●助ける
	PrintBG("上背景", 30000);
	CreateColorSP("下敷き", 50, "BLACK");

	SoundPlay("@mbgm02", 0, 1000, true);


	OnBG(100, "bg003_荒れ野_03.jpg");
	FadeBG(0, true);
	CreateTextureEXadd("炎", 110, @0, @0, "cg/ef/ef046_炎a.jpg");
	Fade("炎", 0, 1000, null, true);
	Zoom("炎", 0, 1100, 1100, null, true);

	DrawEffect("炎", 50, "MiddleWave", 30, 30, null);

	CreateSE("SEめらめら", "se背景_ガヤ_燃える町並み_L");
	MusicStart("SEめらめら", 3000, 1000, 0, 1000,null, true);

	CreateMovie("煙動画", 300, 256, 278, true, true, "dx/mvk100.ngs");
	SetAlias("煙動画","煙動画");
	Zoom("煙動画", 0, 3000, 6000, null, true);
	Request("煙動画", SubRender);
	Move("煙動画", 0, @0, @-400, null, true);

	FadeDelete("上背景",1000,true);


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/014a0010a01">
《御堂！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　村正の声も、もはや俺の心には届かなかった。
　迷わない。俺は彼女を救う。

　あの儚い生命を救うのだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆走る

	OnSE("se人体_足音_鎧_複数駆け去る01", 1000);

	WaitKey(1000);

	SetVolume("@OnSE*", 1000, 0, null);


	StC(1000, @0, @0, "cg/st/st鍛造雷弾_通常_私服.png");
	FadeStC(300, true);


	OnSE("se人体_動作_抱く02", 1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　武者の足にはほんの数歩の距離。
　一息に駆け抜けて、その体を抱え上げる。

　微弱な息遣いが、頬に触れた。
　少女の双眸が、俺を認める。

　俺も彼女の顔を見下ろした。

　……ああ。

　俺は深く、深く安堵した。
　決断は正しかった――誰が何を言おうが断じて正し
かったのだ。

　助けて良かった。

　失ったものは計り知れない。
　しかし、得たものがここにある。

　見よ。
　この少女を。

　空洞のようだと感じた、嘗ての自分の気が知れない。
　確かに少女の瞳は虚ろだろう。表情は常に一様で、
変化に乏しいだろう。

　だがその奥を見よ。
　豊穣なる心を覗け。

　空虚と思えたのはそれが何の欠けもなく、隅々まで
満ち満ちていたからだ。
　〇と一〇〇の類似性に惑わされたに過ぎない。

　少女は無ではなく全であった。

　豊かな心でもって、彼女は俺を祝福している。
　それで良い。その決断で正しいと。

　こんなにも嬉しそうに――――

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆ev235cをレイヤー重ね
//◆フェードアウト
//◆ゲームオーバー
	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SEめらめら", 2000, 0, null);

	CreateTextureEX("孔明の罠だった", 1200, @0, @0, "cg/ev/ev235_迫る鍛造雷弾_e.jpg");

	Wait(1000);

	Fade("孔明の罠だった", 1000, 1000, null, true);
	OnSE("se特殊_雰囲気_不協和音", 1000);

	CreatePlainEX("絵板写", 1200);
	SetBlur("絵板写", true, 3, 5, 200);
	Request("絵板写", Smoothing);

	Fade("絵板写", 500, 800, null, false);
	Zoom("絵板写", 1000, 1100, 1100, Dxl1, true);

	Delete("炎");
	Delete("煙動画");

	DeleteStC(0,true);
	Delete("@OnBG*");
	FadeDelete("孔明の罠だった",1500,false);
	FadeDelete("絵板写",1500,false);

	WaitKey(1000);

	SetVolume("SE*", 3000, 0, null);
	SetVolume("OnSE*", 3000, 0, null);
	SetVolume("@mbgm*", 3000, 0, null);

	ClearWaitAll(3000, 1500);

/*
	CreateColorEX("黒2", 15000, "BLACK");
	Fade("黒2", 2000, 1000, null, true);



	CreateTextureEX("絵背景100", 18000, Center, Middle, "cg/ev/ev009_ゲームオーバー.jpg");
	Fade("絵背景100", 1000, 1000, null, true);

	WaitKey();


	ClearWaitAll(1500, 1500);
*/
}

..//ジャンプ指定
//次ファイル