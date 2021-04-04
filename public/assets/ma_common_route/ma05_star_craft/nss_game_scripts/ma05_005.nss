//<continuation number="330">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma05_005.nss_MAIN
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

	$GameName = "ma05_006.nss";

}

scene ma05_005.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma05_004.nss"

//◆回想
//◆女学生
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg047_景明故郷町a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");

	CreateEffect("エフェクト１", 200, 0, 0, 1025, 576, "Sepia");
	FadeDelete("絵暗転", 2000, true);
	FadeDelete("エフェクト１", 500, true);

	SetNwC("cg/fw/nw女学生.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／光の後輩】
<voice name="ｅｔｃ／光の後輩" class="その他女声" src="voice/ma05/0050010e070">
「光さまっ！
　あの、この手紙を受け取ってくださ」

{	FwC("cg/fw/fw光三年前_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0050020a14">
「<RUBY text="タイ">体位</RUBY>が曲がっておるわ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateVOICE("後輩","ma05/0050016e070");

//◆ローキック。どげし。
//◆女学生退場
	CreatePlainSP("絵震",1100);
	CreateSE("SE01a","se戦闘_攻撃_キック02");
	CreateSE("SE01b","se人体_衝撃_転倒03");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	MusicStart("後輩",0,1000,0,1000,null,false);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Shake("絵震", 300, 4, 0, 0, 0, 1000, DxlAuto, true);
	Delete("絵震");
	SoundPlay("@mbgm22",0,1000,true);

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0050030a00">
「……今のは？」

{	StR(1000, @0, @0,"cg/st/st光三年前_通常_制服.png");
	FadeStR(300,false);
	FwC("cg/fw/fw光三年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0050040a14">
「知らん。この光を冥府魔道に引き込もうと
図る邪教の輩であろう。
{	FwC("cg/fw/fw光三年前_通常b.png");}
　あんな誘惑には断じて屈さぬから安心する
がいい、景明」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0050050a00">
「うむ。
　……なぜ俺が安心するのか良くわからんが」

{	NwC("cg/fw/nw光の友人.png");}
//【ｅｔｃ／光の友人】
<voice name="ｅｔｃ／光の友人" class="その他女声" src="voice/ma05/0050060e071">
「あ、光サマと兄君だ。
　おはよー」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0050070a00">
「お早うございます」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0050080a14">
「おはよう。
　サマ言うな」

{	NwC("cg/fw/nw光の友人.png");}
//【ｅｔｃ／光の友人】
<voice name="ｅｔｃ／光の友人" class="その他女声" src="voice/ma05/0050090e071">
「今の子、新顔だよね。
　これで何人目？　あんたのせいで白い花の
修羅道に堕ちちゃったのは」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0050100a14">
「いちいち数えてるか、そんなもの。
　あと、おれが原因のような言い方をやめろ」

{	NwC("cg/fw/nw光の友人.png");}
//【ｅｔｃ／光の友人】
<voice name="ｅｔｃ／光の友人" class="その他女声" src="voice/ma05/0050110e071">
「原因がどっちかと言えば、それはあんたの
方だと思うけどなぁ……」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0050120a14">
「納得がいかぬ。
　おれの何が悪いというのだ」

{	NwC("cg/fw/nw光の友人.png");}
//【ｅｔｃ／光の友人】
<voice name="ｅｔｃ／光の友人" class="その他女声" src="voice/ma05/0050130e071">
「何がってその喋りが……
　や、そんな端的な問題じゃないなぁ」

//【ｅｔｃ／光の友人】
<voice name="ｅｔｃ／光の友人" class="その他女声" src="voice/ma05/0050140e071">
「あんたの全存在が問題」

{	FwC("cg/fw/fw光三年前_唖然.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0050150a14">
「どうしようもないじゃないか」

{	NwC("cg/fw/nw光の友人.png");}
//【ｅｔｃ／光の友人】
<voice name="ｅｔｃ／光の友人" class="その他女声" src="voice/ma05/0050160e071">
「でも、そうだし。
　ねぇ」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0050170a00">
「はぁ」

{	FwC("cg/fw/fw光三年前_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0050180a14">
「景明に同意を求めるな！」

{	NwC("cg/fw/nw光の友人.png");}
//【ｅｔｃ／光の友人】
<voice name="ｅｔｃ／光の友人" class="その他女声" src="voice/ma05/0050190e071">
「あんたはフェロモンを発してんのよ。
　夢見がちな女の子を惹きつけてしまうよう
な……」

//【ｅｔｃ／光の友人】
<voice name="ｅｔｃ／光の友人" class="その他女声" src="voice/ma05/0050200e071">
「あたしも時々感じるし、それ」

{	Move("@StR*", 3000, @30, @0, DxlAuto, false);
	FwC("cg/fw/fw光三年前_冷たい.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0050210a14">
「……」

{	NwC("cg/fw/nw光の友人.png");}
//【ｅｔｃ／光の友人】
<voice name="ｅｔｃ／光の友人" class="その他女声" src="voice/ma05/0050220e071">
「距離を置かないように。
　大丈夫大丈夫。安心して」

{	NwC("cg/fw/nw光の友人.png");}
//【ｅｔｃ／光の友人】
<voice name="ｅｔｃ／光の友人" class="その他女声" src="voice/ma05/0050230e071">
「あたしはお兄さん狙いだから」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　ぎゅっ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0050240a00">
「あの」

{	NwC("cg/fw/nw光の友人.png");}
//【ｅｔｃ／光の友人】
<voice name="ｅｔｃ／光の友人" class="その他女声" src="voice/ma05/0050250e071">
「お兄さーん。
　若い女の子は好きですかー？」

{	FwC("cg/fw/fw光三年前_冷たい.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0050260a14">
「――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆閃光
	OnSE("se戦闘_攻撃_刀振る01",1000);
	CreateColorSP("絵斬", 5500, "#FFFFFF");
	Fade("絵斬", 600, 0, null, false);
	DrawDelete("絵斬", 200, 1000, "slide_05_00_1", true);

	SetNwC("cg/fw/nw光の友人.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ｅｔｃ／光の友人】
<voice name="ｅｔｃ／光の友人" class="その他女声" src="voice/ma05/0050270e071">
「なんの！
　正確な攻撃は、来るとわかっていれば避ける
のも容易いかもしれない！」

{	FwC("cg/fw/fw光三年前_怒り.png");}
//◆読み方注意
//◆「〜そのからだとくにくびのしたふくぶのうえの〜」
//【光】
<voice name="光" class="光" src="voice/ma05/0050280a14">
「勝ち誇るのは三十秒後まで生き延びてからに
しておけ<RUBY text="アフェンダー">罪人</RUBY>！
　景明を誘惑したその身体特に首の下腹部の上
の忌々しい物体究極許さぬ!!」

{	NwC("cg/fw/nw光の友人.png");}
//【ｅｔｃ／光の友人】
<voice name="ｅｔｃ／光の友人" class="その他女声" src="voice/ma05/0050290e071">
「はっはー！
　ここまでおいでってなもんだー！」

{//◆すたたた
	CreateSE("SEL01","se人体_足音_走る01_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);
	SetVolume("SEL01", 6000, 0, null);
	FwC("cg/fw/fw光三年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0050300a14">
「貴様ぁ！　逃すか！
　景明、ではここで。いってきます！」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0050310a00">
「行ってくるように。
　走るのは良いが、車には注意する事」

{	FwC("cg/fw/fw光三年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0050320a14">
「諒解！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ずだだだだ
//あきゅん「SE：要望：爆走系ダッシュ音、土煙舞うようなループ」
	CreateSE("SEL02","se擬音_ギャグ_猛ダッシュ");
	MusicStart("SEL02",0,1000,0,1000,null,true);
	SetVolume("SEL02", 6000, 0, null);
	Move("@StR*", 600, @-1024, @0, Axl3, false);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0050330a00">
「……<RUBY text="はやがけ">長足術</RUBY>まで使わなくとも。
　相手は陸上部か？　いい勝負だな……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma05_006.nss"