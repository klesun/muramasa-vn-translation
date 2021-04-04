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

scene md05_014b.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md05_015.nss";

}

scene md05_014b.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md05_014.nss"


//●助けない

	PrintBG("上背景", 30000);

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

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　<RUBY text="・">魔</RUBY>が差したとでも云うべきか。
　不意に群雲の如く湧いて胸中を満たしたその考えを、
俺は慌てて振り払った。

　ならぬ。
　この世界の事象に干渉を許されるのは、この世界の
存在のみ。

　俺は部外者であり、稀有な機会を得て覗き見ている
に過ぎない。
　手を出す資格などない。

　俺の決断そして行動によって変えられるものがある
とすれば、それは俺自身の世界の事象だけなのだ……。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆空間ぶれ
	CreatePlainEX("絵板写", 11000);
	DrawEffect("絵板写", 36000, "MiddleWave", 30, 30, null);

	OnSE("se特殊_その他_空間歪曲",1000);

	Fade("絵板写", 200, 1000, null, false);
	Zoom("絵板写", 1000, 1300, 1300, Dxl2, true);

	Wait(500);


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");
	
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/014b0010a01">
《……焦らせないでよ》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/014b0020a00">
「済まん。
　どうも熱にあてられたらしい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　もう少女の姿は見なかった。
　見ればまた何を思うかわからない。

　修正力の働きに意識を集中させ、身を任せる。
　
　……そろそろ元の時空間に戻らないだろうか？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆移動
	SetVolume("@SE*", 1000, 0, null);
	SetVolume("@mbgm*", 1000, 0, null);

	OnSE("se戦闘_動作_鉄壁吹っ飛ばす", 1000);

	CreateColorSP("黒幕１", 25000, "WHITE");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	WaitKey(1500);

}

..//ジャンプ指定
//次ファイル　"md05_015.nss"