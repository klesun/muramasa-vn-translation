//<continuation number="310">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_003.nss_MAIN
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
	#bg097_堀越御所内景明の部屋_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_004.nss";

}

scene md02_003.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md02_002.nss"

//◆朝食。
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	OnBG(100, "bg097_堀越御所内景明の部屋_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm27", 0, 1000, true);
	Delete("上背景");
	FadeDelete("黒幕１",2000,true);

//■とりあえず朝食っぽさを inc櫻井
	CreateSE("SE01","se日常_食器_お茶準備_L");
	MusicStart("SE01",0,1000,0,1000,null,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　<RUBY text="いずのくに">伊豆國</RUBY>、堀越御所。
　
　庭に面した一間で、朝食の卓と向き合っている。

　伊豆半島は山海の幸に恵まれていると聞くが、この
品目の多さを見るに、疑念を差し入れる余地は欠片も
無さそうであった。
　気負いのない自然な膳立てにしてこの彩りは凄い。

　空腹であり、毒飼を危ぶんでいるわけでもないのに
――寝顔を晒した後でそんな警戒は馬鹿馬鹿しい――
箸の付け所に迷ってしまう。
　皿の豊富さにこちらが気負けして、目移りするのだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 3000, 0, null);

	StL(1000, @0, @0, "cg/st/st茶々丸_通常_私服.png");
	FadeStL(300, false);

	SetFwC("cg/fw/fw茶々丸_歯噛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0030010a07">
「だからさ、あてとしては言いたいわけよ。
　鯨獲るな鯨獲るなって最近にわかに喧しい
白人ども、そもそも鯨の数を激減させたのは
てめーらじゃねえかってな」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0030020a07">
「<RUBY text="あてら">大和</RUBY>の捕鯨は生態系まで破壊してねぇ。
　大量に獲れるほど船も捕鯨技術も発達して
なかったし、一頭獲れば村が半年遊べるって
くらい有効に活用してたし」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0030030a07">
「そもそも狭い島国の中のこったから需要が
そんなになかった。
　需要があったのは――世界中の海で獲りに
獲ってそれでも足りなかったのは、」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0030040a07">
「光源にするんで鯨油が幾らでも必要だった
てめーらだろうがぁ！
　<RUBY text="エイハブ">片脚船長</RUBY>どもの乱獲が鯨を滅ぼしかけてん
だよっ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばんばん
	OnSE("se人体_動作_叩く01", 1000);

	Wait(150);
	OnSE("se人体_動作_叩く01", 1000);

	Wait(150);

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0030050a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　同意も反論も難しい話題であった。

　前代大和でも鯨油を光源、また農薬としても用いる
需要があり、相当数が獲られた。今世紀に入ってから
は南氷洋へ進出し乱獲に加担もしている。
　乱獲史の長さで欧州に及ばないのは確かだが……。

　とりあえず、鯨の佃煮に箸を伸ばす。
　旨かった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_歯噛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0030060a07">
「それが何だオイ。
　光源需要がなくなった途端、エコロジーに
目覚めやがって」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0030070a07">
「絶滅の危機だから保護しましょうだー？
　それが自分らの責任を認めて反省するって
態度ならまぁ、聞く耳もあるけどさ」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0030080a07">
「あいつら反省なんてカケラもしてねーじゃ
ねえかっ！
　てめーの過去は棚に上げて、今のあてらの
捕鯨だけ問題にしてぎゃーすか非難しやがる」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0030090a07">
「ＮＡ・ＭＥ・Ｎ・ＮＡ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばんばんばんばん

	OnSE("se人体_動作_叩く01", 1000);
	Wait(150);
	OnSE("se人体_動作_叩く01", 1000);
	Wait(150);
	OnSE("se人体_動作_叩く01", 1000);
	Wait(150);
	OnSE("se人体_動作_叩く01", 1000);
	Wait(500);


	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]

//【景明】
<voice name="景明" class="景明" src="voice/md02/0030100a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　しかしそれは感情的な部分に過ぎない。
　肝要の問題は鯨を絶滅から救うことであり、それは
確かに実行されなくてはならないだろう……。

　内心でそう呟きつつ、鯨の叩きに箸を伸ばす。
　旨かった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_歯噛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0030110a07">
「近頃は連中、鯨は頭のいい動物だから殺す
のは野蛮だなんて妙なことまで言ってんな。
　アホか。じゃあその鯨の知能を解析して、
コミュニケーション取ってこう言ってみろ」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0030120a07">
「私はあなたの味方ですってな。
　賭けてもいいけど、クジラ君はツッコミの
衝動を抑えられないと思うぜ」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0030130a00">
「……確かに、妙な主張ではあります。
　知能が高いから殺すなというのは」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0030140a07">
「牛や豚は馬鹿だから食ってもいいけど鯨は
賢いからだめだってんだからな。
　何言ってんのかわかんねー」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0030150a00">
「文化の違いから来る思想の違いというもの
でしょうか」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0030160a07">
「突き詰めると、人種差別思想が起因かな。
　<RUBY text="あいつら">白人</RUBY>的には、優秀な生物はそうでない生物
よりも上等って考えは、侵略の歴史を支えて
きた馴染み深い正義なんだろ」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0030170a00">
「……成程」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　鯨の<RUBY text="あげもの">揚物</RUBY>に箸を伸ばしつつ、軽く頷く。
　そればかりとは思われないにせよ、一面の真実では
あるかもしれない。揚物は旨かった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_冷酷.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0030180a07">
「ふん、馬鹿くせぇってーの。
　あては差別なんかしないもんね。牛も豚も
鯨も平等に食う」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0030190a07">
「イルカだって食うぞ。
　それで思い出したけど一部の大和人がまた
腹立つんだよなー。捕鯨は賛成なのにイルカ
食うって聞くと『えー』とか言いやがんの」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0030200a07">
「イルカ食って悪いかオラ！
　つーか鯨はいいけどイルカはだめとか言い
出したら捕鯨反対派と同レベルだろーが！」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0030210a07">
「あてが思うに、奴らは反対派が送り込んだ
工作員だな」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0030220a00">
「……感情として、イルカ食を受け入れ難い
のは理解できます」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0030230a07">
「捕鯨反対だって感情問題やん。
　結局のところ、自分とは違う他人の文化を
どう受け止めるかって話だ」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0030240a07">
「気に食わないからって文句つけるか？
　自分とこへ押し売りに来たってんならとも
かく、よそでやってる分には構わずにおくの
が大人の態度ってもんだろ」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0030250a00">
「他文化の尊重。
　それは全く同意できます」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0030260a07">
「でしょーっ？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　うんうんと頷く堀越公方。
　
　……さて。前置きの雑談を切るには、いい頃合か。

　俺は箸を置いた。
　居住まいを正す。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

//◆ＢＧＭ：ちょっと緊迫っぽいの

	SoundPlay("@mbgm16", 0, 1000, true);


	SetFwC("cg/fw/fw茶々丸_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0030270a07">
「あれ、もういいの？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0030280a00">
「は。充分に頂きました。
　……本題へ入りたく思うのですが、宜しい
でしょうか」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0030290a07">
「？　なに？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　<RUBY text="とぼ">惚</RUBY>けるかの足利茶々丸を、俺は正面から見据えた。
　そうして息を吐き――吸い。

　心胆を定めて問う。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0030300a00">
「銀星号は、今――ここにいるのですね？」

{	SetVolume("@mbgm*", 300, 0, null);
	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0030310a07">
「今？　いないよ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　本題は、四秒で済んだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md02_004.nss"