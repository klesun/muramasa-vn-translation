//<continuation number="760">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_001.nss_MAIN
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
	#bg033_湊斗家一室_01=true;
	#bg051_皆斗家居間_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_002.nss";

}

scene md02_001.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md01_037.nss"


//◆過去回想。子供光に講義する少年景明

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	SoundPlay("@mbgm26", 0, 1000, true);

//■CGないので仮絵 inc櫻井
//	CreateTexture("勉強会", 300, @0, @0, "cg/bg/bg051_湊斗家居間_01.jpg");
//	Fade("勉強会", 0, 1000, null, true);
	Delete("上背景");
	FadeDelete("黒幕１",1500,true);


	SetNwC("cg/fw/nw景明.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010010a00">
「……<RUBY text="あめつち">天地</RUBY>初めてひらけし時、<RUBY text="たかまのはら">高天原</RUBY>に成り
ませる神の名は、<RUBY text="あめのみなかぬしのかみ">天之御中主神</RUBY>。
　次に<RUBY text="たかみむすひのかみ">高御産巣日神</RUBY>。次に<RUBY text="かみむすひのかみ">神産巣日神</RUBY>」

//【景明】
<voice name="景明" class="景明" src="voice/md02/0010020a00">
「この三柱の神はみな<RUBY text="ひとりがみ">獨神</RUBY>と成りまして身を
隠したまいき」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010030a14">
「……」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010040a00">
「次に国<RUBY text="わか">稚</RUBY>く浮きし油の如くして、<RUBY text="くらげな">久羅下那</RUBY>
<RUBY text="すただよへるとき">州多陀用弊流時</RUBY>、<RUBY text="あしかび">葦牙</RUBY>の如く萌え<RUBY text="あが">騰</RUBY>る物に因
りて成れる神の名は<RUBY text="うましあしかびひこぢのかみ">宇摩志阿斯訶備比古遅神</RUBY>。
　次に<RUBY text="あめのとこたちのかみ">天之常立神</RUBY>」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010050a00">
「この二柱の神もまた、獨神と成りまして、
身を隠したまひき」

//◆寝息
{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010060a14">
「……すぅ……」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010070a00">
「光」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景", 1000, @0, @0, "cg/bg/bg033_湊斗家一室_01.jpg");
	SetTone("絵背景", Sepia);
	Fade("絵背景", 300, 1000, null, true);
	Delete("勉強会");


//◆ぱこ。
	OnSE("se擬音_コミカル_殴り01", 1000);

	WaitKey(1000);
	SetNwC("cg/fw/nw光.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【光】
<voice name="光" class="光" src="voice/md02/0010080a14">
「あぅ」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010090a00">
「ちゃんと聞きなさい」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010100a14">
「努力をがんばるにやぶさかではないけど」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010110a00">
「お前はいずれ統様の後を継いで湊斗の巫姫
になるんだ。
　記紀くらいは修めておかないと、後で恥を
かいてしまうぞ」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010120a14">
「あきた……」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010130a00">
「飽きるくらい学ばなくては身につかない」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010140a14">
「大和の神話ばっかりだし」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010150a00">
「当たり前だろう」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010160a14">
「たまには違う話もしてほしい」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010170a00">
「国語や算数なら、俺に習うよりも、学校で
きちんと先生に教えてもらった方がいい」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010180a14">
「あいつらの話はきらいだ。
　勝手にしゃべってるだけで、こっちが聞い
てるかどうかもおかまいなしじゃないか」

//【光】
<voice name="光" class="光" src="voice/md02/0010190a14">
「景明の声は聞いてるうちに気持ちよくなる
から寝るけど、あいつらの声はきらいだから
聞くまえに寝る」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010200a00">
「……それでお前は成績が良くないのか」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

//◆ぱこ

	OnSE("se擬音_コミカル_殴り01", 1000);

	SetNwC("cg/fw/nw光.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【光】
<voice name="光" class="光" src="voice/md02/0010210a14">
「あぅ」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010220a00">
「先生をあいつらと呼ぶな。
　一人で大勢の相手をするから大変なんだ。
　感謝の気持ちを持って授業を受けなさい」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

//◆ぱこ
	OnSE("se擬音_コミカル_殴り01", 1000);

	SetNwC("cg/fw/nw景明.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010230a00">
「……それと、俺の講義は子守唄ではない」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010240a14">
「あぅ……」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010250a00">
「続けるぞ」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010260a14">
「べつのはなしー」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010270a00">
「……」

//【景明】
<voice name="景明" class="景明" src="voice/md02/0010280a00">
「どんな話がいいんだ」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010290a14">
「んー」

//【光】
<voice name="光" class="光" src="voice/md02/0010300a14">
「違う神さまの話は？」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010310a00">
「大和以外の？」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010320a14">
「うん」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010330a00">
「神話というものは、どこの国でもそんなに
変わらないぞ。
　神様の名前が違うだけだ」

//【景明】
<voice name="景明" class="景明" src="voice/md02/0010340a00">
「……とまで言っては言い過ぎか……」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010350a14">
「たとえば？」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010360a00">
「ギリシアの神話だと……
　原初には<RUBY text="カオス">混沌</RUBY>があり、そこから<RUBY text="ガイア">大地</RUBY>、<RUBY text="タルタロス">冥府</RUBY>、
<RUBY text="エロス">愛</RUBY>、そして<RUBY text="エレボス">闇</RUBY>と<RUBY text="ニュクス">夜</RUBY>が生まれ、闇と夜から<RUBY text="アイテル">光</RUBY>と
<RUBY text="ヘメラ">昼</RUBY>が生まれた」

//【景明】
<voice name="景明" class="景明" src="voice/md02/0010370a00">
「<RUBY text="ガイア">大地</RUBY>は<RUBY text="ウラノス">天空</RUBY>と<RUBY text="ポントス">海洋</RUBY>を生んだ」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010380a14">
「おぉー……」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010390a00">
「ほら、似たようなものだろう」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010400a14">
「ぜんぜん違うよ」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010410a00">
「……む？
　まぁ、解釈によるかな……」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010420a14">
「つづきー」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010430a00">
「……<RUBY text="ウラノス">天空</RUBY>は世界を支配し、<RUBY text="ガイア">大地</RUBY>を妻として、
<RUBY text="ヘカトンケイル">百手巨人</RUBY>と<RUBY text="キュクロプス">独眼巨人</RUBY>を生んだ。
　しかし天空はこの巨人たちを嫌い、<RUBY text="タルタロス">冥府</RUBY>へ
捨ててしまった」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010440a14">
「ひどい」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw景明.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010450a00">
「その後、<RUBY text="ウラノス">天空</RUBY>と<RUBY text="ガイア">大地</RUBY>は十二柱の<RUBY text="ティターン">巨神</RUBY>を生ん
だが……
　大地は巨人に対する天空の仕打ちを恨んで、
巨神に父を打倒せよと命じる」

//【景明】
<voice name="景明" class="景明" src="voice/md02/0010460a00">
「十二柱の末弟、<RUBY text="クロノス">農耕</RUBY>がこれを果たした。
　しかし彼は父と同じ罪を犯し、同じように
息子の手で倒されることになる」

//【景明】
<voice name="景明" class="景明" src="voice/md02/0010470a00">
「この息子が<RUBY text="ゼウス">主神</RUBY>。
　彼を王として、神々は全盛期を迎えるのだ」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010480a14">
「おもしろい」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010490a00">
「そうか？」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010500a14">
「つづき！」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010510a00">
「だめ。ここまでだ。
　古事記の勉強に戻るぞ」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010520a14">
「つづきー」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010530a00">
「……また今度」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010540a14">
「むぅ」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010550a00">
「ふくれてもだめだ」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010560a14">
「じゃあしつもん」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010570a00">
「なんだ？」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010580a14">
「<RUBY text="・・・・">うらのす</RUBY>と<RUBY text="・・・">がいあ</RUBY>がけっこんして、子供を
つくったんだよね？」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010590a00">
「うん」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010600a14">
「でも、うらのすはがいあが生んだの？」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010610a00">
「……そうだな」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010620a14">
「親子でけっこん？」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010630a00">
「そうなる」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010640a14">
「だめなんじゃないの？」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010650a00">
「人間はな」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010660a14">
「神さまはいいの？」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010670a00">
「神様には神様のルールがあるんだろう」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010680a14">
「ふぅん」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010690a00">
「さぁ、勉強に戻るぞ」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010700a14">
「はぁい……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//―――――――――――――――――――――――――――――

//◆回想。さっきの
	EfRecoIn1(18000,600);
	CreateTextureSP("絵回想", 16000, -240, -460, "cg/ev/resize/ev924_銀星号飢餓虚空魔王星l.jpg");
	EfRecoIn2(300);

	SetFwC("cg/fw/fw光_通常b.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【光】
<voice name="光" class="光" src="voice/md02/0010710a14">
「人が母に叛いて父を奪えば、人の法に背く。
しかし神には神の法があり、これを赦す。
　――故におれは万人を打倒する。至強の武
を証明する。人を超え神を称する」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010720a14">
「神となれば我が望みは<RUBY text="・・・">正当化</RUBY>されよう。
　人の世を壊せば人の法に囚われる父は解放
されよう……」

{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0010730a14">
「妨げる何物もなく、光は父に向き合える！
　母に奪われた父を、取り戻せる！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆消去
	EfRecoOut1(300);
	Delete("絵回想*");
	SetTone("背景１", Monochrome);

	CreateColorSP("絵色黒", 5000, "#000000");

	EfRecoOut2(600,true);

	SoundPlay("@mbgm32", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　父。
　父親……

　<RUBY text="・・・・・・">父を取り戻す</RUBY>。
　お前はそう言うのか。

　それがお前の望みなのか。
　光。

　……そうだ。事実……
　お前の父は<RUBY text="・・・・">無きもの</RUBY>とされている。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想：本家と明堯
	EfRecoIn1(18000,600);

	Fade("絵色黒", 0, 0, null, true);

	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg051_皆斗家居間_01.jpg");
	CreateTextureSP("絵回想200", 2100, 600, InBottom, "cg/st/st署長_通常_制服.png");
	CreateTextureSP("絵回想300", 2200, 150, InBottom, "cg/st/st本家_通常_私服.png");

	EfRecoIn2(300);
	WaitKey(1000);

//◆消去

	EfRecoOut1(300);

	Fade("絵色黒", 0, 1000, null, true);
	Delete("絵回想*");

	EfRecoOut2(600,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　父は人の道に背き、
　<RUBY text="ゆえ">故</RUBY>に父たり得ず、父たる事を捨てた。

　それは必ずしも父の本意ではなかった。
　しかしこの世の法が、父の父たる事を認めなかった。

　結局、父は法に従った。
　だから決して、父として光の前に現れる事はない。

　言うなれば光の父は、社会秩序に奪われた。
　光が父を欲して世界の破壊者たるのなら――確かに
それは狂気ではなく、道理なのかもしれない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010740a00">
（明堯様）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　俺にとって養父である人の苦悩を思う。

　あの人はあれから、どんな想いを胸に宿して生きて
きたのだろう。
　後悔か……諦観か。

　そして今、光の望みを知ったなら、何を思うだろう。
　父を取り戻すという望みのために〝銀星号〟となり、
母を排除し世界を壊し、人を越えて、神たらんとする
――暴挙の極致へ至ったのだと知ったなら。

　何を思うか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010750a00">
（いや）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　俺こそ、何を思うべきか。

　あの頃、俺は責任の意味を理解できる年齢に達して
いなかった。
　だがそれは弁明にならない。最終的に光の父を抹消
し――今日の事態を導いたのは、俺の決断であるから。

　何を思うべきか。
　何をするべきか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0010760a00">
（俺は……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　何を――――？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆ホワイトアウト

	CreateColorEX("ホワイトアウト１", 5000, "WHITE");
	Fade("ホワイトアウト１",3000, 3000, null, true);

	SetVolume("@mbgm*", 1000, 0, null);

//■ClearWaitやClearFadeだとどうしても一瞬黒が出てくるので、何も使用せず終わり inc櫻井

}

..//ジャンプ指定
//次ファイル　"md02_002.nss"