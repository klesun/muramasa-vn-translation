//<continuation number="640">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_021.nss_MAIN
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
	#bg099_落書きのような野原と山_01=true;
	#bg001_空c_03=true;
	#bg007_若宮大路a_01=true;
	#bg010_拘置所外観_01=true;
	#bg057_普陀楽城廊下_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_022.nss";

}

scene md02_021.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md02_020.nss"


//◆えーかげんな背景
//◆ＢＧＭ：妖甲村正？
//◆※以下シーン、ヒロインは全員ＣＶ北都南で？

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	OnBG(100, "bg099_落書きのような野原と山_01.jpg");
	FadeBG(0, true);

	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　…………

　……………………

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0210010a00">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　ここは何処だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm29", 0, 1000, true);

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ｅｔｃ／村正の精】
<voice name="ｅｔｃ／村正の精" class="その他男声" src="voice/md02/0210020e159">
「ここは貴方の夢の中」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ハロワの神田川？　ピロピロ登場

	CreateTextureEX("絵st100", 1000, Center, InBottom, "cg/rec/stRec_ミカエル.png");
	SetVertex("絵st100", center, bottom);
	Move("絵st100", 0, @+200, @0, null, true);
	Zoom("絵st100", 0, 900, 900, null, true);
	Request("絵st100", Smoothing);
	Fade("絵st100", 300, 1000, null, true);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0210030a00">
「…………」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0210040a00">
「何方でしょうか」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵st200", 1000, Center, InBottom, "cg/rec/stRec_ミカエル.png");
	SetVertex("絵st200", center, bottom);
	Zoom("絵st200", 0, 1200, 1200, null, true);
	Move("絵st200", 0, @+200, @+200, null, true);
	Request("絵st200", Smoothing);

	FadeDelete("絵st100",200,true);

	Move("絵st200", 3000, @0, @-30, AxlDxl, false);
	Fade("絵st200", 200, 1000, null, true);

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【ｅｔｃ／村正の精】
<voice name="ｅｔｃ／村正の精" class="その他男声" src="voice/md02/0210050e159">
「私は貴方の劒冑……
　村正の精です」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,50);//―――――――――――――――――――――――――――――

/*
	SetFont("@ＭＳ 明朝", 40, #FFFFFF, #000000, HEAVY, RIGHTDOWN);

	CreateText("voice01",30411,Center,inherit,auto,auto,"「嘘だ!!」");
	Request("voice01",NoLog);
	Request("voice01",PushText);
	Rotate("voice01", 0, @0, @0, 90, null, false);
	Move("voice01", 0, @10, @10, null, false);

	SetBacklog("「嘘だ!!」", "voice/md02/0210060a00", 景明);
	CreateTextureEX("顔01", 30400, 451, 4, "cg/fw/fw景明_怒りb.png");

	CreateTextureSP("絵背景100", 200, Center, Middle, "cg/bg/bg099_落書きのような野原と山_01.jpg");

	Move("絵st200", 0, @0, @0, AxlDxl, false);

	Shake("絵st200", 500, 10, 5, 0, 0, 750, Dxl1, false);
	Shake("絵背景100", 500, 10, 5, 0, 0, 750, Dxl1, false);

	Fade("顔01", 0, 1000, null, false);
	Fade("@boxCT", 0, 1000, null, true);

	WaitKey();

	Delete("voice01");
	FadeDelete("顔01", 150, false);
	Fade("@boxCT", 150, 0, null, true);

*/

//あきゅん「バグ修正：別の方法で回避しておいたけど、問題あったら対処ヨロ」

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//◆巨大フォント
//【景明】
<voice name="景明" class="景明" src="voice/md02/0210060a00">
<FONT size="40">「嘘だ!!」</FONT>

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ずがーん
	SetVolume("@mbgm*", 1000, 0, null);
	CreateSE("SE01","se擬音_コミカル_爆発01");
	CreateColorEXadd("絵色白", 4900, "#FFFFFF");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵色白", 300, 1000, Axl2, true);

	Wait(500);

	CreateColorEX("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 1000, 1000, null, true);
	Delete("絵色白");

	SetVolume("SE*", 1000, 0, null);
	SetVolume("@OnSE*", 1000, 0, null);

	Delete("絵背景100");
	Delete("絵st200");
	Delete("@OnBG*");
	OnBG(100, "bg001_空c_03.jpg");
	FadeBG(0, true);
	FadeDelete("黒幕１",1500,true);

//◆屋根の上。背景は夜空で良いか。
//◆光と二世村正
	SoundPlay("@mbgm30", 0, 1000, true);



	SetFwC("cg/fw/fw光_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【光】
<voice name="光" class="光" src="voice/md02/0210070a14">
「むぅ。色々と間違えたようだ」

{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0210080a07">
「御姫、何やってんの？
　こんな屋根の上なんかで」

{	FwC("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0210090a14">
「茶々丸か。
　いや、なに……一度景明の女性嗜好や恋愛
観を詳しく調べてみようと思ってな」

{	FwC("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0210100a14">
「あちらの村正に悟られない程度の弱い辰気
で夢を操り、探り出そうと試みているのだが」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0210110a07">
「なんかもう何でもアリですねその力」

{	FwC("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0210120a14">
「なかなかうまくいかん。
　思った以上に多面的な制御と調整が要る」

{	FwC("cg/fw/fw光_警戒.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0210130a14">
「向こうに<RUBY text="じゃまもの">村正</RUBY>がいなければ簡単なのだが。
　どうしたものかな……」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆茶々丸と二世

	SetFwC("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0210140a07">
「あんたもご苦労っすね」

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md02/0210150a15">
《慣れた》

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

//◆光と茶々丸

	SetFwC("cg/fw/fw光_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【光】
<voice name="光" class="光" src="voice/md02/0210160a14">
「む。そうだ。
　丁度いい」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0210170a14">
「茶々丸、おまえが手伝え」

{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0210180a07">
「あてが？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆鎌倉市街

	CreateColorEX("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 1000, 1000, null, true);

	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SE*", 1000, 0, null);
	SetVolume("@OnSE*", 1000, 0, null);

	Delete("@OnBG*");
	OnBG(100, "bg007_若宮大路a_01.jpg");
	FadeBG(0, true);

	FadeDelete("黒幕１",1500,true);

	SoundPlay("@mbgm29", 0, 1000, true);

	SetFwH("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0210190a00">
「…………」

</PRE>
	SetTextEXH();
	TypeBeginHIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　ここは何処だ。

　――――――通学路。

　通学路？

　……そうだ。
　俺は学校へ行く途中だった。

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆屋根

	CreateColorEX("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 1000, 1000, null, true);
	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SE*", 1000, 0, null);
	SetVolume("@OnSE*", 1000, 0, null);
	Delete("@OnBG*");
	OnBG(100, "bg001_空c_03.jpg");
	FadeBG(0, true);

	FadeDelete("黒幕１",1500,true);

	SoundPlay("@mbgm30", 0, 1000, true);

	SetFwC("cg/fw/fw光_好戦.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【光】
<voice name="光" class="光" src="voice/md02/0210200a14">
「よし、今度はうまくいっている」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0210210a07">
「にしても、学生ネタなんすね。
　じゃあここからは王道で？」

{	FwC("cg/fw/fw光_笑い.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0210220a14">
「無論！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆市街
	CreateColorEX("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 1000, 1000, null, true);
	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SE*", 1000, 0, null);
	SetVolume("@OnSE*", 1000, 0, null);
	Delete("@OnBG*");
	OnBG(100, "bg007_若宮大路a_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm29", 0, 1000, true);
	FadeDelete("黒幕１",1500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　急ごう。
　今日は寝過ごしたせいで、時間の余裕があまりない。

</PRE>
	SetTextEXH();
	TypeBeginHI();//―――――――――――――――――――――――――――――

//◆たったったっ

//■仮絵 inc櫻井
//	StL(1000, @0, @0, "cg/st/st一条_通常_制服.png");
//	StR(900, @0, @0, "cg/st/st景明_通常_私服.png");
//	FadeStL(300, false);
//	FadeStR(300, false);

	SetNwH("cg/fw/nyその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//◆顔ＣＧ使わずネームＣＧ「走る女学生」
//【ｅｔｃ／ヒロインＡ】
<voice name="ｅｔｃ／ヒロインＡ" class="その他女声" src="voice/md02/0210230e011">
「大変、大変！
　遅刻しちゃうー！」

{	FwH("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0210240a00">
「……」

</PRE>
	SetTextEXH();
	TypeBeginHIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　前方。
　曲がり角。
　足音。
　至近距離――――

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//	DeleteStA(0,true);
//	DeleteStA(0,false);
//◆飛び出すヒロインキャラ。奈津美？に全身モザイク
//◆避ける景明
//◆↑ここ、無駄に凝った激しい演出で
//◆すれ違う二人


//■超仮 inc櫻井

	CreateWindow("mad", 150, 0, 138, 1024, 300, true);
	SetAlias("mad","mad");

	CreateTextureEX("mad/pic", 1000, Center, Middle, "cg/bg/bg007_若宮大路a_01.jpg");
	Zoom("mad/pic", 0, 1500, 1500, null, true);
	SetShade("mad/pic", HEAVY);
	CreateTextureEX("mad/st100", 1000, Center, Middle, "cg/rec/bu制服ガッツ.png");
	Rotate("mad/st100", 0, @0, @180, @0, null,true);
	Move("mad/st100", 0, @-1000, @-250, null, true);


	Move("mad/pic", 300, @+100, @0, Dxl1, false);
	Fade("mad/pic", 300, 1000, null, true);

	CreateSE("SE02","se人体_足音_走る03");
	MusicStart("SE02",0,1000,0,1000,null,false);

	Move("mad/st100", 800, @+2500, @0, Dxl1, false);
	Fade("mad/st100", 300, 1000, null, true);

	Wait(500);

	CreateWindow("Window", 150, 0, 0, 1024, 576, false);
	SetAlias("Window","Window");
	CreateTextureEX("Window/pic", 3000, Center, Middle, "cg/bg/bg007_若宮大路a_01.jpg");
	Zoom("Window/pic", 0, 2000, 2000, null, true);
	Move("Window/pic", 0, @-200, @+100, null, true);
	SetShade("Window/pic", MEDIUM);

	Fade("Window/pic", 300, 1000, null, true);

	CreateColor("黒幕１", 10000, 0, 0, 1024, 150, "Black");
	CreateColor("黒幕２", 10000, 0, 300, 1024, 400, "Black");
	Fade("黒幕１", 0, 0, null, true);
	Fade("黒幕２", 0, 0, null, true);


	CreateTextureEX("Window/絵k01", 3200, Center, Middle, "cg/rec/fw景明_通常a_ex.png");
	Request("Window/絵k01", Smoothing);
	CreateTextureEX("Window/絵k02", 3300, Center, Middle, "cg/rec/fw景明_怒りa_ex.png");
	Request("Window/絵k02", Smoothing);

	Move("Window/絵k02", 0, @+200, @0, null, true);

	Move("Window/絵k01", 300, @+200, @0, Dxl1, false);
	Fade("Window/絵k01", 300, 1000, null, true);

	Wait(50);

	SetVolume("SE*", 300, 0, null);
	SetVolume("@mbgm*", 300, 1, null);


	OnSE("se特殊_その他_世界凍結",1000);
	Fade("黒幕１", 100, 800, null, false);
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/slide_02_00_0.png", false);
	Fade("黒幕２", 100, 800, null, false);
	DrawTransition("黒幕２", 500, 300, 1000, 100, null, "cg/data/slide_02_00_1.png", false);

	Fade("Window/絵k02", 100, 1000, null, true);
	Delete("Window/絵k01");

	Wait(300);

	CreateColorEX("絵色100", 30000, "Black");

	Fade("絵色100", 300, 1000, null, true);

	Delete("黒幕*");
	Delete("Window/*");
	Delete("Window");

	Delete("mad/*");
	Delete("mad");

	CreateColorSP("絵色200", 500, "Black");

	Delete("絵色100");

	CreateWindow("su", 1500, 0, 150, 1024, 200, false);
	SetAlias("su","su");

	CreateTextureEX("su/絵背景100", 1000, Center, Middle, "cg/bg/bg007_若宮大路a_01.jpg");

	CreateTextureEX("su/st200", 1000, Center, Middle, "cg/st/resize/st景明_通常_私服m.png");

	CreateTextureEX("su/st100", 1000, Center, -300, "cg/rec/bu制服ガッツ.png");
	Zoom("su/st100", 0, 500, 500, null, true);
	Rotate("su/st100", 0, @0, @180, @0, null,true);
	Request("su/st100", Smoothing);

	Move("su/st100", 0, @-500, @0, null, true);
	Move("su/st200", 0, @+500, @0, null, true);

	Move("su/st100", 300, @+200, @0, Dxl1, false);
	Move("su/st200", 300, @-200, @0, Dxl1, false);

	CreateSE("SE01","se人体_足音_走る03");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Fade("su/*", 0, 1000, null, false);
	DrawTransition("su/*", 300, 0, 1000, 100, null, "cg/data/slide_05_00_1.png", true);

	Move("su/st100", 300, @+200, @0, AxlDxl, false);
	Move("su/st200", 300, @-200, @0, AxlDxl, false);

	SetVolume("@SE01", 0, 1, null);

	OnSE("se人体_動作_跳躍01",1000);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Wait(250);
	Fade("フラッシュ白",0,1000,null,true);

	SetBlur("su/st200", true, 3, 500, 100, false);

	Zoom("su/st200", 0, 900, 900, null, true);
	Move("su/st100", 1, @+100, @0, null, false);
	Move("su/st200", 1, @-100, @+10, null, true);

	Zoom("su/st200", 500, 1000, 1000, null, false);
	Move("su/st200", 1000, @-150, @-10, Dxl1, false);
	Move("su/st100", 500, @+1000, @0, null, false);

	SetVolume("@SE01", 200, 1000, null);

	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");

	CreateColorEX("絵色100", 15000, "Black");
	Fade("絵色100", 300, 1000, null, true);
	Delete("su/*");
	Delete("su");
	Delete("絵色200");

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg007_若宮大路a_01.jpg");

	SetVolume("@mbgm*", 300, 1000, null);
	FadeDelete("絵色100", 300, true);


	SetFwH("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0210250a00">
「……ふぅ」

</PRE>
	SetTextEXH();
	TypeBeginHIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　さて、学校へ行こう……。

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆屋根

//	PrintBG("上背景", 30000);

	CreateColorEX("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 1000, 1000, null, true);
	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SE*", 1000, 0, null);
	SetVolume("@OnSE*", 1000, 0, null);
	DeleteStA(0,true);
	Delete("@OnBG*");
	Delete("絵背景100");
	OnBG(100, "bg001_空c_03.jpg");
	FadeBG(0, true);

//	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	SoundPlay("@mbgm30", 0, 1000, true);

	SetFwC("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0210260a07">
「何事もなくすれ違ってしまいましたが」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0210270a14">
「ふっ……当然だ。
　景明の技量をもってすればあの程度の突進、
目を瞑っていてもかわせるはず」

{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0210280a07">
「そういう問題だったのこれ？」

{	FwC("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0210290a14">
「いや主旨とはだいぶ違うな。何の調査にも
なってないし。
　次へ行くぞ！」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0210300a07">
「ういー」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆学校
//◆きーんこーんかーんこーん

	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 1000, 1000, null, true);
	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SE*", 1000, 0, null);
	SetVolume("@OnSE*", 1000, 0, null);

	DeleteStA(0,true);
	Delete("@OnBG*");
	OnSE("se日常_学校_チャイム01", 1000);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg010_拘置所外観b_01.jpg");

	SoundPlay("@mbgm29", 0, 1000, true);

	FadeDelete("黒幕１",1500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　良し。
　危ういところだったが、遅刻はせずに済んだ。

　周りにも幾人か、同じように安堵の息をついている
学生がいる。

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆ヒロインキャラ。ハロワの緑姉妹の妹？にモザイク

	SetNwH("cg/fw/ny教師.png");

	CreateTextureEX("絵st10", 150, Center, InBottom, "cg/rec/stRec_神田川_笑い.png");
	Move("絵st10", 0, @+230, @0, null, true);

	Move("絵st10", 300, @-100, @0, Dxl1, false);
	Fade("絵st10", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【ｅｔｃ／夢教師】
<voice name="ｅｔｃ／夢教師" class="その他男声" src="voice/md02/0210310e275">
「こらぁ、お前は遅刻だ！
　こっちへ来い！」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵st100", 200, Center, InBottom, "cg/rec/stRec_制服お願い02.png");
	CreateTextureEX("絵st200", 300, Center, InBottom, "cg/rec/stRec_制服お願い01.png");
//	Move("絵st100", 0, @-200, @0, null, true);
//	Move("絵st200", 0, @-200, @0, null, true);
	Shake("絵st100", 300, 0, 5, 0, 0, 500, null, false);
	Fade("絵st100", 300, 1000, null, true);

	SetNwH("cg/fw/ny遅刻の女学生.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0201]
//◆顔ＣＧ使わずネームＣＧ「遅刻の女学生」
//【ｅｔｃ／ヒロインＢ】
<voice name="ｅｔｃ／ヒロインＢ" class="その他女声" src="voice/md02/0210320e012">
「そ、そんなぁ！
　先生、許してー！」

{	NwH("cg/fw/ny教師.png");}
//【ｅｔｃ／夢教師】
<voice name="ｅｔｃ／夢教師" class="その他男声" src="voice/md02/0210330e275">
「だぁめぇだぁー。
　けけけっ、残念だったなぁ？　今日まで無
遅刻皆勤だったのになぁー？」

{	NwH("cg/fw/ny教師.png");}
//【ｅｔｃ／夢教師】
<voice name="ｅｔｃ／夢教師" class="その他男声" src="voice/md02/0210340e275">
「成績の悪いお前が唯一の取柄まで無くしち
まったら、就職も進学もできないってのに！
　はぁーはははははは!!」

{	Fade("絵st200", 250, 1000, Dxl1, false);
	Fade("絵st100", 250, 0, Axl1, false);
	NwH("cg/fw/ny遅刻の女学生.png");}
//【ｅｔｃ／ヒロインＢ】
<voice name="ｅｔｃ／ヒロインＢ" class="その他女声" src="voice/md02/0210350e012">
「あーん！
　そんなのやだよぉー！」

{	NwH("cg/fw/ny学生Ａ.png");}
//【ｅｔｃ／夢男子Ａ】
<voice name="ｅｔｃ／夢男子Ａ" class="その他男声" src="voice/md02/0210360e276">
「あーあ……可哀想に」

{	NwH("cg/fw/ny学生Ｂ.png");}
//【ｅｔｃ／夢男子Ｂ】
<voice name="ｅｔｃ／夢男子Ｂ" class="その他男声" src="voice/md02/0210370e277">
「遅刻ったって二秒か三秒だろ？
　見逃してやればいいのにさ」

{	NwH("cg/fw/ny学生Ａ.png");}
//【ｅｔｃ／夢男子Ａ】
<voice name="ｅｔｃ／夢男子Ａ" class="その他男声" src="voice/md02/0210380e276">
「そう思うならお前、弁護してやれよ」

{	NwH("cg/fw/ny学生Ｂ.png");}
//【ｅｔｃ／夢男子Ｂ】
<voice name="ｅｔｃ／夢男子Ｂ" class="その他男声" src="voice/md02/0210390e277">
「やだよ！
　あの陰険教師に目を付けられたら終わりだ
ぜ……」

{	FwH("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0210400a00">
「…………」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆ヒロイン消去
	FadeDelete("絵st10", 300, false);
	FadeDelete("絵st200", 300, true);
	Delete("絵st100");

	CreateSE("SE01","se人体_動作_人引きずる_L");
	MusicStart("SE01",500,1000,0,1000,null,false);

	Wait(1000);

	SetVolume("SE01", 3000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　――さて。
　教室へ急ごうか。

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆屋根
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 1000, 1000, null, true);
	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SE*", 1000, 0, null);
	SetVolume("@OnSE*", 1000, 0, null);
	OnBG(100, "bg001_空c_03.jpg");
	FadeBG(0, true);

	FadeDelete("黒幕１",1500,true);

	SoundPlay("@mbgm30", 0, 1000, true);

	SetFwC("cg/fw/fw茶々丸_悩む.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0210410a07">
「何のドラマも発生しませんね」

{	FwC("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0210420a14">
「なるほど……
　そういうことか」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0210430a07">
「御姫？」

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0210440a14">
「遅刻は遅刻、やはり遅刻した者が悪い。
　表面的な印象だけで教師を悪と見なすのは
間違っている」

{	FwC("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0210450a14">
「遅刻したのに正しい処罰を受けず、不当に
助けられてしまえば、その経験は必ず女学生
の人生に良からぬ影を落とすだろう。
　景明はそこまで考えたのだな……」

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0210460a14">
「さすが、凡俗とは一味違う。
　温情と甘やかしの間に明確な区分線を引く
ことのできる男よ」

{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0210470a07">
「おおぉぉぉ。
　ではあたかも見捨てられたかに思えたあの
女子学生、実はお兄さんの決断で人生を救わ
れていたわけですね！」

{	FwC("cg/fw/fw光_笑い.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0210480a14">
「その通り！」

{	FwC("cg/fw/fw茶々丸_泣き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0210490a07">
「いい話ですなー」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0210500a14">
「いい話だとも」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0210510a07">
「で、あてらの本題はどこ行きましたか」

{	FwC("cg/fw/fw光_拗ね.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0210520a14">
「どっか行ってしまったな。
　仕方ない、別の角度からまたやってみよう」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆廊下
//◆スマガの沖？

	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 1000, 1000, null, true);
	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SE*", 1000, 0, null);
	SetVolume("@OnSE*", 1000, 0, null);
	DeleteStA(0,true);
	Delete("@OnBG*");

//■仮絵　inc櫻井
	OnBG(100, "bg057_普陀楽城廊下_01.jpg");
	FadeBG(0, true);

//	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	SoundPlay("@mbgm29", 0, 1000, true);

	StC(1000, @0,@0,"cg/rec/stRec_通常.png");
	FadeStC(300,true);

	SetNwH("cg/fw/ny学生会長.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//◆顔ＣＧ使わずネームＣＧ「学生会長」
//【ｅｔｃ／ヒロインＣ】
<voice name="ｅｔｃ／ヒロインＣ" class="その他女声" src="voice/md02/0210530e013">
「あら。
　お早う、湊斗くん」

{	FwH("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0210540a00">
「これは学生会長。
　お早うございます」

{	StC(1000, @0,@0,"cg/rec/stRec_怒りa.png");
	FadeStC(300,false);
	NwH("cg/fw/ny学生会長.png");}
//【ｅｔｃ／ヒロインＣ】
<voice name="ｅｔｃ／ヒロインＣ" class="その他女声" src="voice/md02/0210550e013">
「こんな時間に鞄を持って歩いてるってこと
は、また遅刻ぎりぎり？
　相変わらず、だらしのない人なのね」

{	FwH("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0210560a00">
「返す言葉もございません」

{	NwH("cg/fw/ny学生会長.png");}
//【ｅｔｃ／ヒロインＣ】
<voice name="ｅｔｃ／ヒロインＣ" class="その他女声" src="voice/md02/0210570e013">
「遅刻は多い、成績は下から数えた方が早い。
　一度きりの学生生活をそんな風に腑抜けて
過ごして、恥ずかしいとは思わないのかしら」

{	FwH("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0210580a00">
「切に思います」

{	StC(1000, @0,@0,"cg/rec/stRec_怒りb.png");
	FadeStC(300,false);
	NwH("cg/fw/ny学生会長.png");}
//【ｅｔｃ／ヒロインＣ】
<voice name="ｅｔｃ／ヒロインＣ" class="その他女声" src="voice/md02/0210590e013">
「私、あなたみたいにだらだらと生きている
人って嫌いなのよ」

{	FwH("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0210600a00">
「当然かと」

{	StC(1000, @0,@0,"cg/rec/stRec_通常.png");
	FadeStC(300,false);
	NwH("cg/fw/ny学生会長.png");}
//【ｅｔｃ／ヒロインＣ】
<voice name="ｅｔｃ／ヒロインＣ" class="その他女声" src="voice/md02/0210610e013">
「下級生の模範になるよう、もっとしっかり
した生活を心掛けなさい」

{	FwH("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0210620a00">
「はっ！」

{	StC(1000, @0,@0,"cg/rec/stRec_怒りb.png");
	FadeStC(300,false);
	NwH("cg/fw/ny学生会長.png");}
//【ｅｔｃ／ヒロインＣ】
<voice name="ｅｔｃ／ヒロインＣ" class="その他女声" src="voice/md02/0210630e013">
「なぁに？
　文句でもあるの？」

{	FwH("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0210640a00">
「全くありません」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500,1500);

..//ジャンプ指定
//次ファイル　"md02_022.nss"



}


