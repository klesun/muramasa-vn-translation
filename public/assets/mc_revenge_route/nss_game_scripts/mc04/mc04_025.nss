//<continuation number="320">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_025.nss_MAIN
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

	$GameName = "mc04_026.nss";

}

scene mc04_025.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc04_024.nss"

//◆元の場所
	PrintBG("上背景", 30000);
	CreateColorSP("絵黒幕", 25000, "BLACK");
	CreateTextureSP("絵背景10", 1000, Center, Middle, "cg/bg/bg022_山林a_03.jpg");

	CreateSE("SEL01","se自然_風_野原01");
	MusicStart("SEL01",0,1000,0,1000,null,true);

	Wait(2000);

	Delete("上背景");
	FadeDelete("絵黒幕", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……気付けば、俺は独りだった。

　女性の姿は何処にもない。
　消えてしまった。

　触れ合った肌に、温もりの余韻だけを残して。
　他には何も――

　……いや。
　あと、一つだけ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆香奈枝
	SetVolume("SEL*", 1600, 0, null);

	OnSE("se人体_足音_歩く04_L", 1000);

	WaitKey(1200);

	StR(1000,@0,@0,"cg/st/st香奈枝_通常_私服d.png");
	FadeStR(300,true);

	SoundPlay("@mbgm26",0,1000,true);
	SetVolume("@OnSE*", 1000, 0, null);

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0250010a03">
「景明さま！
　まだこんな所においででしたのね」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0250020a00">
「……大尉殿。
　ご無事で」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0250030a03">
「もう。確かめに来て幸いでした。
　急いで退散しましょう。篠川軍に捕まると
面倒なことになってしまいましてよ」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0250040a00">
「は。
　要らぬ世話をお掛けしました」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0250050a00">
「では、直ちに」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0250060a03">
「…………」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0250070a00">
「大尉？
　何か」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0250080a03">
「いえ……
　その分ですと、ここに銀星号はいなかった
のですね」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0250090a00">
「おりました」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0250100a03">
「……えっ？
　いましたの？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0250110a00">
「はい」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0250120a03">
「それで……どうなりました？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0250130a00">
「終わりました。
　全て……」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0250140a00">
「全て」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0250150a03">
「…………」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0250160a00">
「大尉殿？」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0250170a03">
「い、いえ。
　……その、景明さま」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0250180a03">
「こんなことを言っては無神経だと思います
けれど。
　それにしては、あまり――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆さよ通常版
	OnSE("se人体_足音_歩く04_L", 1000);
	WaitKey(1200);

	StL(1200,@0,@0,"cg/st/stさよ_通常_私服.png");
	FadeStL(300,true);

	SetVolume("@OnSE*", 1000, 0, null);


	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0250190a04">
「おや、なんとお二方！
　まだ逃げておられなかったのですか？」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0250200a04">
「この近辺はそろそろ危のうございます。
　のんびりなさるなら場所をお選びください
ませ」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0250210a00">
「……侍従殿。
　御主従共にお怪我もなく、何よりです」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0250220a04">
「湊斗さまこそ。
　いやいや、皆さま悪運が強くて結構なこと
でございますなぁ」


{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0250230a04">
「この運を無駄にせぬためにも急がねば。
　ささ、お嬢さま」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0250240a03">
「え、ええ」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0250250a04">
「湊斗さま、脱出口はこちらでございます。
　はぐれたりなさいませぬよう」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0250260a00">
「お気遣い有難うございます。
　侍従殿」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0250270a04">
「いえいえ。
　………………」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0250280a00">
「何か？」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0250290a04">
「いえいえいえいえ」


{	SetVolume("@mbgm*", 2000, 0, null);
	SetComic(@0,@0,13);
	FwC("cg/fw/fwさよ_照れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0250300a04">
「……ぽっ……」

{	DeleteComic();
	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0250310a03">
「…………」


{	SetComic(@0,@0,16);
	FwC("cg/fw/fw香奈枝_ショックb.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0250320a03">
（……ま……ましゃか……）

</PRE>
	DeleteComic();
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆隠しイベここまで
	ClearWaitAll(1500, 1500);


}

..//ジャンプ指定
//次ファイル　"mc04_026.nss"