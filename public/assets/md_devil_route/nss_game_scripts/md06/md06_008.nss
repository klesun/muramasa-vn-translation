//<continuation number="60">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_008.nss_MAIN
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
	#bg009_鎌倉住宅街a_03=true;
	#bg012_鎌倉駅前周辺_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_009.nss";

}

scene md06_008.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md06_007.nss"


//◆夜の町

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 50, "BLACK");

	OnBG(100, "bg014_鎌倉繁華街_03.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm32", 0, 1000, true);

	DrawDelete("上背景", 300, 100, "slide_01_02_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　駄目だ。

　俺はもう駄目だ。

　最低、最悪だ。

　俺が俺に耐えられない。

　俺は俺である事が苦痛でならない。

　別の何かに。

　犬でも猫でも。
　蛙でも蟻でもいい。

　どんなものでもいいから変わりたい。

　どんなものでも湊斗景明よりは上等だ。

　願わくば、石がいい。

　ああ。

　石になりたい。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆駅前
	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	CreateColorSP("絵色黒", 10, "#000000");
	OnBG(100, "bg012_鎌倉駅前周辺_03.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　罪には罰を。

　法を犯した者には、法の裁きを。

　……法は、何をしている？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw手相を見る人.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／手相】
<voice name="ｅｔｃ／手相" class="その他男声" src="voice/md06/0080010e108">
「すいませーん。
　手相の勉強をしてるんですけどー」

//【ｅｔｃ／手相】
<voice name="ｅｔｃ／手相" class="その他男声" src="voice/md06/0080020e108">
「お手を拝見してもよろしいですかぁ？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	Fade("@OnBG*", 1000, 600, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　俺はここにいる。

　殺人の罪を重ねた、裁かれるべき男がここにいる。

　法はどうした。

　なぜ裁かない。

　なぜ、この首を刎ねないのだ。

　罪人を死罰に処すのは誤りであり、生かして償いを
させてこそ正しい処罰だと言う人間がいる。
　……その理屈もわからないではない。

　だがそれは、罪人が償いの方法を持っていなくては
成り立たぬ理屈だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw手相を見る人.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ｅｔｃ／手相】
<voice name="ｅｔｃ／手相" class="その他男声" src="voice/md06/0080030e108">
「うわぁ、素晴らしい手相ですねっ！
　あなたのような人には初めて会いました」

//【ｅｔｃ／手相】
<voice name="ｅｔｃ／手相" class="その他男声" src="voice/md06/0080040e108">
「むっ、でもこれは……
　近い未来に波乱が見えます。あなたは人生
の分岐点に差し掛かっているようです」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	Fade("@OnBG*", 1000, 300, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　俺が、どうやって償える？

　この手で殺した人に、今更どう償うのだ。
　俺の責任無しとは夢だに言えぬ現世界各地の戦乱で
死んでいった人々に、どう償えるのだ。

　いや、償う以前の話だろう。
　俺は由縁浅からぬ世界中の戦禍をただ座視している。
大和の、大陸の、欧州の――血風血河を止め。せめて
これ以上人を死なせぬように働く事すらも、できない。

　俺は今現在も人を殺し、殺し続けているに等しい。
　何百人、何千人と。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw手相を見る人.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ｅｔｃ／手相】
<voice name="ｅｔｃ／手相" class="その他男声" src="voice/md06/0080050e108">
「あなたは何かお悩みですね？　そうですか、
そうでしょう。
　実は今、すぐ近くでぼくの先生が講演会を
開いているんですよ」

//【ｅｔｃ／手相】
<voice name="ｅｔｃ／手相" class="その他男声" src="voice/md06/0080060e108">
「あなたも参加されれば悩みが解決するかも
しれません。ええ、きっと解決します。
　参加料はたったの五百円ですから……さっ、
行きましょう！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	Fade("@OnBG*", 1000, 0, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　……だから。どうして。
　俺は断罪されない？

　何故、生きている……？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆転換

}

..//ジャンプ指定
//次ファイル　"md06_009.nss"