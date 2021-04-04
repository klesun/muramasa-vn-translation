//<continuation number="150">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_005a.nss_MAIN
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
	#ev119_一条と香奈枝海水浴_a = true;

	//▼ルートフラグ、選択肢、次のGameName
	if($ma04_005a_routeFlag==true){$ma04_005a_routeFlag=false;}
	else{$Ichizyou_Flag=$Ichizyou_Flag+2;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma04_005z.nss";

}

scene ma04_005a.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_005.nss"

//●一条
	SoundPlay("@mbgm29",0,1000,true);

	PrintBG("上背景", 30000);
	CreateCamera("カメラ１", Center, Middle, 250);
	SetAlias("カメラ１","カメラ１");

	CreateTextureSP("カメラ１/絵背景100",500, Center, Middle, "cg/ev/resize/ev119_一条と香奈枝海水浴_a_ex04.jpg");
	CreateTextureEX("カメラ１/絵背景200",500, Center, Middle, "cg/ev/resize/ev119_一条と香奈枝海水浴_a_ex03.jpg");
	SetAlias("カメラ１/絵背景100","絵背景100");
	Request("カメラ１/絵背景100", Smoothing);
	Request("カメラ１/絵背景200", Smoothing);
	Zoom("カメラ１/絵背景100", 0, 1200, 1200, null, true);
	Zoom("カメラ１/絵背景200", 0, 1200, 1200, null, true);

	CreateTextureSP("カメラ１/絵１",600, Center, Middle, "cg/ev/resize/ev119_一条と香奈枝海水浴_a_ex01.png");
	CreateTextureEX("カメラ１/絵２",600, Center, Middle, "cg/ev/resize/ev119_一条と香奈枝海水浴_a_ex02.png");
	SetAlias("カメラ１/絵１","絵１");
	SetAlias("カメラ１/絵２","絵２");
	Request("カメラ１/絵１", Smoothing);
	Request("カメラ１/絵２", Smoothing);
	Move("カメラ１/絵１", 0, @+50, @0, null, true);
	Move("カメラ１/絵２", 0, @+50, @0, null, true);

	MoveCamera("@カメラ１", 0, @+200, @+200, @0, Dxl1, true);

	Fade("カメラ１/絵背景200", 500, 1000, null, false);
	MoveCamera("@カメラ１", 3000, @-100, @-600, @0, Dxl1, false);

	FadeDelete("上背景", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　一条の水着は学生用のものだ。
　店で買う際、本人がそれを選択した。

　学校ではないのだ。もっと別なものを選んでみれば
良いとも思うが………こんな不器用さも一条らしいと
言えばらしい。
　それに。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	WaitAction("カメラ１/絵背景200", null);

	MoveCamera("@カメラ１", 500, @+210, @-150, @+150, Dxl1, true);
	MoveCamera("@カメラ１", 500, @+100, @+400, @+100, Dxl1, true);
	MoveCamera("@カメラ１", 500, @+180, @+350, @+100, Dxl1, true);

	CreateTextureEX("絵ＥＶ100", 5100, Center, -576, "cg/ev/ev119_一条と香奈枝海水浴_a.jpg");
	Move("絵ＥＶ100", 0, @0, -110, Dxl1, true);

	MoveCamera("@カメラ１", 1500, @-470, @-650, @-250, Dxl1, false);
	Fade("絵ＥＶ100", 500, 1000, null, true);

	SetFwR("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005a0010a00">
「これはこれで」

{	FwR("cg/fw/fw一条_通常a.png");
	SetComic(@+250,@0,10);}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/005a0020a02">
「……はい？」

{	DeleteComic();
	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005a0030a00">
「魅力的な姿だ、一条。
　男性として刺激される」

{	FwR("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/005a0040a02">
「……」

{	FwR("cg/fw/fw一条_慌て.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/005a0050a02">
「……っ……、……!!」

{	FwR("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/005a0060a04">
「出やがりましたね天然直球。
　お嬢さま、これは窮地でございますよ」

{	FwR("cg/fw/fw香奈枝_怒り.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005a0070a03">
「くぅっ、まさか景明さまが<RUBY text="すくみず">学生水着</RUBY>フェチ
だったなんて！
　事前調査が足りませんでした……！」

{	FwR("cg/fw/fw香奈枝_ショックb.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005a0080a03">
「こうなっては仕方ありません。
　さよ、せめて茶々とか入れてふたりの間を
妨害しなさい」

{	FwR("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/005a0090a04">
「かしこまりました。
　湊斗さま」

{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005a0100a00">
「は」

{	FwR("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/005a0110a04">
「男性が刺激されたとはつまり……
　エロいことを考えたということでございま
しょうか？」

{	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005a0120a00">
「それなりには」

{	FwR("cg/fw/fw一条_慌て.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/005a0130a02">
「〜〜！」

{	FwR("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/005a0140a04">
「駄目ですお嬢さま。
　並みの攻撃では切り返されてむしろ逆効果」

{	FwR("cg/fw/fw香奈枝_凹む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005a0150a03">
「ばあやの役立たずっ」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　状況の一部がごく無意味に混迷化していた。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆一条好感度＋
//$Ichizyou_Flag = $Ichizyou_Flag++;
//嶋：+2に変更【090922】
	$ma04_005a_routeFlag = true;
	$Ichizyou_Flag = $Ichizyou_Flag+2;

	judgment_of_count();


}

..//ジャンプ指定
//次ファイル　"ma04_005z.nss"