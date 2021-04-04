//<continuation number="0">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_003b.nss_MAIN
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
	#bg021_村長応接間_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma02_004.nss";

}

scene ma02_003b.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_003.nss"

//●わからない

	PrintGO("背景０", 30000);

	OnBG(100,"bg021_村長応接間_01.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);
	SoundPlay("@mbgm23",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……何とも言いようがない。
　現状では判断材料がいかにも不足だ。

　六波羅に銃口を向けた以上、彼らの苛政に加担する
者ではない。
　そうは思うものの、そのＧＨＱの肩書きは、敵意は
ともかく警戒心を呼ぶには充分に足りていた。

　しかし信用云々はさておいて、後々のことを考える
に、今この場で虚言を吐くことは厄介を招くだけとも
思える。
　正直に話しておくのが無難かもしれない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//◆分岐終了


}

..//ジャンプ指定
//次ファイル　"ma02_004.nss"

