//<continuation number="550">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb01_007.nss_MAIN
{
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//☆超速全読み設定解除
	Conquest($ConGameName,$GameName,true);

	//▼イベントＣＧ
	#イベントファイル名=true;
	#ev140_円応寺の閻魔像_a=true;
	#ev140_円応寺の閻魔像_b=true;

	#bg060_円応寺境内_01=true;
	#ev140_円応寺の閻魔像_a=true;
	#ev140_円応寺の閻魔像_b=true;
	#bg023_弥源太の家_03b=true;
	#bg037_競技場ガレージa_01=true;
	#bg031_八幡宮境内_01=true;
	#ev139_統を殺害_a=true;
	#bg058_曇空c_01=true;


	//▼ルートフラグ、選択肢、次のGameName

	//◆小分岐
	//◆第三編で操を殺しているなら　"mb01_007a.nss"
	//◆香奈枝を殺しているなら　"mb01_007b.nss"
	//$GameName = "mb01_007a.nss";
	//$GameName = "mb01_007b.nss";


//	$SelectGameName="@->"+$GameName+"_SELECT";
//	call_scene $SelectGameName;

//嶋：おそらく二人とも殺していないケースが想定されますので、"mb01_008.nss"

	if($操殺害 == true){
		$PreGameName = $GameName;
		$GameName = "mb01_007a.nss";
	}else if($香奈枝死亡 == true){
		if($銀星号香奈枝殺害==true){$PreGameName = $GameName;$GameName = "mb01_008.nss";}
		else{$PreGameName = $GameName;$GameName = "mb01_007b.nss";}
	}else{
		$PreGameName = $GameName;
		$GameName = "mb01_008.nss";
	}

}

scene mb01_007.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mb01_006.nss"


//◆円往寺
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg060_円応寺境内_01.jpg");

	$SYSTEM_effect_rain_speed = 128;
	$SYSTEM_effect_rain_dencity = 32;
	CreateEffect("絵効果雨", 2000, 256, 144, 512, 288, "Rain");
	SetAlias("絵効果雨","絵効果雨");
	Zoom("絵効果雨", 0, 2000, 2000, null, true);
	Fade("絵効果雨", 0, 500, null, true);

	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm19",0,1000,true);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0070010a00">
「円往寺……？」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070020a02">
「はい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　少女が先に立って俺を導いたのは、際立って著名と
も広壮とも言い難い、その寺院だった。
　古都鎌倉の誇る名刹の一つには違いないのだが。

　参拝者はおろか、僧の姿さえ見当たらない。
　無人寺ということはなかろう……が、そうであった
としても頷けてしまう程度には寂れた佇まいを呈して
いる。

　すぐ近くに鎌倉五山の第一位建朝寺、第二位円覚寺、
第四位浄智寺といった錚々たる寺院が立ち並ぶためか。
　日頃から人の出入りは少ないように窺えた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070030a02">
「昔、父様がよく連れてきてくれました」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0070040a00">
「菩提寺なのか」


{	FwC("cg/fw/fw一条_通常a.png");}
//嶋：修正（一条）【090930】
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070050a02">
「いえ、違います。
　綾弥の家とは何の縁もありません」


{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070060a02">
「でも父様は毎週のように参拝してたみたい
です。もしかしたら毎日かも。
　……きっと、ここが悪を許さない<RUBY text="かみ">仏天</RUBY>様を
祀る寺だから」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0070070a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　傍らの石碑に目を遣る。
　――<RUBY text="エンマオウ">閻魔王</RUBY>。

　いわゆる閻魔大王。
　十王信仰の中核をなす裁断者がこの寺の本尊なのだ。
なかなか珍しい事と云える。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0070080a00">
「厳格な父君であられるようだ」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070090a02">
「そうですね。
　人にも……自分にも」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0070100a00">
「一度お会いしたいものだな。
　お前を見る限り、尊敬に値する方と思える」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070110a02">
「ありがとうございます。
　……湊斗さんともう何年か早く知り合って
いたら、紹介できたかもしれませんけど」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0070120a00">
「…………そうか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　一条には家族がいない。
　以前、何かの折にちらりとそう聞いていた事を思い
出す。

　失言が恥ずかしかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070130a02">
「あたし、この寺は嫌いなんです」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0070140a00">
「……」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070150a02">
「ここへ来る時の父様は決まって、難しい顔
をしていたから。
　何かを悩んで……悲しんで。怒って」


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070160a02">
「楽しそうだったことは一度もありません」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　本堂を眺める一条の、独白めいた呟き。
　ふと、俺は幻視した。

　一人の男の背中。
　微動だにせず、本堂奥の閻魔像を見上げている――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070170a02">
「今ならわかります。
　父様は悪と戦う覚悟を決めるために、ここ
へ来ていたんです」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070180a02">
「だからいつも辛そうな顔をしていた。
　……だからあたしは嫌いでした」


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070190a02">
「今も嫌いです。
　父様と同じで……あたしにとっても、ここ
は覚悟を決めるための場所になったから」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @-30, @0,"cg/st/st一条_通常_制服b.png");
	Move("@StR*", 0, @30, @0, null, true);
	FadeStR(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　少女が振り返る。
　俺を見る。

　挑むような視線だった。
　……祈るような視線だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070200a02">
「湊斗さん」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0070210a00">
「一条……」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070220a02">
「……嘘だって、わかってるんです。
　あんなの、とんでもない言い掛かりだって
……わかってるんです」


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070230a02">
「湊斗さんは……
　絶対に、信じられる人なんだからっ……！」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0070240a00">
「――――」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070250a02">
「でも……ごめんなさい。
　なんでか、聞き流せないんです……」


//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070260a02">
「訊かないと。
　確かめないと、安心できないんです」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0070270a00">
「一条」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　その一瞬。
　俺の心理はどう在ったのか。

　止めたかったのか。
　それとも、別の何かを望んだのか。

　不明であった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070280a02">
「答えてください。
　嘘だって、言ってください」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0070290a00">
「……」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070300a02">
「あなたが」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆閻魔像。一瞬表示
	CreateTextureSP("絵ＥＶ", 3000, Center, Middle, "cg/ev/ev140_円応寺の閻魔像_a.jpg");
	Wait(10);
	FadeDelete("絵ＥＶ", 50, true);

	SetFwC("cg/fw/fw一条_怒りc.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070310a02">
「何の罪も無い人を殺しているなんて」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//――――――――――――――――――――――――

//◆閻魔像顔アップ
//◆瞬間ホワイトアウト
//◆ＳＥ、雷鳴。それに合わせて境内画面へ戻り
	CreateTextureSP("絵ＥＶ", 3000, Center, Middle, "cg/ev/ev140_円応寺の閻魔像_b.jpg");
	CreateColorEXadd("絵色白", 5000, "#FFFFFF");
	WaitKey(300);
	Fade("絵色白", 100, 1000, null, true);

	WaitKey(1000);

	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se自然_雷_稲光02");
	CreateSE("SEL01","se自然_水_雨音01_L");
	MusicStart("SEL01",3000,500,0,1000,null,true);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Delete("絵ＥＶ");
	FadeDelete("絵色白", 600, true);


	Wait(1500);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0070320a00">
「……なぜ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　それを。
　お前が。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悔しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070330a02">
「雪車町です。
　あのチンピラが言ったんです」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070340a02">
「湊斗さんは、ただの殺人犯だって」


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070350a02">
「銀星号や、六波羅と戦っている陰で……
　何も悪くない人達を殺しているって……」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0070360a00">
「――」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070370a02">
「嘘ですよね」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　一途な眼差しが、俺に<RUBY text="すが">縋</RUBY>る。
　喰いつく。

　俺を信じて。
　信じているから、怯えていた。

　崩壊の恐怖に震えていた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070380a02">
「違うと、言ってください」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0070390a00">
「――」


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070400a02">
「早く。
　早く、して」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　違う、嘘だ、と――
　そう言えば、一条は信じる。

　細かい弁明など必要ない。
　それだけで事足りる。

　一言だけで、一条は信じてくれる。
　ただ――一言。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆殺戮イメージ
//◆殺した人々
//あきゅん「演出：後でフラグ分岐入れます」
	SetVolume("SEL01", 500, 1, null);

	CreateColorSP("絵色血", 5000, "#CC0000");
	Delete("絵効果*");

//あきゅん「演出：第一章」
	CreateTextureSP("絵演下", 100, Center, Middle, "cg/ev/resize/ev106_雄飛と見下ろす村正_d.jpg");
	StL(1000, @-60, @0,"cg/st/st雄飛_通常_制服.png");
	FadeStA(0,true);
	SetTone("絵演下", Monochrome);
	SetTone("@StL*", Monochrome);
	CreateTextureSPmul("絵演殺戮", 2000, Center, Middle, "cg/anime/Left/blood_C_6.png");
	Delete("絵演板写");
	Wait(10);
	Fade("絵色血", 50, 0, null, true);

	Wait(50);

//あきゅん「演出：第二章」
	Fade("絵色血", 0, 1000, null, true);
	CreateTextureSP("絵演下", 100, Center, Middle, "cg/bg/bg023_弥源太の家_03b.jpg");
	StR(1100, @-30, @0,"cg/st/stふな_通常_私服.png");
	StCR(1000, @-150, @0,"cg/st/stふき_通常_私服.png");
	FadeStA(0,true);
	SetTone("絵演下", Monochrome);
	SetTone("@St*", Monochrome);
	CreateTextureSPmul("絵演殺戮", 2000, Center, Middle, "cg/anime/Right/blood_B_7.png");
	Wait(10);
	Fade("絵色血", 50, 0, null, true);

	Wait(50);

//あきゅん「演出：第三章。ここからフラグ。操で分岐」
	Fade("絵色血", 0, 1000, null, true);
	CreateTextureSP("絵演下", 100, Center, Middle, "cg/bg/bg037_競技場ガレージa_01.jpg");
	StL(1100, @30, @0,"cg/st/st皇路_通常_私服.png");
	StCL(1000, @150, @0,"cg/st/st操_通常_私服.png");
	FadeStA(0,true);
	SetTone("絵演下", Monochrome);
	SetTone("@St*", Monochrome);
	CreateTextureSPmul("絵演殺戮", 2000, Center, Middle, "cg/ef/ef006_汎用血しぶき.jpg");
	Wait(10);
	Fade("絵色血", 50, 0, null, true);

	Wait(50);

//あきゅん「演出：第４章。灰色の杖かヒロインのため演出無し」
//あきゅん「演出：第５章。時田光男かヒロインのため演出無し」

//あきゅん「演出：ヒロイン。香奈枝を殺してる場合」
	Fade("絵色血", 0, 1000, null, true);
	CreateTextureSP("絵演下", 100, Center, Middle, "cg/bg/bg031_八幡宮境内_01.jpg");
	StR(1100, @120, @0,"cg/st/st香奈枝_通常_私服c.png");
	FadeStA(0,true);
	SetTone("絵演下", Monochrome);
	SetTone("@St*", Monochrome);
	CreateTextureSPmul("絵演殺戮", 2000, Center, Middle, "cg/ef/ef007_汎用血しぶき.jpg");
	Wait(10);
	Fade("絵色血", 50, 0, null, true);

	Wait(50);

//あきゅん「演出：統でラスト」
	Fade("絵色血", 0, 1000, null, true);
	CreateTextureSP("絵演下", 100, Center, Middle, "cg/ev/ev139_統を殺害_a.jpg");
	SetTone("絵演下", Monochrome);
	SetTone("@St*", Monochrome);
	CreateTextureSPmul("絵演殺戮", 2000, Center, Middle, "cg/anime/Center/bloodA_5.png");
	DeleteStA(0,true);
	Wait(10);
	Fade("絵色血", 50, 0, null, true);

	Wait(50);

	Fade("絵色血", 200, 1000, null, true);

//あきゅん「演出：元の画面に戻る」
	PrintGO("上背景", 30000);
	CreateColorSP("絵血", 5000, "#CC0000");
	OnBG(100,"bg060_円応寺境内_01.jpg");
	StR(1000, @0, @0,"cg/st/st一条_通常_制服.png");

	$SYSTEM_effect_rain_speed = 128;
	$SYSTEM_effect_rain_dencity = 32;
	CreateEffect("絵効果雨", 2000, 256, 144, 512, 288, "Rain");
	SetAlias("絵効果雨","絵効果雨");
	Zoom("絵効果雨", 0, 2000, 2000, null, true);
	Fade("絵効果雨", 0, 500, null, true);

	FadeStA(0,true);
	FadeBG(0,true);
	Delete("上背景");

	WaitKey(500);

	SetVolume("SEL01", 2000, 500, null);

	FadeDelete("絵血", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　全ての罪に背を向けて。
　その一言を、口にすれば。

　口に……
　できるなら。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0070410a00">
「……」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070420a02">
「…………」


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070430a02">
「なんでですか」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070440a02">
「なんで、何も言ってくれないんですか」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0070450a00">
「……俺は……」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070460a02">
「湊斗さん！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　知らぬ――と、言え。
　何の戯言か――と。

　そう言えばいい。
　そう言えば、この少女の信頼を失わずに済む。

　これまで通りの関係を続けられる。
　だから。

　言え。

　言うのだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0070470a00">
「殺人者だ」


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070480a02">
「――――――――」


{	SetVolume("SE*", 5000, 0, null);
	SoundPlay("@mbgm32",3000,1000,true);
	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0070490a00">
「雪車町一蔵は正しい。
　俺は、善人も悪人も区別しない」


//【景明】
<voice name="景明" class="景明" src="voice/mb01/0070500a00">
「関わった者は皆、殺す。
　ただの殺人者だ」


{	FwC("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0070510a02">
「嘘だぁぁぁぁぁぁぁぁぁぁぁぁぁっっっ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆雨空
/*
	$SYSTEM_effect_rain_speed = 128;
	$SYSTEM_effect_rain_dencity = 64;
	$AmeHure = true;
	CreateEffect("絵効果雨落下風", 5500, 256, 0, 512, 288, "Rain");
	SetAlias("絵効果雨落下風","絵効果雨落下風");
	Fade("絵効果雨落下風", 0, 0, null, true);
	SetAlias("絵効果雨落下風", "絵効果雨落下風");
	Request("絵効果雨落下風", Lock);

	Rotate("絵効果雨落下風", 0, @-60, @0, @0, null,true);
	Zoom("絵効果雨落下風", 0, 3000, 3500, null, true);

*/
	CreateTextureEX("絵背景", 5000, Center, Middle, "cg/bg/bg058_曇空c_01.jpg");
	Fade("絵効果雨落下風", 2000, 1000, null, false);
	Fade("絵背景", 2000, 1000, null, true);
	Delete("絵効果雨");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　……裏切られた少女の叫びは。
　雷鳴よりもなお高く、天地の狭間に轟いた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0070520a00">
「新田雄飛を覚えているか？
　野木山組に絡まれているところを、お前に
救われた少年だ」


//【景明】
<voice name="景明" class="景明" src="voice/mb01/0070530a00">
「俺が殺した」


//【景明】
<voice name="景明" class="景明" src="voice/mb01/0070540a00">
「俺とお前が二度目に出会った、あの小さな
村を覚えているか？
　あそこには蝦夷の老人がいて、彼には二人
の孫娘がいた」


//【景明】
<voice name="景明" class="景明" src="voice/mb01/0070550a00">
「どちらも俺が殺した」

</PRE>
	if($操殺害 == true){
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――
	}else if($香奈枝死亡 == true){
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――
	}else{
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――
	}

}


..//ジャンプ指定
//◆小分岐
//◆第三編で操を殺しているなら　"mb01_007a.nss"
//◆香奈枝を殺しているなら　"mb01_007b.nss"


//★選択肢シーン
scene mb01_007.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	OnBG(100,"bg006_雄飛の部屋_01.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("操殺害","香奈枝殺害");
	select
	{
		//カーソル用
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @選択肢１
		{
			ChoiceA02();
//◆第三編で操を殺しているなら　"mb01_007a.nss"
				$GameName = "mb01_007a.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆香奈枝を殺しているなら　"mb01_007b.nss"
				$GameName = "mb01_007b.nss";
		}
	}
}