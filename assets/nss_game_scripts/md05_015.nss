//<continuation number="290">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_015.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/md05_015.nss","TurboBlur3",true);
	

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
	#bg041_片瀬海岸_03=true;
	#bg001_空d_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md05_016vs.nss";

}

scene md05_015.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md05_014b.nss"


//◆夜の海岸？

	PrintBG("上背景", 30000);
	CreateColorSP("白", 5000, "WHITE");

//	SoundPlay("@mbgm30", 0, 1000, true);

	CreateSE("umi", "se自然_水_浜辺の波01_L");
	MusicStart("umi", 0, 1000, 0, 1000, null,true);

	CreateTextureEX("ワープ演出", 4500, @0, @0, "cg/bg/bg041_片瀬海岸_03.jpg");
	Zoom("ワープ演出", 0, 1500, 1500, null, true);
	DrawEffect("ワープ演出", 50, "SuperWave", 0, 500, null);
	Fade("ワープ演出", 0, 500, null, true);


	OnBG(100, "bg041_片瀬海岸_03.jpg");
	FadeBG(0, true);

	Delete("上背景");

	FadeDelete("白",1500,true);

	Fade("ワープ演出", 1000, 0, null, true);
	Delete("ワープ演出");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　静かであった。
　小波の打ち寄せる音のほかに、耳を煩わせるものは
何もない。

　いつかの夜、どこかの浜辺。
　妖しい気配も、逆巻く風も、炎の猛りも、ここには
なかった。穏やかな世界だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0150010a00">
「……まだか。
　しかし、一息つけるな」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0150020a01">
《そうね。
　それに時間はともかくとして、ここは大和
みたいだし》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　村正の見解に、首肯する。
　これは大和の海だ。おそらく太平洋側。

　空を見れば、星空の様相もその仮定を裏付ける。
　慣れ親しんだ星座が見え、月も――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0150030a00">
「……………………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0150040a01">
《？　どうしたの？》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0150050a00">
「月が」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0150060a01">
《月？》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0150070a00">
「……割れている」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0150080a01">
《は？
　……ちょっと、突拍子もないこと言わない
でよ》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0150090a01">
《落ち着きなさい。
　月は満ち欠けするけど、割れたりなんて》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆割れた月
	CreateColorSP("黒幕１", 3100, "#000000");
	DrawTransition("黒幕１", 100, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	CreateTextureSP("にゃがー", 3000, @0, @0, "cg/bg/bg001_空d_03.jpg");
	CreateTextureSP("にゃがー大", 3000, @0, @0, "cg/bg/bg001_空d_03.jpg");
	Request("にゃがー大", Smoothing);
	Zoom("にゃがー大", 0, 2000, 2000, null, true);
	Move("にゃがー大", 0, @0, 250, null, true);

	SetBlur("にゃがー大", true, 2, 500, 100, false);

	DrawTransition("黒幕１", 100, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("黒幕１");

	Wait(500);

	Move("にゃがー大", 300, @0, 0, Dxl2, false);
	Zoom("にゃがー大", 300, 1000, 1000, Dxl2, true);

	Delete("にゃがー大");
	Wait(500);

//■ガガーンとかＳＥつけるべき？　inc櫻井

	OnSE("se擬音_コミカル_ガーン02",1000);

	SetFwR("cg/fw/fw村正蜘蛛_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0150100a01">
《にゃがーーーーーー!?》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　割れていた。
　何度見ても。錯覚と決め込んで見直しても。

　地球の至宝、美しき衛星は完全に割れて砕けていた。

　満月……なのだろう。本当なら。
　それが、床に落とした皿の如き惨状を呈している。

　……月の誕生についての一説を思い出した。
　地球周辺に漂っていた物質が引力の影響で集積し、
やがて月を形成したのだと云う――

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0150110a01">
《ちょっ、なっ、ながにゃんでつつつつき》

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0150120a00">
「落ち着け」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　錯乱して異界の言語を喋り始めた村正を遮る。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//話をしながら元に戻るというような演出ですが、trueにしたほうが良いのなら1000,trueで inc櫻井

	FadeDelete("にゃがー",2000,false);
	Wait(500);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0150130a00">
「ここが数万年……どころではないか……
　数億年以上昔の地球上という可能性はある
か？」

{	FwC("cg/fw/fw村正蜘蛛_冷汗.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0150140a01">
《え？
　えーっと……》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0150150a01">
《だいたい数百年の枠の中で動いていたはず
だし、それはないと思うけど……。
　周りも、そんな風には見えないし》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　同意できる。
　月が生まれたのは、確か――<k>地球とほぼ同時と聞く。
そうなると数億年前ですらない、数十億年前だ。

　とてもではないが、ここがそんな太古の地球上とは
思えない。
　
　すると……どういう事なのか。

　ここが月の生成過程にあたる時代ではないなら。

　……未来？
　将来、月は何らかの理由で割れるのか？

　人類の月面開発が未曾有の大失敗を犯すのだろうか。
　あるいは異星人との決戦場に――？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0150160a01">
《…………》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0150170a00">
「…………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0150180a01">
《あっ》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0150190a00">
「……む？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　村正は混乱が尾を引き、俺は頭がＳＦ方向へ進んで
いたせいだろう、それに気付くのが遅れた。
　
　人がいる。

　足跡を点々と残しつつ、歩いてゆく影。
　俺から見えるのは後姿であり、暗くもあって、良く
判然としないが――どうやら女性か。

　彼女は離れていこうとしていた。
　しかし、何かを感じたのだろう。

　不意にこちらへ、振り返る。
　まずい――と思ったが、どうにもできなかった。

　幾許かの距離を置いて対面する。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一条（三年後）

	StC(1000, @0, @0, "cg/st/st一条三年後_通常_私服.png");
	FadeStC(500, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　……知らない女性だ。

　俺は彼女に出会った事はない。
　それは断定を下せる。が……何か、記憶を刺激する
ものがあった。

　全貌には覚えがないのに、部分部分が引っ掛かる。
　例えば、あの双眸――

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw一条三年後_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【一条】
<voice name="一条" class="一条" src="voice/md05/0150200a02">
「…………」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　忽然と現れた武者――だろう、彼女にすれば――を
見て、そこには動揺の片鱗も湧かなかった。
　この景色のようにただ静かで、
　ほんの小さく波立っている。

　遠い過去を見る眼差しだった。
　あるいは、己の心を見詰める眼。

　彼女は何も言わず、俺も、何一つ口にできなかった。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆一条消す

	DeleteStC(500,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　数秒だけ止まったその足取りが、再び前方へ向かう。
　歩き去ってゆく。
　
　真っ直ぐに。

　彼女はもう止まる事も、振り返る事もなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0150210a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆空間ぶれ

	CreatePlainEX("絵板写", 100);

	OnSE("se特殊_その他_空間歪曲",1000);

	DrawEffect("絵板写", 36000, "MiddleWave", 30, 30, null);

	Fade("絵板写", 500, 900, null, false);
	Zoom("絵板写", 1000, 1300, 1300, AxlDxl, false);

	Wait(500);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0150220a01">
《御堂》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0150230a00">
「ああ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　時空間の歪みが生じている。
　ここからも無事、抜け出せるようだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0150240a01">
《今の、誰？》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0150250a00">
「知らない」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0150260a01">
《……本当？》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0150270a00">
「なぜ疑う」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0150280a01">
《……まぁいいけど。
　それより、気をつけて》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0150290a01">
《多分、これで元に――》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆移動
	SetVolume("umi", 1000, 0, null);

	CreateSEEX("SE01","se戦闘_攻撃_エネルギー鬩ぎ合い01_L");
	OnSE("se戦闘_動作_鉄壁吹っ飛ばす", 1000);

	MusicStart("SE01",0,1000,0,1000,null,true);

	CreateColorSP("黒幕１", 25000, "WHITE");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);


	CreateColorSPadd("白", 2500, "WHITE");


	CreateTextureSP("瞬間移動", 1000, @0, @0, "cg/ef/ef039_時間移動.jpg");

	CreateColorEXadd("絵色100", 2000, "WHITE");
	Fade("絵色100", 0, 500, null, true);

	$Warpトランジ = @絵色100;
	$Warpトランジ速度 = 500;
	$Warpトランジなめらかさ = 500;



	CreateTextureEXadd("絵背景効果線", 1500, Center, Middle, "cg/ef/resize/ef039_時間移動l.jpg");
	SetVertex("絵背景効果線", 800, 420);
	$効果ナット名 = @絵背景効果線;


	CreateProcess("プロセス２", 150, 0, 0, "TurboBlur");
	SetAlias("プロセス２","プロセス２");
	CreateProcess("プロセス３", 150, 0, 0, "TurboBlur3");
	SetAlias("プロセス３","プロセス３");


	Request("プロセス２", Start);
	Request("プロセス３", Start);

	Delete("上背景");
	FadeDelete("黒幕１",1000,true);
	Fade("白", 1000, 0, null, true);


	Wait(3500);

	SetVolume("SE*", 1500, 0, null);
	SetVolume("OnSE*", 1500, 0, null);
	SetVolume("@mbgm*", 1500, 0, null);

	Fade("白", 1500, 1000, null, true);

	Wait(1000);

}

..//ジャンプ指定
//次ファイル　"md05_016vs.nss"


function TurboBlur3()
{

	while(1){

	DrawTransition($Warpトランジ, $Warpトランジ速度, 0, 1000, $Warpトランジなめらかさ, Axl2, "cg/data/circle_01_00_0.png", true);
	DrawTransition($Warpトランジ, $Warpトランジ速度, 1000, 0, $Warpトランジなめらかさ, Dxl2, "cg/data/circle_01_00_1.png", true);

	}

}