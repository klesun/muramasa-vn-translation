//<continuation number="100">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_024.nss_MAIN
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
	#bg002_空a_02=true;
	#ev925_野太刀断片_a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma01_025.nss";

}

scene ma01_024.nss
{
	$スクリプトバージョン = "  Version $Revision: 28 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma01_023vs.nss"

//◆夕空
	PrintBG("上背景", 30000);

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg002_空a_02.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	FadeDelete("上背景", 1000,true);

	SoundPlay("@mbgm26",0,1000,true);


	SetFwC("cg/fw/fw雄飛_驚くa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0240010b56">
「…………………………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　少年は見た。

　黄昏を貫く二条の光跡。
　正面から<RUBY text="まみ">見</RUBY>え――相撃ち――そして――
　黄銅色の光条が、散る。

　少年は見た。
　その刹那の一閃――

　何よりも<RUBY text="はや">迅</RUBY>く。
　何よりも<RUBY text="つよ">剛</RUBY>く。
　万物を等しく塵芥に貶めて<RUBY text="はし">疾翔</RUBY>った、雷火の煌きを。

　少年は見た。
　今はただ独り天を舞う、深紅の光軌。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0240020b56">
「……村正……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　少年は見た。いつまでも見ていた。
　心の奥底から湧き上がる、熱い震えを感じながら。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//	SetVolume("@mbgm*", 1000, 0, null);


//◆山中・夕
//◆ちゃりーん。金属が落ちる音
//◆ずごーん。村正、着地

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	Wait(1000);

	CreateTexture("絵背景50", 100, Center, Middle, "cg/bg/bg005_山中_02.jpg");
	Delete("絵背景100");


	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/slide_01_02_1.png", true);
	Delete("黒幕１");

//嶋：ＳＥ追加予定
	OnSE("se戦闘_動作_空落下01",1000);
	CreateColorEXadd("フラッシュ白", 15000, "WHITE");

	Fade("フラッシュ白",200,1000,null,true);


	StC(1000, @0,@+50,"cg/st/3d村正標準_立ち_通常.png");

	Wait(500);

	FadeStC(300,false);

	Move("@StC*", 1000, @0, @-50, Dxl1, false);
	Fade("フラッシュ白",1500,0,null,true);
	Delete("フラッシュ白");

	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050a]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0240030a00">
「……あった」


</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	CreateTextureEX("絵背景100", 5000, Center, Middle, "cg/ev/ev925_野太刀断片_a.jpg");
	Fade("絵背景100", 1000, 1000, null, true);

	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050b]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/0240040a00">
「野太刀の……柄だ」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma01/0240050a01">
《これで一つ。
　……残りは六つね》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆鎌倉・夕
//◆雪車町
//◆パキーン。なんか割れる音。


	PrintGO("上背景", 15000);

	CreateColorSP("黒幕１", 5000, "BLACK");
	CreateTexture("絵背景50", 100, Center, Middle, "cg/bg/bg007_若宮大路a_02.jpg");
	StR(1000, @0,@0,"cg/st/st雪車町_通常_私服.png");
	FadeStR(0,true);

	DrawDelete("上背景", 1000, 1000, "blind_01_00_1", true);

	Wait(1000);

	DrawDelete("黒幕１", 1000, 1000, "blind_01_00_1", true);


	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
//嶋：修正の可能性あり
	OnSE("se特殊_鎧_装着03",1000);
	Fade("フラッシュ白",0,1000,null,true);
	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");

	SetFwC("cg/fw/fw雪車町_無.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma01/0240060a12">
「……？」

{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma01/0240070a12">
（……真改。
　真改の<RUBY text="マーカー">標識</RUBY>が……消えた？）

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma01/0240080a12">
（消えちまいましたね。いや、おいおい。
　どうするべぇよ）

{	FwC("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma01/0240090a12">
「……………………」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma01/0240100a12">
「あたしゃ、しーらね。
　……で、済めばいいんだけどねェ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Wait(1000);

//◆フェードアウト
	ClearWaitAll(1000, 4000);


}

..//ジャンプ指定
//次ファイル　"ma01_025.nss"

