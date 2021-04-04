
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031innsyokuc.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc02_031innsyokuz.nss";
	$料理酒_Flag = false;

}

scene mc02_031innsyokuc.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"mc02_031innsyoku.nss"


//●料理酒

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg080_飛行船船室Ab_01a.jpg");
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　彼はそれをひったくるようにしてもぎ取ると、一口
含んで、すぐにぺっぺっと吐き出した。
　俺を睨みつけ、何やらがなり立てている。……怒ら
せてしまったらしい。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//◆料理酒失う
//◆フラグ調整
//◆$料理酒_Flag = false;


//◆→●何も渡さない

..//ジャンプ指定
//次ファイル　"mc02_031innsyokuz.nss"

}



