//<continuation number="510">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_016.nss_MAIN
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
	#bg103_普陀楽城外郭藤沢方面_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_017.nss";

}

scene md04_016.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md04_015.nss"


//◆藤沢方面


	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg103_普陀楽城外郭藤沢方面_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm34", 0, 1000, true);

	CreateSE("戦闘音", "se背景_ガヤ_戦場の風景02_L");
	MusicStart("戦闘音", 1500, 1000, 0, 1000, null,true);

	CreateTextureSP("絵背景100", 100, Center, -200, "cg/bg/resize/bg103_普陀楽城外郭藤沢方面_01l.jpg");
	Delete("上背景");

	Move("絵背景100", 3000, @50, @0, null, false);

	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");
	Wait(1500);
	Fade("絵背景100", 1000, 0, null, true);
	Delete("絵背景100");

	StR(1000, @0, @0, "cg/st/st茶々丸_通常_制服a.png");
	FadeStR(500, true);

	SetVolume("戦闘音", 3000, 400, null);


	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0160010a07">
「はっはー。
　どうも昨日の勢いがねえな、<RUBY text="クィーンズアーミー">女王騎士団</RUBY>」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0160020a07">
「お兄さんもそう思わない？」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0160030a00">
「確かに。
　厩衆の攪乱は進駐軍の夜間空爆におさおさ
劣らぬ成果を上げたようだ」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0160040a07">
「しかもこっちが最初から腹を決めてたのに
比べて、あっちは寝耳に水だったろーからね。
　いや、寝耳に火か？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0160050a07">
「今日の喧嘩はこっちに分がありそうだ」

{	FwC("cg/fw/fw景明汚染_冷笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0160060a00">
「ああ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　今日は一二月一日。
　光が目覚める一二月四日まで、この普陀楽城を守り
通さなくてはならない。

　彼我の戦力差を考えればそれは至難だ。
　しかし、この調子で戦場の時間が過ぎてゆくなら、
案外と簡単に事は済んでしまうかもしれない。

　四日まで戦い、当座の物資をすべて使い尽くしても
なお六波羅を滅ぼせないなら、進駐軍は最後の武器に
頼る以外の選択を失うだろう。
　茶々丸、ウォルフ――緑龍会の望む通りに。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆戦場音
//◆やや低下
	MusicStart("戦闘音", 1000, 500, 0, 1000, null,true);

	SetFwC("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0160070a07">
「……？
　敵の前線が下がってる？」

{	FwC("cg/fw/fw景明汚染_冷笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0160080a00">
「見るからに士気が低いからな。
　もう少しましな部隊に替えるのではないか」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0160090a07">
「見切りが早いな。
　ま、向こうは兵力余ってるしねー」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0160100a00">
「今のうちにこちらも負傷者の搬送や補給を
済ませるべきだろう」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0160110a07">
「うい」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ピー、ガガ。スピーカーのスイッチ入れた。
	DeleteStA(300,true);

	CreateSE("SE02", "se日常_機械_スピーカースイッチON");
	MusicStart("SE02", 0, 1000, 0, 1000, null,false);

	Wait(500);

	SetVolume("戦闘音*", 3000, 1, null);

	SetNwC("cg/fw/nw拡声器の声.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ｅｔｃ／降伏勧告】
<voice name="ｅｔｃ／降伏勧告" class="その他女声" src="voice/md04/0160120e072">
《テス、テス、テス》

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("SE02", 1000, 0, null);

//◆ピー。

	OnSE("se日常_機械_PCリセット音", 1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ｅｔｃ／降伏勧告】
<voice name="ｅｔｃ／降伏勧告" class="その他女声" src="voice/md04/0160130e072">
《……六波羅のみなさん》

//【ｅｔｃ／降伏勧告】
<voice name="ｅｔｃ／降伏勧告" class="その他女声" src="voice/md04/0160140e072">
《六波羅のみなさん》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　銃声が途絶えた戦場に、代わって響き渡ったのは、
進駐軍側から放たれる拡声器を介した呼びかけだった。
　声は大和人ではないが、大和語を上手く操っている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0160150a07">
「……何だぁ？」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0160160a00">
「降伏勧告でもする気か」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0160170a07">
「あー。定番だね。
　でも時機を外してるよな」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0160180a07">
「てめーらがもっと元気な時にやりゃいいの
に」

{	FwC("cg/fw/fw景明汚染_冷笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0160190a00">
「同感だな」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　果たして拡声器の告げる内容は予想に違わなかった。
　降伏を勧める声が、堀越領衆の頭上に被さる。

　だが、露骨な反応を見せる兵はいない。
　嘲笑い、かえって勢いづく者が大半だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw拡声器の声.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ｅｔｃ／降伏勧告】
<voice name="ｅｔｃ／降伏勧告" class="その他女声" src="voice/md04/0160200e072">
《六波羅のみなさん。
　武器を捨てて、降伏しなさい》

//【ｅｔｃ／降伏勧告】
<voice name="ｅｔｃ／降伏勧告" class="その他女声" src="voice/md04/0160210e072">
《私達はあなた達を許します。
　罪人扱いはしません》

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0160220a07">
「そりゃありがたいこって」

{	NwC("cg/fw/nw拡声器の声.png");}
//【ｅｔｃ／降伏勧告】
<voice name="ｅｔｃ／降伏勧告" class="その他女声" src="voice/md04/0160230e072">
《降伏しなさい。
　六波羅のみなさん》

//【ｅｔｃ／降伏勧告】
<voice name="ｅｔｃ／降伏勧告" class="その他女声" src="voice/md04/0160240e072">
《戦い続けても、あなた達は負けます。
　降伏しなければ、死んでしまいます》

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0160250a07">
「そーかよ……」

{	NwC("cg/fw/nw拡声器の声.png");}
//【ｅｔｃ／降伏勧告】
<voice name="ｅｔｃ／降伏勧告" class="その他女声" src="voice/md04/0160260e072">
《勝つのは、私達です。
　今日の朝、古河の城は、私達のものになり
ました》

//【ｅｔｃ／降伏勧告】
<voice name="ｅｔｃ／降伏勧告" class="その他女声" src="voice/md04/0160270e072">
《あなた達に援軍はありません。
　あなた達は、勝てません》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆ボックス消してウェイト
	SetVolume("@mbgm*", 1000, 0, null);
	CreateTextureEX("絵背景100", 100, Center, -200, "cg/bg/resize/bg103_普陀楽城外郭藤沢方面_01l.jpg");
	Rotate("絵背景100", 0, @0, @180, @0, null,true);

	WaitKey(1500);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0160280a00">
「――――何だと……？」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0160290a07">
「……ッッ……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Move("絵背景100", 60000, @-250, @0, null, false);
	Fade("絵背景100", 1000, 1000, null, false);

	Wait(700);

	SoundPlay("@mbgm08", 0, 1000, false);

	SetNwC("cg/fw/nw拡声器の声.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0105]
//【ｅｔｃ／降伏勧告】
<voice name="ｅｔｃ／降伏勧告" class="その他女声" src="voice/md04/0160300e072">
《古河の城は、落ちました》

//【ｅｔｃ／降伏勧告】
<voice name="ｅｔｃ／降伏勧告" class="その他女声" src="voice/md04/0160310e072">
《篠川の軍隊は、もうここに来られません。
　古河にいる私達の仲間が通しません》

//【ｅｔｃ／降伏勧告】
<voice name="ｅｔｃ／降伏勧告" class="その他女声" src="voice/md04/0160320e072">
《あなた達に援軍は来ないのです》

//【ｅｔｃ／降伏勧告】
<voice name="ｅｔｃ／降伏勧告" class="その他女声" src="voice/md04/0160330e072">
《降伏しなさい》

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆どよどよ。動揺のざわめき
	CreateSE("SE03", "se背景_ガヤ_ざわめき01_L");
	MusicStart("SE03", 2000, 1000, 0, 1000, null,true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0160340a00">
「いかん……」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0160350a07">
「くそ！
　おいっ！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//―――――――――――――――――――――――――――――

	FadeDelete("絵背景100", 300, true);

//◆将校
	StR(1000, @0, @0, "cg/st/st茶々丸_通常_制服a.png");
	StL(1000, @0, @0, "cg/st/st六波羅将校_通常_制服.png");
	FadeStL(300, false);
	FadeStR(300, true);


	SetNwC("cg/fw/nw補佐官.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md04/0160360e247">
「はッ！」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0160370a07">
「各隊に伝令を走らせろ！
　通信じゃねえ、伝令だ！」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0160380a07">
「古河は健在。来援は間近。
　敵の虚報に踊らされるな」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0160390a07">
「――って、触れて回れ!!」

{	NwC("cg/fw/nw補佐官.png");}
//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md04/0160400e247">
「了解！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

//◆将校去る
	OnSE("se人体_足音_走る01_L", 1000);
	DeleteStL(300,false);

	SetFwC("cg/fw/fw茶々丸_歯噛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0160410a07">
「…………」

{	SetVolume("@OnSE*", 1000, 0, null);
	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0160420a00">
「……」

{	FwC("cg/fw/fw景明汚染_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0160430a00">
（……実際のところ、どう思っている？）

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　俺は付近に誰もいないのを確認してから、茶々丸の
耳元に囁いた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明汚染_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0160440a00">
（本当に進駐軍の捏造だと思うか？）

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0160450a07">
（そうならいいとは、本気で思ってるけど。
　……判断はお兄さんと同じかな）

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0160460a07">
（進駐軍が損害無視で古河を夜通し攻撃して
いたとすれば、今朝陥落ってのは、おかしな
話じゃない）

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0160470a00">
（妥当なところか……）

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0160480a07">
（うん。
　多分、古河は……本当に陥ちた……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　古河の失陥。
　
　それは、篠川からの援軍が道を閉ざされた事を意味
する。

　つまり、普陀楽城は完全に孤立し……<k>
　六波羅の敗北が至近に迫った事を意味するのだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0160490a00">
「…………」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0160500a07">
「諦めねえ」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0160510a07">
「諦めねえぞ。畜生」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　運命そのものを射殺す視線で、茶々丸が前方を睨む。
　降伏を促す声は、既に聴こえない。

　いま轟き渡るのは喊声だった。
　別人のように意気を回復した攻城軍が、怒濤と化し、
再び押し寄せて来ようとしている……。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md04_017.nss"