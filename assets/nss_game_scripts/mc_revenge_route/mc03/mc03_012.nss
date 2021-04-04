//<continuation number="580">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_012.nss_MAIN
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
	#ev178_雪車町とガッタイダー列車襲撃_a=true;
	#ev178_雪車町とガッタイダー列車襲撃_b=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc03_013.nss";

}

scene mc03_012.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"mc03_011.nss"

//◆移動

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");
	OnBG(100, "bg085_汽車客車_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm34", 0, 1000, true);
	CreateSE("がたんごとん", "se乗物_汽車_走行01_L");
	MusicStart("がたんごとん", 1000, 1000, 0, 1000, null,true);
	Delete("上背景");
	DrawDelete("黒幕１", 200, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　列車という構造物は、隠れ潜む場所として用いるに
は致命的に横幅が足りない。
　真っ直ぐ追えば捕捉できる筈だ。

　あれが、見間違いでないなら。
　
　見間違いなら――誰にも会うまい。

　会わないだろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//◆顔グラなし
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120010a12">
「…………ケヘッ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆移動
	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	SetVolume("がたんごとん", 1000, 0, null);
	SetVolume("@mbgm*", 1000, 0, null);
	
	SoundPlay("@mbgm35", 0, 1000, true);

//◆雪車町

	StC(1000, @0, @0, "cg/st/st雪車町_通常_私服.png");
	FadeStC(0, true);

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　男はいた。
　酷くぞんざいで、だが奇妙に熱っぽい――そう、己
を含めた世の何もかもを下らぬものと<RUBY text="みな">看做</RUBY>し嘲りつつ
そこに耽溺する、この男独特の風情を露わにしながら。

　男は俺の前にいた。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120020a00">
「雪車町一蔵!!」


{	FwR("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120030a12">
「け、け、け……！
　奇遇でござんすねェ、湊斗の旦那」


//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120040a12">
「会津には雪見旅との洒落込みで……？
　でしたらご愁傷様だァ、今年の会津は<RUBY text="つうじん">通人</RUBY>
狙い、<RUBY text="おしろい">白粉</RUBY>塗る気はないらしい」


{	FwR("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120050a12">
「真っ赤な<RUBY text="べに">紅</RUBY>だけ唇に引いて、<RUBY text="いき">粋</RUBY>を示そうっ
て魂胆でねェ……
　へ、へッ！　憎いもんじゃありませんか」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　御託を宣いながら、その挙措は猫のそれさながらで
あり、進退自在の業の程は疑いもない。
　追いすがるべき両足に、俺は一時停止を命じるほか
なかった。

　距離、およそ<RUBY text="六メートル">三、四間</RUBY>。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 10000);

	StL(1000, @0, @0, "cg/st/st雪車町_通常_私服.png");
	StR(1000, @0, @0, "cg/st/st景明_通常_私服.png");
	FadeStA(0, true);

	FadeDelete("絵板写", 200, true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120060a00">
「何故ここにいる」


{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120070a12">
「洒落者が自分だけだとお思いで？」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120080a00">
「置け」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120090a12">
「へぇ、ヘヘ……！
　別に訊くほどのことでも、ありゃあせんで
しょう……」


{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120100a12">
「あたしが何者で、あんたが何者か、綺麗に
忘れちまったってェんならともかく……ねぇ」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120110a00">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　この男は……そうだ。ＧＨＱの雇われ工作員。
　そして俺は、ＧＨＱの目論見を数度に渡って妨害し、
また大鳥大尉と協力して鍛造雷弾の投下を妨害すべく
試みもした、今や彼らにとって明確な敵性存在。

　成程、わざわざ口を費やして訊くまでもなかったか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120120a00">
「つまりは猟犬」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120130a12">
「へっ……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120140a00">
「<RUBY text="クライブ・キャノン">ＧＨＱ参謀</RUBY>がお前を選んだ。そういう事か。
　大和人のお前なら、会津内への侵入にさえ
成功すれば、後は篠川軍の存在もさして気に
せずに行動できる……」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120150a00">
「だがそれにしても、現状で確かな身元保証
もなしに越境するような真似が可能とは思え
ないが。
　六波羅御雇の名は余程に信用があるのか？」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120160a12">
「なわきゃ、ねえでしょう……。
　今はそんなもん、厄除けのまじないほどの
御利益もありゃしませんよ」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120170a12">
「ま、全周封鎖なんて大仰に言おうが、別に
城壁を建てて並べてるわけじゃあない、兵士
が銃持って巡回してるだけですから……ねェ。
　穴くらい探せば見つかります……」


{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120180a12">
「無ければ無いで、<RUBY text="・・・・">開ければ</RUBY>いいだけの事で」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120190a00">
「…………。
　お前の飼い主はそれを許したのか」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120200a00">
「無関係の者に危害を加えるなとは、言わな
かったのか？」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120210a12">
「言いましたさァ……。
　可能な限り、ってぇ注釈付きで」


{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120220a12">
「可能でなけりゃ、仕方ありません……」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120230a00">
「……」


{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120240a12">
「けッ、へぇっ！
　キャノン中佐はわかっておいでですよ……
そういう命令の仕方をすれば必ず死人が出る
ってことくらい」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120250a12">
「知ってて、わかっててやってるんだ……。
　だから、あの男は、やっちまった後で悔い
たり嘆いたりなんかしねえよ」


{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120260a12">
「<RUBY text="・・・・・・・">てめぇとは違う</RUBY>」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120270a00">
「……………………」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120280a00">
「そこまでして……
　彼は、俺を」

//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120290a00">
「俺と大鳥大尉を抹殺したいのか。
　随分と執念深い」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　いや。
　執念の問題ではない……か？

　あの人物の事だ。
　俺達が、というより大鳥大尉が自分ひとりの安全を
図って<RUBY text="ひっそく">逼塞</RUBY>するような性分ではないことまで読み切り、
その上で決断を下したのかもしれない。

　会津において香奈枝嬢が企むであろう、反ＧＨＱ的
行動――それは実在する――を阻止するためにこそ。
　この顔色の悪い男は、送り込まれたのではないのか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120300a00">
「……標的は、俺よりもむしろ大鳥大尉か？
　雪車町一蔵」


{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120310a12">
「いくらか血の巡りが良くなってきたようで。
　へ、へェ……こいつはおめでたい」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120320a00">
「そうか。
　ならば、ここは通さん」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se日常_衣類_衣擦れ01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StR*", 1000, @60, @0, DxlAuto, false);
	DeleteStR(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　挑発的な軽口には付き合わず。膝の力を抜き、腰を
わずかに沈める。
　敵の攻撃手段を予測し、それに備える。

　雪車町が持つのは杖――仕込み一振りだけだ。
　劒冑は無い。なら、素手で取り押さえることも難事
ではあれ無理ではない筈。

　……いざとなれば村正に手伝わせるまでだ。
　この相手に騎士道を気取ったところで、自己満足に
すらなりはしない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120330a12">
「さぁて……へへェ。
　別に、通せとも言いませんがね……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120340a00">
「……？」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120350a12">
「あのご令嬢を先に仕留めたいってのは……
ま、<RUBY text="あちらさん">進駐軍</RUBY>の都合。
　<RUBY text="・・・">こっち</RUBY>にゃこっちの都合ってもんがあって」


{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120360a12">
「どっちが重いかってなると……ねェ？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120370a00">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

//◆フラッシュバック
//◆第四話のＶＳ雪車町


//仮画像　inc櫻井

	EfRecoIn1(18000,600);
	CreateTextureSP("イベ絵10", 1001, Center, Middle, "cg/ev/ev914_九〇式竜騎兵魔剣インメルマンターン.jpg");


	EfRecoIn2(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　
　　　　　　　　〝半端野郎……〟

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り

	EfRecoOut1(300);

	Delete("イベ絵*");

	EfRecoOut2(600,true);


	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120380a00">
「お前は……」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120390a12">
「ケ」


{	FwC("cg/fw/fw雪車町_嘲笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120400a12">
「けっ、ケケ、ヘヘヘヘヘ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆フラッシュバック
//◆第四話のＶＳ雪車町

	EfRecoIn1(18000,600);
//仮画像　inc櫻井
	CreateTextureSP("イベ絵10", 1001, Center, Middle, "cg/ev/ev914_九〇式竜騎兵魔剣インメルマンターン.jpg");

	EfRecoIn2(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　
　　　　　　　　　　〝消えろ〟

　
　　　　　　　　　〝消えちまえ〟

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り


	EfRecoOut1(300);


	Delete("イベ絵*");

	EfRecoOut2(600,true);

	SoundPlay("@mbgm12", 0, 1000, true);


	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120410a00">
「雪車町!!」


{	FwC("cg/fw/fw雪車町_嘲笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120420a12">
「湊斗ォ!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆剣閃
	CreateSE("SE01a","se戦闘_攻撃_刀振る01");
	MusicStart("SE01a",0,1000,0,1100,null,false);
	CreateTextureEXadd("絵演上", 11100, Center, Middle, "cg/ef/ef015_汎用横軌道.jpg");
	CreateTextureSP("絵演", 11000, Center, Middle, "cg/ef/ef015_汎用横軌道.jpg");
	Zoom("絵演上", 0, 10000, 10000, null, false);
	Fade("絵演上", 0, 450, null, true);

	DeleteStA(0,true);

	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演上", 500, 0, 30, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	Delete("絵演");

//◆避ける
	CreateSE("SE02","se人体_動作_跳躍01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreatePlainEX("絵板写", 9900);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 500, 20, 0, 0, 0, 1000, null, true);
	Delete("絵板写");

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120430a00">
「……ッ!?」


</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　紫電の一刀を寸分の差で避け。
　次なる一撃に備えて構え――

　そうして、既に後方へ引き下がっている対手の姿を
見た。
　
　……逃げる、のか？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_嘲笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120440a12">
「ヒヒ、ハハァ!!
　今日のところは、<RUBY text="けつ">尻</RUBY>をくれてやるぜ」


//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120450a12">
「てめぇには、もっと<RUBY text="・・・・">いい相手</RUBY>が待ってるん
でなァ!!」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120460a00">
「……何!?」


{	FwC("cg/fw/fw雪車町_嘲笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120470a12">
「最高の奴さぁ!!
　てめぇのその、益体もねぇ命を分捕るのに、
あれッくらい相応しい奴は他にいねぇ!!」


{	FwC("cg/fw/fw雪車町_哄笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120480a12">
「おとなしくして、そこで待ってなァッ!!」


{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120490a00">
「雪車町ッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　声は、痩せた筋者の足を留める役に立たなかった。
　距離が開く。<RUBY text="きょうあい">狭隘</RUBY>な通路を黒い姿は巧妙に走り抜け
てゆく。

　俺はその背を追った。
　曰く言い難い、しかしどうにも不吉な予感が心臓の
中に巣食っていた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆追う
	OnSE("se人体_動作_跳躍01", 1000);

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);


	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/circle_01_00_1.png", true);
	Delete("黒幕１");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　雪車町は人並みを凌ぐ俊足だ。
　容色からして不健全に違いなかろう彼の心肺機能が
何故あの速度を許すのか、<RUBY text="にわ">俄</RUBY>かには理解し難い。

　差を詰めるのは困難だった。
　引き離されこそしないが――このままでは不味い。

　おそらくこの先には篠川公方府の軍兵を乗せた車両
がある。
　その中に入られては、追うに追えなくなる。

　永倉侍従が言った、士気の低い後方要員という話が
本当なら、彼らと俺をかち合わせるところに雪車町の
意図があるとも思えないが。
　そんな事態になれば面倒であるのは間違いない。

　今のうちに捕まえるべきだ――が……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StC(1000, @0, @0, "cg/st/st雪車町_通常_私服.png");
	FadeStC(300, true);

	SetFwR("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120500a00">
「……？」


{	FwR("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120510a12">
「……へ……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　病的な顔が、こちらに向き直っている。
　足も止まっていた。

　連結器を越え、一つ前の車両に乗り移ったところで。
　雪車町は逃走をやめ、俺を見ている。

　胸の<RUBY text="ざわめき">戦慄</RUBY>が酷くなった。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120520a00">
（いかぬ）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　止めろ。
　止めるのだ。

　――何を？
　
　否。そんな事はどうでもいい。

　とにかく、<RUBY text="・・">それ</RUBY>を、止めるのだ。
　今すぐ！

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw雪車町_満足.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120530a12">
「けっ――」


{	FwR("cg/fw/fw雪車町_嘲笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120540a12">
「けッ、ケェーーーーーッ!!」

{	DeleteStA(300, false);}

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆がっこん。重いレバーを動かした音
	OnSE("se日常_機械_レバー動かす", 1000);

//離れるのに時間がかかるだろうから間を取る。 inc櫻井
	WaitKey(400);

//◆車両が一度揺れる
	CreatePlainEX("絵板写", 101);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 500, 0, 20, 0, 0, 1000, DxlAuto, true);
	Delete("絵板写");

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120550a00">
「……何だ!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01L","se乗物_汽車_走行01_L");
	MusicStart("SE01L",2000,1000,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　何をした。

　雪車町は――何か、レバーのような物を動かした。
　それで一度、重い金属音がして……

　しかし、何も変わらない。<k>
　何も……<k>……<k>……ッ!?

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120560a00">
「雪車町!!」


{	FwC("cg/fw/fw雪車町_嘲笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0120570a12">
「ヒハハハァーーーーーーーッッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE01L*", 2000, 500, null);

	CreateTextureEX("絵ＥＶ", 5100, InLeft, -470, "cg/ev/resize/ev178_雪車町とガッタイダー列車襲撃_al.jpg");
	Request("絵ＥＶ", Smoothing);
	Move("絵ＥＶ", 8000, -512, -288, null, false);
	Zoom("絵ＥＶ", 16000, 500, 500, DxlAuto, false);
	Fade("絵ＥＶ", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　奇態な笑声が、遠くなる。
　いや、声だけではなく。

　その姿も。
　俺は下がってなどいない。前に進んでいる。なのに
雪車町は遠ざかる。

　列車が離れていた。
　雪車町の乗る車両と、俺の乗る車両とが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0120580a00">
（連結器を外した!?）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitAction("絵ＥＶ", null);

	PrintGO("上背景", 15000);
	CreateColorSP("黒幕１", 9, "BLACK");
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/ev/ev178_雪車町とガッタイダー列車襲撃_b.jpg");
	SetVolume("SE01L*", 4000, 0, null);
	FadeDelete("上背景", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　ようやくに現状事態を把握し。
　そして俺の困惑は更に深まった。

　こんな事をする意図が計り知れない。
　俺と大鳥主従が乗った車両は機関車から切り離され、
徐々に速度を落としている――だから、何なのか。

　不都合には違いないが、全く致命的な窮地とは言え
ない。
　何故……こんな、子供の悪戯のような真似を？

　今がまさに急勾配の坂道を登っている最中で、後方
からは別の機関車が迫っているような時でもあったの
なら、この列車は滑落したすえ凄惨な衝突事故を起こ
したことであろうが。そんな状況ではないのだ。

　列車はのどかな平地を走り抜け、再び橋に差し掛か
ろうとするところだった。
　先行する雪車町らの車両は、こちらを捨てたせいか
速度を増し、既に橋の半ばまで達している。

　……橋は安全だ。
　この状況を仕組んだ当の本人が、今それを証明して
いる。

　まさか……自分の列車が渡り終えた後で、橋を破壊
しようとでも云うのだろうか。
　それには相当量の爆弾、あるいは砲門が必要となる
筈だが、そんなものは影も形も見えない。

　わからなかった。
　……わからぬままに、俺は忍び寄る破滅の足音だけ
を聞いている。

　先行車が橋を渡り終えた。
　入れ違いに、<RUBY text="こちら">後続</RUBY>が橋へ近付く。

　何も起こらない。
　雪車町は何もしない。

　ただ軽く、腕を上げて。
　空に――――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆襲来・ガッタイダー
	CreateColorEX("黒幕１", 25000, "BLACK");
	CreateTextureEX("空", 500, @0, @0, "cg/bg/bg001_空b_01.jpg");
	Fade("空", 1000, 1000, null, true);

	OnSE("se戦闘_動作_空突進08", 1000);

	CreateTextureEX("絵演立絵", 1000, Center, Middle, "cg/st/3dガッタイダー_騎突_戦闘a.png");
	Move("絵演立絵", 0, @0, @-160, null, true);
	Zoom("絵演立絵", 0, 50, 50, null, true);

	Move("絵演立絵", 600, @0, @200, Dxl2, false);
	Fade("絵演立絵", 600, 1000, null, false);

	Wait(300);

	Move("絵演立絵", 10000, @0, @120, null, false);

	Wait(1000);

	Move("絵演立絵", 300, @0, @-40, Axl2, false);
	Zoom("絵演立絵", 300, 550, 550, Axl2, false);

	Wait(120);

	Fade("黒幕１", 0, 1000, null, false);
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/circle_01_00_1.png", true);

	WaitKey(400);

	ClearFadeAll(0,true);

}

..//ジャンプ指定
//次ファイル　"mc03_013.nss"