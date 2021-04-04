//<continuation number="40">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_040vs.nss_MAIN
{

	
//コックピット用Ｓｅｔ
	//CP_AllSet("バロウズ");

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

	CP_AllDelete();

	$GameName = "mc04_041vs.nss";

}

scene mc04_040vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc04_039.nss"

	PrintBG("上背景", 30000);

	CreateColorSPadd("絵色100", 18000, "WHITE");
	CreateTextureSP("絵背景50", 100, Center, -400, "cg/bg/bg202_旋回演出背景山_01.jpg");
//	SetBlur("絵背景50", true, 1, 800, 200, false);
	Request("絵背景50", Smoothing);

	CreateTextureEX("絵狸", 1590, center, middle, "cg/st/3d村正標準_騎突_戦闘.png");
	Request("絵狸", Smoothing);
	Zoom("絵狸", 0, 100, 100, null, true);
	Move("絵狸", 0, @0, @-50, null, true);
	SetBlur("絵狸", true, 1, 200, 100, false);
	Fade("絵狸", 0, 1000, null, true);

$ループムーブナット名２ = "@絵狸";
$ループムーブタイム２ = 30000;

	CreateProcess("プロセス２", 150, 0, 0, "FlyMoving2");
	SetAlias("プロセス２","プロセス２");

/*
	Move("絵狸", 1000, @100, @0, null, false);
	WaitAction("絵狸", null);
	Request("プロセス２", Start);
	WaitAction("絵狸", null);
*/
	Request("プロセス２", Start);


	CP_HighChangeA();
	CP_AltChangeA();
	FrameShake();

	CockPit_LockSet(@0,@0);
	CP_LockOnFade(100,"off",false);
	CP_EnemyFade(300,10,420,300);

	CP_HighChange(500,500,null,false);
	CP_SpeedChange(500,500,null,false);
	MyLife_Count(500,472);
	MyTr_Count(500,325);

	Cockpit_AllFade2();

	Delete("上背景");

	Wait(1000);
	BGMoveAuto("@絵背景50",1);

	MoveFFP1("@CP_LockOff",30000);
	//MoveFFP2("@CP_LockOn",30000);

	FadeDelete("絵色100", 2000, true);


	Wait(500);

//◆ホワイトイン
//◆戦闘シーン戻り。バロウズサイド
//◆ＢＧＭ
	SoundPlay("@mbgm14",0,1000,true);

	SetFwC("cg/fw/fw香奈枝_泣く.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/040vs0010a03">
（殺せない）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　そう思う。

　湊斗景明はあまりに愚かだ。
　あまりにも救いがない。

　彼はたった一つ、認めればいいのだ。
　
　自分は不運だった、と！

　湊斗景明の人生は血にまみれている。
　しかし、それが彼の責任だと言えようか？

　彼は運命に罪を強いられたに過ぎない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_泣く.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/040vs0020a03">
（殺してたまるもんか）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　悔しくて腹立たしくて、涙をこぼしてそう思う。

　今、自分が正体を明かせば、彼はすぐ戦闘を止める
に違いないのだ。
　死ぬのは怖いくせに、その恐怖を無視して、劒冑を
解き生命を差し出す。

　香奈枝が彼の父を殺したことすらも、自分の責任と
思い決めてしまうに違いない。
　
　ふざけている！

　自分は悪くないと、叫べばいいのだ！
　自分は精一杯やったと、言い張ればいいのだ！

　誰も聞かなくたっていいではないか。
　本当に頑張ったのだから。血を吐いて戦い続けたの
だから。その自分の苦闘を、せめて自分自身が認めて
やらなくてどうするのか。

　どうして己の全てを無価値などと決め付けるのか！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_泣く.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/040vs0030a03">
（殺してなんてやらない！）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　殺せば彼の愚想を認めることになる。

　湊斗景明を無価値と認め、ごみくずとして葬り去る
ことになる。

　駄目だ。
　この男にそんな最期は与えてやれない。

　そんな最期は許せない。

　納得できない。
　してたまるものか。

　こんな男は生かしておいて、誰よりも幸福にしてし
まうべきなのだ！
　半生の苦しみに見合うだけの喜びを、これでもかと
押し付けてやればいい！

　そして何十年と過ぎて天寿を全うする直前、とうに
過去の事など忘れていた彼に意地悪く囁いてやるのだ
――『あなたは昔、殺されたがっていたのよね？』と。
　彼は赤面するだろう。

　ああ……
　そうしてやれたら、どんなに胸が<RUBY text="す">空</RUBY>くか。

　そうしたい。
　そうすれば、いい。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	MoveFFP1stop();
	MoveFFP2stop();

//◆照準ブレる
//	FadeF4("絵背景50", 0, 1000, 10000, 0, 0, null, false);
	FadeF4("@CP_LockOff", 0, 1000, 3000, 0, 0, null, true);
	FadeF4("@CP_LockOff", 0, 1000, 10000, 0, 0, null, false);

	SetFwC("cg/fw/fw香奈枝_泣く.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/040vs0040a03">
（殺せない……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　殺したくない。
　生かしたい。

　
　　　　　　　大鳥香奈枝は、
　　　　　　　湊斗景明の死を望まない。

　……悪魔は、遂に、
　自らの殺意を否定した。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆ＢＧＭゆっくりフェードアウト。消えるまで待つ
	CreateSE("SEロックオン","se特殊_コックピット_起動音02");
	SetVolume("@mbgm*", 6000, 0, null);
	FadeF3("@CP_LockOff", 0, 1000, 4000, 0, 0, null, true);

//◆照準定め。発射
	Move("@CP_LockOff", 1000, 485, 220, AxlDxl, true);
	MusicStart("SEロックオン",0,1000,0,1000,null,false);
	Move("@CP_LockOn", 0, 485, 220, null, true);
	CP_LockOnFade(100,"on",true);

	Wait(1500);

	ClearFadeAll(100, true);
	CreateSE("SE01","se戦闘_バロウズ_ボーガン射撃02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CP_AllDelete();
	Wait(3000);
	SetVolume("SE*", 1000, 0, null);
	Wait(2000);


}

..//ジャンプ指定
//次ファイル　"mc04_041vs.nss"


