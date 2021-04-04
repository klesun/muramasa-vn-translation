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

scene mc01_001.nss_MAIN
{

	$TITLE_NOW=" ――――　復讐編　―――― ";

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
	#bg086_病室_01a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb01_003_3.nss";

}

scene mc01_001.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_001.nss"

//◆病室？
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg086_病室_01a.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　その男の人はここで長々と話をしていったけれども、
伝わったことはそんなに多くなかった。
　まとめればメモ用紙一枚に収まってしまう。

　多分それは、その人がそう聞こえるように話をした
からなんだと思う。
　話の筋は色々と、でも結びは必ず同じところへ。

　何処かで一度会ったような気もするその人が、何を
思ってそんな話し方をしたのか、それはわからない。
　けれどその人が強調したことは、確かに、わたしに
とっても大事なことだったのだ。

{ SoundPlay("@mbgm14",0,1000,true);}
　
　　　　　　　彼はいなくなった。
　　　　　　　わたしの隣から、永久に。

　そう。
　そして。

　
　　　　　　　彼を<RUBY text="・・・・">なくした</RUBY>のは誰か。

　その二つの事実。
　わたしは、それを知らなくてはならなかった。

　呻いて。
　悶えて。
　拒絶して。
　絶望して。

　喉を震わせて。
　胃液を吐き出して。
　何も見えなくなるまで涙を流して。
　涙が乾いて網膜がひび割れるまで両目を見開いて。

　――それから、
　わたしは<RUBY text="・・・・">どうする</RUBY>べきなのか、決意するために。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateVOICE("小夏","mc01/0010010b33");
	MusicStart("小夏",0,1000,0,1000,null,false);

	$残時間=RemainTime("小夏");
	WaitKey($残時間);

	CreateVOICE("小夏","mc01/0010020b33");
	MusicStart("小夏",0,1000,0,1000,null,false);

	$残時間=RemainTime("小夏");
	WaitKey($残時間);

/*

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//◆ボイスのみでテキストは出さない
//◆言葉にならない怨嗟を搾り出す感じで
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc01/0010010b33">
「あっ……ぁぁ……」

//【小夏】
<voice name="小夏" class="小夏" src="voice/mc01/0010020b33">
「……ぁぁぁぁぁああああああああああ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――
*/

//◆フェードアウト
	CreateColorEX("絵色黒", 20000, "#000000");

	SetVolume("@*", 2500, 0, null);
	WaitPlay("*", null);
	Fade("絵色黒", 2000, 1000, null, true);

	Wait(2000);

//◆テロップと思わしき挿入 inc遠藤
	PrintBG("上背景", 30000);
	CreateColorSP("絵黒面", 10000, "#000000");
	CreateColorSP("絵黒地", 10, "#000000");
	CreateColorSP("絵黒覆", 9990, "#000000");
	Move("絵黒覆", 0, -512, @0, null, true);

	CreateTextureSP("絵テロ１", 2000, Center, Middle, "cg/sys/Telop/tp_復讐編序文.png");
	Zoom("絵テロ１", 0, 700, 700, null, true);
	Request("絵テロ１", Smoothing);

	Delete("上背景");

	FadeDelete("絵黒面", 2000, true);

	WaitKey(2000);

	FadeDelete("絵黒覆", 1000, true);

	WaitKey(3000);
	ClearWaitAll(3000, 2000);

//★ inc遠藤 テロップに伴い下記テキストをコメントアウト
/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　これは英雄の物語ではない。

　それでも<RUBY text="とがびと">科人</RUBY>は<RUBY text="さばか">断罪さ</RUBY>れる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――
*/

//◆タイトル：装甲悪鬼村正　復讐編
	PrintBG("上背景", 30000);
	CreateTextureSP("絵テロ100", 2000, Center, Middle, "cg/sys/Telop/lg_復讐編.png");
	FadeDelete("上背景", 2000, true);

	WaitKey(3000);

	ClearWaitAll(3000, 3000);

//◆以降は"mb01_003_3.nss"の
//◆「やぁ、よう来てくれたね景明くん。」から
//◆「護氏を斬れば、あと一人誰かを斬らねばならない。」までを
//◆経由してから次のファイルに飛びます

}

..//ジャンプ指定
//次ファイル　"mb01_003_3.nss"