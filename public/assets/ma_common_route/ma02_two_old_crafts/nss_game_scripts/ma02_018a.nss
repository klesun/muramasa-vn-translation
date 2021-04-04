//<continuation number="40">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_018a.nss_MAIN
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
	#bg020_山脈坑道_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	if($ma02_018a_routeFlag==true){$ma02_018a_routeFlag = false;}
	else{$Others_Flag++;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma02_019vs.nss";

}

scene ma02_018a.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_018.nss"

//●綺麗な方
	PrintBG("背景０", 30000);
	OnBG(100,"bg020_山脈坑道_01.jpg");
	FadeBG(0,true);
	FadeDelete("背景０", 0, true);
	SoundPlay("@mbgm30",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0001]
　綺麗な方を手にする。
　食べやすさを考えて握ったと思しき、手頃な大きさ。

　口に運ぶ。
　……絶妙な塩加減。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010a]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/018a0010a00">
「お見事です。
　何とも丁寧につくられた握り飯……真心の
伝わる料理とは、まさにこういったものの事
でしょう」


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/stふき_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fwふき_照れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010b]
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/018a0020b05">
「はぅ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010c]
　ふき<RUBY text="じょ">女</RUBY>がくらりとよろめく。
　心なしか、瞳に星が散っているように見えた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwふき_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/018a0030b05">
「……ど、どんどん食べてくださいね！
　たくさんありますから！」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/018a0040a00">
「はい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　俺は有難く頂いた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

//◆アナザー好感度プラス
//$Another_Flag = $Another_Flag++;
	$ma02_018a_routeFlag = true;
	$Others_Flag++;

	judgment_of_count();

..//ジャンプ指定
//次ファイル　"ma02_019vs.nss"


}

