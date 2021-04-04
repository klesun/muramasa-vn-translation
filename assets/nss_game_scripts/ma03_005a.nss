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

scene ma03_005a.nss_MAIN
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
	#bg031_八幡宮境内_03=true;


	//▼ルートフラグ、選択肢、次のGameName
	if($ma03_005a_routeFlag==true){$ma03_005a_routeFlag=false;}
	else{$Kanae_Flag++;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma03_006.nss";

}

scene ma03_005a.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_005.nss"

//●是
	PrintBG("上背景", 30000);
//	OnBG(100,"bg031_八幡宮境内_03.jpg");
	OnBG(100,"bg031_八幡宮境内_03.jpg","path");
	StR(1000, @0, @0,"cg/st/st署長_通常_制服.png");
	FadeStR(0,true);
	FadeBG(0,true);
	Delete("上背景");

	SoundPlay("@mbgm30",0,1000,true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/005a0010a00">
「……彼女はＧＨＱに従っても、圧制者には
従わないでしょう。
　その点には確信が持てます」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆香奈枝好感度＋１
//$Kanae_Flag = $Kanae_Flag++;
	$ma03_005a_routeFlag = true;
	$ma03_005a_routeFlag02 = true;
	$Kanae_Flag++;

	judgment_of_count();


}

..//ジャンプ指定
//次ファイル　"ma03_006.nss"