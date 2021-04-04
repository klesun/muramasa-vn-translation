//<continuation number="440">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_011.nss_MAIN
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
	#bg033_普陀楽城宿舎_01=true;
	#bg050_普陀楽城宿舎前_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb02_012.nss";

}

scene mb02_011.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mb02_010.nss"

//◆宿舎・昼
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg033_普陀楽城宿舎_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm16",0,1000,true);

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0110010a02">
「じゃあ、足利邦氏を」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0110020a00">
「……うむ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　一条の確認に、頷いてみせる。
　……俺の考慮の及ぶ範囲ではそれが最善手だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0110030a02">
「首を取りますか」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0110040a00">
「いや」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　慌てて手を振る。
　冗談にでも頷こうものなら、その瞬間に飛び出して
いきかねない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0110050a00">
「それはやり過ぎだ。
　舞殿宮殿下の構想を裏切る結果になる」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0110060a02">
「はぁ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　そもそも、たった二騎でそんな暴挙が成功する筈も
ない。
　差し違え覚悟でも見込みは無かろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0110070a00">
「なるたけ派手に襲撃を掛けるだけでいい。
　ある程度は警備網も突破し、邦氏の身命を
それなりに脅かす……その辺りが最良だ」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0110080a02">
「それでいいんですか？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0110090a00">
「それで充分、遊佐童心の責任は問われる。
　宿老筆頭からの転落は免れないだろう」


//【景明】
<voice name="景明" class="景明" src="voice/mb02/0110100a00">
「その分、今川雷蝶が権勢を伸長させる。
　彼と結ぶ宮殿下の政治影響力も強まる……
という事だ」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0110110a02">
「……なるほど」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　言葉ほどは納得してない様子ながら、一条が頷く。
　彼女の性質は全く政治事向きではない。消化不良が
残るのは仕方のないところだろう。

　無益に説明を重ねるのは止めて、俺は話を転じた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0110120a00">
「後は具体的な計画だ。
　まず、日時だが……」


//【景明】
<voice name="景明" class="景明" src="voice/mb02/0110130a00">
「聞けば明日の夕刻、能舞台があるという」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0110140a02">
「能……？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0110150a00">
「ああ。遊佐童心の主催でな。
　本丸の能楽堂を使うそうだ」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0110160a02">
「あのでっかいとこですか」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0110170a00">
「しかし外部の客は招かず、あくまで内輪の
催しらしい。
　となると城内から相当数の人間が招かれる
のだろう」


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0110180a02">
「じゃあ、その隙に？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0110190a00">
「といければ楽だろうが、邦氏が招かれない
筈もないな。
　無論、能舞台を襲うのは下策だ。六波羅の
要人が集う以上、警備は厳重に決まっている」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0110200a02">
「……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0110210a00">
「むしろ狙うのは終わった後、警備の人間が
気を抜く瞬間――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

//◆ウェイト
	Wait(1000);

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0110220a02">
「……どうしました？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　突如話をやめた俺に、一条が不思議そうに問う。
　片手を伸ばして、その口を塞いだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0110230a02">
「……!?」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0110240a00">
（足音がする。
　誰かが近付いている）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　相手に読唇術の心得を要求する程度の小声で囁く。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0110250a02">
（……あの密偵女じゃないんですか？）


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0110260a00">
（足音は二人分だ）


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0110270a02">
（……）


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0110280a00">
（迂闊に口を利くな）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　一条が目で了解を伝えてくるのを見て、手を離す。
　とりあえず……様子を窺うか。

　そう思って立ち上がると同時だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw岩田_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0110290b20">
「改！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　中年女性の声。
　今川家の<RUBY text="エージェント">密偵</RUBY>――岩田のものに間違いない。

　但し、<RUBY text="・・・・">呼び捨て</RUBY>。
　それは<RUBY text="あらかじ">予</RUBY>め定めておいたルールだった。

　第三者が側にいる時のルール。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆家の前
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg050_普陀楽城宿舎前_01.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);
	SoundPlay("@mbgm30",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　一条を残して、玄関へ出る。
　そこには予想通りの岩田女史と、それよりは幾らか
若い見知らぬ女がいた。

　……いや。
　一見して、地位は低くないと知れるこの女官。何処
かで遭遇した事はあった、か？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0110300a00">
「これは、岩田様……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　こちらも定めていた通りの敬称で迎える。
　女史は鷹揚に頷くと、背後の女官に位置を譲った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw岩田_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0110310b20">
「この者が改でございます」


{	NwC("cg/fw/nw女官.png");}
//【ｅｔｃ／女官】
<voice name="ｅｔｃ／女官" class="その他女声" src="voice/mb02/0110320e123">
「ふん……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　鼻を鳴らして進み出た女が、妙に険しい眼差しで俺
を露骨に値踏みする。
　ともかく恐縮の態を装い、俺は頭を下げた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw女官.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【ｅｔｃ／女官】
<voice name="ｅｔｃ／女官" class="その他女声" src="voice/mb02/0110330e123">
「そなた、新参の者であったそうじゃのう」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0110340a00">
「……は」


{	NwC("cg/fw/nw女官.png");}
//【ｅｔｃ／女官】
<voice name="ｅｔｃ／女官" class="その他女声" src="voice/mb02/0110350e123">
「先日の振舞いはその<RUBY text="せい">所為</RUBY>か。
　それにしても……と思うが」


//【ｅｔｃ／女官】
<voice name="ｅｔｃ／女官" class="その他女声" src="voice/mb02/0110360e123">
「まあ良い。
　岩田、部下は良く教育しておけ」


{	FwC("cg/fw/fw岩田_通常.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0110370b20">
「はい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　……思い出した。
　足利四郎の側に仕えていた女官の一人だ。

　あの折の無礼を根に持ち、所属を調べ上げて叱責を
加えに来たというのだろうか。
　だとすれば……随分と暇な話だが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0110380a00">
「先日は御無礼致しました。
　今後は慎みます故、何とぞ御寛恕の程を」


{	NwC("cg/fw/nw女官.png");}
//【ｅｔｃ／女官】
<voice name="ｅｔｃ／女官" class="その他女声" src="voice/mb02/0110390e123">
「ふん……！
　邦氏殿下が許すと仰せられたものを、私が
許さぬとは言えまいの」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　陰湿な口調でそう告げて、女官は顔を背けでもした
ようだった。
　頭を上げられぬこちらからは見えないが。

　何にせよ、これで用事が済んだなら帰るだろう。
　そう思い、女官の両足が俺の視界から消え去るのを
待つ――だが、それは動かなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0110400a00">
「……？」


{	NwC("cg/fw/nw女官.png");}
//【ｅｔｃ／女官】
<voice name="ｅｔｃ／女官" class="その他女声" src="voice/mb02/0110410e123">
「改とやら」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0110420a00">
「は」


{	NwC("cg/fw/nw女官.png");}
//【ｅｔｃ／女官】
<voice name="ｅｔｃ／女官" class="その他女声" src="voice/mb02/0110430e123">
「ついて参れ。
　殿下がそなたをお呼びです」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0110440a00">
「……はっ？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb02_012.nss"