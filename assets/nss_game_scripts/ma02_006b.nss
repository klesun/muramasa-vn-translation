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

scene ma02_006b.nss_MAIN
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
	#bg022_山林a_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma02_007.nss";

}

scene ma02_006b.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_006.nss"

//●未熟だ、と思う

	PrintGO("背景０", 30000);

	OnBG(100,"bg022_山林a_01.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　――未熟。
　声なく、俺は呟いた。

　悔いるならば、最初から殺さねば良い。
　殺したからには、悔いなど抱くべきではない。

　もっと良い手段があったのでは、などと思うのなら
最初からそうしていれば良い。
　殺すほかなく殺したのなら、なぜ殺した後に迷いを
抱こうか。

　結局のところ、悔いなど、殺したという事実に耐え
られない心が欲する慰めに過ぎないのだ。
　その意味で、襲われたから仕方なかったのだと言い
訳するのと何も変わらない。

　殺さぬつもりで殺したのなら技量未熟。
　殺すつもりで殺して悔いるのならば心術未熟。
　
　そう、胸中に断ずる。

　……とはいえ。
　そのようなこと、何もしなかった人間に言われる筋
合いではないだろう。俺は手前勝手な感想を口にする
のは控えた。


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//◆分岐終了


}

..//ジャンプ指定
//次ファイル　"ma02_007.nss"


