//<continuation number="2000">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_026.nss_MAIN
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
	$PreGameName = $GameName;

	$GameName = "ma03_027vs.nss";

}

scene ma03_026.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_025.nss"

//◆サーキット場・昼
//◆サーキット場・夕
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	WaitKey(1000);

	OnBG(100,"bg035_鎌倉サーキット俯瞰a_02.jpg");
	FadeBG(2000,true);

	WaitKey(1000);

	SetFwC("cg/fw/fw雷蝶_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0260010a08">
《――ええ。麿は大いなる満足と共に今こそ
告げましょう。
　美しい闘いを見た、と！》

//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0260020a08">
《不幸な事故はあったけれど……それもまた
闘いの彩り。危険あってこそ輝くものもある。
　薔薇の棘は鋭いものよ》

//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0260030a08">
《かくも美しく、苛酷な闘争を勝ち残った者
は最大の賞賛を浴びるに値するわ。
　タムラ・ファイティング・ファクトリー！》

{	FwC("cg/fw/fw雷蝶_笑い.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0260040a08">
《あなた達が勝利者よ！
　大和グランプリの栄冠はあなた達のもの！》

//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0260050a08">
《あなた達が――
　史上初の<RUBY text="アーマーレースナショナルチャンピオン">装甲競技大和統一王者</RUBY>なのよ!!》

{	CreateSE("SE01","se背景_ガヤ_歓声02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0260060a08">
《おめでとう！
　さあ、<RUBY text="トロフィー">勝利の杯</RUBY>を掲げなさい！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitKey(2000);

//◆パドック廊下
//◆村正レーシングモデル
	ClearWaitAll(2000, 1000);

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg036_競技場通路_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	StR(1000, @0, @0,"cg/st/3d村正競技_立ち_通常.png");
	FadeStR(0,true);
	FadeDelete("絵暗転", 2000, true);

	SoundPlay("@mbgm26",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　……体が重い。
　だが、装甲を解く気にはなれなかった。

　解けばきっと、泥のように眠ってしまう。
　心と体に圧し掛かる疲労が俺を強制的に安らかな夢
へ放逐してしまう。

　耐えるだけの力を、今の俺はきっと持たない。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStR(300,true);

	StL(1010, @-60, @0,"cg/st/stさよ_通常_私服.png");
	StCL(1000, @60, @0,"cg/st/st香奈枝_通常_私服a.png");
	StR(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStA(300,false);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0260070a03">
「景明さま」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260080a00">
「どうでしたか」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0260090a03">
「ほとんどのチームは帰ったようです。
　観客も……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260100a00">
「タムラは」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0260110a04">
「皇路親子は先ほどようやく記者達から解放
されたようでございます。
　つい今しがた、ガレージへ戻りました」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260120a00">
「有難うございます。
　――村正」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0260130a01">
《ええ》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260140a00">
「〝卵〟の反応は」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0260150a01">
《まだ、この周辺にある。
　覚醒寸前の状態のまま……》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260160a00">
「わかった。
　……消去法で、結論は出たと云えよう」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0260170a01">
《……そうなるかしらね》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0260180a01">
《でも、どうして……
　<RUBY text="・・">寸前</RUBY>で留まっているの……？》

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0260190a02">
「湊斗さん……
　これから、その」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260200a00">
「この先は俺の職責。
　お前は戻れ。指示あるまで待機だ」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0260210a02">
「……あの。
　あたしも……！」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260220a00">
「帰れ」

{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0260230a02">
「…………はい」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260240a00">
「大尉殿も。
　後の事はどうかお任せ下さい」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0260250a03">
「……わかりました。
　後程、またお会いしましょう」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0260260a04">
「……では。
　失礼致します、湊斗さま」

//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0260270a04">
「ご武運を」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆三人、去る
	CreateSE("SE01","se人体_足音_歩く01_L");
	MusicStart("SE01",0,1000,0,1000,null,true);
	DeleteStA(300,true);
	SetVolume("SE*", 5000, 0, null);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260280a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1500, 0, null);

//◆ガチャ。ギー。戸が開く音。
//◆タムラのガレージ
	CreateSE("SE01","se日常_学校_教室ドア開ける01");//ダミー注意
	MusicStart("SE01",0,1000,0,1000,null,false);
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg037_競技場ガレージa_01.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	WaitPlay("@mbgm*", null);
	Wait(1000);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

	StL(1000, @0, @0,"cg/st/st皇路_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw皇路_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260290b24">
「……！
　これは……湊斗さん、ですね？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　<RUBY text="ツルギ">劔冑</RUBY>姿でやにわに現れた俺へ、皇路卓は驚きの表情
を向けた。
　彼の後ろに、皇路操。俺と同様に<RUBY text="クルス">劔冑</RUBY>を纏ったまま
だ。レースから今まで、解く暇もなかったのだろう。

　兜だけが外され、傍らに置かれている。
　折しも除装するところであったのか。

　他にスタッフの姿は見えない。
　皇路親子、二人きりだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw皇路_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260300b24">
「どうしました、そのような格好で。
　まだお帰りではなかったのですか？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260310a00">
「はい。
　やらねばならぬ事が、ありまして」

{	FwC("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260320b24">
「……？
　まさか、わざわざ祝いに来てくださったの
ですか？」

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260330b24">
「いや、申し訳ありません。お待たせしてし
まったでしょう。
　入れ替わり立ち代わり、マスコミの襲撃に
遭いまして。はは、なかなか――」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260340a00">
「残念ですが、違います」

{	FwC("cg/fw/fw皇路_通常b.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260350b24">
「……は？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260360a00">
「――本当に残念ですが。
　そのような用件ではありません。皇路氏」

{	FwC("cg/fw/fw皇路_通常b.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260370b24">
「…………では、一体」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260380a00">
「自分は警察としての職務を果たしに参った
のです。
　犯罪を摘発するという職務を」

{	FwC("cg/fw/fw皇路_通常b.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260390b24">
「……！」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0260400b42">
「……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260410a00">
「田村甲業勤務、皇路卓。並びに皇路操。
　貴方がた両名を殺人容疑で逮捕します」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260420a00">
「署までご同行下さい」

{	FwC("cg/fw/fw皇路_通常b.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260430b24">
「…………な、なんですかそれは。
　何のことだかさっぱりだ」

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260440b24">
「ウルティマの事故のことですか？
　あんなのは装甲競技では珍しくもないこと
です……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260450a00">
「はい」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260460a00">
「――ウルティマは客席まで突っ込んだ上に
爆発、炎上。
　本人を含めて六名の死者と一五名の負傷者
を生じさせました」

{	FwC("cg/fw/fw操_沈痛.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0260470b42">
「……っ……！」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260480a00">
「が……
　確かに装甲競技では起こり得ること。特筆
すべき事態とは言えません」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260490a00">
「<RUBY text="・・">事故</RUBY>であるなら」

{	FwC("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260500b24">
「そ、そうですよ。
　それに第一、あの事故と僕らは何の関わり
もない！　ウルティマの騎手が焦ってミスを
犯しただけです」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260510a00">
「<RUBY text="いいえ">否</RUBY>」

{	FwC("cg/fw/fw皇路_通常b.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260520b24">
「うッ……!?」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260530a00">
「ウルティマに焦る理由はありませんでした。
　あの状況下、焦っていたのは貴方がたに他
ならない」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260540a00">
「違いますか」

{	FwC("cg/fw/fw皇路_通常b.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260550b24">
「……そ、それは確かに……我々にも焦りは
ありました。しかし翔京とて同じです。
　優勢な側には、優勢な側なりの緊張がある
ものですよ、湊斗さん」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260560a00">
「その点は否定しません。
　しかし自分は翔京の騎手の事を些か知って
います。彼はそんな緊張感程度で培った技術
を見失うような男ではないのです」

{	FwC("cg/fw/fw皇路_困惑.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260570b24">
「……だ、だから何だと！
　だから我々が何かしたに違いない、とでも
言うのですか！」

{	FwC("cg/fw/fw皇路_怒り.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260580b24">
「とんだ詭弁だ！
　湊斗さん、あなたの言うことには何の筋も
通っていない！　名誉毀損です！」

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260590b24">
「本来なら訴えるところですが、あなたには
恩があります。今回は忘れましょう。
　お帰り下さい！　早く！」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260600a00">
「…………」

{	FwC("cg/fw/fw皇路_困惑.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260610b24">
「……ッッ」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260620a00">
「――あの時。
　<RUBY text="・・">あれ</RUBY>を確認できたのは、ウルティマ・アベ
ンジ両騎の様子を後方から窺っていた自分と」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260630a00">
「極めて注意深く、且つ位置と視線の方角が
適切であった観客席の人間。これは幾人もい
ないでしょう。
　しかし少なくとも一人はいました」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　大鳥大尉の事である。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_銃器_構える01");
	SetFwC("cg/fw/fw皇路_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260640b24">
「な……何を言っているのだか。
　さっぱり……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260650a00">
「ウルティマがアベンジを抜くために、アベ
ンジへ注意を集中させた瞬間。
　アベンジの甲鉄の一部が<RUBY text="・・・">鏡面化</RUBY>し、日光を
反射した」

{	FwC("cg/fw/fw皇路_困惑.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260660b24">
「!!」

{	SoundPlay("@mbgm32",0,1000,true);
	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260670a00">
「スリップを活用して抜こうとした、まさに
その瞬間です。
　ウルティマの騎手は視覚を潰され、制御を
失い――コースアウトし」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260680a00">
「惨事を引き起こした。
　自分自身を含む、二一人を犠牲者とする」

{	FwC("cg/fw/fw操_沈痛.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0260690b42">
「……」

{	FwC("cg/fw/fw皇路_困惑.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260700b24">
「……しょ……証拠……
　証拠は……！」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260710a00">
「そこに有ります。
　――皇路操。直ちに除装すべし」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260720a00">
「その<RUBY text="レーサークルス">競技用劔冑</RUBY>を証拠品として押収します」

{	FwC("cg/fw/fw皇路_困惑.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260730b24">
「うっ……うぅ……！」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0260740b42">
「……」

{	FwC("cg/fw/fw皇路_崩壊.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260750b24">
「うっ……ああああ！」

//◆チャキ。
//◆銃を構える皇路
{	MusicStart("SE01",0,1000,0,1000,null,false);
	FwC("cg/fw/fw操_沈痛.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0260760b42">
「……お父さん！」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260770a00">
「……無意味な行動です。
　その銃を捨てて下さい。それはただ、貴方
の罪を増やすだけに過ぎません」

{	FwC("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260780b24">
「はは……無意味？
　違う……違うな」

{	FwC("cg/fw/fw皇路_怒り.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260790b24">
「レーサークルスの事なら何でも知っている
……この距離で、この口径の弾丸は防げない。
　湊斗さん。あなたがいなくなればいいんだ。
あなたさえ……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260800a00">
「無意味です」

{	FwC("cg/fw/fw皇路_困惑.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260810b24">
「あなたが……
　あなたが僕の勝利を奪うのなら……」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260820a00">
「銃を捨てなさい」

{	FwC("cg/fw/fw皇路_怒り.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260830b24">
「――死ねッ！
　死んでしまえッ！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばきゅーん。
//◆かちーん。
	OnSE("se戦闘_銃器_跳弾01",1000);
	CreateColorEX("絵フラ", 15000, "#FFFFFF");
	Fade("絵フラ", 10, 800, null, true);
	FadeDelete("絵フラ", 300, true);

	SetFwC("cg/fw/fw皇路_崩壊.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260840b24">
「……ッ!?」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260850a00">
「……」

{	FwC("cg/fw/fw皇路_困惑.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260860b24">
「ば……馬鹿な。
　そんなはずが！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばきゅーんばきゅーん。
//◆かんかん。
	CreateSE("SE01a","se戦闘_銃器_跳弾01");
	CreateSE("SE01b","se戦闘_銃器_跳弾01");
	MusicStart("SE01a",0,1000,0,1300,null,false);
	CreateColorEX("絵フラ", 15000, "#FFFFFF");
	Fade("絵フラ", 10, 800, null, true);
	MusicStart("SE01b",0,1000,0,700,null,false);
	FadeDelete("絵フラ", 300, true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260870a00">
「……投降せよ。皇路卓。
　貴方の抵抗は不可能である」

{	FwC("cg/fw/fw皇路_崩壊.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260880b24">
「なっ……なぜ……！
　レーサークルスの薄い甲鉄で、防ぎきれる
はずがないのに……!?」

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260890b24">
「……ま、
　まさか……それは……」

{	FwC("cg/fw/fw皇路_困惑.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260900b24">
「それは……ぁッ!?」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260910a00">
「村正。外すぞ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0260920a01">
《やっと？
　良かった。ようやく息が継げる……》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260930a00">
「鬼に逢うては鬼を斬る。
　仏に逢うては仏を斬る」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260940a00">
「ツルギの<RUBY text="ことわり">理</RUBY>ここに在り」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆バキーン。
//◆村正ノーマルモード

	OnSE("se特殊_鎧_装着03",1000);
	PrintGO("上背景", 30000);
	CreateColorSPadd("絵フラ", 15000, "#FFFFFF");
	OnBG(100,"bg037_競技場ガレージa_01.jpg");
	FadeBG(0,true);
	StR(1000, @-24, @0,"cg/st/3d村正標準_立ち_通常.png");
	FadeStR(0,true);
	FadeDelete("上背景", 2000, true);
	WaitKey(1000);
	FadeDelete("絵フラ", 2000, true);

	SetFwC("cg/fw/fw皇路_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260950b24">
「……<RUBY text="シンウチ">真打劔冑</RUBY>……ッ！
　そんな、どうして、警察が……!?」

{	DeleteStR(300,false);
	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260960a00">
「皇路卓。銃を捨てよ。
　皇路操。劔冑を除装せよ」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0260970a00">
「両名に投降を命ずる。
　一切の抵抗は不可能」

{	FwC("cg/fw/fw皇路_困惑.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0260980b24">
「あ……あぁ……」

{	FwC("cg/fw/fw操_悲痛.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0260990b42">
「……」

{	FwC("cg/fw/fw皇路_困惑.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261000b24">
「どうして……
　どうしてこんなことになる」

{	FwC("cg/fw/fw皇路_崩壊.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261010b24">
「やっと……勝利を手にしたのに。
　やっと、世界に挑戦できるのに」

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261020b24">
「みっ、湊斗さん……あなたは僕を応援して
くれていたんでしょう！
　僕の無念を知っているでしょう！」

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261030b24">
「僕は……僕は、ようやくあの挫折からここ
まで還ってきたんだ！
　どれほどの苦労だったか！　あなたなら、
わかってくれるはずです！」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261040a00">
「……」

{	FwC("cg/fw/fw皇路_崩壊.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261050b24">
「見逃してください……！
　お願いします……お願い……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
//「貴方の労苦は知っている。
//　烏滸がましくも、同情さえする」
<voice name="景明" class="景明" src="voice/ma03/0261060a00">
「貴方の苦労は知っている。
　烏滸がましくも、同情さえする」

{	FwC("cg/fw/fw皇路_崩壊.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261070b24">
「みっ……湊斗さん……」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261080a00">
「しかし。
　貴方は人を<RUBY text="あや">殺</RUBY>めた」

{	FwC("cg/fw/fw皇路_崩壊.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261090b24">
「……ッ！」

{	FwC("cg/fw/fw操_沈痛.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0261100b42">
「……湊斗さん……
　やったのは……わたしです……」

//【操】
<voice name="操" class="操" src="voice/ma03/0261110b42">
「……お父さんじゃ……ありません……」

{	FwC("cg/fw/fw皇路_通常b.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261120b24">
「み、操……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261130a00">
「…………」

{	FwC("cg/fw/fw皇路_怒り.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261140b24">
「しょ、翔京の奴を殺したから……何だって
いうんだ。
　あなたも見たでしょう！　奴らこそ先に、
僕達を傷つけ――殺そうとしたんだ！」

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261150b24">
「奴らと同じことをしてやったに過ぎない！」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261160a00">
「彼らと同じ事をしたのなら。
　彼らと同じく、罪を負うという事」

{	FwC("cg/fw/fw皇路_困惑.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261170b24">
「ぅぐッ……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261180a00">
「――一歩譲って。
　仮に、そこに目を瞑るとしても」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261190a00">
「事故に巻き込まれた観客の人々に対しては、
一切の弁明が通用しない。
　彼らは貴方に何をしたわけでもない。にも
拘わらず殺され、あるいは重傷を負った」

{	FwC("cg/fw/fw皇路_困惑.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261200b24">
「うっ……うぅぅ……
　くそっ、くそっ、くそぉっ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばきゅんばきゅん
	CreateSE("SE01a","se戦闘_銃器_跳弾02");//ダミー注意
	CreateSE("SE01b","se戦闘_銃器_跳弾02");//ダミー注意
	MusicStart("SE01a",0,1000,0,1300,null,false);
	CreateColorEX("絵フラ", 15000, "#FFFFFF");
	Fade("絵フラ", 10, 800, null, true);
	MusicStart("SE01b",0,1000,0,700,null,false);
	FadeDelete("絵フラ", 300, true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261210a00">
「……」

{	FwC("cg/fw/fw皇路_怒り.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261220b24">
「観客がどうした！
　あいつらは僕が活躍している間は拍手喝采
を送って寄越し、勝利の余光を浴びて愉しみ」

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261230b24">
「ひとたび僕が挫折すれば、あっさり忘れて
次の英雄へ笑顔を向けたような連中だ！
　奴らは僕を消費しただけだッ！　食い物の
ように！　玩具のように！」

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261240b24">
「そんな奴らをどれだけ巻き込もうが、僕の
知ったことか！
　知ったことかぁっ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばきゅんばきゅん
	CreateSE("SE01a","se戦闘_銃器_跳弾02");//ダミー注意
	CreateSE("SE01b","se戦闘_銃器_跳弾02");//ダミー注意
	MusicStart("SE01a",0,1000,0,1300,null,false);
	CreateColorEX("絵フラ", 15000, "#FFFFFF");
	Fade("絵フラ", 10, 800, null, true);
	MusicStart("SE01b",0,1000,0,700,null,false);
	FadeDelete("絵フラ", 2000, true);

//◆かちかち。弾が尽きた。
	OnSE("se戦闘_銃器_複数構える01",1000);//ダミー注意

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261250a00">
「……投降せよ」

{	FwC("cg/fw/fw皇路_崩壊.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261260b24">
「ぐっ……あああ、あああああ」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261270a00">
「投降し、縛につけば危害は加えない。
　法に基いた待遇を保証する」

{	FwC("cg/fw/fw皇路_崩壊.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261280b24">
「逮捕されれば、僕はどうなる……
　操はどうなる」

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261290b24">
「今日の勝利は……
　世界への挑戦は！」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261300a00">
「……」

{	FwC("cg/fw/fw皇路_怒り.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261310b24">
「奪うんだな!?
　全て、何もかも、僕から奪うんだな!?」

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261320b24">
「諦めろと――
　またしても僕に、諦めろというのか！」

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261330b24">
「嫌だぁッ！　嫌だ嫌だ嫌だ！
　あんな思いは一度でも嫌だ！　二度も味わ
わされてたまるものか！」

{	FwC("cg/fw/fw皇路_狂気.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261340b24">
「渡さないぞぉっ！
　今日の勝利は僕の物だ！　世界への道は僕
の物だ！　誰にも渡さないぃっ!!」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261350a00">
「皇路卓。
　それはもはや貴方のものではない」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261360a00">
「貴方が……
　闘い方を、誤った時に。失ったのだ」

{	FwC("cg/fw/fw皇路_狂気.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261370b24">
「認めなぁい……
　認めないぞ、僕はァ……」

{	FwC("cg/fw/fw皇路_狂気.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261380b24">
「操……
　クルスを纏えぇ！」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0261390b42">
「……お父さん……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261400a00">
「皇路卓！
　投降を！」

{	FwC("cg/fw/fw皇路_狂気.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261410b24">
「操ぉッ！」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0261420b42">
「……はい」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ジャキ。兜装着
//◆アベンジ
	CreateSE("SE01","se特殊_鎧_装着01");
	MusicStart("SE01",0,1000,0,700,null,false);
	WaitKey(300);

	StL(1000, @0, @0,"cg/st/3dアベンジ_立ち_通常.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261430a00">
「皇路操。父の指示に従っても意味は無い！
　<RUBY text="レーサークルス">競技用劔冑</RUBY>をどう操ろうと抗戦は不可能！」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261440a00">
「除装せよ！」

{	FwC("cg/fw/fwアベンジ_通常.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0261450b42">
「……ごめんなさい。湊斗さん。
　きっと、あなたが正しい……」

//【操】
<voice name="操" class="操" src="voice/ma03/0261460b42">
「けど……間違っていても……
　わたしはお父さんに従います」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261470a00">
「……っ」

{	FwC("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261480b24">
「そうだ……操。
　僕らは別々のものではない。一つのものだ」

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261490b24">
「僕はお前だ。
　お前は僕だ」

{	FwC("cg/fw/fwアベンジ_通常.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0261500b42">
「はい」

{	FwC("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261510b24">
「お前の勝利が僕の勝利だ。
　だからお前は勝たなくてはならない」

{	FwC("cg/fw/fwアベンジ_通常.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0261520b42">
「はい」

{	FwC("cg/fw/fw皇路_狂気.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261530b24">
「僕はお前を勝たせなくてはならない……
　何をしても」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆キラッ。
//陰義発動まとめ
	CreateSE("SE01","se特殊_陰義_発動04");
	CreateSE("SE02","se日常_建物_窓ガラス破壊01");
	CreateSE("SE03","se日常_物_木箱壊れる01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 600, null, true);
	WaitKey(100);

	FadeDelete("絵フラ", 600, false);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261540a00">
「――!?」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0261550a01">
《御堂！
　……あれは――!!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　皇路卓が懐から取り出したもの。
　拳大の、輝く球体――

　銀星号の〝卵〟!!

　……植え込まれていなかったのか!?
　<RUBY text="ひかる">銀星号</RUBY>はあのまま手渡したのか!!

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261560a00">
「だから発見できなかったのか……！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0261570a01">
《だから孵化しなかったの!?》

{	FwC("cg/fw/fwアベンジ_通常.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0261580b42">
「お父さん……
　それは……」

{	FwC("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261590b24">
「<RUBY text="・・・">ちから</RUBY>だ。
　きっと、とてもとても、恐ろしいちからだ」

{	FwC("cg/fw/fw皇路_狂気.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261600b24">
「銀色の悪魔に、貰ったのだよ」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261610a00">
「それを直ちに引き渡せ、皇路卓！
　それはお前に何も与えない！」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261620a00">
「ただ奪うだけだ！
　何もかもを！」

{	FwC("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261630b24">
「……ああ。悪魔もそう言った。
　これを使えば何もかも失う」

{	FwC("cg/fw/fw皇路_狂気.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261640b24">
「そして、引き換えに……
　望むだけの力を得られると」

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261650b24">
「最速の世界を制する夢が叶うと！」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261660a00">
「欺瞞だ!!
　確かに力は得られるかもしれない。しかし
その力はお前も、娘も、食い破らずにはおか
ない！」

{	FwC("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261670b24">
「だからどうした？
　僕は自分の滅びには耐えられる。僕の一部、
操を失うことにも耐えられる。
　耐えられないのは……」

{	FwC("cg/fw/fw皇路_怒り.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261680b24">
「僕と操の勝利が失われることだけだ!!」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261690a00">
「皇路卓ッッ!!」

{	FwC("cg/fw/fw皇路_狂気.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261700b24">
「操ぉッ！
　僕らは勝つ！　必ず勝つんだ!!」

{	FwC("cg/fw/fwアベンジ_通常.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0261710b42">
「……はい。お父さん」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0261720a01">
《御堂ッ！
　だめ、止めて――！》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261730a00">
「ぁ――ぁぁあああッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆斬撃
	SetVolume("@mbgm*", 10, 0, null);
	PrintBG("上背景", 30000);
	CreateColorSP("絵地", 10, "#000000");
	Delete("上背景");

	OnSE("se戦闘_攻撃_刀振る01",1000);
	SL_leftdown(@0, @0,1000);
	SL_leftdownfade2(10);

	WaitKey(500);

//◆ずばしゅ。
	OnSE("se人体_血_血しぶき01",1000);
	SL_centerdam(@0, @0,1000);
	SL_centerdamfade2(10);

	CreateColorEX("絵血", 5000, "#CC0000");
	Fade("絵血", 600, 1000, null, true);

	PrintGO("上背景", 25000);
	OnBG(100,"bg037_競技場ガレージa_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);

	SetFwC("cg/fw/fwアベンジ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【操】
<voice name="操" class="操" src="voice/ma03/0261740b42">
「――――お父さん!?」

{	FwC("cg/fw/fw皇路_通常b.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261750b24">
「ぐ……」

{	FwC("cg/fw/fw皇路_狂気.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261760b24">
「おああああああああああ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フラッシュ。ピキーン。
//陰義発動まとめ
	CreateSE("SE01","se特殊_陰義_発動03");
	MusicStart("SE01",0,1000,0,1500,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 600, null, true);
	WaitKey(100);
	FadeDelete("絵フラ", 600, false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0261770a01">
《〝卵〟が――!!》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261780a00">
「っ……！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆アベンジ
//◆フラッシュ。なんか力が宿ったっぽく。ちょっと変形？
	CreateSE("SE01","se特殊_陰義_発動04");
	MusicStart("SE01",0,1000,0,750,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 600, null, true);
	WaitKey(100);
	FadeDelete("絵フラ", 600, false);

	SetFwC("cg/fw/fwアベンジ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【操】
<voice name="操" class="操" src="voice/ma03/0261790b42">
「お父さん！
　……お父さんっ!!」

{	FwC("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261800b24">
「い……いけ。
　いけぇ……操ぉぉ!!」

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261810b24">
「勝つんだ！
　世界に勝つんだ！」

{	FwC("cg/fw/fwアベンジ_通常.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0261820b42">
「血が……あぁ……！」

{	FwC("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261830b24">
「操！
　僕はそこにいる！」

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261840b24">
「そのアベンジが僕だ！
　お前の血肉が僕だ！
　忘れたのかッ！」

{	FwC("cg/fw/fwアベンジ_通常.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0261850b42">
「……っ……」

{	FwC("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261860b24">
「世界を超えろ、操！
　僕の騎体で！
　僕の技術で！」

{	FwC("cg/fw/fw皇路_狂気.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261870b24">
「僕を……世界の頂点へ連れて行ってくれ！
　操ぉぉぉぉぉぉっっっ!!」

{	FwC("cg/fw/fwアベンジ_通常.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0261880b42">
「あ……ああ、あ」

//【操】
<voice name="操" class="操" src="voice/ma03/0261890b42">
「あああああああーーーーーーーっ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆アベンジ消失
//◆ばりーん。窓破る。
//陰義発動まとめ
	CreateSE("SE01a","se戦闘_動作_空突進01");
	CreateSE("SE01b","se戦闘_動作_空突進02");
	CreateSE("SE02","se日常_建物_窓ガラス破壊01");
	CreateSE("SE03","se日常_物_木箱壊れる01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateColorSPadd("絵フラ", 5000, "#FFFFFF");
	WaitKey(100);
	MusicStart("SE03",0,1000,0,1000,null,false);
	Wait(100);
	MusicStart("SE02",0,1000,0,1000,null,false);
	Fade("絵フラ", 600, 0, null, false);
	DrawDelete("絵フラ", 300, 500, "slide_05_00_1", true);

	SetFwC("cg/fw/fw皇路_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261900b24">
「……そうだ……操。
　速く……速く<RUBY text="はし">騎航</RUBY>れ……」

{	FwC("cg/fw/fw皇路_通常b.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0261910b24">
「世界の、先端……まで…………」

//◆がく。死んだ。
{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261920a00">
「……ああ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　皇路卓は死んだ。
　殺してしまった。

　しかも、止められなかった……！
　ただ――殺した、だけ……か。

　何という……
　酷劣な、罪悪。

　俺は……また……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0261930a01">
《御堂！》

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261940a00">
「…………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0261950a01">
《御堂ッ！　追って！　追うの！
　あの〝卵〟は覚醒寸前だったの！　きっと
あれは他の劔冑で<RUBY text="・・">培養</RUBY>された後、摘出された
もの……》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0261960a01">
《だからこれまでは決して孵化しなかった。
　けど今は違う！　〝卵〟はあの劔冑の中で
孵化に向かって進んでる！　もう間もない！》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0261970a01">
《このまま待てば――ここがどこかわかって
いるでしょう、御堂!?
　<RUBY text="・・・・・・・・">鎌倉が滅ぼされる</RUBY>!!》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261980a00">
「……!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　そうだ。
　今は――独り善がりな悔恨に浸っていられる時では
ない。

　自傷という名の自慰行為を惨めに楽しむなら、全て
が終わった後の事だ。
　今は為すべき事が……ある。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0261990a00">
「――行く」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0262000a01">
《ええ！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆飛び立つ。ばひゅーん。
	OnSE("se戦闘_動作_空上昇01",1000);
	CreateColorEXadd("絵フラ", 15000, "#FFFFFF");
	Fade("絵フラ", 200, 1000, null, true);

	WaitKey(1000);

	ClearWaitAll(2000, 2000);

//◆空を駆けるアベンジ
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
		CreateTextureSP("絵Circuit01", $サーキット真横_BG, InRight, Middle, "cg/bg/bg204_横旋回背景_03.jpg");
		CreateTextureSP("絵Circuit02", $サーキット真横_BG, InRight, Middle, "cg/bg/bg204_横旋回背景_03.jpg");
		CreateSCR1("@絵Circuit01","@絵Circuit02",35000,0, @0);
	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/st/3dアベンジ_騎航_通常_b.png");
	Fade("絵背景100", 0, 1000, null, true);
	BGMoveAuto("@絵背景100",1);

	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　――思えば。
　記憶の全ては<RUBY text="ちち">兄</RUBY>の存在で満たされていた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);
	BGMoveDelete();
	SCR1stop();

}

..//ジャンプ指定
//次ファイル　"ma03_027vs.nss"