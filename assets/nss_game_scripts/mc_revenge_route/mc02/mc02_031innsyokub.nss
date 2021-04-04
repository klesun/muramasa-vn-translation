
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031innsyokub.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	$洋梨_Flag=false;

	$PreGameName = $GameName;
	$GameName = "mc02_031innsyokuz.nss";

}

scene mc02_031innsyokub.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc02_031innsyoku.nss"


//●洋梨

	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg080_飛行船船室Ab_01a.jpg");
	SoundPlay("@mbgm21",0,1000,true);

	Delete("上背景");


	OnSE("se擬音_ギャグ_すっとび",1000);
	WaitKey(1300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　投げ捨てられた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031in0250a00">
「用無しでしたか」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm21", 0, 1, null);
	WaitKey(1000);
	SetVolume("@mbgm21", 500, 1000, null);


//◆短ウェイト。ＢＧＭも止める

//◆洋梨失う
//◆フラグ調整
//◆$洋梨_Flag = false;


//◆→●何も渡さない

..//ジャンプ指定
//次ファイル　"mc02_031innsyokuz.nss"

}


