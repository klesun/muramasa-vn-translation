//<continuation number="20">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_006a.nss_MAIN
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
	if($ma02_006_routeFlag == true){$ma02_006_routeFlag = false;}
	else{$Ichizyou_Flag++;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma02_007.nss";

}

scene ma02_006a.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_006.nss"

//●率直だ、と思う


	PrintGO("背景０", 30000);

	OnBG(100,"bg022_山林a_01.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0001]
　率直な背中だ、と思った。

　殺すつもりはなかったのに殺してしまい、後悔して
いる、というのとは違う。
　あの一撃に容赦はまるで見受けられなかった。

　ああすれば死ぬとわかっていて、ああしたのだろう。

　仕留める以外、確実に身命を守る方法がないと判断
したからに違いない。そしてその判断は正しい。野生
の獣の戦闘力、ことにしぶとさは決して侮るべきでは
なかった。

　そう思えば、罪悪感を消し去り、快哉を叫ぶことも
難しくはないだろう。不可避の戦闘、不可避の殺害で
あったのなら、それを成し遂げた者は賞賛されて然る
べきだ。まして相手があのような怪物であったなら。

　しかし彼はそうしていなかった。
　喜ぶ代わりに苦渋を舐めていた。

　この結果へ至った過程を理由に自分を慰めることを
せず、ただ生物を殺したという結果だけを受け止めて、
背に重石を乗せている。

　偽善という見方もあるだろう。
　だが俺には、その屈折のない情動は好ましいものに
映った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/006a0010a00">
（…………）

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/006a0020a00">
（好感など……持つべきではないのだが）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一条好感度＋１
//嶋：フラグ
	$ma02_006_routeFlag = true;
	$Ichizyou_Flag++;

	judgment_of_count();

//分岐終了



}

..//ジャンプ指定
//次ファイル　"ma02_007.nss"



