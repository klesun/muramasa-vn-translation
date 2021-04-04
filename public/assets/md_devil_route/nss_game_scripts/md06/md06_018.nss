//<continuation number="740">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_018.nss_MAIN
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
	#bg112_川沿いの道a_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_019.nss";

}

scene md06_018.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md06_017.nss"


//◆翌日、川沿い

//冒頭音楽流れないのはわざとです inc櫻井

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");
	CreateSE("SEL01","se自然_水_流れる01_L");
	MusicStart("SEL01",2000,500,0,1000,null,true);
	OnBG(100, "bg112_川沿いの道a_01.jpg");
	FadeBG(0, true);
	Delete("上背景");
	FadeDelete("黒", 1500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　あっさりしたものであった。

　昨日の夕、不恰好ながらもどうにか仕上がっていた
橋の土台は、一夜明けた今、<RUBY text="ビーバー">海狸</RUBY>の巣に変貌している。
　見事なまでの倒壊ぶりだった。これを見て、ここに
橋を建てる構想があったと思う者はいまい。

　倒壊の所以は一見して明らかだ。
　雨による増水に耐えられなかったのだろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm30", 0, 1000, true);


	SetNwC("cg/fw/nw小柄な難民.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0180010e228">
「…………」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0180020e227">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　橋造りの仲間は、黙って惨状を眺め下ろしている。
　声を出す気力もない様子だった。

　俺もほぼ同様だ。

　石地蔵となって立ち並ぶ背後を、近隣に住む人々が
行き交う。
　時折、聞こえよがしな嘲笑が届いた。

　……見立てが甘かった。

　最大の失敗は、基礎となる杭の浅さだろう。
　川底の軟弱さを考慮して深くまで打ち込んだつもり
だったが、まだ足りなかったのだ。

　他にも思い当たる節はある。
　その多くは、作業中から既に気付きつつもおそらく
大丈夫だろうと皆で楽観し、見過ごしにしてしまった
事柄だ。

　もっと慎重に工事をするべきだった……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0180030a00">
「まずは問題点を整理しましょう」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0180040e227">
「……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0180050a00">
「その上で設計からやり直し――」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0180060e228">
「……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0180070a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　誰も返答しない。
　俺の言葉に応えるのは、彼らが呼吸と共に吐き出す
濃い徒労感だけだった。

　無理もない話だ。
　報われず、無駄に終わる事も覚悟の上での作業では
あったが、本当に全く無駄になったのを見て落胆せず
にいられるものではないだろう。

　俺としても励ます方法が思いつかない。
　……とりあえず、残骸の回収を始めておくとしよう。

　俺は川へ踏み込み、前衛芸術化している材木に手を
掛けた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw老人.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0180080e307">
「あぁー……ったく」

//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0180090e307">
「見てられねえ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0180100a00">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　不意の声は、昨日の老人だった。
　今日も格好だけ煙管を咥えつつ、こちらへずかずか
と歩いてくる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw老人.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0180110e307">
「おい」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0180120a00">
「はい」

{	NwC("cg/fw/nw老人.png");}
//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0180130e307">
「おめぇら、全員<RUBY text="トーシロ">素人</RUBY>だな」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0180140a00">
「は……
　誰も橋を建てた経験は有りません」

{	NwC("cg/fw/nw老人.png");}
//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0180150e307">
「大工やってた奴すらいねえだろう」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0180160a00">
「お察しの通りです」

{	NwC("cg/fw/nw老人.png");}
//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0180170e307">
「それでよく橋を造ろうなんて考えたな。
　口の利けねえ奴が漫才やるようなもんだ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0180180a00">
「……そこまで困難な事ですか」

{	NwC("cg/fw/nw老人.png");}
//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0180190e307">
「おれは隠居してるが、昔は大工だ。
　橋を造ったことも何度かある」

//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0180200e307">
「動かない地面の上に建てる家より、流れる
川と付き合わなきゃいけねえ橋は余計に面倒
だったさ」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0180210a00">
「……成程」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　そういうものかもしれない。
　素人だけでやろうとしたのがそもそも無理だったと
いう事か……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0180220a00">
「御老人」

{	NwC("cg/fw/nw老人.png");}
//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0180230e307">
「ん？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0180240a00">
「元大工で、しかも橋造りの経験者でもあら
れる貴方の力をお貸し願えませんか」

{	NwC("cg/fw/nw老人.png");}
//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0180250e307">
「…………」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0180260a00">
「助言して下さるだけで良いのです。
　どうか――」

{	NwC("cg/fw/nw老人.png");}
//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0180270e307">
「その気がなけりゃ、声掛けたりしねえよ」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0180280a00">
「では」

{	NwC("cg/fw/nw老人.png");}
//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0180290e307">
「そっちのおめぇら！」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0180300e228">
「……？」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0180310e227">
「え？」

{	NwC("cg/fw/nw老人.png");}
//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0180320e307">
「今からおれの言う通りに動け。
　まず、そのガラクタを片付けるんだ」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0180330e228">
「……」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0180340e227">
「……」

{	NwC("cg/fw/nw老人.png");}
//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0180350e307">
「ぼさっとしてんじゃねえ！
　橋を造るんだろうが！」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0180360e228">
「あ……」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0180370e227">
「お、おう……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆転換

	CreateColorSP("黒幕", 25000, "#000000");
	DrawTransition("黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


	DrawTransition("黒幕", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕");

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0180380a00">
「では、土台はこのようにするとして……
　脚は？」

{	NwC("cg/fw/nw老人.png");}
//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0180390e307">
「この川幅でそんなの要らねえよ。
　ゴミを引っ掛けるだけ、無い方がマシだ」

//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0180400e307">
「そのぶん<RUBY text="きょうだい">橋台</RUBY>をしっかり作っとけ」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0180410a00">
「は、諒解しました」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0180420e109">
「……？
　<RUBY text="くめ">粂</RUBY>の爺さんじゃねえか。何やってんだ」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0180430e110">
「そいつらを手伝ってるのか？」

{	NwC("cg/fw/nw老人.png");}
//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0180440e307">
「まぁな。
　おめぇら、今日は休みか」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0180450e110">
「そうだけど……」

{	NwC("cg/fw/nw老人.png");}
//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0180460e307">
「なら手を貸せ」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0180470e109">
「はァ？
　おいおい、なんで俺達がそんなこと」

{	NwC("cg/fw/nw老人.png");}
//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0180480e307">
「ぐだぐだ抜かすな。
　どうせここの橋は無いと困るんだろうが」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0180490e109">
「そりゃ……そうだが」

{	NwC("cg/fw/nw老人.png");}
//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0180500e307">
「こいつらに任せてたらいつまで待ってても
出来ねえぞ」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0180510e110">
「…………」

{	NwC("cg/fw/nw老人.png");}
//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0180520e307">
「さっさと着替えてきな。
　あと、他にも暇な奴がいたら連れて来い」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0180530e110">
「……どうする？」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0180540e109">
「どうもこうも。
　…………仕方ねえだろう」

//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0180550e109">
「まったく、爺さんには敵わねえ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆川沿い
//◆とんてんかん

	CreateColorSP("黒幕", 25000, "#000000");
	DrawTransition("黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	CreateSE("橋", "se背景_ガヤ_橋建設中01_L");
	MusicStart("橋", 0, 1000, 0, 1000, null,true);


	DrawTransition("黒幕", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕");


	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0180560a00">
（……何とも……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　予想せぬ光景だった。

　旧来の住民と新参の難民が、共に立ち働いている。
　一つのものを造るため――協力して。

　彼らは和解してはいない。

　言葉を交わす事はなく、笑顔を向け合う事もない。
　時折交差する視線は冷たく、相手への不信感を隠し
切れていない。

　それでも。
　
　――重い材木を担ぎ出す時。
　――川底へ杭を打ち込む時。

　一人では手に余る作業を、別の一人が手伝い、その
両者が住民同士でも難民同士でもない事がある。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0180570a00">
（これならば）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　時間は掛かるだろう。
　障害は多いだろう。

　だが、いずれ――――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆転換

//ここで音楽を消し、不穏な気配を演出する inc櫻井
	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("橋", 1000, 0, null);



	CreateColorSP("黒幕", 25000, "#000000");
	DrawTransition("黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


	DrawTransition("黒幕", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕");


	SetNwC("cg/fw/nw馬面の男.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0180580e110">
「これも現場に運んだ方がいいんじゃないか」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0180590e109">
「そうだな……」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ざっ。誰か来た
	OnSE("se人体_動作_一歩", 1000);

	SetNwC("cg/fw/nw太った男.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0180600e109">
「ん？」

//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0180610e109">
「なんだ、あんたか」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0180620e110">
「こないだの話かい？
　悪いけどさ、あんたらには頼まないことに
決まったよ。払う金がないもんでね」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　
　　　　　「――――――――
　　　　　　――――――――」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw馬面の男.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0180630e110">
「……はぁ？」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0180640e109">
「何？
　何だって……？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆転換

	CreateColorSP("黒幕", 25000, "#000000");
	DrawTransition("黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


	DrawTransition("黒幕", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕");


	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0180650a00">
「橋の広さは、人間一人が通れる程度で良い
のでしょうか」

{	NwC("cg/fw/nw老人.png");}
//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0180660e307">
「もう少しあった方がいいな。
　二人がすれ違えるくらいに……そうすりゃ
荷車も通れる」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0180670a00">
「それは確かに便利です。
　しかし、資材が足りないかもしれません」

{	NwC("cg/fw/nw老人.png");}
//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0180680e307">
「心配すんな。
　いざとなりゃあ、おれが昔の仕事場に掛け
合ってやるよ」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0180690a00">
「……御造作を掛けます」

{	NwC("cg/fw/nw老人.png");}
//【ｅｔｃ／老人】
<voice name="ｅｔｃ／老人" class="その他男声" src="voice/md06/0180700e307">
「へッ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆転換

	CreateColorSP("黒幕", 25000, "#000000");
	DrawTransition("黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


	DrawTransition("黒幕", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕");


	SetNwC("cg/fw/nw馬面の男.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0180710e110">
「……」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0180720e109">
「……」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0180730e110">
「……あのとっぽい兄ちゃんが……？」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0180740e109">
「まさか……なぁ？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md06_019.nss"