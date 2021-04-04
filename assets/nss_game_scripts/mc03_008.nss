//<continuation number="1100">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_008.nss_MAIN
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
	#ev177_香奈枝の野点=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc03_009.nss";

}

scene mc03_008.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc03_007.nss"


//◆空
	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 10000, "#000000");

	OnBG(100, "bg001_空b_01.jpg");
	FadeBG(0, true);

	Delete("上背景");
	FadeDelete("絵色黒",1500,true);

	SoundPlay("@mbgm18", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　大鳥獅子吼を殺すと、彼女は言った。
　<RUBY text="びわ">枇杷</RUBY>の花を愛でながら。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆庭園

	OnBG(101, "bg053_永倉家の庭_01.jpg");
	FadeBG(2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　<RUBY text="のだて">野点</RUBY>の席上。
　塗壁に堰き止められて冬風は届かず、太陽は中天に
あってぽかぽかと暖かい光を投じ、永倉邸の庭は季節
外れの風流を許容し得る環境にある。

　質朴無骨な備前焼の茶碗を、俺は両手で受け取った。
　掌に熱さを覚えるほど高温の茶が、器の底に溜まっ
ている。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateTextureEX("野点", 3000, @0, @0, "cg/ev/ev177_香奈枝の野点.jpg");
	Fade("野点", 1000, 1000, null, true);

	SetFwR("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080010a00">
「……これは。
　お気遣い下さいましたか」


{	FwR("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080020a03">
「お好みに沿えばよろしいのですけれど」


{	FwR("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080030a00">
「実に。
　この肌合いは自分の嗜好そのものです」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　俺の茶の作法は学生時代に茶道部で習い覚えたもの
だが、その頃最も頻繁に使用したのもこの簡雅な茶碗
だった。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080040a03">
「良かった。
　でも、どうしてその茶碗が景明さまの趣味
に合わせたものだとお気付きに？」


{	FwR("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080050a00">
「大尉殿のご趣味であれば、京焼か、絵唐津
ではないかと思いましたので」


{	FwR("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080060a03">
「残念。
　それは外れです」


{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080070a00">
「……む。
　ならば、志野？」


{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080080a03">
「嫌いではありませんけれども」


{	FwR("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080090a03">
「わたくしの好みなら、楽焼です。
　わけても<RUBY text="くろらく">黒楽</RUBY>が」


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080100a00">
「……それはまた<RUBY text="ストイック">禁欲的</RUBY>な」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　偏見ながら、あまり女性らしい趣味とは思われない。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw香奈枝_笑顔.png");

//嶋：修正（見えれ）【090930】
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080110a03">
「そうでしょうか。
　……わたくしにはむしろ、世俗性の極致と
見られます」


{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080120a00">
「あの漆黒が」


{	FwR("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080130a03">
「ええ。
　まるでこの世の万物が溶け込んだよう」


</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　黒色を排他の結実と見れば禁欲。
　しかし濫飲の結実と見れば俗悪。
　
　……成程。見方の違いか。

　俺は掌中の茶碗に視線を落とした。
　黒に近い褐色の陶器が、適度に泡立てられた抹茶を
包んでいる。

　その景色はどちらかと言うなら、香奈枝嬢の見解を
肯定するものと思えた。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080140a00">
「……大尉殿。
　銀星号の事は、間違いないのですか」


{	FwR("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080150a03">
「はい。どうやら。
　銀星号は確かに出現していたようです」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080160a03">
「爆弾が落とされたあの時、普陀楽城に」


{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080170a00">
「……そして……」


{	FwR("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080180a03">
「爆弾はどうしたわけか――まぁ新兵器なん
てそんなものかもしれませんが――城塞全体
を破砕はできず、半壊させる程度に留まった。
　それでも爆心地は<RUBY text="・・・">砂漠化</RUBY>したそうですけど」


{	FwR("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080190a03">
「銀星号は、丁度」


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080200a00">
「その――爆心地に？」


{	FwR("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080210a03">
「……断定はできません。
　ただ、普陀楽城の生存者は相当数いたにも
拘わらず、爆発後に銀星号の姿や痕跡を目撃
したと言う者は皆無なのです」


{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080220a00">
「――――」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　では。
　銀星号は……
　
　あいつは、

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080230a00">
「死んだ、のでしょうか」


{	FwR("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080240a03">
「わかりません……」


{	FwR("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080250a00">
「……」


{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080260a03">
「奇妙な噂もあります」


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080270a00">
「とは？」


{	FwR("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080280a03">
「不審な一団が爆心地から何か――<RUBY text="・・・・">光るもの</RUBY>
を掘り出し、それを携えて会津へ向かう落ち
武者の列に加わった、とか」


{	FwR("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080290a00">
「…………」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　茶を啜り、喉から胃に落とす。
　腹の内側がかっと熱くなった。

　……苦い。
　……甘い。

　飲み口を指先で拭う。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080300a00">
「普陀楽城を脱出し、会津へ入った幕府軍は
どの程度の規模なのでしょう」


{	FwR("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080310a03">
「それも、正確には。
　けれど少なくとも万単位」


{	FwR("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080320a03">
「篠川軍を加えて、獅子吼に進駐軍との一戦
を決意させるだけの戦力規模に達しているの
は間違いありません」


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080330a00">
「……大鳥中将<RUBY text="・">が</RUBY>進駐軍に挑むと？
　ＧＨＱの方で会津侵攻を企むのは理解でき
ますが」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　何しろ、そうして六波羅完全打倒を達成しない限り
『圧制からの解放者』という支配根拠が手に入らない。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080340a00">
「篠川公方にすれば、ここはまず手段を尽く
して和平の道を探る局面なのでは。
　最終的な決裂は避けられずとも、幾らかの
時間稼ぎになるなら、それはそれで充分な利」


{	FwR("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080350a00">
「彼は軍の再編に要する時間を千金に代えて
でも欲する筈です」


{	FwR("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080360a03">
「ええ、普通なら。
　けれど<RUBY text="・・・">あの男</RUBY>は違います」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080370a03">
「今朝、邦氏殿下と大鳥家現当主――花枝の
婚約予定が発表されました」


{	FwR("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080380a00">
「……」


{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080390a03">
「もちろん、これは獅子吼が六波羅の全権を
掌握するための段取りです。
　御台所の一門であれば、幕府を宰領しても
何の不思議もありませんから」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080400a03">
「こんな性急な手段で権力基盤を固めるのは、
性急に権力を行使する意図があるため……
　と、お考えになりませんか？」


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080410a00">
「即ちそれは、進駐軍との決戦以外にないと。
　……成程」


{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080420a03">
「会津に引き篭もっていても道は開けない。
　乾坤一擲、一戦にて命運を占うべし」


{	FwR("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080430a03">
「まぁ、そんなところでしょう」


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080440a00">
「しかしそれならそれで、優先して済ませる
べき問題が数多くあるのでは？
　自分を大樹家の外戚に据えるのが第一とは、
得心がいきません」


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080450a00">
「そんなものは言ってしまえば形式です。
　篠川軍団を隷下に置く大鳥獅子吼にとって、
さほど重視する必要のある事柄ではない筈」


{	FwR("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080460a03">
「その形式に拘泥するのが獅子吼なのです」


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080470a00">
「……」


{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080480a03">
「形式、筋道、道理。
　それがあの男のすべて」


{	FwR("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080490a03">
「骨の髄からの形式主義者」


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080500a00">
「……いや、しかし大尉。
　そんな男が」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　<RUBY text="・・">あの</RUBY>六波羅の中で重きをなせるものなのか？
　実力主義の席巻する組織にあれば、形式主義者など
早々に追い落とされるのではないか……？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080510a03">
「彼の非凡なところは形式に実質を必ず追随
させる点にあります。
　形式と実質の間に差を生じさせません」


{	FwR("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080520a03">
「婚約が執り行われるのはわずか三日後。
　獅子吼はそれから権力を握るのではなく、
その時<RUBY text="・・">には</RUBY>全権限を握っています」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080530a03">
「六波羅全軍は統制を取り戻し、即時行動を
開始するでしょう。
　……三日後。婚約式が終わった瞬間にも」


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080540a00">
「……真逆……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　軍事常識、いや政治常識にも完全に背いている。
　未曾有の事態に瓦解寸前まで混乱した筈の幕府組織
を、あと三日の内に体制上は復旧させる――などと。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080550a03">
「それが獅子吼です」


{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080560a00">
「…………」


{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080570a03">
「だから。
　――その前に手を打ちます」


{	FwR("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080580a03">
「獅子吼個人の戦争に大和の運命を委ねはし
ません。
　あの男を暗殺します」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　その一言に、どこか奇妙な響きを俺は聴いた。
　大和の国民に対する責任感。父親を殺害した男への
復讐心。そこまではわかる。

　だが、それ<RUBY text="・・">以外</RUBY>の<RUBY text="ノイズ">雑音</RUBY>。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080590a03">
「足利護氏は既に亡く、古河、小弓、堀越の
公方もおそらく今は普陀楽の土。
　そして獅子吼をも失えば、六波羅はもはや
崩壊を避けられません」


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080600a00">
「指導者たれる実力の持ち主が、もういない」


{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080610a03">
「ええ」


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080620a00">
「しかし大尉、それは結局、ＧＨＱを利する
だけなのではありますまいか」


{	FwR("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080630a03">
「統率を失った会津に、進駐軍が攻め寄せて
来る？」


{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080640a00">
「はい。
　――――いや。そうか」


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080650a00">
「攻める意味がない……」


{	FwR("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080660a03">
「そうなりますでしょ？
　獅子吼を失った六波羅は勝手に滅びてゆく。
進駐軍の手はあえて必要ありません」


{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080670a03">
「無用の戦争をしても、大和国民からの信頼
が得られる道理はなし」


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080680a00">
「ＧＨＱは大和支配の戦略を一から見直さね
ばならなくなる。
　……とはいえそれも、大和の固有軍事力が
失われた状況ならさして困難もないでしょう」


{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080690a03">
「ですね。
　けれどそこは、<RUBY text="・・・・・・・・・">生き延びて頂いた方</RUBY>に手腕
を期待しても良いのではないかしら？」


{	FwR("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080700a03">
「頭を失った六波羅軍を手中に収める、程度
のことは。それも出来ず引き篭もってるだけ
なんて、あんまりにも甲斐性なしですもの。
　ねぇ？」


{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080710a00">
「……御本人にも言い分があろうと思われま
すが」


{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080720a03">
「訊いておきましょうか」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　その人物がいま何処でどうしているのか、承知して
いる口ぶりだった。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080730a03">
「景明さまは、いかが？」


{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080740a00">
「……は」


{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080750a03">
「どのように思われます？」


</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　このプランを、という意味だろう。無論。
　
　――篠川公方大鳥獅子吼を殺害し、六波羅を自壊へ
導き、ＧＨＱの企図を挫く。

　作戦効果は認められる。
　暗殺に成功すれば、六波羅と進駐軍の決戦は未発に
終わる見込みが濃い。

　幕府の再興とＧＨＱの支配、多くの大和国民にとっ
て望ましからざる未来は二つ共に遠ざかる。
　後々のことはともかく、ひとまずのところは。

　有効だ。認めざるを得ない。<k>
　
　
　しかし、これは、<RUBY text="テロリズム">暴力主義</RUBY>である。

　言論の力に対する挑戦である。

　既に為した、飛行艦襲撃と同じ事と言えばそうだ。
　が、あれはあくまで爆弾という無機物を標的にした
行動だった。

　今度は人間。
　政治目的の為に、一個人の生命を奪う。

　その目的がいかに正しかろうと、免罪符の役は果た
さない。
　大鳥獅子吼とて、正しいと信じた行いをしている事
に変わりはなかろうからだ。

　暴力による政治主張を、肯んずるか否か。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080760a00">
（……それが頷けるものならば）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　足利護氏暗殺の依頼も、断るべきではなかったのだ
ろう。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080770a03">
「ご遠慮なく、率直なところを仰って頂いて
構いませんのよ？」


{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080780a00">
「いえ、言葉を選んでいたのではありません。
　……ただ、要は同じ事だと」


{	FwR("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080790a03">
「同じ？」


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080800a00">
「多数の人間を守る為と称して、一人の人間
に死を強いる。
　一身の判断で為す人命の<RUBY text="・・">計量</RUBY>」


{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080810a00">
「自分には馴染みの深い行いです。
　それと同じ事を幾度となく繰り返してきま
した」


{	FwR("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080820a03">
「……村正の<RUBY text="のろい">呪戒</RUBY>」


{	FwR("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080830a00">
「はい。
　何も差異は有りません」


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080840a00">
「いずれも等しく<RUBY text="テロリズム">暴力主義</RUBY>」


{	FwR("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080850a03">
「そうですね。
　確かに、全く違いのないこと……」


{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080860a03">
「では、景明さまのご決断は？
　わたくしに、お手を貸してくださる？」


{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080870a00">
「……はっ」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("空", 3100, @0, @0, "cg/bg/bg001_空b_01.jpg");
	Fade("空", 1000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　今まで抱え通しだった備前焼を、膝前へ置く。
　ざらついた肌の、心地良い手触りには名残惜しさを
覚えた。

　日が天頂の座をそろそろ退こうとしている。
　冬の野点も、この辺りが潮時だろう。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	FadeDelete("空",1000,true);

	SetFwR("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080880a00">
「大尉殿をお止めすることはできません。
　しかし、自分は御助勢を致しかねます」


{	FwR("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080890a03">
「わかりました」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　驚いた風も見せず、香奈枝嬢が頷く。
　むしろ、ほっとした様子だった。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080900a03">
「良かった。
　もし協力すると言われてしまったら、どう
お断りすればいいのか困りましたもの」


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080910a00">
「やはり貴方は、これを大鳥獅子吼との個人
的な戦争とお考えか」


{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080920a03">
「ええ。
　そう、これはわたくしとあの男との<RUBY text="・・">喧嘩</RUBY>で
しかありません。国のため、民のためと言葉
を飾っても……結局はそういうことなのです」


{	FwR("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080930a03">
「景明さまはこちらにお留まりください。
　永倉のお爺さまには、わたくしから言って
おきます」


{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080940a00">
「いいえ」


{	FwR("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080950a03">
「？」


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080960a00">
「お許しあれば、自分も同行させて頂きたく
存じます」


{	FwR("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080970a03">
「……わたくしに？
　けれど、」


{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0080980a00">
「はい。御協力もお邪魔も致しません。
　自分は自分の都合の為に、篠川の公方府へ
参るまでの事です」


{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0080990a03">
「ご都合というのは」


{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0081000a00">
「銀星号の生死が定かではありません」


{	FwR("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0081010a03">
「……」


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0081020a00">
「先程のお話によれば、普陀楽の爆心地から
何かが運び出されたとか。
　その何かが銀星号、<RUBY text="ないし">乃至</RUBY>は銀星号に関わる
物でないと、現状では断定が不可能です」


{	FwR("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0081030a03">
「では、それを確かめるために？」


{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0081040a00">
「はい。
　この目で検分して、全く無関係の物である
なら良し」


{	FwR("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0081050a00">
「また――もしそれが、銀星号の遺体ででも
あるなら。
　自分には、」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateColorEX("フラッシュ白", 15000, "WHITE");

	OnSE("se擬音_フラッシュバック01",1000);
	Fade("フラッシュ白",0,1000,null,true);

	CreateColorSP("絵色黒", 5000, "#000000");
	CreateTextureSP("絵回想200", 5100, Center, InBottom, "cg/st/3d銀星号_立ち_通常.png");

	CreateStencil("絵演立絵覆",18100,center,InBottom,128,"cg/st/3d銀星号_立ち_通常.png",false);
	CreateTextureEXover("絵演立絵覆/絵演血粒", 18120, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateColorEX("絵演立絵覆/絵色血面", 18111, "#CC0000");
	Fade("絵演立絵覆/絵演血粒", 0, 750, null, true);
	Fade("絵演立絵覆/絵色血面", 0, 950, null, true);
	DrawTransition("絵演立絵覆/絵色血面", 0, 0, 200, 1000, null, "cg/data/slide_02_01_0.png", true);
	Fade("フラッシュ白",300,0,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　遺体。死骸。
　銀星号の骸。

　光の、
　
　……………………。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――
	
	Fade("フラッシュ白",0,1000,null,true);
	Delete("絵演立絵*");
	Delete("絵色黒");
	Delete("絵回想*");
	Delete("Memory_cover");
	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白",2000,true);

	SetFwR("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0081060a00">
「確認する義務があります」


{	FwR("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0081070a03">
「……了解いたしました。
　ご一緒に参りましょう」


{	FwR("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0081080a00">
「ご造作を」


{	FwR("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0081090a03">
「旅は道連れ。世は何とやら。
　師走の会津も、連れ立って行けば肌寒さが
和らぎます」


{	FwR("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0081100a03">
「きっと」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ひゅー。
	CreateSE("SE01","se自然_風_野原02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	$残時間=RemainTime("SE01")/2;
	FadeDelete("野点", $残時間, true);

	WaitKey(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　壁を乗り越えた風が、一陣。
　庭の暖気が押し流されて、じわと冷気が身に沁みる。

　もう間もなく、雪も降り始めるのだろう。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mc03_009.nss"