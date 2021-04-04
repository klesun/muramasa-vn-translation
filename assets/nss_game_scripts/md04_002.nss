//<continuation number="560">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_002.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/md04_002.nss","TelopStart",true);
	Conquest("nss/md04_002.nss","TelopStartB",true);
	Conquest("nss/md04_002.nss","TelopDelete",true);
	

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
	#bg073_海a_01=true;
	#bg073_船上船縁付近_01=true;
	#ev801_戦争絵シリーズその１_b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_003.nss";

}

scene md04_002.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md04_001.nss"


//◆夜
//◆相模湾（bg073の加工で用意？）
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "WHITE");
	OnBG(100, "bg073_海a_01.jpg");

	CreateSE("SE01L","se自然_水_浜辺の波01_L");
	MusicStart("SE01L",3000,1000,0,1000,null,true);

//あきゅん「演出：上に夜ってかいてあるのになんで昼間になっとるんじゃー」
//	CreateTextureSPadd("光源100", 1000, Center, Middle, "cg/data/circle_04_00_1.png");
//	Fade("光源100", 0, 700, null, true);

	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg073_海a_03.jpg");
	Zoom("絵背景50", 0, 1200, 1200, null, true);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg073_海a_03.jpg");
	Zoom("絵背景100", 0, 1400, 1200, null, true);
	Fade("絵背景100", 0, 600, null, true);
	CreateTextureSP("絵背景200", 100, Center, Middle, "cg/bg/bg073_海a_03.jpg");
	Zoom("絵背景200", 0, 1200, 1200, null, true);
	DrawTransition("絵背景200", 0, 500, 500, 200, null, "cg/data/slide_02_00_0.png", true);
//	DrawEffect("絵背景100", 50, "LowWave ", 0, 100, null);
	DrawEffect("絵背景100", 50, "SuperWave", 0, 200, null);


	FadeBG(0, true);

	SoundPlay("@mbgm30", 0, 1000, true);

	FadeDelete("上背景", 1000, true);

	Move("絵背景*", 12000, @-100, @0, null, false);

	Zoom("光源100", 12000, 1300, 1300, null, false);
	Fade("光源100", 12000, 200, null, false);
	FadeDelete("黒幕１",2000,true);

	Wait(1000);


//おがみ：映画字幕演出
	LockVideo(true);

	SetFont("@ＭＳ 明朝", 30, #FFFFFF, #000000, HEAVY, RIGHTDOWN);

	CreateText("字幕01",30411,Center,inherit,auto,auto,"外暦一九四〇年");
	Fade("字幕01", 0, 0, null, true);
	Request("字幕01",NoLog);
	Request("字幕01",PushText);
	Rotate("字幕01", 0, @0, @0, 90, null, false);
	Move("字幕01", 0, @300, @10, null, false);
	SetBacklog("外暦一九四〇年", null, null);


	SetFont("@ＭＳ 明朝", 30, #FFFFFF, #000000, HEAVY, RIGHTDOWN);
	CreateText("字幕02",30411,Center,inherit,auto,auto,"国紀二六〇〇年／興隆四一年");
	Fade("字幕02", 0, 0, null, true);
	Request("字幕02",NoLog);
	Request("字幕02",PushText);
	Rotate("字幕02", 0, @0, @0, 90, null, false);
	Move("字幕02", 0, @250, @10, null, false);
	SetBacklog("国紀二六〇〇年／興隆四一年", null, null);

	LockVideo(false);

	Fade("字幕*", 300, 1000, null, true);
	WaitKey(3000);
	Fade("字幕*", 300, 0, null, true);

	LockVideo(true);

	SetFont("@ＭＳ 明朝", 30, #FFFFFF, #000000, HEAVY, RIGHTDOWN);
	CreateText("字幕01",30411,Center,inherit,auto,auto,"一一月三〇日");
	Fade("字幕01", 0, 0, null, true);
	Request("字幕01",NoLog);
	Request("字幕01",PushText);
	Rotate("字幕01", 0, @0, @0, 90, null, false);
	Move("字幕01", 0, @300, @10, null, false);
	SetBacklog("一一月三〇日", null, null);

	SetFont("@ＭＳ 明朝", 30, #FFFFFF, #000000, HEAVY, RIGHTDOWN);
	CreateText("字幕02",30411,Center,inherit,auto,auto,"午前二時四七分");
	Fade("字幕02", 0, 0, null, true);
	Request("字幕02",NoLog);
	Request("字幕02",PushText);
	Rotate("字幕02", 0, @0, @0, 90, null, false);
	Move("字幕02", 0, @250, @10, null, false);
	SetBacklog("午前二時四七分", null, null);

	LockVideo(false);

	Fade("字幕*", 300, 1000, null, true);
	WaitKey(3000);
	Fade("字幕*", 300, 0, null, true);

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　
　　　　　　外暦一九四〇年
　　　　　　国紀二六〇〇年／興隆四一年

　
　　　　　　　　　一一月三〇日

　
　　　　　　　　　午前二時四七分

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

*/



//◆艦上。bg073
//◆テロップ「幕軍巡洋艦「昇鶴」艦上」

	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	SetVolume("SE01L", 5000, 0, null);

	Delete("絵背景*");
	Delete("字幕*");
	Delete("光源*");

	OnBG(100, "bg073_船上船縁付近_03.jpg");
	FadeBG(0, true);

/*
	CreateTextureEX("テロップ", 16000, center, @500, "cg/sys/Telop/tp_昇鶴.png");
	Fade("テロップ", 1000, 1000, null, true);

	OnBG(100, "bg073_船上船縁付近_03.jpg");
	FadeBG(0, true);
	WaitKey(1000);
	FadeDelete("テロップ", 2000, true);
*/
	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");


	TelopStart(15000,3000,center,450,"cg/sys/Telop/tp_昇鶴.png",null);
	Wait(3000);

	StL(1000, @50, @0, "cg/st/st六波羅兵士_通常_制服.png");
	FadeStL(500, true);

	Wait(300);

	SetNwC("cg/fw/nw当番兵.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／金探兵】
<voice name="ｅｔｃ／金探兵" class="その他男声" src="voice/md04/0020010e057">
「ふぁ……あ」

//【ｅｔｃ／金探兵】
<voice name="ｅｔｃ／金探兵" class="その他男声" src="voice/md04/0020020e057">
「……眠いっての。
　くそ……当直だって知ってたら昨日完徹で
打ったりしなかったのに……」

//【ｅｔｃ／金探兵】
<voice name="ｅｔｃ／金探兵" class="その他男声" src="voice/md04/0020030e057">
「坂口が急に休むから……くそ……
　ぁ……ねむ」

//【ｅｔｃ／金探兵】
<voice name="ｅｔｃ／金探兵" class="その他男声" src="voice/md04/0020040e057">
「こういう時は……どうするんだっけ」

//【ｅｔｃ／金探兵】
<voice name="ｅｔｃ／金探兵" class="その他男声" src="voice/md04/0020050e057">
「……」

//【ｅｔｃ／金探兵】
<voice name="ｅｔｃ／金探兵" class="その他男声" src="voice/md04/0020060e057">
「あがれ銀翼国民の、
　熱誠いまや天をつく――」

//【ｅｔｃ／金探兵】
<voice name="ｅｔｃ／金探兵" class="その他男声" src="voice/md04/0020070e057">
「……」

//【ｅｔｃ／金探兵】
<voice name="ｅｔｃ／金探兵" class="その他男声" src="voice/md04/0020080e057">
「続き……何だっけ……？」

//【ｅｔｃ／金探兵】
<voice name="ｅｔｃ／金探兵" class="その他男声" src="voice/md04/0020090e057">
「……あー……駄目だ」

{	NwC("cg/fw/nw艦載竜騎兵.png");}
//【ｅｔｃ／艦載騎】
<voice name="ｅｔｃ／艦載騎" class="その他男声" src="voice/md04/0020100e039">
「離陸颯爽あざやかに、
　駆ける我らが愛国騎」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆八八式竜騎兵

	OnSE("se特殊_鎧_駆動音02", 1000);
	StR(1000, @50, @0, "cg/st/3d八八式竜騎兵_立ち_通常.png");
	Move("@StR*", 300, @-50, @0, Dxl1, false);
	FadeStR(300, true);

	Wait(200);
	Move("@StL*", 300, @-50, @0, Dxl1, false);
	Shake("@StL*", 300, 3, 0, 0, 0, 1000, Dxl2, false);


	SetNwC("cg/fw/nw当番兵.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／金探兵】
<voice name="ｅｔｃ／金探兵" class="その他男声" src="voice/md04/0020110e057">
「ぐへッッ！
　ちゅっ――中尉殿！」

//【ｅｔｃ／金探兵】
<voice name="ｅｔｃ／金探兵" class="その他男声" src="voice/md04/0020120e057">
「申し訳ありませんっ！」

{	NwC("cg/fw/nw艦載竜騎兵.png");}
//【ｅｔｃ／艦載騎】
<voice name="ｅｔｃ／艦載騎" class="その他男声" src="voice/md04/0020130e039">
「謝らなくていい。
　寝る<RUBY text="・">前</RUBY>だったからな」

//【ｅｔｃ／艦載騎】
<voice name="ｅｔｃ／艦載騎" class="その他男声" src="voice/md04/0020140e039">
「俺があと三秒ほど遅れて来ていたらわから
なかったが」

{	NwC("cg/fw/nw当番兵.png");}
//【ｅｔｃ／金探兵】
<voice name="ｅｔｃ／金探兵" class="その他男声" src="voice/md04/0020150e057">
「は……はッ」

{	NwC("cg/fw/nw艦載竜騎兵.png");}
//【ｅｔｃ／艦載騎】
<voice name="ｅｔｃ／艦載騎" class="その他男声" src="voice/md04/0020160e039">
「お前は陸軍上がりか？」

{	NwC("cg/fw/nw当番兵.png");}
//【ｅｔｃ／金探兵】
<voice name="ｅｔｃ／金探兵" class="その他男声" src="voice/md04/0020170e057">
「は――
　ずっと海軍であります」

//【ｅｔｃ／金探兵】
<voice name="ｅｔｃ／金探兵" class="その他男声" src="voice/md04/0020180e057">
「その、兄が陸軍でしたので……」

{	NwC("cg/fw/nw艦載竜騎兵.png");}
//【ｅｔｃ／艦載騎】
<voice name="ｅｔｃ／艦載騎" class="その他男声" src="voice/md04/0020190e039">
「そうか。
　うちと同じか」

{	NwC("cg/fw/nw当番兵.png");}
//【ｅｔｃ／金探兵】
<voice name="ｅｔｃ／金探兵" class="その他男声" src="voice/md04/0020200e057">
「……中尉殿も？」

{	NwC("cg/fw/nw艦載竜騎兵.png");}
//【ｅｔｃ／艦載騎】
<voice name="ｅｔｃ／艦載騎" class="その他男声" src="voice/md04/0020210e039">
「ああ。
　弟がな……」

//【ｅｔｃ／艦載騎】
<voice name="ｅｔｃ／艦載騎" class="その他男声" src="voice/md04/0020220e039">
「まぁ、今は皆まとめて六波羅だが」

{	NwC("cg/fw/nw当番兵.png");}
//【ｅｔｃ／金探兵】
<voice name="ｅｔｃ／金探兵" class="その他男声" src="voice/md04/0020230e057">
「……はっ」

{	NwC("cg/fw/nw艦載竜騎兵.png");}
//【ｅｔｃ／艦載騎】
<voice name="ｅｔｃ／艦載騎" class="その他男声" src="voice/md04/0020240e039">
「ふん、懐かしい<RUBY text="うた">詩</RUBY>を聞いたせいで昔を思い
出した」

//【ｅｔｃ／艦載騎】
<voice name="ｅｔｃ／艦載騎" class="その他男声" src="voice/md04/0020250e039">
「いや……昔といっても、まだ六年か。
　大戦が終わって、六波羅幕府が天下の主と
なってから……まだ」

{	NwC("cg/fw/nw当番兵.png");}
//【ｅｔｃ／金探兵】
<voice name="ｅｔｃ／金探兵" class="その他男声" src="voice/md04/0020260e057">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0,150);//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw艦載竜騎兵.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ｅｔｃ／艦載騎】
<voice name="ｅｔｃ／艦載騎" class="その他男声" src="voice/md04/0020270e039">
「居眠りは、やはりやめておけ」

{	NwC("cg/fw/nw当番兵.png");}
//【ｅｔｃ／金探兵】
<voice name="ｅｔｃ／金探兵" class="その他男声" src="voice/md04/0020280e057">
「はッ！」

{	NwC("cg/fw/nw艦載竜騎兵.png");}
//【ｅｔｃ／艦載騎】
<voice name="ｅｔｃ／艦載騎" class="その他男声" src="voice/md04/0020290e039">
「時代がそろそろ動くようだ。
　平穏は……<RUBY text="・・">また</RUBY>終わるらしい」

//【ｅｔｃ／艦載騎】
<voice name="ｅｔｃ／艦載騎" class="その他男声" src="voice/md04/0020300e039">
「この<RUBY text="うみ">相模湾</RUBY>も……」

{	NwC("cg/fw/nw当番兵.png");}
//【ｅｔｃ／金探兵】
<voice name="ｅｔｃ／金探兵" class="その他男声" src="voice/md04/0020310e057">
「それは……
　つまり、進駐軍と？」

{	NwC("cg/fw/nw艦載竜騎兵.png");}
//【ｅｔｃ／艦載騎】
<voice name="ｅｔｃ／艦載騎" class="その他男声" src="voice/md04/0020320e039">
「…………」

//【ｅｔｃ／艦載騎】
<voice name="ｅｔｃ／艦載騎" class="その他男声" src="voice/md04/0020330e039">
「少し<RUBY text="とんで">騎航して</RUBY>くる」

{	NwC("cg/fw/nw当番兵.png");}
//【ｅｔｃ／金探兵】
<voice name="ｅｔｃ／金探兵" class="その他男声" src="voice/md04/0020340e057">
「何か不審が？」

{	NwC("cg/fw/nw艦載竜騎兵.png");}
//【ｅｔｃ／艦載騎】
<voice name="ｅｔｃ／艦載騎" class="その他男声" src="voice/md04/0020350e039">
「いや。
　ただ妙に……背筋が寒くてな」

//【ｅｔｃ／艦載騎】
<voice name="ｅｔｃ／艦載騎" class="その他男声" src="voice/md04/0020360e039">
「金探に何か反応はあるか？」

{	NwC("cg/fw/nw当番兵.png");}
//【ｅｔｃ／金探兵】
<voice name="ｅｔｃ／金探兵" class="その他男声" src="voice/md04/0020370e057">
「いえ、何も」

{	NwC("cg/fw/nw艦載竜騎兵.png");}
//【ｅｔｃ／艦載騎】
<voice name="ｅｔｃ／艦載騎" class="その他男声" src="voice/md04/0020380e039">
「そうか……」

//【ｅｔｃ／艦載騎】
<voice name="ｅｔｃ／艦載騎" class="その他男声" src="voice/md04/0020390e039">
「なら多分、自分の言葉に自分が煽られたの
だろう。我ながら情けない。
　……すぐに戻る」

{	NwC("cg/fw/nw当番兵.png");}
//【ｅｔｃ／金探兵】
<voice name="ｅｔｃ／金探兵" class="その他男声" src="voice/md04/0020400e057">
「はッ」

//【ｅｔｃ／金探兵】
<voice name="ｅｔｃ／金探兵" class="その他男声" src="voice/md04/0020410e057">
「中尉殿、お気をつけて――」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆ばた。竜騎兵、倒れた
	Wait(500);
	SetVolume("@mbgm*", 1000, 0, null);

	CreateSE("転倒", "se戦闘_衝撃_鎧転倒03");
	MusicStart("転倒", 0, 1000, 0, 1000, null,false);

	Shake("@StR*", 200, 5, 0, 0, 0, 1000, null, true);
	Move("@StR*", 300, @50, @100, Axl2, false);
	DeleteStR(300,true);

	WaitKey(1500);

	SetVolume("転倒", 1000, 0, null);


	SetNwC("cg/fw/nw当番兵.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ｅｔｃ／金探兵】
<voice name="ｅｔｃ／金探兵" class="その他男声" src="voice/md04/0020420e057">
「……」

{	NwC("cg/fw/nw当番兵.png");}
//【ｅｔｃ／金探兵】
<voice name="ｅｔｃ／金探兵" class="その他男声" src="voice/md04/0020430e057">
「ちゅ、中尉殿？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆血

/*
	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 150, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);
*/
	CreateTextureEX("垂れ血", 1000, @0, @0, "cg/ef/ef004_汎用血雫.jpg");
	Fade("垂れ血", 500, 1000, null, true);

	CreateSE("血", "se人体_血_たれる01");
	MusicStart("血", 0, 1000, 0, 1000, null,false);

/*
	DrawTransition("黒幕１", 150, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);
	Delete("黒幕１");
*/

	Wait(500);

	SetNwC("cg/fw/nw当番兵.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ｅｔｃ／金探兵】
<voice name="ｅｔｃ／金探兵" class="その他男声" src="voice/md04/0020440e057">
「……え？」

//【ｅｔｃ／金探兵】
<voice name="ｅｔｃ／金探兵" class="その他男声" src="voice/md04/0020450e057">
「血？」

//【ｅｔｃ／金探兵】
<voice name="ｅｔｃ／金探兵" class="その他男声" src="voice/md04/0020460e057">
「……そんな、どうして急に……？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆ざっ。
//◆ＳＴ−０９ユーウォーキー
	DeleteStA(0,true);
	FadeDelete("垂れ血", 500, true);
	Wait(500);

	OnSE("se特殊_鎧_駆動音01", 1000);

	StC(1000, @50, @0, "cg/st/3dユーウォーキー_立ち_抜刀.png");
	Move("@StC*", 1000, @-50, @0, Dxl2, false);
	FadeStC(1000, true);

	Wait(500);

	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateColorEX("絵色100", 6050, "BLACK");

	CreateTextureEX("絵演窓上/絵演背景", 6100, -100, -344, "cg/bg/bg073_船上船縁付近_03.jpg");
	SetShade("絵演窓上/絵演背景", HEAVY);
	Zoom("絵演窓上/絵演背景", 0, 2000, 2000, null, true);
	CreateTextureEX("絵演窓上/絵立絵", 6200, -750, -465, "cg/st/resize/3dユーウォーキー_立ち_抜刀l.png");
	Move("絵演窓上", 0, @0, @128, null, true);

	Request("絵演窓上/絵演背景", Smoothing);
	Request("絵演窓上/絵演背景", Smoothing);

	OnSE("se人体_足音_鎧歩く03",1000);

	Move("絵演窓上/絵演背景", 2000, @-100, @0, Dxl2, false);
	Move("絵演窓上/絵立絵", 2000, -950, @0, Dxl2, false);

	Fade("絵色100", 300, 300, null, false);
	Fade("絵演窓上/絵演背景", 500, 1000, null, false);
	Fade("絵演窓上/絵立絵", 500, 1000, null, true);

	Wait(1500);


	SoundPlay("@mbgm21", 0, 1000, true);

	SetNwR("cg/fw/nwＧＨＱ竜騎兵.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ｅｔｃ／奇襲騎】
<voice name="ｅｔｃ／奇襲騎" class="その他男声" src="voice/md04/0020470e043">
「……」

{	NwR("cg/fw/nw当番兵.png");}
//【ｅｔｃ／金探兵】
<voice name="ｅｔｃ／金探兵" class="その他男声" src="voice/md04/0020480e057">
「――――――――」

//【ｅｔｃ／金探兵】
<voice name="ｅｔｃ／金探兵" class="その他男声" src="voice/md04/0020490e057">
「し――進駐軍の<RUBY text="ドラグーン">竜騎兵</RUBY>……」

//【ｅｔｃ／金探兵】
<voice name="ｅｔｃ／金探兵" class="その他男声" src="voice/md04/0020500e057">
「う、嘘だろ？
　金探には何の反応もなかったぞ!?」

//【ｅｔｃ／金探兵】
<voice name="ｅｔｃ／金探兵" class="その他男声" src="voice/md04/0020510e057">
「なんで――」

//◆Have a good dream
{	NwR("cg/fw/nwＧＨＱ竜騎兵.png");}
//【ｅｔｃ／奇襲騎】
<voice name="ｅｔｃ／奇襲騎" class="その他男声" src="voice/md04/0020520e043">
「良い夢を」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ずばー。斬殺



	OnSE("se戦闘_攻撃_野太刀振る01",1000);
	CreateTextureEX("絵背景500", 10000, Center, Middle, "cg/ef/ef010_汎用斜め軌道.jpg");
	CreateTextureEX("絵背景600", 10000, Center, Middle, "cg/ef/ef006_汎用血しぶき.jpg");

	Fade("絵背景500", 0, 1000, null, true);
	EffectZoomadd(10000, 500, 100, "cg/data/beam_03_00_1.png", true);

	DeleteStL(0,true);
	FadeDelete("絵色100", 0, false);
	FadeDelete("絵演窓上*", 0, true);
	Delete("絵演窓上*");

	OnSE("se戦闘_攻撃_刀刺さる05", 1000);
	Fade("絵背景600", 0, 1000, null, true);
	DrawTransition("絵背景600", 200, 0, 1000, 100, null, "cg/data/slide_04_01_1.png", true);


	FadeDelete("絵背景500", 300, true);

	WaitKey(1500);

	OnSE("se人体_衝撃_転倒03",1000);

	FadeDelete("絵背景600", 1000, true);



	SetNwR("cg/fw/nwＧＨＱ竜騎兵.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//◆イーグル・トゥ・エアリィ
//◆Eagle to Aerie
//【ｅｔｃ／奇襲騎】
<voice name="ｅｔｃ／奇襲騎" class="その他男声" src="voice/md04/0020530e043">
《攻撃騎から艦隊司令部へ》

//◆Mission Complete
//【ｅｔｃ／奇襲騎】
<voice name="ｅｔｃ／奇襲騎" class="その他男声" src="voice/md04/0020540e043">
《任務完了》

//【ｅｔｃ／奇襲騎】
<voice name="ｅｔｃ／奇襲騎" class="その他男声" src="voice/md04/0020550e043">
《攻撃騎から艦隊司令部へ》

//【ｅｔｃ／奇襲騎】
<voice name="ｅｔｃ／奇襲騎" class="その他男声" src="voice/md04/0020560e043">
《任務完了……》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆進駐軍戦艦。進攻

	CreateColorSP("黒幕１", 30000, "#000000");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	CreateSE("SE01", "se乗物_戦艦_振動01");
	CreateSE("SE02", "se戦闘_銃器_砲門構え01");

	CreateTextureEX("海", 16000, @0, @0, "cg/ev/ev801_戦争絵シリーズその１_b.jpg");
	Request("海", Smoothing);
	Zoom("海", 0, 1200, 1200, null, true);
	Fade("海", 0, 1000, null, true);

	MusicStart("SE01", 1000, 1000, 0, 1000, null,true);
	Zoom("海", 5000, 1000, 1000, null, false);
	DrawTransition("黒幕１", 500, 1000, 0, 100, null, "cg/data/slide_01_02_1.png", true);
	Delete("黒幕１");

	MusicStart("SE02", 0, 1000, 0, 1000, null,false);
	Wait(1500);

//◆砲撃。命中音。どごーん。

	OnSE("se戦闘_破壊_爆発06",1000);

	CreateColorSPadd("絵色100", 25000, "WHITE");
	DrawTransition("絵色100", 500, 0, 1000, 100, Axl3, "cg/data/circle_01_00_0.png", true);

	Delete("@海");


//おがみ：素材定義
	CreateTextureEX("絵背景400", 17000, Center, Middle, "cg/ef/ef026_汎用爆撃.jpg");
	CreateTextureEX("絵背景500", 17000, Center, Middle, "cg/ef/ef026_汎用爆撃.jpg");
	CreateColorEXadd("絵色100", 17500, "WHITE");
	Request("絵背景400", Smoothing);
	Request("絵背景500", Smoothing);
	Zoom("絵背景400", 0, 2000, 2000, null, true);
	Zoom("絵背景500", 0, 1200, 1200, null, true);
	SetBlur("絵背景500", true, 3, 200, 70, false);

	CreateSE("SE05","se戦闘_破壊_大爆発01");


//おがみ：爆発動作
	MusicStart("SE05",200,1000,0,1000,null,false);

	Fade("絵色100", 0, 1000, null, true);
	Fade("絵色100", 150, 0, null, false);
	Fade("絵背景400", 0, 1000, null, true);
	DrawTransition("絵背景400", 100, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);
//	Wait(50);
	Move("絵背景400", 0, -312, -100, null, true);
	Wait(50);
	Move("絵背景400", 0, -350, -150, null, true);
	Wait(50);
	Move("絵背景400", 0, -510, -120, null, true);

	Fade("絵色100", 50, 1000, null, true);
	Delete("絵背景200");
	Delete("絵背景400");
	CP_AllDelete();

	Fade("絵背景500", 0, 1000, null, true);
	Zoom("絵背景500", 500, 1000, 1000, Dxl2, false);
	EffectZoomadd(18000, 6000, 4000, "cg/ef/ef026_汎用爆撃.jpg", false);
	FadeDelete("絵色100", 2000, true);


	SetVolume("SE*", 1000, 0, null);


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md04_003.nss"


function TelopStart(画像優先度,$fテロップ描画時間,X座標,Y座標,$fテロップ画像,$fテロップテンポ)
{

/*
	CreateColor("f黒幕テロップ", 画像優先度, 0, 0, 1024, 576, "BLACK");
	SetAlias("f黒幕テロップ","f黒幕テロップ");
	Fade("f黒幕テロップ", 0, 0, null, true);
	Zoom("f黒幕テロップ", 0, 1000, 200, null, true);
	Move("f黒幕テロップ", 0, X座標, Y座標, null, true);
*/
	CreateTexture("fテロップ画像ナット", 画像優先度, X座標, Y座標, $fテロップ画像);
	SetAlias("fテロップ画像ナット","fテロップ画像ナット");
	Fade("fテロップ画像ナット", 0, 0, null, true);

	CreateProcess("functonテロッププロセス", 150, 0, 0, "TelopStartB");
	SetAlias("functonテロッププロセス","functonテロッププロセス");
	Request("functonテロッププロセス", Start);

}

function TelopStartB()
{
	Fade("@f黒幕テロップ", 1000, 500, $fテロップテンポ, false);
	Fade("@fテロップ画像ナット", 1000, 1000, $fテロップテンポ, true);
	Wait($fテロップ描画時間);
	Fade("@f黒幕テロップ", 1000, 0, $fテロップテンポ, false);
	Fade("@fテロップ画像ナット", 1000, 0, $fテロップテンポ, true);
	Delete("@fテロップ画像ナット");
	Request("@functonテロッププロセス", Stop);

}

function TelopDelete(描画時間,$fテロップテンポ)
{

	Fade("@fテロップ画像ナット", 描画時間, 0, $fテロップテンポ, true);
	Delete("@f黒幕テロップ");
	Delete("@fテロップ画像ナット");
	Delete("@functonテロッププロセス");

}