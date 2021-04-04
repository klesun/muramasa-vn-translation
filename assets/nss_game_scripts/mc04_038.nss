//<continuation number="50">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_038.nss_MAIN
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

	$GameName = "mc04_039.nss";

}

scene mc04_038.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc04_037.nss"


//◆回想

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm18",0,1000,true);

	CreateTextureSP("絵背景1", 10, Center, Middle, "cg/bg/bg012_鎌倉駅前周辺_01.jpg");
	CreateColorSP("フラッシュ白", 15000, "WHITE");
	EfRecoIn1(18000,0);

	StR(1000, @0, @0,"cg/st/st雄飛_通常_制服.png");
	StL(1000, @0, @0,"cg/st/st香奈枝_通常_私服c.png");
	FadeStL(0,false);
	FadeStR(0,true);
	Delete("上背景");
	Delete("フラッシュ白");
	EfRecoIn2(300);


	SetFwC("cg/fw/fw雄飛_通常a.png" , "Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/mc04/0380010b56">
「あの」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0380020a03">
「はい」


{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/mc04/0380030b56">
「少しお伺いしたいことが……
　あ、すいません。おれこのへんに住んでる
学生で新田雄飛って言います」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0380040a03">
「はい」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0380050a03">
「雄飛さん」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1000, 1000);

}

..//ジャンプ指定
//次ファイル　"mc04_039.nss"