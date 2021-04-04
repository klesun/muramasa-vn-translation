
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_017vsc.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mz00_000.nss";

}

scene mc04_017vsc.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc04_017vs.nss"

//●第六感
	PrintBG("上背景", 30000);

	SoundPlay("@mbgm13",0,1000,true);
	CreateTextureSP("絵背景08EX", 5800, @0, @0, "cg/ev/ev186_村正ＶＳ銘伏_k.jpg");

	Delete("上背景");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　そうだ――第六感！

{	SetVolume("@mbgm*", 2000, 0, null);}
　特殊な天性の才を持つ者が、あるいは神域に至った
武人が備えるという――<RUBY text="シックス・センス">超感覚</RUBY>。
　これに覚醒する以外に活路はない。

　俺は精神を集中し、脳内の未知の領域を開拓しよう
と試みた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se特殊_雰囲気_発光02", 1000);

	CreateColorEXadd("絵色白", 20000, "#FFFFFF");
	Fade("絵色白", 2000, 1000, null, true);

	Wait(2000);

	SoundPlay("@mbgm12",0,1000,true);

	CreateTextureSP("シックスセンス", 5900, @0, @0, "cg/ef/ef036_無我の境地.jpg");
	Delete("絵背景08EX");

	CreateColorSP("下敷き", 100, "BLACK");

	WaitKey(1500);

	FadeDelete("絵色白", 3000, true);

	Wait(2000);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/017vs0800a01">
《……無理だから……》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆ひゅん、ずしゃー。斬死。
	CreateSE("SE01","se戦闘_攻撃_野太刀振る01");
	CreateColorSP("絵色黒", 6050, "#000000");
	SL_rightdown2(6100,@0, @0,1500);

	MusicStart("SE01",0,1000,0,1200,null,false);
	SL_rightdownfade2(10);

	Wait(500);

	SetVolume("@mbgm*", 300, 0, null);
	OnSE("se戦闘_攻撃_刀刺さる05", 1000);

	CreateColorSP("赤", 16000, "#990000");
	DrawTransition("赤", 150, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);

	FadeDelete("赤",2000,true);

	ClearWaitAll(1500, 0);


//◆ゲームオーバー

}

..//ジャンプ指定
//次ファイル