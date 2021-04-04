//<continuation number="190">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_027.nss_MAIN
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
	#aw_ボーディ=true;

	$PreGameName = $GameName;

	$GameName = "mc04_001.nss";

}

scene mc03_027.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc03_026.nss"


//◆地上。bg003か。

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");

	CreateTextureSP("絵背景", 400, @-200, @-400, "cg/bg/resize/bg003_荒れ野_02.jpg");
	Request("絵背景", Smoothing);

	CreateSE("よろよろ", "se人体_足音_歩く04_L");
	MusicStart("よろよろ", 0, 1000, 0, 800, null,true);

	WaitKey(3000);

	Delete("上背景");
	FadeDelete("黒幕１",2000,true);

	WaitKey(1000);

//◆景明視点。画面揺らし
//◆よろめきながら歩いてる感じ。ＳＥとかで
	Move("絵背景", 800, @0, @-50, DxlAuto, true);
	Wait(200);
	Move("絵背景", 300, @0, @50, DxlAuto, true);
	Wait(250);
	Move("絵背景", 800, @0, @-50, DxlAuto, true);
	Wait(200);
	Move("絵背景", 300, @0, @50, DxlAuto, true);

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0270010a00">
「……くっ……」


//【景明】
<voice name="景明" class="景明" src="voice/mc03/0270020a00">
「ぅぐ……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("よろよろ", 1000, 0, null);

	OnSE("se人体_衝撃_転倒04", 1000);


//◆がた。膝を突く。
	CreatePlainEX("絵板写", 400);
	Fade("絵板写", 0, 800, null, true);


	Shake("絵板写", 500, 0, 50, 0, 0, 1000, DxlAuto, true);
	Move("絵背景", 0, @0, @-50, null, false);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　足に力が入らない。折れているようだ。
　肉という肉、皮膚という皮膚が熱い。あらゆる箇所
を打撲したのだろう。

　頭蓋の内側では割れ鐘が響いているし、内臓は全て
ねじれ返っている。
　<RUBY text="つるぎ">村正</RUBY>の被害も同程度と<RUBY text="おぼ">思</RUBY>しい。応答が絶えていた。
一時的な機能停止にでも陥っているのか。

　だが相当の高速で地面に激突した事を思えば、これ
でも軽傷で済んだ方だと思わねばならなかった。

　……そんなことはどうだっていい。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆立って歩く

	Move("絵背景", 1000, @0, @50, null, true);
	WaitKey(1000);
	CreateSE("よろよろ", "se人体_足音_歩く04_L");
	MusicStart("よろよろ", 0, 1000, 0, 800, null,true);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0270030a00">
（どこだ……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　そう遠くない所に落ちた筈だ。
　最後まで俺を見据え……憎み……責めながら。彼女
は――

　確か、この辺りに、

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("よろよろ", 1000, 0, null);

//◆残骸。血ＣＧとかで済ますか。

	CreateColorEXadd("フラッシュ", 15000, "RED");
	Fade("フラッシュ",0,1000,null,false);
	Fade("フラッシュ",1000,1000,null,false);
	FadeDelete("フラッシュ", 500, false);
	CreateTextureEX("絵ＥＦ", 5000, Center, Middle, "cg/ef/ef007_汎用血しぶき.jpg");
	Fade(絵ＥＦ, 0, 1000, null, true);

	WaitKey(1000);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0270040a00">
「――――っ、あ――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm09", 0, 1000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　来栖野小夏はそこにいた……
　
　
　<RUBY text="・・・">有った</RUBY>。

　残骸と呼ばれるべき姿で転がっていた。

　鉄。<k>肉。<k>骨。<k>肉。<k>血。<k>鉄……<k>
　
　少女はそこに、雑多に、散乱している。

　しかしその中に、生命だけは存在しなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0270050a00">
「あ――う」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　それ以外のものは、全てある。
　肉体も、鉄の鎧も、ばらばらに壊れて存在している。

　心も。
　来栖野小夏の悪意は死して尚そこにあった。

　視神経を尾のように引いた眼球が一つ、土の上から
俺を見上げていた。

　
　　　　　　　　　〝許さない〟

　
　　　　　　　　〝絶対に許さない〟

　そう繰り返していた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0270060a00">
（何故？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　<RUBY text="・・・・">この現実</RUBY>は何だ。

　どうして、来栖野小夏が俺を襲うのだ。
　鎌倉を離れて会津にいる俺の前に現れ、劒冑を駆り、
復讐の刃先を差しつけてきたのだ？

　かつて鈴川令法の犠牲となり、重い障害を背負った
彼女が、全てを独力でできた筈はない。
　誰が協力を――――いや。そうだ。

　雪車町。
　
　あの男しか。あの<RUBY text="すじもの">筋者</RUBY>しかいない。

　俺の殺害を企むあの男が、来栖野小夏を引き入れた
のか。真実を教え、復讐を煽り、劒冑を与えたのか。
　そうだ……あの男は言っていた。

　俺を殺すのに、<RUBY text="・・・・">いい相手</RUBY>が待っていると。
　相応しい奴が……と。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	FadeDelete("絵ＥＦ",1000,true);

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0270070a00">
（……真逆）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　あの異形騎は四騎にして一であった。

　では――――他の三人も…………

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆移動

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　折れた足で地面を蹴る。
　転びながら走る。

　胴体にあたる騎体が、そう遠くない所に落ちていた。
　近付き、すがり、割れた甲鉄を引き剥がす。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateColorEXadd("フラッシュ", 15000, "RED");
	Fade("フラッシュ",0,1000,null,false);
	Fade("フラッシュ",1000,1000,null,false);
	FadeDelete("フラッシュ", 500, false);
	CreateTextureEX("絵ＥＦ", 5000, Center, Middle, "cg/ef/ef007_汎用血しぶき.jpg");
	Fade("絵ＥＦ", 0, 1000, null, true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0270080a00">
「……ぁ……」


//【景明】
<voice name="景明" class="景明" src="voice/mc03/0270090a00">
「貴方は」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	#aw_ボーディ=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　柿沢信次郎。
　
　原形を留めていた死顔は、俺にその姓名を思い起こ
させた。

　柿沢氏は<RUBY text="ひたち">常陸</RUBY>の名門武家。
　六波羅に従って暴政搾取に加担する当主と、それを
良しとしない信次郎の兄とが、家中を二分して争って
いた……

　そしてその両者を俺が斬った。
　当主は〝卵〟に冒された武者であったから。信次郎
の兄は――村正の<RUBY text="のろい">誓約</RUBY>が求める贄に選ばれて。

　およそ半年前の事である。
　
　……彼、柿沢信次郎は、頑固だが善良な兄を、深く
敬慕していた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵ＥＦ",1000,true);

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0270100a00">
「あ、ああ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆移動

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	CreateTextureEX("絵ＥＦ", 5000, Center, Middle, "cg/ef/ef007_汎用血しぶき.jpg");
	Fade("絵ＥＦ", 0, 1000, null, true);


	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　……右足を成した騎体があった。

　甲鉄の下から現れた死人の顔は、俺が以前に殺した、
ある人物と酷似していた。
　ごく近い血縁者なのだろう。……実子かもしれない。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵ＥＦ",1000,true);

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0270110a00">
「うあ、あああああ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆移動

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


	CreateTextureEX("絵ＥＦ", 5000, Center, Middle, "cg/ef/ef007_汎用血しぶき.jpg");
	Fade(絵ＥＦ, 0, 1000, null, true);


	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　左足の騎体。

　死体の顔に覚えはなかった。
　だが、死体が大切そうに身につけていた写真には、
俺の記憶にある姿が写っていた。俺の手で殺した人間
だった。

　恋人だったのだろうか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_恐怖.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0270120a00">
「ぐぅ――うぅぅぅぉぉ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete(絵ＥＦ,1000,true);
	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

//◆辺り

	Move("絵背景", 60000, @-200, @0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　四人が死んでいる。

　俺を憎む理由のあった四人が死んでいる。

　正義の下に俺を罰す権利を持っていた四人が死んで
いる。

　四人の正当な復讐者が死んでいる。

　そして俺は生きている。

　……彼らに殺されるべき俺が、俺を殺すべき彼らを
殺し返して、生き延びている。
　不当にも。非道にも。悪逆にも理不尽にも。

　湊斗景明だけが生きている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_恐怖.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0270130a00">
「――――――――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆夕空？

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 250, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);
	Delete("絵背景");
	CreateTextureEX("お空", 3000, Center, Middle, "cg/bg/bg002_空a_02.jpg");
	Fade("お空", 0, 1000, null, true);


	DrawTransition("黒幕１", 250, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("黒幕１");


	SetFwC("cg/fw/fw景明_恐怖.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0270140a00">
「ぎィアアアアアアアアアアアアアアアア!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ガッタイダー。血。小夏。

	OnSE("se擬音_フラッシュバック01",1000);
	CreateColorEXadd("絵白転", 10000, "#FFFFFF");
	Fade("絵白転", 600, 1000, null, true);
	Delete("お空");
	CreateColorSP("黒", 1000, "BLACK");

	CreateTextureEX("絵演2", 3100, Center, @-800, "cg/st/3dガッタイダー_立ち_通常c.png");
	Fade("絵演2", 0, 500, null, false);

	Fade("絵白転", 600, 0, null, true);

	WaitKey(1000);

	OnSE("se人体_血_血しぶき01", 1000);
	CreateColorSPadd("ぶしゃー", 15000, RED);
	DrawTransition("ぶしゃー", 100, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);

	Delete("絵演2");

	DrawTransition("ぶしゃー", 100, 0, 1000, 100, null, "cg/data/zoom_01_00_1.png", true);
	FadeDelete("ぶしゃー",1000,true);


	CreateTextureSPmul("絵演1", 3200, Center, Middle, "cg/anime/Center/bloodA_5.png");

	CreateTextureEX("絵演3", 3101, Center, @190, "cg/st/st小夏_通常_制服.png");
	Fade("絵演3", 1000, 500, null, false);

	Fade("絵白転", 300, 0, null, true);

	WaitKey(800);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　死んだッ！

　殺したッ！

　俺が殺した！
　俺が死なせた！

　彼らに何の罪があったのだ。
　罪があったのは俺なのに。

　彼らは正しく復讐を果たそうとしていた――
　そうだ。ただそれだけだった。

　それの何が悪い？
　それの何が間違っている？

　俺が殺される事が正しかったのだ。

　事実は正逆!!

　湊斗景明はまたも殺した。
　いや遂に、何の理由もなしに人を殺した。

　彼らは〝卵〟に冒された者ではなかった。
　俺は村正の呪戒に縛られてはいなかった。

　彼らが死すべき理由は何処にもなかった。

　なのに死なせた。
　殺した。殺した……

　柿沢信次郎は、兄の仇を討ちたかったに違いない。
　来栖野小夏は、新田雄飛の無念を晴らしたかったに
違いない。

　正しい！
　正義だ！

　彼らには湊斗景明を殺す天理があった。

　だが俺は殺させなかった。
　己の罪もわきまえず、裁きの剣に抗った。

　あまつさえ、彼らを死なせた！
　殺した!!

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	CreateTextureEX("絵背景", 400, @-200, @-400, "cg/bg/resize/bg003_荒れ野_02.jpg");
	Zoom("絵背景", 0, 1000, 1000, null, true);


	Fade("絵背景", 0, 1000, null, true);


	Fade("絵白転", 400, 1000, null, true);
	Delete("黒");
//◆ＥＶ：景明orz
//■上記指定削除 inc櫻井

	Delete("絵黒地*");
	Delete("絵演*");
	DeleteStA(0,true);
	FadeDelete("絵白転", 600, true);

	OnSE("se人体_衝撃_転倒04", 1000);
	Shake("絵背景", 500, 0, 50, 0, 0, 1000, DxlAuto, true);
	Move("絵背景", 0, @0, @-50, null, false);

	SetFwC("cg/fw/fw景明_恐怖.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0270150a00">
「ゲ――ゲベッ、ェァァァ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_動作_吐瀉");
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　嘔吐する。
　胃の内容物を<RUBY text="ことごと">悉</RUBY>く、吐き散らした。

{	CreateSE("SE01a","se人体_血_たれる01");
	MusicStart("SE01a",0,1000,0,1000,null,false);}
　それでも止まらない。
　止まらないから胃液を吐く。血を吐く。

　それでも止まらない。
　自己嫌悪は止まらない。

　湊斗景明に対する嫌悪が――
　
　否。そんな柔らかい言葉では足りない。

　憎悪だ。

　自己憎悪。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0270160a00">
（許せない）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　湊斗景明を許せない。

　存在する事実を許容できない。

　こんな男はいてはならない。

　こんな邪悪を認めてはならない。

　その存在が正義への凌辱。

　湊斗景明は、<k>
　<RUBY text="さばか">断罪さ</RUBY>れねばならない男なのだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0270170a00">
「……大尉……」


{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0270180a00">
「大鳥大尉ぃぃぃ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("お空", 3000, Center, Middle, "cg/bg/bg002_空a_02.jpg");
	Fade("お空", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　嗚咽しながら、俺はその名を呼んだ。
　俺にとって<RUBY text="フーリエ">法の女神</RUBY>にも等しい女性を呼んだ。

　あの人だ。

　あの人しかいない。

　湊斗景明を許さないと誓った。
　湊斗景明を殺すと誓った。

　あの人だけが、湊斗景明の罪業を<RUBY text="あがな">贖</RUBY>える。

　あの人だけが――
　湊斗景明に、正義の実在を示してくれる。

　悪の勝利を許さず滅ぼし、
　善の死を無価値から救う。

　ああ。
　大尉。

　大鳥香奈枝。
　貴方、だけが――――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト
//◆差分：背後に香奈枝
	SetVolume("@mbgm*", 2000, 0, null);
	Wait(2500);

	PrintBG("上背景", 30000);
	OnBG(100,"bg003_荒れ野_02.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 2000, true);

	CreateSE("SE01","se自然_草木_探る02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(2000);

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0270190a03">
「――――――――――――――――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト

	WaitKey(1000);

//◆Ｃパート完
//◆カットインぽくロゴ
	ClearWaitAll(3000, 1000);

	PrintBG("上背景", 10000);
	cut_in_logo(10010,2);

	ClearWaitAll(3000, 2000);

/*
//あきゅん「演出：外注部分退避」
	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);
	CreateTextureSP("背景80", 30, Center, Middle, "cg/sys/title/タイトル背景.png");
	Move("背景80", 0, 20, 0, null, false);
	Move("背景80", 200, -20, 0, null, false);

	OnSE("se戦闘_攻撃_剣戟弾く01", 1000);
	CreateTextureEX("背景81", 32, Center, Middle, "cg/sys/title/画像タイトルlogo.png");
	Fade("背景81", 300, 1000, null, false);
	
	CreateTextureSPadd("絵背景500", 31, Center, Middle, "cg/ef/ef005_汎用血雫.jpg");
	Rotate("絵背景500", 0, 180, 0, 180, null, true);
	Move("背景81", 0, 600, 40, null, false);
	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");

	WaitKey(2000);
	ClearWaitAll(3000, 3000);
*/

//◆２３４５６７８９０１２３４５６７８９０１２３４

}

..//ジャンプ指定
//次ファイル　"mc04_001.nss"