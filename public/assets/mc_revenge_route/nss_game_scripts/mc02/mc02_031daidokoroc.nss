
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031daidokoroc.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;


	//▼ルートフラグ、選択肢、次のGameName
	$擂粉木_Flag = true;

	$PreGameName = $GameName;

	$GameName = "mc02_031daidokoroz.nss";

}

scene mc02_031daidokoroc.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc02_031daidokoro.nss"

//●擂粉木
	PrintBG("上背景", 30000);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg080_飛行船船室Ac_01a.jpg");
	SoundPlay("@mbgm21",0,1000,true);

	Delete("上背景");




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　俺は<RUBY text="すりこぎ">擂粉木</RUBY>――西洋ではパステルというのか？――
を手に取った。
　おそらく調味料でも作るためのものだろうが、さて。
これが何かの役に立つのかどうか。

　一応、俺は持っておくことにした。
　邪魔になったら捨ててしまえばいい。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//◆擂粉木入手
//◆フラグ調整
//◆$擂粉木_Flag = true;

//◆→●移動

..//ジャンプ指定
//次ファイル　"mc02_031daidokoroz.nss"

}

