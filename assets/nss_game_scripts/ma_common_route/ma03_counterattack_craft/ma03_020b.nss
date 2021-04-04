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

scene ma03_020b.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma03_021.nss";

}

scene ma03_020b.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_020.nss"

//●黙らせる
	PrintBG("上背景", 30000);
	OnBG(100,"bg036_競技場通路_01.jpg");
	FadeBG(0,true);
	Delete("上背景");

	SoundPlay("@mbgm30",0,1000,true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/020b0010a00">
（ふざけているのか？
　村正）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/020b0020a01">
《…………冗談よ。
　わかってる。他に方法はないんでしょう。
ならそうするまでよ》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/020b0030a01">
《それが私の役目なんだから……》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/020b0040a00">
（そうだ。
　わかっているならいい）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


}

..//ジャンプ指定
//次ファイル　"ma03_021.nss"