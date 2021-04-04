//<continuation number="300">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_032.nss_MAIN
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
	#bg070_普陀楽城内階段ホール_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb02_033vs.nss";

}

scene mb02_032.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb02_031vs.nss"

//◆常闇斎
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg070_普陀楽城内階段ホール_03.jpg");
	StR(1000, @0, @0,"cg/st/st常闇斎_通常_私服.png");
	CreateSE("SEL01","se背景_ガヤ_戦場の風景01_L");
	MusicStart("SEL01",2000,1000,0,1000,null,true);
	FadeStR(0,true);
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	SetFwC("cg/fw/fw常闇斎_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0320010b37">
「……そう。別に私を屠る必要はない。
　貴方の勝利は私を倒すことではなく、この
城から脱出を果たすことで得られるのだから」


//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0320020b37">
「必要だったのは私を倒す方法ではなく私を
突破する方法……それは武者なら造作もない。
　そこに気付いた時点で貴方の勝ち。気付か
れた時点で私の負けです」


//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0320030b37">
「<RUBY text="・・">口車</RUBY>も、乗せられなければそれまでの事。
　私もとんだ道化ですね」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆足音
//◆厩衆、数騎
	CreateSE("SE01","se人体_足音_鎧_複数駆け寄る01");
	MusicStart("SE01",1000,1000,0,1200,null,true);

	DeleteStR(300,true);

	WaitKey(3000);

	StL(900, @-60, @0,"cg/st/3d厩衆_立ち_抜刀.png");
	StCL(800, @140, @0,"cg/st/3d厩衆_立ち_通常.png");
	StR(700, @0, @0,"cg/st/3d厩衆_立ち_抜刀b.png");
	FadeStL(300,false);
	Wait(100);
	FadeStR(300,false);
	Wait(100);
	FadeStCL(300,true);
	SetVolume("SE01", 1000, 0, null);

	SetNwC("cg/fw/nw厩衆Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／厩衆Ａ】
<voice name="ｅｔｃ／厩衆Ａ" class="その他男声" src="voice/mb02/0320040e023">
「頭領！」


{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0320050b37">
「遅いですよ」


{	NwC("cg/fw/nw厩衆Ａ.png");}
//【ｅｔｃ／厩衆Ａ】
<voice name="ｅｔｃ／厩衆Ａ" class="その他男声" src="voice/mb02/0320060e023">
「申し訳ございませぬ！
　組頭が倒されたため、連絡が混乱し――」


{	NwC("cg/fw/nw厩衆Ｂ.png");}
//【ｅｔｃ／厩衆Ｂ】
<voice name="ｅｔｃ／厩衆Ｂ" class="その他男声" src="voice/mb02/0320070e024">
「外でも何か異変があった様子で……」


{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0320080b37">
「？　……わかりました。
　貴方達は侵入者を追いなさい」


{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0320090b37">
「<RUBY text="・・・">あちら</RUBY>へ向かいました。
　逃がしてはなりません！」


{	NwC("cg/fw/nw厩衆Ａ.png");}
//【ｅｔｃ／厩衆Ａ】
<voice name="ｅｔｃ／厩衆Ａ" class="その他男声" src="voice/mb02/0320100e023">
「はッ！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆厩衆、行く
//◆一騎残る
	CreateSE("SE01","se人体_足音_鎧_複数駆け去る01");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteStL(300,false);
	Wait(100);
	DeleteStR(300,true);

	Wait(1000);

	SetVolume("SE*", 3000, 0, null);


	StR(1000, @0, @0,"cg/st/st常闇斎_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw常闇斎_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0320110b37">
「……何をしているのです？」


{	CreateSE("SE01a","se人体_足音_鎧歩く03");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Move("@StML*", 300, @-110, @0, DxlAuto, false);
	NwC("cg/fw/nw厩衆Ｃ.png");}
//【ｅｔｃ／厩衆Ｃ】
<voice name="ｅｔｃ／厩衆Ｃ" class="その他男声" src="voice/mb02/0320120e025">
「あの……頭領。
　ぼく――いえ、自分の熱源探査は、あちら
ではなく<RUBY text="・・・">こちら</RUBY>に侵入者らしき反応を捉えて
いるのですが……」


{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0320130b37">
「――――」


{	NwC("cg/fw/nw厩衆Ｃ.png");}
//【ｅｔｃ／厩衆Ｃ】
<voice name="ｅｔｃ／厩衆Ｃ" class="その他男声" src="voice/mb02/0320140e025">
「か、か、勘違いでしょぉか？」


{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0320150b37">
「宗虎」


{	NwC("cg/fw/nw厩衆Ｃ.png");}
//【ｅｔｃ／厩衆Ｃ】
<voice name="ｅｔｃ／厩衆Ｃ" class="その他男声" src="voice/mb02/0320160e025">
「は……はい。頭領」


{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0320170b37">
「今は伯父と呼びなさい」


{	NwC("cg/fw/nw厩衆Ｃ.png");}
//【ｅｔｃ／厩衆Ｃ】
<voice name="ｅｔｃ／厩衆Ｃ" class="その他男声" src="voice/mb02/0320180e025">
「は、はい。伯父上」


{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0320190b37">
「お前は今年の春、討死した兄君に代わって
出仕を始めたばかりでしたね？」


{	NwC("cg/fw/nw厩衆Ｃ.png");}
//【ｅｔｃ／厩衆Ｃ】
<voice name="ｅｔｃ／厩衆Ｃ" class="その他男声" src="voice/mb02/0320200e025">
「はい」


{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0320210b37">
「わずか半年ばかり。
　にも拘わらず、お前が一番落ち着いていて、
状況を正しく把握した……」


{	FwC("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0320220b37">
「行く末が楽しみです」


{	NwC("cg/fw/nw厩衆Ｃ.png");}
//【ｅｔｃ／厩衆Ｃ】
<voice name="ｅｔｃ／厩衆Ｃ" class="その他男声" src="voice/mb02/0320230e025">
「お……伯父上……」


{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0320240b37">
「いえ。
　楽しみでした」


//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0320250b37">
「お前の<RUBY text="・・・">行く末</RUBY>がここまでとは。
　本当に残念です」


{	NwC("cg/fw/nw厩衆Ｃ.png");}
//【ｅｔｃ／厩衆Ｃ】
<voice name="ｅｔｃ／厩衆Ｃ" class="その他男声" src="voice/mb02/0320260e025">
「え――」


{	FwC("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0320270b37">
「次があるなら、必ず愚鈍な人間にお生まれ
なさい。
　……<RUBY text="でうす">神</RUBY>よ。我が罪を赦し給え」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一閃
//◆竜騎兵の首が落ちる
	CreateColorSP("絵色黒", 4000, "#000000");
	Wait(50);
	CreateSE("SE01","se戦闘_攻撃_刀振る01");
	CreateSE("SE01b","se戦闘_破壊_金属");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSP("絵演斬", 4100, Center, Middle, "cg/ef/ef012_汎用斜め軌道.jpg");
	Zoom("絵演斬", 0, 1100, 1100, null, true);
	Shake("絵演斬", 400, 10, 0, 0, 0, 1000, null, false);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Wait(200);
	CreateColorSP("絵色白", 5000, "#FFFFFF");
	Wait(100);
	Delete("絵色黒");
	Delete("絵演斬");
	DeleteStCL(0,true);
	FadeDelete("絵色白", 1000, true);

	CreateSE("SE01c","se戦闘_衝撃_鎧転倒01");

	Wait(500);

	SetFwC("cg/fw/fw常闇斎_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0320280b37">
「……」

{	MusicStart("SE01c",0,1000,0,1000,null,false);
	FwC("cg/fw/fw常闇斎_思考.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0320290b37">
「彼にはどうやら<RUBY text="・・">資格</RUBY>がある。
　だから、生かすと決めたのですよ……」


//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/0320300b37">
「全ての運命。我々の総意思。
　……〝<RUBY text="グリューネドラヘ">緑龍</RUBY>〟の翼の下に」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb02_033vs.nss"