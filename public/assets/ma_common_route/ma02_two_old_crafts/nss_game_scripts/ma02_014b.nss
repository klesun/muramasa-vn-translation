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

scene ma02_014b.nss_MAIN
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
	#bg023_弥源太の家_03a=true;
	#ev268_ヤクザと対峙する一条=true;

	//▼ルートフラグ、選択肢、次のGameName
	if($ma02_014b_routeFlag==true){$ma02_014b_routeFlag=false;}
	else{$Ichizyou_Flag++;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma02_015.nss";

}

scene ma02_014b.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_014.nss"

//●むしろ綾弥
	PrintBG("背景０", 30000);

	OnBG(100,"bg023_弥源太の家_03a.jpg");
	FadeBG(0,true);

	CreateTextureEX("絵演", 4100, Center, Middle, "cg/ev/ev268_ヤクザと対峙する一条.jpg");

	FadeDelete("背景０", 0, true);

	SoundPlay("@mbgm30",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0001]
　俺のような男の横に、いかにも深窓の令嬢然とした
女性を置いても釣り合いは取れないだろう。
{	Fade("絵演", 2000, 850, null, true);}
　それならむしろ、あの綾弥一条の方が似合わないだ
ろうか？

　……なんだか、失礼な評価ではあるが。
　本人にはとても言えない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	FadeDelete("絵演", 1000, false);

	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/014b0010a04">
「む。あれは別の女性のことを考えている顔
ですよ、お嬢さま」


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/014b0020a03">
「まっ。なんて憎たらしい」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一条好感度＋１
//$Ichizyou_Flag = $Ichizyou_Flag++;
	$ma02_014b_routeFlag = true;
	$Ichizyou_Flag++;

	judgment_of_count();


..//ジャンプ指定
//次ファイル　"ma02_015.nss"


}


