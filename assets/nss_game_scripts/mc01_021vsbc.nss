
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_021vsbc.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/mc01_021vsbc.nss","DenziBladeCharge",true);
	Conquest("nss/mc01_021vsbc.nss","DenziBladeChargeSet",true);

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

	$GameName = "mc01_021vsz.nss";

}

scene mc01_021vsbc.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_021vsb.nss"

//●蒐窮
	PrintBG("上背景", 30000);
	SoundPlay("@mbgm08",0,1000,true);

	CreateTextureSP("絵演", 5000, Center, -90, "cg/ev/ev946_村正ＶＳガッタイダー_a.jpg");
	CreateWindow("絵窓", 19000, 0, 108, 1024, 360, false);
	SetAlias("絵窓","絵窓");
	CreateColorSP("絵窓/絵演色", 19000, "#CC0000");
	CreateTextureSP("絵窓/絵演立絵装甲弐", 19100, Center, Middle, "cg/ev/resize/ev902_村正電磁抜刀レールガン_bl.jpg");
	CreateTextureSPadd("絵窓/絵演立絵装甲参", 19120, Center, Middle, "cg/ev/resize/ev902_村正電磁抜刀レールガン_bl.jpg");
	Move("絵窓/絵演立絵装甲*", 0, @290, @160, null, true);
	Zoom("絵窓/絵演立絵装甲*", 0, 800, 800, null, true);
	Request("絵窓/絵演立絵装甲*", Smoothing);
	DrawTransition("絵窓/絵演立絵装甲参", 0, 0, 400, 100, null, "cg/data/slide_03_01_1.png", true);
	Wait(32);
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　出し惜しみをしている場合ではないだろう。
　最大の一撃をもって、直ちに終わらせる！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/021vs0420a01">
《<RUBY text="ながれ">磁装</RUBY>・<RUBY text="おわる">蒐窮</RUBY>――》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆レールガン準備
	CreateSE("SEL01","se特殊_電撃_帯電01");
	MusicStart("SEL01",0,1000,0,1000,null,true);

	CreateColorSPadd("絵色白", 20000, "#FFFFFF");

	CreateTextureSPadd("プロ絵上", 4020, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_d.jpg");
	CreateTextureSPover("プロ絵", 4010, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_d.jpg");
	CreateTextureSP("絵演村正", 4000, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_c.jpg");

	SetVertex("プロ絵*", 800, 290);

	Delete("絵窓*");
	Delete("絵演");

	Wait(10);
	DenziBladeCharge();
	FadeDelete("絵色白", 600, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　鞘に戻した太刀を中心に、必殺必滅の力が荒れ狂う。
　これを解き放てば、全てが終わる…………

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 100, 0, null);
	SetVolume("@mbgm*", 100, 0, null);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/021vs0430a00">
（――待て）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　いや。まずい。
　そんなことをすれば。

　そんなことをしてしまえば。
　<RUBY text="・・・・・・">殺してしまう</RUBY>。

　<RUBY text="レールガン">電磁抜刀</RUBY>は<RUBY text="・・・・">問答無用</RUBY>の一撃だ。
　手加減など仕様はなく、徹頭徹尾生命魂魄を破壊し
尽くす。

　そうなれば。
　俺は誰とも知れぬこの敵を殺し。

　更に村正の戒律に懸けてもう一人をも――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/021vs0440a00">
（馬鹿な！）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateColorEXadd("絵色白", 19900, "#FFFFFF");
	Fade("絵色白", 1600, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　手が止まる。力が霧散する。
　
　――――そして俺の命運は潰えた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆斧撃
//◆→●失敗

..//ジャンプ指定
//次ファイル　"mc01_021vsz.nss"

}

.//プロセス用======================================================

..//電磁抜刀放電ループ
function DenziBladeCharge()
{
	CreateProcess("Ｐ電磁抜刀放電ループ", 5000, 0, 0, "DenziBladeChargeSet");
	SetAlias("Ｐ電磁抜刀放電ループ","Ｐ電磁抜刀放電ループ");
	Request("Ｐ電磁抜刀放電ループ", Start);
}

function DenziBladeChargeSet()
{
	begin:
	while(1)
	{
	$RZoomSet = Random(3) + 3;
	$RZS = ($RZoomSet * 10) +1000;
	Shake("@プロ絵", 300, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@プロ絵上", 300, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@プロ絵*", 300, $RZS, $RZS, null, false);
	Fade("@プロ絵*", 50, 800, null, true);
	Fade("@プロ絵*", 250, 0, null, true);
	Wait(50);
	Zoom("@プロ絵*", 0, 1000, 1000, null, false);

	$RZoomSet = Random(3) + 3;
	$RZS = ($RZoomSet * 10) +1000;
	Shake("@プロ絵", 200, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@プロ絵上", 200, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@プロ絵*", 200, $RZS, $RZS, null, false);
	Fade("@プロ絵*", 50, 800, null, true);
	Fade("@プロ絵*", 150, 0, null, true);
	Wait(10);
	Zoom("@プロ絵*", 0, 1000, 1000, null, false);

	$RZoomSet = Random(3) + 3;
	$RZS = ($RZoomSet * 10) +1000;
	Shake("@プロ絵", 150, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@プロ絵上", 150, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@プロ絵*", 150, $RZS, $RZS, null, false);
	Fade("@プロ絵*", 50, 800, null, true);
	Fade("@プロ絵*", 150, 0, null, true);
	Wait(10);
	Zoom("@プロ絵*", 0, 1000, 1000, null, false);

	}

}