//<continuation number="1510">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_009.nss_MAIN
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
	#bg034_署長宅茶の間a_03a=true;
	#bg001_空c_03=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma03_010.nss";

}

scene ma03_009.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"ma03_008.nss"

//◆署長宅・居間

	SoundPlay("@mbgm30",0,1000,true);

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg034_署長宅茶の間a_03a.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SetFwC("cg/fw/fw一条_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0090010a02">
「……湊斗さん！」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0090020a04">
「おや、気が付かれましたか」

{	FwC("cg/fw/fw景明_黙考.png");}
//嶋：修正（しました）【090930】
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090030a00">
「大変、お騒がせ致しました。
　見苦しき振舞いの数々、お詫び致します」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　座に着いて、頭を垂れる。
　先刻の醜態を思うと目を合わせる事さえ辛い。その
意味で頭を下げる格好は有り難くもあった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_慌て.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0090040a02">
「い、いえっ、そんな……」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0090050a04">
「こちらこそ気配りが足らずお心を騒がせて
しまった様子。このさよとしたことが不覚の
至り、お詫びの言葉もございませぬ。
　本日の埋め合わせはいずれ必ず……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090060a00">
「そのようなお気遣いはどうか無用に。
　……特に、綾弥さん」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0090070a02">
「はっ、はい？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090080a00">
「先程は取り乱した挙句、聞くに堪えぬ雑言
を並べ立てたように思います。
　真に非礼の限り、面目次第もございません」

{	FwC("cg/fw/fw一条_慌て.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0090090a02">
「そっ、そんな。
　湊斗さんはなにも悪くないです。あたしが
無神経なことばっか言ったから……」

{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0090100a02">
「本当にすみません！」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090110a00">
「お心遣い、有難うございます。
　ついては、お詫びに代えてというわけでは
ないのですが」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0090120a02">
「はい……？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090130a00">
「先刻のご要望の件、考慮をさせて頂きたく
思います。
　待遇は、世辞にも良いものとは言いかねる
でしょうが」

{	FwC("cg/fw/fw一条_驚く.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0090140a02">
「え……
　ほっ、本当ですかっ!?」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090150a00">
「ただその前に、改めて申し上げておきます。
　自分に関わることは危険です」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090160a00">
「<RUBY text="・・・・・・・・・">本当に危険なのです</RUBY>。
　生命に関わります」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090170a00">
「これは大尉殿にも申し上げられることです」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0090180a03">
「……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090190a00">
「自分としてはお二方とも、このまま一切を
聞かずに帰られることをお勧めします。
　疑いなくそれが最善なのです」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090200a00">
「それでもあえて残られるなら、失礼ながら、
実に愚かしい選択をすることになります。
　無用の危険を望んで冒すのですから、そう
言わざるを得ません」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090210a00">
「あえて申し上げます。
　自分は<RUBY text="どなた">何方</RUBY>の御協力も強いて必要とはして
おりません」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0090220a03">
「…………」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0090230a02">
「…………」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090240a00">
「以上を踏まえた上でご再考下さい。
　このままお帰り頂くわけには参りませんか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　……………………………………………………………

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0090250a03">
「わたくしは、お答えするまでもありません
ね？」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090260a00">
「大尉殿……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0090270a03">
「景明さまへの協力はＧＨＱ士官として拝命
したものです。景明さまに厭われたから、と
いって翻せるものではありませんし。
　それに」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0090280a03">
「わたくしにも自尊心がありますもの。
　必要ないと言われたまま引き下がっては、
大鳥の名折れ。これは必ず撤回させてご覧に
入れますから、楽しみにしておられませ」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0090290a04">
「それでこそお嬢さま」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090300a00">
「……」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0090310a02">
「……あたしも。
　すみません、湊斗さん」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0090320a02">
「迷惑を掛けることになるのはわかってるん
です。あたしがこれまでチンピラ連中相手に
やってたような事が、湊斗さんの敵に通じる
わけがないって……それはわかるんです」

{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0090330a02">
「でも、戦えるようになりたいんです！
　今は無理でも……必ず。あたしは逃げたく
ないんです。許せないものから。
　それが六波羅でも、銀星号でも」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0090340a02">
「あたしを育ててくれた人に、恥じるような
生き方はしたくない。戦い方を知りたい。
　だから……お願いします！　あたしを湊斗
さんの傍に置いてください！」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090350a00">
「…………」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0090360a03">
「……気のせいですかしら。
　なんかわたくしの台詞と比べて随分と好感
度上昇率が高そうな……」

{	FwC("cg/fw/fwさよ_照れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0090370a04">
「あたかも愛の告白の如し。
　これは大きく遅れを取ってしまいましたよ、
お嬢さま」

{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0090380a02">
「茶々入れてんじゃねえ!!
　こ、こっ、告白って、あ、あたしはただっ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　………………。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　<RUBY text="くぐつ">傀儡</RUBY>を操るは易く、士人を留めるは難し。
　――是非もない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0090390a03">
「？　景明さま、何か仰られました？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090400a00">
「いえ。
　お二人のご意思は理解しました。もはや、
自分から言うべきことは何もありません」

{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0090410a02">
「じゃあ……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090420a00">
「銀星号事件の解決の為に。
　御協力をお願いします」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090430a00">
「大鳥香奈枝ＧＨＱ大尉殿。
　綾弥一条さん」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0090440a03">
「お任せくださいまし♪」

{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0090450a02">
「あ……ありがとうございます！」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090460a00">
「礼などは御無用に。
　自分が恥ずかしくなります」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　危険に巻き込んで、感謝されては堪らない。
　居たたまれぬにも程がある。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090470a00">
「……では、お話ししましょう。
　我々が追うべき相手」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090480a00">
「銀星号のことを」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0090490a02">
「…………」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0090500a03">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一度夜空とかカット挟む
//◆居間

	SetVolume("@mbgm*", 2500, 0, null);

	PrintGO("上背景", 25000);

	OnBG(100,"bg001_空c_03.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 2000, true);

	WaitPlay("@mbgm*", null);

	WaitKey(3000);

	OnBG(100,"bg034_署長宅茶の間a_03a.jpg");
	FadeBG(2000,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　家人の牧村さんが用意した茶はいつもの通り、心地
良い苦さだった。
　一口含んで舌を湿らせ、吐き出し難い言葉をそこへ
乗せる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090510a00">
「大尉は先程お尋ねになりました。
　自分がなぜ銀星号を追うのか、その理由を」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0090520a03">
「ええ……」

{	SoundPlay("@mbgm18",0,1000,true);
	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090530a00">
「妹なのです」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0090540a03">
「……はい？」

{	FwC("cg/fw/fw一条_驚く.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0090550a02">
「えっ？」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0090560a04">
「…………」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090570a00">
「二年前のことです。
　<RUBY text="・・">あれ</RUBY>は我が家に伝わっていた劔冑の一つを
持ち出し、装甲に及び」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090580a00">
「<RUBY text="・・・・・・">そして狂った</RUBY>。
　人間から、怪物に。ヒトの形をした災厄、
殺戮する天象――銀星号になったのです。
　あの瞬間」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090590a00">
「……以来、自分は家に存在したもう一領の
劔冑と共に、あれを追い続けています。
　幾度か捕捉に成功することはありました。
しかし未だ、制圧には至っておりません」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　一度、口を切る。
　声を発する者はいない。

　表情は大同小異だった。
　思うところはあるが、言葉を見つけられない。そう
いう顔。

　その反応は俺の卑劣な計算を満足させるに足りた。
　最低限度の事実の羅列のみで、余計なことを話さず
に済む。

　――余計？
　
　否。本来なら、何を置いても話さねばならないこと
だろう。あれが<RUBY text="・・">なぜ</RUBY>狂ったのか、は。

　だが話せる筈もなかった。
　その<RUBY text="・・">呪い</RUBY>が俺にも纏わりついていることを知れば、
彼女らは俺を忌み、離れ――それだけなら望ましいが
――それぞれのやり方で俺の罪を鳴らすだろう。

　今はまだ、困る。
『銀星号』をこの世から抹消するまでは、俺は必要に
応じて自由に動ける身でなくてはならない。

　まだ、裁きの時ではない。
　……それを俺が決めること自体、傲慢を極めている
が。

　俺はその点について全く口を噤んだまま、説明を次
へ移した。おそらくはこちらを気遣ってだろう、周囲
が沈黙しているのを利して。
　何とも卑劣に。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090600a00">
「……銀星号が何故かくも恐るべき存在なの
か。ただ一騎の武者の為す事とは到底思えぬ
までに殺戮を繰り広げられるのか。
　それには理由があります」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090610a00">
「まず一つは単純な戦闘能力。
　劔冑もそれを操る仕手も、自分の知る限り
では最上と言って良いでしょう」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0090620a04">
「湊斗さまも相当なものとお見受けしますが。
　それよりも尚……？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090630a00">
「はい。
　控えめに評して、才能の桁が一つ違います」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0090640a02">
「…………」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090650a00">
「そしてもう一つ……こちらの方が深刻です。
　あの劔冑は、精神汚染の能力を持ちます」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0090660a03">
「……精神汚染？」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0090670a04">
「なんとも不穏な響きでございますねぇ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090680a00">
「実際、不穏の極みでしょう。
　銀星号は自己を中心として円形状の広範囲
に、脳活動へ影響を及ぼす特異な重力波――
<RUBY text="フェロモン">汚染波</RUBY>を放散します」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090690a00">
「この汚染波を受けた人間は、銀星号と精神
を同調させます。
　……狂った殺人鬼の精神と、です」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0090700a02">
「……あっ。
　もしかしてあの、銀星号事件の――<RUBY text="・・・">被害者</RUBY>
<RUBY text="・・・・・・・・・・・・・・・・・・・">同士で殺し合ったようにしか見えない遺体</RUBY>、
っていうのは」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090710a00">
「その通りです。事件の被害者の多くは殺し
合わされたのです。
　心を銀星号に奪われて」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0090720a04">
「なんとまぁ……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0090730a03">
「タチの悪い話ですこと」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090740a00">
「全くに。
　そして更に一層悪質なのは、武者が銀星号
と接触してしまった場合――」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0090750a02">
「武者も汚染されるんですか？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090760a00">
「いえ。さしもの汚染波も甲鉄の壁を破って
武者を影響下に置く事はできないようです。
　少なくとも自分の知る限り、そうした事例
は有りません」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090770a00">
「ですが……
　銀星号は武者に対して〝卵〟を植え付ける
ことができます」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0090780a03">
「たまご？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090790a00">
「便宜上そう呼んでいますが、これもやはり
汚染波の一種ではあるようです。
　自分の知る〝卵〟は光球状で、劔冑と接触
すると吸収され、その内部で成長――」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090800a00">
「不特定の期間を経て、<RUBY text="・・">孵化</RUBY>を迎えます」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0090810a03">
「……すると、どうなるのでしょう？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090820a00">
「自分はまだ目撃したことがありません。
　銀星号が撒いた〝卵〟はすべて孵化の前に
破壊してきました。この二年間のほとんどは
その作業に費やされたと言ってもいい」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090830a00">
「あるいは銀星号の制圧以上に〝卵〟の破壊
は急務であったからです。
　自分の聞いた話が正しく……〝卵〟に寄生
された武者は、孵化を迎えたその刹那――」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090840a00">
「<RUBY text="・・・・・・・・・・・">銀星号と同じものになる</RUBY>のなら」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0090850a03">
「…………」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0090860a02">
「…………」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0090870a04">
「……なるほど。
　まさに〝卵〟なのでございますね」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090880a00">
「この話は公表されておりません。知る人間
は自分と署長、後援者であられる舞殿宮殿下。
　そして貴方がただけです」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0090890a02">
「他言無用……ですよね、もちろん」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090900a00">
「左様に願います。
　汚染波や〝卵〟の話が市中に広まった場合
――」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0090910a03">
「パニックになりますね……。
　銀星号がただの化物ではなく、近寄られた
だけで発狂させられるだとか、そんな代物が
更に増えるかも知れないだとか」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0090920a04">
「お茶の間卒倒は間違い無しのネタでござい
ます」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　綾弥はただただ驚いている様子だった。
　香奈枝嬢とさよ侍従は驚きを通過してもはや呆れる
しかないという表情。

　彼女ら自身が錯乱に陥らずにいてくれるのは僥倖と
みるべきか。尤も――
　そんな<RUBY text="やわ">柔</RUBY>な精神の持ち主ではないと信じればこそ、
明かしたのだが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090930a00">
「……事程左様に、銀星号は理外の相手。
　如何なさいますか」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0090940a03">
「……そうですねぇ……」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0090950a02">
「……うー。
　バケモンなのは知ってたけど……そこまで
とんでもない奴だったのかよ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　二人とも、流石に即答はしかねる様子だった。
　当然だろう。

　こういう反応が得られるのなら、機密漏洩の危険を
冒して話した甲斐もある。
　俺は畳み掛けた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090960a00">
「自分としてはやはり、手を引かれることを
お勧めします。
　只今お話しした内容について口外しないと
お約束頂ければ、それで――」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0090970a03">
「あら？
　如何って、そういう意味だったんですの？」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0090980a00">
「……はっ？」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0090990a03">
「わたくしはてっきり、どうやって対処する
べきなのかを問われているものとばかり」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0091000a02">
「あたしも。
　そういうことなら考えは変わらないです、
湊斗さん」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0091010a02">
「ていうか、尚更引けなくなりました」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0091020a03">
「ですねー。
　元々暢気に構えていたつもりはありません
けれど、そこまで酷い状況と聞いては猶予の
暇もありません。手を引くなんて論外です」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0091030a00">
「…………」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0091040a04">
「湊斗さま、お茶のお代わりはいかがですか」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0091050a00">
「頂きます」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　いとあっさりと砕かれた最後の期待を、緑茶と一緒
に喉の奥へ流し込む。
　無闇矢鱈と苦い味がした。

　……腹を決めるしか、無いか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0091060a00">
「綾弥さん」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0091070a02">
「はい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　…………。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0091080a00">
「一条」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0091090a02">
「は……はい！」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0091100a00">
「これからお前は俺の部下として扱う。
　身分は鎌倉警察署属員……非公式の警官だ。
俺と同じ立場だが、指示には全て従って貰う」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0091110a00">
「異存は？」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0091120a02">
「ありません！」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0091130a00">
「大尉殿」

{	FwC("cg/fw/fw香奈枝_凹む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0091140a03">
「…………」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0091150a00">
「ハンカチを噛みながら恨みがましい視線で
見ないで下さい」

{	FwC("cg/fw/fw香奈枝_凹む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0091160a03">
「だって、なんだか羨ましいんですもの」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0091170a04">
「あちらは名前呼び捨て、こちらは『大尉殿』
……距離感の差が余りにも如実でございます
なぁ」

{	FwC("cg/fw/fw一条_冷笑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0091180a02">
「ふふん」

{	FwC("cg/fw/fw香奈枝_凹む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0091190a03">
「きー！　妬ましい！
　景明さまっ、わたくしのことも呼び捨てに
なさってくださいませ！」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0091200a00">
「できません」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　無茶な話だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0091210a03">
「なら、ハニーで！
　スウィートとつけて頂ければ<RUBY text="パーフェクト">完璧</RUBY>ッ」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0091220a02">
「おいてめぇドサマギでなに抜かしてやがる」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0091230a03">
「何ですの？　ダーリンのパシリな方」

{	FwC("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0091240a02">
「ダーリン言うな！　妄想巨体女！」

{//◆パリーン
	OnSE("se擬音_シリアス_ショック02",1000);
	SetVolume("@mbgm*", 300, 0, null);
	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0091250a03">
「……巨体……」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0091260a04">
「あっ。お嬢さまの心のセーフティロックが
音を立てて」

{	SoundPlay("@mbgm34",0,1000,true);
	FwC("cg/fw/fw香奈枝_怒笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0091270a03">
「ふっ。ふふふ。そうね。そうよね。
　円満なチーム関係を築き上げるためには、
まず上下関係をはっきりさせないといけない
のよね」

{	StR(1000, @30, @10,"cg/st/st一条_通常_制服.png");
	Move("@StR*", 300, @-30, @-10, Dxl1, false);
	FadeStR(300,false);
	FwC("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0091280a02">
「あぁ？　やるかＧＨＱ。
　昼寝する以外になんか芸があるってんなら
見せてもらおうじゃねぇか……」

{	StL(1000, @-30, @10,"cg/st/st香奈枝_通常_私服c.png");
	Move("@StL*", 300, @30, @-10, Dxl1, false);
	FadeStL(300,false);
	FwC("cg/fw/fw香奈枝_怒笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0091290a03">
「ＯＫ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0091300a00">
「……失礼。お二方。
　まだ説明が」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0091310a02">
「すみませんちょっと待ってください。
　このウドの大木を薪にして風呂釜にくべて
きますからっ」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0091320a03">
「ええ。すぐに済みますから少々お待ちくだ
さいまし。
　ほんのこれくらいで片付きます」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0091330a04">
「指一本？」

{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0091340a03">
「一ラウンドではありません。
　一分です！」

{	FwC("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0091350a02">
「上等だぁッ!!」

{	DeleteStL(300,false);
	DeleteStR(300,false);
	Move("@StL*", 300, @-120, @0, Dxl1, false);
	Move("@StR*", 300, @120, @0, Dxl1, false);
	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0091360a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　話は聞いてもらえないようだった。
　仕方ないので、茶を啜る。

{	SetVolume("@mbgm*", 1000, 0, null);}
　なにやら無意味に不穏さを増してゆく居間から目を
そらし、天井を仰ぐと、そこには見慣れた姿があった。
　赤い蜘蛛。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm23",0,1000,true);
	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0091370a01">
《……話はまとまった？》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0091380a00">
（聞いていたのか）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0091390a01">
《大体のところはね。
　正直、面倒になったとしか思えないけど》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0091400a00">
（止むを得ない選択の結果だ。
　……と、思う）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0091410a01">
《危険はわかっているのね？》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0091420a00">
（ああ。
　彼女らとは必要以上に接触しないよう、心
がけておく）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　……所詮、偽善だが。
　<RUBY text="・・・・・・・・・・・・">どうせ犠牲は出るのだから</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0091430a01">
《なら、いいけど。
　……それよりも、報告》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0091440a00">
（どうした）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0091450a01">
《銀星号の<RUBY text="におい">香気</RUBY>をつかんだ》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0091460a00">
（何処だ？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0091470a01">
《鎌倉の郊外よ。
　少し西にある……大きな施設の中。あれは
何なのかしら？　妙に騒がしかったけれど》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0091480a00">
（西の……？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　記憶に引っ掛かりを覚える。
　確かそこには、有名なものが――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0091490a00">
（……あれか）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0091500a01">
《わかるの？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0091510a00">
（ああ。
　あそこにあるのは……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　――――サーキット場だ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(1000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma03_010.nss"