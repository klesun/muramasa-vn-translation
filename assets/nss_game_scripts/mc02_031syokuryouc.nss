
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031syokuryouc.nss_MAIN
{

	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc02_031syokuryouz.nss";
	$ガスボンベ_Flag = true;

}

scene mc02_031syokuryouc.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"mc02_031syokuryou.nss"


//●ガスボンベ

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg081_飛行船船室Ba_01b.jpg");

	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　俺は携帯用のガスボンベを見つけ、拾い上げた。
　……随分と古そうだ。持ち歩くうちにガス漏れして、
気付いた時には中毒症状、などということにならなけ
れば良いが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//◆フラグ調整
//◆$ガスボンベ_Flag = true;

}

..//ジャンプ指定
//次ファイル　"mc02_031syokuryouz.nss"