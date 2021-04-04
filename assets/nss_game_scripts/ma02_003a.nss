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

scene ma02_003a.nss_MAIN
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

//フラグ追加箇所
//香奈枝フラグ

	//▼ルートフラグ、選択肢、次のGameName
	if($ma02_003_routeFlag == true){$ma02_003_routeFlag = false;}
	else{$Kanae_Flag++;SetHex();}

	$PreGameName = $GameName;
	$GameName = "ma02_004.nss";


}

scene ma02_003a.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_003.nss"

//●信用できる

	PrintBG("背景０", 30000);

	OnBG(100,"bg021_村長応接間_01.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);
	SoundPlay("@mbgm23",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……信用できる、と俺の感性は伝えていた。

　理性によって分析するなら、どうにも訝しいと言わ
ざるを得ない。この二人は不明瞭に過ぎる。
　だがそう思考する以前の心象、素直な感想として、
ほのかに好意めいたものを感じずにいられなかった。

　理性より感性を優先するのは危険だとわかっている。
　しかし理性の導く結論としても、今この場で虚偽を
並べることには疑問符がついた。後難が予測される。

　ここは正直に話しておくに如かずだろう。

　……それはともかく。

　<RUBY text="・・・・・・・・・・・・・・・・">彼女に好感を抱くのは危険なことだ</RUBY>。
　注意した方がいい……。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆香奈枝好感度＋１

//嶋：フラグ
	$ma02_003_routeFlag = true;
	$Kanae_Flag++;

	judgment_of_count();

//◆分岐終了



}

..//ジャンプ指定
//次ファイル　"ma02_004.nss"



