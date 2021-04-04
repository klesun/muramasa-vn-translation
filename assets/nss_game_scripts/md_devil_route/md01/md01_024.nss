//<continuation number="530">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_024.nss_MAIN
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
	#bg032_八幡宮奥舞殿内a_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_025.nss";

}

scene md01_024.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_023.nss"

//◆八幡宮、舞殿？
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg032_八幡宮奥舞殿内a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm30",0,1000,true);

	StR(1000, @0, @0,"cg/st/st署長_通常_制服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【署長】
<voice name="署長" class="署長" src="voice/md01/0240010a11">
「護氏は普陀楽を出た。
　もうじきここへ着く」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0240020a00">
「諒解」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0240030a11">
「用意はいいのか？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0240040a00">
「本物の神官と入れ替わる手筈は万端整って
います。
　実行に二分と掛かりません」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0240050a11">
「そうか。
　……狙うのはやはり<RUBY text="げぐう">下宮</RUBY>だな？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0240060a00">
「はい」

{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0240070a11">
「大将領の手の者が既に潜んでいる、などと
いうことは万一にもないのか……それだけが
懸念だ」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0240080a00">
「その点は再三確かめました。
　今、村正が最後の確認を――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正蜘蛛
//◆蝦夷体へ変身
	CreateSE("SE01","se人体_足音_鎧歩く03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	StL(1000, @0, @180,"cg/st/3d村正蜘蛛_正面.png");
	Move("@StL*", 300, @0, @-30, DxlAuto, false);
	FadeStL(300,true);

	CreateSE("SE01b","se特殊_その他_村正人間変化01");
	MusicStart("SE01b",0,1000,0,700,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);

	WaitKey(500);

	DeleteStL(0,true);
	FadeDelete("絵フラ", 1000, true);
	SetVolume("SE*", 1000, 0, null);

	SetFwC("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0240090a01">
「大丈夫よ、御堂。
　下宮には誰もいない」

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0240100a01">
「どう見ても隠れ潜むには不都合な場所だし、
間違いはないでしょう」

{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0240110a11">
「…………」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0240120a00">
「…………」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0240130a11">
「景明」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0240140a00">
「はい」

{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0240150a11">
「どういう事だ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0240160a00">
「どういう事なのでしょうか」

{	FwC("cg/fw/fw署長_警戒.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0240170a11">
「他人事のように言ってどうする……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0240180a00">
「自分も途方もなく戸惑っているのです。
　御容赦下さい」

{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0240190a11">
「……そうか」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0240200a01">
「何よ？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0240210a00">
「…………」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0240220a11">
「…………」

{	SetComic(@-30,@0,5);
	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0240230a01">
「……？」

</PRE>
	DeleteComic();
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ちょっと演出入れて村正全身？
	SetVolume("@mbgm*", 1000, 1, null);
	CreateColorEX("絵色黒弐", 6000, "#000000");
	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　――――何故、こうなる。

{	SoundPlay("@mbgm22",0,1000,true);
	CreateTextureEX("絵左立絵", 5100, -1170, -460, "cg/st/resize/3d村正標準_立ち_抜刀.png");
	Zoom("絵左立絵", 0, 750, 750, null, true);
	Request("絵左立絵", Smoothing);
	Move("絵左立絵", 2000, @0, @-400, DxlAuto, false);
	Fade("絵左立絵", 200, 1000, null, false);}
　鎧だったのだ。

{	FadeDelete("絵左立絵", 1000, false);
	CreateTextureEX("絵右立絵", 5100, -180, -1000, "cg/st/resize/3d村正蜘蛛_俯瞰l.png");
	Zoom("絵右立絵", 0, 750, 750, null, true);
	Request("絵右立絵", Smoothing);
	Move("絵右立絵", 2000, @0, @400, DxlAuto, false);
	Fade("絵右立絵", 200, 1000, null, false);}
　蜘蛛だったのだ。

{	Fade("絵色黒弐", 1000, 1000, null, false);}
　ある日突然、妙齢の女性に化ける道理がない。

　恩返しに来た鶴でもあるまいに。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正演出
	WaitAction("絵色黒弐", null);
	Delete("絵右立絵");
	Delete("絵左立絵");
	Wait(1);
	Delete("絵色黒弐");

	CreateTextureEX("絵立絵", 5100, Center, -1100, "cg/st/resize/st村正_通常_私服llll.png");
	Move("絵立絵", 0, @0, @-200, null, true);
	Move("絵立絵", 9000, @0, -200, DxlAuto, false);
	Fade("絵立絵", 300, 1000, null, true);

	SetFwR("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0240240a00">
（どうしろと）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　どうしたらいいものやら。
　この姿を見るのもこれで幾度目かだが、未だにわか
らない。

　わからな過ぎる。

　とどのつまり自分が何を悩んでいるのかすら、良く
わからない。
　とにかくこの現状が俺の頭脳では消化不可能なのだ。

　せめて村正が<RUBY text="はがね">鋼鉄</RUBY>のままであれば、納得のしようも
あるのだが……。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	WaitAction("絵立絵", null);

	WaitKey(1000);

	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg032_八幡宮奥舞殿内a_01.jpg");
	StL(1000, @0, @0,"cg/st/st村正_通常_私服.png");
	FadeStL(0,true);
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);
	FadeDelete("絵暗転", 500, true);

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0240250a00">
「……」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0240260a01">
「どうしたの？」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ぷにぷに
	CreateSE("SE01","se擬音_コミカル_ぷに");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("@StL*", 300, 3, 0, 0, 0, 1000, DxlAuto, false);

	SetFwC("cg/fw/fw村正_驚きa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0240270a01">
「きゃっ！」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0240280a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

//◆ぷにぷにぷにぷに
	CreateSE("SE01","se擬音_コミカル_ぷにぷに");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("@StL*", 300, 6, 0, 0, 0, 1000, DxlAuto, false);

	SetFwC("cg/fw/fw村正_照れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0240290a01">
「ぁん、やめっ、だめだってばっ！
　くすぐったいからっ。悪戯しないの」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0240300a00">
「……柔らかい……」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0240310a01">
「恥ずかしいこと言わないでよ」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

//◆がく。
	CreateSE("SE01","se人体_衝撃_転倒03");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw村正_凹む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0240320a01">
「どうしてそこで両手両膝を床につくの」

{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0240330a11">
「動揺するな景明」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0240340a00">
「無理です」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　穴を掘りたい。
　そこに収まって、ひたすら膝を抱えて座っていたい。

　そんな心地だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm22", 2000, 0, null);
	SetVolume("@mbgm30", 3000, 1000, null);
	StR(1000, @0, @0,"cg/st/st署長_通常_制服.png");
	FadeStR(300,false);

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【署長】
<voice name="署長" class="署長" src="voice/md01/0240350a11">
「そろそろ行列が若宮大路へ入る頃合だ。
　準備せねば間に合うまい」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0240360a00">
「はい……。
　署長は？」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0240370a11">
「少し離れて様子を見ておく。
　万一の場合に備えねばならん」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0240380a00">
「それは？」

{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0240390a11">
「……景明。
　斬る斬らぬの判断はお前に委ねるが」

{	FwC("cg/fw/fw署長_警戒.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0240400a11">
「中途半端な真似だけはしてくれるな。
　私の言う意味がわかるか？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0240410a00">
「わかります」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　親王と署長にとって最も望ましくない事態とは、俺
が護氏を殺さないと決断することではない。
　一旦は殺すと決めて襲いながら、途中で迷い、挙句
取り逃がしてしまうことだ。

　これはまさしく最悪である。
　大将領暗殺に成功して幕府が大きな動揺をきたせば
こそ、たとえ黒幕だと感付かれても親王は生存の道を
得られるのだ。

　暗殺は試みたが護氏は無事でした、では間違いなく
親王の霊魂が<RUBY text="かくりよ">幽世</RUBY>へ旅立つ。
　……その最悪の事態が迫った時、署長は親王に急を
知らせて逃亡させるつもりなのだろう。

　成功の見込みは薄いが、やらぬよりは余程いい。
　
　無論、俺はその手配りで安心してはならないわけだ
が。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0240420a00">
「……斬ると、決意した時は……
　必ずや」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0240430a11">
「頼むぞ。
　では、私は行く」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0240440a00">
「既に警備体制が敷かれています。
　お気をつけて」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0240450a11">
「お前こそな」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆署長去る
	DeleteStR(300,true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0240460a00">
「こちらも始めるか」

{	FwC("cg/fw/fw村正_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0240470a01">
「ええ」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0240480a00">
「……」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0240490a01">
「御堂……大丈夫。
　貴方は貴方の思うようにして」

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0240500a01">
「私は必ず、貴方の求める剣になる。
　盾になって……守ってみせる」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_衝撃_転倒03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0145a]
//【景明】
　
<voice name="景明" class="景明" src="voice/md01/0240510a00">
　　　　　　　　　　　　orz

</PRE>
	SetTextEXH();
	Move("$SYSTEM_present_text", 0, 259, 134, null, true);
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_凹む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0145b]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0240520a01">
「だから、どうして挫折するの！」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0240530a00">
「いや……別に……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md01_025.nss"