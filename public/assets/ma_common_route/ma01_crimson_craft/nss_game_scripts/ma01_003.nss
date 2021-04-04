//<continuation number="1950">



chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_003.nss_MAIN
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
	#bg008_教室_01=true;

	#ev102_大阪虐殺_a=true;

	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_稲城忠保=true;
	#voice_on_鈴川令法=true;

	$PreGameName = $GameName;

	$GameName = "ma01_004.nss";

}

scene ma01_003.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma01_002.nss"

//◆ＳＥ：ガラッ
//◆教室、忠保
	PrintBG("上背景",30000);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg008_教室_01.jpg");

	StL(1000, @0,@0,"cg/st/st忠保_通常_制服.png");
	FadeStL(0,true);


	OnSE("se日常_学校_教室ドア開ける01",1000);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

	SoundPlay("@mbgm29",0,1000,true);

	SetFwC("cg/fw/fw忠保_通常.png");

	#voice_on_稲城忠保=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030010b43">
「タムラワークスのサンダーボルトが敗れた
原因は<RUBY text="コーナーリング">旋回性能</RUBY>を過信したからというよりも
むしろ直線で勝つための加速能力を軽視した
ウイング調整にあると思うんだけど」

//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030020b43">
「<RUBY text="アフターバーナー">補助推進器</RUBY>に<RUBY text="ブラック">黒丸</RUBY>を使っておいてウイング
は重拡にしていた意図がどこにあったにせよ
結果だけ見ていえば単に器用貧乏で終わった
としか言いようがないんだ残念ながら」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＳＥ：ピシャン
//◆黒塗り
//◆ガラッと教室

	SetVolume("@mbgm29", 0, 0, null);

	CreateSE("SE01","se日常_学校_教室ドア閉める01");
	MusicStart("SE01",0,1000,0,1700,null,false);

	CreateColorSP("黒幕１", 3000, "BLACK");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("@text0010");

	WaitPlay("SE01", null);
	Wait(2000);

	StL(1000, @0,@0,"cg/st/st忠保_通常_制服.png");
	FadeStL(0,true);

	OnSE("se日常_学校_教室ドア開ける01",1000);

	DrawDelete("黒幕*", 1000, 100, "blind_01_00_1", true);


	SoundPlay("@mbgm29",0,1000,true);

	SetFwC("cg/fw/fw忠保_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030030b43">
「おはよう雄飛。やあ小夏、今日もとっても
チャーミングだね」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030040b56">
「……おはよう」

{	StR(1000,@0,@0,"cg/st/st小夏_通常_制服.png");
	FadeStR(300,false);
	FwC("cg/fw/fw小夏_通常b.png");}
//◆棒読みで
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0030050b33">
「ありがとう稲城くん。嬉しいわ。あなたも
素敵よ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　……教室の扉を開けるなり顔を合わせた、この男の
名は<RUBY text="いなぎただやす">稲城忠保</RUBY>。

　おれと小夏にとっては幼馴染というのか、腐れ縁と
いうのか、まあそういった生き物である。

　見ての通りに軽々しく、軽々としていて、あたかも
軽いかのようだが、実際に軽い。

　付き合い方は単純である。
　まともに取り合わない。これに尽きる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030060b43">
「クールだね小夏……きみのそんなところに
触れるたび僕のハートは小鳥のように震えて
しまう。でもきみはきっとそんな僕を優しく
抱いてくれる暖かさも持っているんだ」

{	FwC("cg/fw/fw小夏_怒りb.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0030070b33">
「雄飛、ライター持ってる？」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030080b56">
「ないけど。いや何に使う気だそれ。
　別に止めようとも思わんが」

{	FwC("cg/fw/fw忠保_笑顔b.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030090b43">
「愛の炎で焼かれるのなら本望だよ、小夏！
　カモーン！」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0030100b33">
「リツは？」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030110b43">
「まだ来ていないね」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030120b56">
「珍しいな」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　おれ、小夏、忠保、そこに加えてもうひとり、リツ
――<RUBY text="かざまりつ">飾馬律</RUBY>。この四人が、つまりはチームということ
になる。
　別に何の競技にも出場しないが。

　同年齢のうえ四人の中で最も放漫な生活をしている
くせにやたら姉さん風を吹かせたがるリツは、権威を
補強するためなのかどうかは知らないが、必ず余裕を
もって登校する。

　そして遅れてきた仲間を怒る。
　勝手に早く来ているだけだろうに、長く一人ぼっち
でほっとかれると寂しくて腹が立つらしい。

　だったら他の同級生と遊んでいれば良さそうなもの
だが、生憎彼女と同じくらい早く登校するのは立派な
模範生たちであり、堂々たる反面模範であるリツとは
全く共通の話題など無い。

　その憂さが向けられるわけだ。
　主におれに。なぜか。いや、ほんとになんでだか。

　といっても、小夏と違って暴力の形は取らない。
　リツはもう少し文明的に、あくまでも言葉を使う。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwリツ_笑顔.png");
	SetComic(@0,@0,11);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【リツ】
<voice name="リツ" class="その他女声" src="voice/ma01/0030130b11">
『おほほほほほほ、おはようございます雄飛
さん。あらあら今日もごゆっくりだこと。
　一体どうしてそんなに朝が遅いのかしら？』

//【リツ】
<voice name="リツ" class="その他女声" src="voice/ma01/0030140b11">
『きっと全身の血液が下半身の一箇所に集結
して頭に回るぶんが奪われているからに違い
ありませんわ！　いけなくてよ雄飛さんっ！
ちゃんと夜のうちに右手運動を励みなさい！』

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　内容はちっとも文明的ではないが。

　はっきり言って、朝も<RUBY text="は">早</RUBY>よからあんな腐蝕性の強い
音波を脳髄に注がれてはたまったものではないので、
リツが今日はまだ来ていないというのは率直に言って
ありがたい。

　が、不審なことでもある。
　滅多なことでは時間ぎりぎりの登校などしないやつ
なのだが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030150b56">
「まあ、夜にあれだけ遊び歩いててこれまで
一度も遅刻してない方が不思議か……」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030160b43">
「そういうことでもないのかもしれないけど
ね。夜間外出の取り締まりが厳しくなってる
らしいから」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0030170b33">
「そうなの？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　学生の夜間外出禁止は当たり前。
　忠保が言っているのは大人に対してのことで、当然
大人のフリをして出歩いている学生も含まれる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030180b43">
「鎌倉<RUBY text="おおばん">大番</RUBY>が夜の見回りを増やしたみたいだ
よ。捕まったら良くて一晩拘束、悪くすれば
軍施設送りだとか」

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030190b56">
「うへ。たまらんね。
　……でもまあ、そんなのに引っ掛かるよう
なリツじゃないだろ」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030200b43">
「警備の網をかいくぐるこのスリルがたまり
ませんわー、とか言って前よりも酷く夜遊び
してる可能性はあるね」

{	FwC("cg/fw/fw小夏_呆れ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0030210b33">
「そんなところじゃない？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　そんなところなのだろう。

{//立ち絵消し
	DeleteStR(300,false);
	DeleteStL(300,false);}
　同級生たちと適当に挨拶を交わしながら自分の席に
つく。
　忠保がひらひらと後を追ってきていた。まあ、隣の
席なんだが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(1000, @0,@0,"cg/st/st忠保_通常_制服.png");
	FadeStL(300,false);

	SetFwC("cg/fw/fw忠保_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030220b43">
「で、話の続きなんだけど」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030230b56">
「何の話？」

{	FwC("cg/fw/fw忠保_笑顔a.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030240b43">
「<RUBY text="アーマーレース">装甲競技</RUBY>」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030250b56">
「ああはいはい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　忠保は趣味が広いが、中でも最も興味を注いでいる
のは<RUBY text="レーサークルス">競技用劔冑</RUBY>を用いた<RUBY text="アーマーレース">装甲競技</RUBY>だった。
　といっても無論、自分が<RUBY text="はし">翔</RUBY>るわけではない。

　専門誌を買い漁る、レースがあればラジオで中継を
聞く、近場であれば見物に行く、今はそれだけだ。
　だがいずれは選手としてサーキットを駆け回ること
が夢らしい。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_快活.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030260b56">
「で、なんだっけ。タムラまた負けたの？」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030270b43">
「またとか言って欲しくはないけどその通り
だよ。セッティングミスがねぇ……どうして
あんな素人くさい失敗するかなぁ……」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030280b56">
「まあタムラだし」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030290b43">
「その一言で片付けて欲しくはないけどその
通りだね。残念ながら」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030300b56">
「んで、勝ったのは？」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030310b43">
「ヨコタンのスーパーハウンド。
　翔京のアプティマも結構いいとこまで食い
ついてたけどね」

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030320b56">
「またか。強ぇな、あれ」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030330b43">
「ベルトドライブ機構の威力なんだろうねぇ」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030340b56">
「ツラ構えが無骨過ぎて面白味がないから、
おれはどうも好きになれないんだけどな……」

{	FwC("cg/fw/fw忠保_笑顔b.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030350b43">
「同感だよ。その点、タムラはいいなぁ。
　デザイン一つとってもなんだか夢があって」

{	FwC("cg/fw/fw雄飛_快活.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030360b56">
「レースじゃ勝てないけどな」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030370b43">
「良くも悪くも趣味的なんだよ。
　勝つことよりもやりたいこと優先っていう
か……そこが好きなんだけど」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030380b56">
「タムラワークスの選手は誰だったんだよ。
　おまえご贔屓の<RUBY text="おうじみさお">皇路操</RUBY>か？」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030390b43">
「まさか。彼女だったらそんなミスはないさ。
　なんて言ったかなあ？　聞いたことのない
新人だったよ」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030400b56">
「腕は？」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030410b43">
「見るべき点はなかったね。やっぱりいまの
タムラは皇路操一人のチームだよ」

{	FwC("cg/fw/fw雄飛_快活.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030420b56">
「おまえが続けばいいじゃないか」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030430b43">
「もちろん、そのつもりだよ？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　いつも通りピラピラした声で応じる忠保。
　つまりは真剣ということだ。

　そう、冗談ではないところがこの男は凄い。
　プロのレーサーになろうと思えばいくつもの関門を
突破しなくてはならないが、忠保は本気でそのゴール
を目指して努力している。

　常から勉強と情報収集を怠らないのは無論のこと、
体力作りのため毎朝走り込んでいるし、劔冑を扱うの
なら必修といわれる水泳も欠かさない。

　実際の技術を習得するには劔冑を手に入れなくては
ならないが、その資金は学校卒業後に数年間、父親の
仕事を手伝うことでまかなうつもりらしい。
　だからそのための勉強もしている。

　当たり前だが<RUBY text="クルス">劔冑</RUBY>は高価だ。
　本職の武者がよろう戦闘用の<RUBY text="ツルギ">劔冑</RUBY>とは比較にならない
ものの――そもそも市販などされない――、競技用劔冑
とて十分に希少な品である。

　型落ちの中古品でさえ絶対に百万は下るまい。
　マイカードリームとは夢の値段が違う。

　それだけの金額を数年で稼げる見込みのある忠保は
――忠保の父親はいわゆる商社マン、今の世の中では
エリートと言っていい――確かに恵まれている方だが、
それでも普通は諦めてしまうところだ。

　どこをどう見ようと薄くて軽いこの男の人格になぜ
そんな根性があるのか、これはもう神秘である。
　人間は奥が深い。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030440b56">
「実は結構うらやましいんだ」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030450b43">
「なんだい？」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030460b56">
「はっきりとした夢を持ってて、そのために
努力できるおまえ」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030470b43">
「…………」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030480b56">
「おれは努力を問われる以前にやりたいこと
がないからな……自分でも不思議だ。
　なんでこんなに老け込んでんだろ、おれ」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030490b56">
「普通さ、おれくらいの若者ってのはむやみ
やたらと夢を持ちまくるもんじゃないのか？」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030500b43">
「むやみやたらかなぁ」

{	FwC("cg/fw/fw雄飛_笑顔a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030510b56">
「おれ将来天下取れるよなーってスムーズに
信じていたりしないか？」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030520b43">
「したの？」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030530b56">
「昔は」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030540b43">
「今は？」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030550b56">
「……とりあえず死ぬまでに犬小屋くらいは
建てようかなと思う」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030560b43">
「老け込んでるねぇ」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030570b56">
「うん」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　大体その辺で終わるような気がする。おれの人生。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030580b43">
「でも僕はね、いずれ雄飛は何かに向かって
走り出すと思うんだ」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030590b56">
「犬小屋？」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030600b43">
「うーん、多分ほかのなにか」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030610b56">
「そうかなぁ」

{	FwC("cg/fw/fw忠保_笑顔a.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030620b43">
「きっとそうだよ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　なにかに、ねぇ。
　少なくとも今は、まったく見えないんだが。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ガラッとＳＥ
//◆鈴川の立ち絵


	StR(1000, @+50, @0,"cg/st/st鈴川_通常_制服.png");

	OnSE("se日常_学校_教室ドア開ける01",1000);
	FadeStR(300,true);

	SetFwC("cg/fw/fw忠保_驚き.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030630b43">
「おっとっと」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStR(300,false);
	DeleteStL(300,true);

	StC(1000, @0,@0,"cg/st/st鈴川_通常_制服.png");
	FadeStC(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　担任の鈴川登場。
　忠保が慌てて席へ戻る。

　カツカツと、いつもながらの力強さで鈴川は教壇に
立った。そしてびしりと直立する。
　……おれよりも数倍若々しいな。正直。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw鈴川_笑顔.png");

	#voice_on_鈴川令法 = true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0030640b57">
「おはよう、みんな。今日も一日、
　……ん？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　水泳部の顧問らしい、肺活量に裏打ちされた張りの
ある声が不意に途絶える。
　おやっという顔で、鈴川は教室を見回した。

　このクラスの人数は二〇人程度。
　誰がいて誰がいないかは一目でわかる。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw雄飛_驚くa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030650b56">
「……とうとう遅刻だな。リツ」

{	FwR("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030660b43">
「珍しいこともあったもんだねぇ……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　忠保と囁き合いながら、そろって首をひねる。
　珍しいこと。まったく本当に。

　……その時はまだ、その程度のことでしかなかった。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm29", 1000, 0, null);


	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


	Wait(1000);
	DeleteStC(0,true);


	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");


	StR(1000, @0, @0,"cg/st/st鈴川_通常_制服.png");
	FadeStR(300,true);

	SoundPlay("@mbgm30",0,1000,true);


	SetFwC("cg/fw/fw鈴川_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0030670b57">
「――こうして宰領府が解体され、内府家の
大和支配が終わりを迎えたのは天永六年……
国紀二五一七年。外暦では一八五七年」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0030680b57">
「二二六〇年の開府からおよそ二五〇年もの
間、いわゆる藩制時代は続いたわけだ。大和
史上、一つの統治体制がここまでの長期間に
渡って存続した例はほかにない」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0030690b57">
「いや、世界史上でも珍しい。
　大抵はそこまで歴史を重ねる前に腐敗して
しまう……」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0030700b57">
「前橋！」

{	NwC("cg/fw/nw前橋.png");}
//【ｅｔｃ／前橋】
<voice name="ｅｔｃ／前橋" class="その他男声" src="voice/ma01/0030710e143">
「ふぁい!?」

{	FwC("cg/fw/fw鈴川_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0030720b57">
「ちゃんと聞いてるか？
　なぜ、徳川宰領府はこんなに長い間大和を
支配していられたのだと思う？」

{	NwC("cg/fw/nw前橋.png");}
//【ｅｔｃ／前橋】
<voice name="ｅｔｃ／前橋" class="その他男声" src="voice/ma01/0030730e143">
「……わかりません」

{	FwC("cg/fw/fw鈴川_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0030740b57">
「当てずっぽうでいい」

{	NwC("cg/fw/nw前橋.png");}
//【ｅｔｃ／前橋】
<voice name="ｅｔｃ／前橋" class="その他男声" src="voice/ma01/0030750e143">
「…………代々の<RUBY text="ないだいじん">内府公</RUBY>が立派だったから？」

{	FwC("cg/fw/fw鈴川_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0030760b57">
「ふむ。
　徳川一五代のうち何人かについては、そう
言ってもいい」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0030770b57">
「だが例えば五代目内府公、生類憐れみの令
を実施した綱吉は立派か？」

{	NwC("cg/fw/nw前橋.png");}
//【ｅｔｃ／前橋】
<voice name="ｅｔｃ／前橋" class="その他男声" src="voice/ma01/0030780e143">
「いえ……」

{	FwC("cg/fw/fw鈴川_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0030790b57">
「いちモラリストとしてはもしかすると立派
だったのかもしれないけどな。
　統治者としては褒められた話じゃない」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0030800b57">
「しかし彼の治世でも、宰領府の統治は一応
まっとうに機能していた……。
　稲城。なぜだと思う？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	StL(1000, @0, @0,"cg/st/st忠保_通常_制服.png");
	OnSE("se日常_物_椅子鳴る01",1000);
	FadeStL(300,true);

	SetFwC("cg/fw/fw忠保_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0289]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030810b43">
「徳川宰領府というものが、一言で言えば、
せこい体制だったからじゃないかと」

{	FwC("cg/fw/fw鈴川_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0030820b57">
「……もう少し詳しく」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	FwC("cg/fw/fw忠保_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030830b43">
「徳川の初代家康は、秀吉死後の豊臣体制内
で実権を掌握、江戸に宰領府を開き、事実上
の天下人になりましたが……」

//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030840b43">
「関東を中心に約三百万石といわれる領土を
確保すると、それ以外の土地は諸大名に任せ、
あれこれと細かい口出しはしませんでした」

//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030850b43">
「その理由は、そもそも宰領府の設立目的が
全国征服ではなく、徳川一族の庇護と繁栄に
過ぎなかったからです」

//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030860b43">
「だから徳川家を維持するために必要な領土
しか求めず、ほかを藩として分割しましたし、
その内政にも関心を持ちませんでした」

//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030870b43">
「反面、城の修復やら治水工事やらを頻繁に
指示して諸侯に財力を蓄えさせなかったのも、
理由は同じです」

//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030880b43">
「この徳川のやり方が結果的に、地方のこと
は地方に任せて、何も知らない中央が余計な
指図をしたりしないという、とても実際的な
統治体制を造り上げたわけです」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0030890b43">
「もし徳川家康が欲張って、全国津々浦々を
自分の手腕で直接統治しようとしていたら、
歴史はだいぶ変わっていたんじゃないかと」

{	FwC("cg/fw/fw鈴川_笑顔.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0030900b57">
「座ってよし」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ガタッ。忠保消去
	OnSE("se日常_物_椅子鳴る01",700);
	DeleteStL(300,true);

	SetFwC("cg/fw/fw鈴川_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0030910b57">
「大体はいま稲城が言った通りだ。徳川家は
地方分権を選び、中央集権を選ばなかった。
　その選択が時代に即していたわけだな」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0030920b57">
「ここは試験に出すぞ？」

{	FwC("cg/fw/fw雄飛_驚くb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0030930b56">
（うぇっ）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　やべ。
　完全に聞き流しておりました。

　まあいいか、後で忠保に聞けば。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw鈴川_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0030940b57">
「そして時代が変わり、西洋列強の帝国主義
が先鋭化してくると、この体制は終わった。
　稲城のいう『せこい体制』では到底、列強
に対抗できなかったからだ」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0030950b57">
「藩制時代の初期に行われた鎖国を復活させ
よう、なんて考えた人々もいたが……」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0030960b57">
「鎖国とは外国との交際を一切断つことで、
黎明期の宰領府は国内の基盤を固めるあいだ
他国の干渉を排除するための緊急措置として
これを行っている」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0030970b57">
「また享保年間、関白豊臣秀興の徳川討伐令
に端を発する大坂の陣に際して、関白が大英
連邦から大量の武器を買い入れるという噂が
立ったために短期間鎖国がされたこともある」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0030980b57">
「もし西洋列強のアジア進出への対策として
末期の宰領府が再鎖国を選択していたら……
たぶん大規模な武力衝突を招く結果になった
ろう」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0030990b57">
「だが結局、大和は王政復古、中央集権国家
としての新生という道を選択する。
　それが具体的にどういうものか……」

{	FwC("cg/fw/fw鈴川_笑顔.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031000b57">
「を話し始めると長いから、今日はここまで
にするか。あと五分しかないしな」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　よし。
　さすが鈴川。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw鈴川_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031010b57">
「かわりに少し、余計な話をしよう」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　よし。
　だめだ鈴川。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw鈴川_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031020b57">
「国紀二六〇〇年、外暦一九四〇年現在。
　大和国を事実上支配している六波羅幕府は
……」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031030b57">
「言うなれば、欲張った徳川だ」

{	SetVolume("@mbgm30", 600, 0, null);
	SoundPlay("@mbgm35",0,1000,true);
	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031040b56">
「…………」

{	FwC("cg/fw/fw鈴川_冷徹.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031050b57">
「自分たちの利益だけを求める、せこい思想
に基づいて全土を支配しようという体制だ。
　貴族院も衆議院も廃止された。内閣も機能
していない。京都朝廷はもともとお飾りだ」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031060b57">
「そのかわり、鎌倉には<RUBY text="ふだらく">普陀楽</RUBY>山塞を築き、
周囲に四<RUBY text="くぼう">公方</RUBY>を置き、関東一帯を軍事基地化
して大和全土を睥睨している」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031070b57">
「統治方針は実にシンプルでわかりやすい。
『逆らうな。服従しろ』だ」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031080b57">
「反抗すればどうなるか……。
　大阪が焼け野原となり、今なお再建されない
理由を、知らない者はいないだろうな」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆大阪虐殺ＣＧ。六波羅の暴虐イメージ補強
//◆数秒見せて消去

//嶋：後で演出
	CreateTextureEX("絵EV100", 10000, Center, Middle, "cg/ev/ev102_大阪虐殺_a.jpg");
	Fade("絵EV100", 1000, 1000, null, true);

	Wait(3000);
	FadeDelete("絵EV100",1000,true);

	SetFwC("cg/fw/fw鈴川_冷徹.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031090b57">
「近畿に住む友人の言によれば、あの街は今、
<RUBY text="・・・・・・">二重の意味で</RUBY>ゴーストタウンなのだそうだ」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031100b57">
「……我々は今、かような支配を受けている」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　…………。

　鈴川…………。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw鈴川_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031110b57">
「稲城。お前はさっき家康が欲張っていたら
歴史は変わっていたと言ったな」

{	FwC("cg/fw/fw忠保_冷徹.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0031120b43">
「…………」

{	FwC("cg/fw/fw鈴川_冷徹.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031130b57">
「どう変わるかは、これからやつらが教えて
くれる。……すぐに」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0031140b33">
「…………」

{	FwC("cg/fw/fw鈴川_怒り.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031150b57">
「すぐにだ……すぐに終わる。
　こんな下らん時代は…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm35", 1000, 0, null);

//◆キーンコーンカーンコーン。ブラックアウト
	CreateColorEX("絵色100", 15000, "Black");
	Fade("絵色100", 1000, 1000, null, true);

	DeleteStA(0,true);

	Wait(500);

	OnSE("se日常_学校_チャイム01",1000);

	Wait(500);

	Fade("絵色100", 1000, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　昼。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_通常.png");
	SoundPlay("@mbgm28",0,1000,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0031160b43">
「雄飛、今日のお昼ご飯はなんだい？
　僕は玄米パンとお芋だよ」

{	FwC("cg/fw/fw雄飛_笑顔b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031170b56">
「おれは玄米パンと芋だ」

{	FwC("cg/fw/fw小夏_通常a.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0031180b33">
「わたしは玄米パンとお芋ね」

{	FwC("cg/fw/fw忠保_笑顔b.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0031190b43">
「奇遇だねぇ。みんな一緒だ」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031200b56">
「給食だからな」

{	FwC("cg/fw/fw小夏_怒りb.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0031210b33">
「違ってたらそっちの方が奇遇ね」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　もぐもぐ食べる。
　まずくもないがうまくもない。慣れきった味だ。

　食糧増産計画の開始以降、玄米と芋類は食卓の二大
巨頭となって覇権を競っている。
　コストパフォーマンスを追求した結果、最も優れた
食糧とされたのがその二つだったから。らしい。

　食事に文句をつけるのは人間として恥ずかしいので
あまり言いたくはないが。
　たまには腹いっぱい肉を食いたい。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小夏_沈む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0031220b33">
「リツ、来なかったね……」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031230b56">
「どうしたんだろうな」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0031240b43">
「他の誰かならともかく、リツだからね。
　何があったのかな……少し考えてみよう」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　さすがに心配になってきたのだろう。この男なりに
真剣な様子で、忠保は食事の手を止めた。
　口元に指を当てて黙考する。

　リツが休む理由か……。

　姉御肌で遊び好きで、いい加減だが妙に律儀な所の
ある奴。その律儀さは学校皆勤という形で表れていた。
　……昨日で終わってしまったわけだが。

　体は至極健康。象が踏んでもあんまり壊れない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031250b56">
（やっぱ、夜遊びが過ぎたのかね……大番に
捕まって、今頃留置所で腐ってんのかも）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　その程度のことしか思いつかなかった。
　
　が、忠保は違ったらしい。

　やがて顔を上げた忠保の目の鋭さに、おれは思わず
息を飲んだ。
　小夏まで煽られてか硬直した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_沈むa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031260b56">
（……なにか……まずいことが……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　標準仕様の一般ピープルであるおれや小夏と違って、
中流以上と言っていい家庭に暮らす忠保は――<k>なんで
こんな普通の学校に通うのか正直疑問だ――<k>入手する
情報の量が多い。

　そこから何か、思い当たることがあったのかもしれ
ない。
　おれと小夏はそうしろと言われたわけでもないのに
口を閉ざして、結論を待った。

　忠保が重苦しげに口を開く。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_冷徹.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0031270b43">
「雄飛」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031280b56">
「……なんだ」

{	FwC("cg/fw/fw忠保_冷徹.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0031290b43">
「認知はしてあげて」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆攻撃軌道。ぼか。
//◆忠保の立ち絵消去

	SL_down(@0,@0,1500);
	OnSE("se戦闘_攻撃_殴る03",1000);
	SL_downfade2(10);

	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);
	Fade("フラッシュ白",100,0,null,true);
	Delete("フラッシュ白");

	ShakeOne(1000, 300, 0, 5, 0, 0, 500, null, false, "cg/bg/bg008_教室_01.jpg");

	SetFwC("cg/fw/fw雄飛_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031300b56">
「どぉいう思考手順を踏んでそうなった!?」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0031310b33">
「雄飛、早く食べないと昼休み終わるよ」

{	FwC("cg/fw/fw雄飛_沈むb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031320b56">
「……ああ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
　もはや殴る手間さえ惜しんだのかきっぱり無視して
食事へ戻った小夏に促されるまま、おれも椅子に座り
直した。
　入れ違うように、忠保がよろよろと起き上がる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0031330b43">
「フッ……これで炎の友情というわけだね」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031340b56">
「かなりいろいろと省略してる気がするけど
まあいいやどうでも。つうかなおまえ、病気
とか家の手伝いとかの可能性をまず考えろよ」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0031350b43">
「考えたけど、どっちもリツらしくはないん
じゃないかな」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0031360b33">
「そういうことが絶対にないってこともない
でしょ」

{	FwC("cg/fw/fw雄飛_快活.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031370b56">
「ちょっと想像はつかないけどな」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
　常にリーダーシップを握り、おれたちを日が暮れる
まであちこち引き回す見慣れたリツの姿には、どちら
もそぐわないこと甚だしい。

　が、ほかの可能性を思いつかないのも事実だった。
　何かあるのかもしれないが、それは当人不在の場で
ああだこうだ言い合っていてもわからないだろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031380b56">
「放課後、様子見に行ってみるか？」

{	FwC("cg/fw/fw小夏_通常a.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0031390b33">
「そーね。わたしは問題なし。用事もないし。
　あんたは、忠保？」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0031400b43">
「もちろん行くよ。気に掛かるしね。
　それに僕なら……いざとなれば融通の利く
産婦人科を紹介できるし」

{	FwC("cg/fw/fw雄飛_沈むb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031410b56">
「これ以上そのネタを引っ張るとどうしてか
おまえの中手骨が一本ずつ減っていくという
来栖野小夏的破壊現象が勃発するんだがそれ
でもいいか」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0031420b43">
「おかしいな。僕的には完璧な論理的帰結で、
説明すると……<?>
{	FwC("cg/fw/fw忠保_笑顔b.png");}
ハハハ雄飛、どう頑張っても
僕の小指に九〇度以上の角度をとらせるのは
無理だと思うしなんかすごく痛いよ？」

{	FwC("cg/fw/fw小夏_怒りb.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0031430b33">
「……ていうか、そんなことよりも決定的に
見過ごしてはならない要素が忠保の発言の中
にあったような気がするんだけど……
　気のせいかしら？」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031440b56">
「いや小夏。それは忘れろ。忘れるんだ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
　ともあれそんなこんなで、午後の予定は決まった。
　残りの給食をかき込む。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小夏_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0031450b33">
「雄飛、よくかんで食べなさい」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031460b56">
「早く食えっつったろーがさっき」

{	FwC("cg/fw/fw小夏_怒りa.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0031470b33">
「両立するのよ。顎の高速回転で」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031480b56">
「おれのガラスの顎にあまり無茶を言うな。
　……っと、先生？」

{	FwC("cg/fw/fw小夏_驚くa.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0031490b33">
「え!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se日常_物_椅子鳴る02",1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
　おれの声に反応して、小夏が椅子ごと旋回する。
　一八〇度を一瞬だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0031500b43">
「すごい。<RUBY text="クルビット">直立転回</RUBY>並みだね今の」

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031510b56">
「関節部にボールベアリングでも積んでるん
じゃないか、こいつ」

{	SetComic(@0,@0,7);
	FwC("cg/fw/fw小夏_驚くb.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0031520b33">
「すす、鈴川先生！　なっなにか!?」

{	DeleteComic();
	FwC("cg/fw/fw鈴川_驚き.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031530b57">
「あ、うん……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0,@0,"cg/st/st鈴川_通常_制服.png");
	FadeStR(300,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
　わりと非人間的な小夏の機動性に面食らったのか、
やってきた鈴川は片手を挙げた姿勢で固まっていた。
　ちょうど声をかけようとしたところだったらしい。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw鈴川_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031540b57">
「……悪いな、食事中に」

{	SetComic(@0,@0,13);
	FwC("cg/fw/fw小夏_ドリーム.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0031550b33">
「いーえいえいえ！　こんな豚野郎どもと顔
を突き合わせての食事にはもう飽き飽きして
いたところでしたっ！
　ささ、ずいっとどうぞ」

{	DeleteComic();
	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031560b56">
「いや、席がないだろ」

{	FwC("cg/fw/fw小夏_ドリーム.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0031570b33">
「じゃあんた机になりなさい。忠保は椅子」

{	FwC("cg/fw/fw雄飛_沈むb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031580b56">
「どんな教育現場だそれ……」

{	FwC("cg/fw/fw鈴川_驚き.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031590b57">
「ああ、いや。食事はもう済ませたから」

{	FwC("cg/fw/fw忠保_笑顔b.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0031600b43">
「ハハハ、手ぶらなんですから見ればわかり
ます」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031610b56">
「わかってないのは脳髄が瞬間的に納豆菌化
したその女だけです」

{	FwC("cg/fw/fw小夏_ドリーム.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0031620b33">
「あっ、あっ、じゃあ、ええと、何かご用事
が？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
　おれと忠保の声は既に小夏には届いていなかった。
　あぁ遠いなぁ。そのままどんどん遠くなっていいぞ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw鈴川_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031630b57">
「飾馬のことなんだが……」

{	FwC("cg/fw/fw小夏_ドリーム.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0031640b33">
「はい、あのヤシガニがなにか！」

{	FwC("cg/fw/fw鈴川_驚き.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031650b57">
「やし？」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031660b56">
「聞き流してください」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
　助け舟を出すおれは結構いい奴だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw鈴川_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031670b57">
「今日どうして欠席したか、聞いているか？」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0031680b43">
「いいえ、それがまったくさっぱり」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031690b56">
「ちょうどさっきまでそのことを話していた
ところで」

{	FwC("cg/fw/fw鈴川_冷徹.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031700b57">
「そうか……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
　やはり鈴川も気にしていたようだ。
　当然か。遊び人のくせに無遅刻無欠席無早退という
異様さで目立っていたやつだからなぁ、リツは。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw鈴川_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031710b57">
「最後に見たのはいつだ？」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031720b56">
「昨日の夕方、六時頃っすね」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0031730b33">
「確か昨日は八幡宮で人形劇を見て、そこで
解散したのよね」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670]
　天井を見上げて思い出しながら呟く小夏。
　どうやら多少正気を取り戻してきたらしい。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031740b56">
「おれと小夏は家に帰って……」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0031750b43">
「僕は少しリツと一緒にいたけど、源氏山の
あたりで別れたよ。もう少し遊んでいくって
言ってたね」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0031760b33">
「何時ぐらい？」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0031770b43">
「七時前だったと思う」

{	FwC("cg/fw/fw鈴川_冷徹.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031780b57">
「その後はわからない、か……」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0031790b43">
「リツ、家に帰ってないんですか？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0690]
　さらっと、忠保が切り込んだ。

　……そうだ。
　鈴川がそんなことを尋ねてくるのなら、つまり。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw鈴川_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0700]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031800b57">
「飾馬の近所に住んでる大松に聞いたところ
では、少なくとも朝の時点では帰宅していな
かったようだ。
　今はわからないが……」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0031810b43">
「電話して聞いてみればどうです？」

{	FwC("cg/fw/fw鈴川_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031820b57">
「いや、飾馬の家には電話がない」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031830b56">
「ていうかそんなもんがあるのはおまえの家
だけだろ」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0031840b43">
「そっか。道理で全く役に立たないと思った」

{	FwC("cg/fw/fw小夏_怒りa.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0031850b33">
「……間抜けな会話はいいから。
　先生、あんまり大きな声で言いたくはない
けど、外泊自体はそんなに珍しくないんです。
あの子の場合」

{	FwC("cg/fw/fw鈴川_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031860b57">
「それは知っている。
　だからご家族もあまり心配していないよう
だし、先生もいま大騒ぎする気はないんだが」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]
　さりげなくいい奴だよな、鈴川も。
　二組の上原のようなカタブツだったら今頃大変だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw鈴川_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031870b57">
「まあ……飾馬なら、大丈夫だろう。あれで
しっかりしているしな。
　これが新田だったら先生も慌てるんだが」

{	FwC("cg/fw/fw雄飛_沈むb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031880b56">
「なんでそこで引き合いに出されるのがおれ
なんだよう、先生……」

{	FwC("cg/fw/fw小夏_呆れ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0031890b33">
「それがわからないくらい子供だからよ」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0031900b43">
「子供であることに気付けば子供ではないの
だけど。あ、なんか哲学を発見したよ雄飛！」

{	FwC("cg/fw/fw雄飛_怒りb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031910b56">
「やかましい」

{	FwC("cg/fw/fw鈴川_笑顔.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0031920b57">
「冗談だ。
　食事中に邪魔をして悪かったな。ちゃんと
食って運動もしとけ。午後の授業寝るなよ？」

{	FwC("cg/fw/fw小夏_ドリーム.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0031930b33">
「はーい！」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031940b56">
「うぃーっす」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStR(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0730]
　躍動的な足取りで去っていく鈴川を見送る。
　颯爽とした背中だった。小夏がのぼせるのもわかる
気がする。

　それにしても。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0740]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0031950b56">
（……リツの奴）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0750]
　ほんとにどこ行ったんだか。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(1000, 2000);



}

..//ジャンプ指定
//次ファイル　"ma01_004.nss"
