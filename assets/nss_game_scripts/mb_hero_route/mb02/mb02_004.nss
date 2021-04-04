//<continuation number="910">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_004.nss_MAIN
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
	#bg045_普陀楽城公方の間_01=true;
	#bg064_普陀楽城内道_01=true;
	#bg002_空a_01=true;
	#bg002_空a_02=true;
	#bg064_普陀楽城内道_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_岡部桜子=true;

	$PreGameName = $GameName;

	$GameName = "mb02_005.nss";

}

scene mb02_004.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb02_003.nss"

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg045_普陀楽城公方の間_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	StL(1000, @0, @0,"cg/st/st童心_通常_私服a.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0040010a09">
「味をみるには目で見るな、と申すわ……」


{	FwC("cg/fw/fw義清_通常.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb02/0040020b21">
「…………」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0040030a09">
「また杜撰な手を打ってきたものよのぅ。
　やぁれ、やれ……」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0040040a09">
「義清」


{	FwC("cg/fw/fw義清_通常.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb02/0040050b21">
「はっ」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0040060a09">
「柳生常闇をこれへ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

//◆城内裏手
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg064_普陀楽城内道_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);
	SoundPlay("@mbgm26",0,1000,true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040070a00">
「なかなか、一筋縄ではいかぬ仁のようだ」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0040080a02">
「ただの腐れ坊主ですよっ。
　人を馬鹿にしやがって……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　一条はまだ、憤懣冷めやらぬ様子だった。
　先刻の注意が一応生きているのか、大声を上げては
いないものの、全身から不機嫌の気色が滲む。

　ここは本丸から官僚宿舎のある二ノ丸へ通ずる道の
一つだが、勾配がきついせいか、他に通行者はない。
　さもあろうと期待して選んだのだが、どうやらその
判断は報われている。

　とはいえ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040090a00">
「一条。
　もう少し、感情を隠せ」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0040100a02">
「……はい。
　そうしなきゃならないのは、わかってるん
ですけど」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040110a00">
「ままならないのか」


{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0040120a02">
「どうしても……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　羞恥からか、一条は俯いた。

　敵地に潜んで違和なく溶け込む。
　確かに、この素直な――素直過ぎる少女には難しか
ろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040130a00">
（短期決戦だな）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　最初から抱いていた方針を再確認する。

　時間を掛けても自滅に至るだけだ。
　それは何も一条一人の責任ではなかった。俺とても
潜入工作などという繊細な任務に適した柄ではない。

　<RUBY text="ぼろ">襤褸</RUBY>はすぐに出る。だからその前に<RUBY text="と">疾</RUBY>く任務を終え、
去る。
　そうするに如くはない。俺と一条の二人組では。

　入念な準備工作を放棄する以上、至極乱暴な作戦に
なってしまうのは避けられそうにもないが……元より
それは親王も承知の上だろう。
　むしろ<RUBY text="・・・・・・・・">ある程度の乱暴さ</RUBY>は望んでいる。

　驕れる武力集団六波羅の横面を張り飛ばすべくして
――それには同盟者今川雷蝶に力を見せ付けるという
意味も含まれる――わざわざ二騎の武者を送ったのだ。
　いない筈はなかろう、専門の工作員ではなく。

　問題はその舞殿宮の希望を、どう具体的なプランへ
落とし込むかだが……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_照れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0040140a02">
「みな――景秋、さん」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040150a00">
「ん……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　急に名を呼ばわれて、思索から撤退する。

　自分の口でした呼び方に惑乱させられた風で一条は
頬を赤らめていたが、別にその行為自体が目的ではな
かったらしい。
　道の先を指し示している。

　女性がいた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆桜子姫
	StC(1000, @0, @0,"cg/st/st桜子_通常_私服a.png");
	FadeStC(500,true);

	Wait(200);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　若い。美しいようにも見える。
　しかしそれは別段、訝しむに値しない。同様の条件
に該当する女性はこの王城にいくらもいるだろう。

　女の身でわざわざ、こんな険しい道を選んで歩くの
は奇異といえば奇異だが……
　それも怪しむほどの事ではない。一条とて、何の苦
もなく歩んでいる。

　にも拘わらず事実として、その女性は注意を引いた。

　奇抜な格好をしているという事もない。
　ごく、素朴な装束だ……岩田女史のような、役人用
の機能的なものとはまた違う種の。

　といって、雑用婦の身なりでもない。
　
　結局、そこが引っ掛かるのか。

　服装はその人の身分、立場を表すものだ。
　が、女性の格好からはそれが見えない。

　容貌には気品があり、その点のみ見れば権門の姫と
も思える。しかし服装を含めれば明らかに違う。
　奥で奉仕する女官にも城内の神社の<RUBY text="かんなぎ">巫</RUBY>にも役人にも
武官にも掃除人にも食堂の飯炊きにも見えない。

　この城内は人間の階級と役割が厳格に規定された小
社会を構成している。なのにその何処にも該当しない。
　浮いているのだった。その姿が――所在無げな態度
も含めて。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040160a00">
「もし」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　思考の開始から行動まではほんの数秒だった。
　しかし迷いはあった。

　六波羅の役人としては、不審な女性を見過ごさない
べきだろう。だが――実は彼女は不審でも何でもなく、
城内の住人なら誰でも知っている、少し特殊な立場の
人間なのかもしれない。

　であれば無知な対応は命取りになり得る。新任の者
だから、で済むとは限らないのだ。
　
　が、結局。俺が<RUBY text="コマ">木札</RUBY>を張ったのはこちらだった。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw桜子_通常a.png");

	#voice_on_岡部桜子=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040170b28">
「……はい」


{	FwL("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040180a00">
「何か、難儀されておいでですか」


{	FwL("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040190b28">
「難儀というほどのことでは……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　臆するように、女性が目元を伏せた。
　つい、それにつられて。視線を女性の足元へ遣る。

　どう検討しても山歩きには適さないであろう薄手の
履物は、土で茶色く汚れていた。
　……今のはあまり、正直な発言ではなかったようだ。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040200a00">
「車を呼びましょう。
　ここでお待ち頂けますか」


{	FwL("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040210b28">
「いえ、本当に……結構です。
　ご厚意だけ、頂戴致します」


{	FwL("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040220a00">
「しかし<RUBY text="おみあし">御御足</RUBY>が」


{	FwL("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040230b28">
「すぐ、近いのです」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　目的地がということだろう。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw桜子_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040240b28">
「……近い……はずなので」


{	FwL("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0040250a02">
「はず？」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　曖昧に濁された言葉尻を、一条が捕まえた。
　女性は応えず、目を逸らす。

　少し、頬が赤らんでいた。

　……ああ。
　成程。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040260a00">
「この城は広過ぎます」


{	FwL("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040270b28">
「……ええ。
　本当に」


{	FwL("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040280a00">
「どちらへ？」


{	FwL("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040290b28">
「京極屋敷まで……」


{	FwL("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040300a00">
「京極……
　侍所所司、京極善門様の御屋敷ですか？」


{	FwL("cg/fw/fw桜子_悲哀.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040310b28">
「はい」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　京極家ゆかりの人間か。
　しかし、単なる武家の妻女という様相でもないのだ
が……。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040320a00">
「さて……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　それはそれとして、困った。
　屋敷地の当て推量は可能だが、正確なところまでは
わからない。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0040330a02">
「京極屋敷……
　あぁ、あれかな？」


{	FwL("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040340a00">
「わかるのか」


{	FwL("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0040350a02">
「はいっ。
　さっき――見た時に、そんなのがあったと」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　一条が言葉を飛ばしたのは『雷蝶の手下が用意した
城の見取り図を』とは言えなかったからだろう。
　先刻宿舎でそれを見せられた際に、色々と記憶して
おいたようだ。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040360a00">
「では、御婦人。
　御案内仕ります」


{	FwL("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040370b28">
「……申し訳ありません。
　それではお手を煩わせますが、よろしくお
願いします」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――


//◆青空
//◆→夕空
//◆カラスの声。あほー。
	PrintBG("上背景", 30000);
	OnBG(100,"bg002_空a_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1500, true);

	WaitKey(1000);

	SetVolume("@mbgm*", 2000, 0, null);
	OnBG(2000,"bg002_空a_02.jpg");
	FadeBG(4000,true);

	CreateSE("SE01","se擬音_コミカル_カラス鳴き声");
	MusicStart("SE01",0,1000,0,1000,null,false);

	$残時間=RemainTime("SE01");
	WaitKey($残時間);

	StL(1000, @0, @0,"cg/st/st桜子_通常_私服a.png");
	StR(1000, @0, @0,"cg/st/st一条_通常_変装.png");
	FadeStA(0,true);

	OnBG(100,"bg064_普陀楽城内道_02.jpg");
	FadeBG(2000,true);
	SoundPlay("@mbgm22",0,1000,true);

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040380a00">
「……お前の迷子癖を忘れていた俺が浅はか
だった」


{	FwC("cg/fw/fw一条_慌て.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0040390a02">
「ちっ、違うんです！
　地球の自転が……プレートテクトニクスが
あたしの計算を裏切って……！」


{	FwC("cg/fw/fw桜子_悲哀.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040400b28">
「………………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　迷子の女性と案内役の出会いは、化学変化を起こし、
三人の迷子を出現させていた。
　<RUBY text="ミイラ">木乃伊</RUBY>取りが木乃伊になったとも云う。

　気付けば空は茜色。
　鴉の声が耳に痛い。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040410a00">
「面目ありません、御婦人。
　かえって御迷惑をお掛けしてしまいました」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040420b28">
「いえ、そんな」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0040430a02">
「大丈夫です！
　今度は……今度はっ……」


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040440a00">
「地面に棒を立てて、お前は何をする気だ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　末期的だった。

　さんざん引き回された女性は腹を立ててこそいない
ものの、腑に落ちない様子で小首を傾げてはいる。
　その意味する向きは大体想像がついた。

　先回りして答えておく。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040450a00">
「実は……今日着任したばかりなのです。
　城内の地理に、明るいとはいえず」


{	FwC("cg/fw/fw桜子_悲哀.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040460b28">
「そうでしたか……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040470a00">
「申し遅れました。
　自分は<RUBY text="まんどころくにん">政所公人</RUBY>、改景秋です」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040480a00">
「こちらは同じく一媛」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040490b28">
「岡部桜子です。
　挨拶もせず、こちらこそ失礼致しました」


{	SetVolume("@mbgm*", 2000, 0, null);
	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0040500a02">
「……岡部？」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040510b28">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　岡部といえば――
　先日、会津猪苗代で反乱の兵を起こし。大鳥獅子吼
率いる幕軍に敗れ、討ち果たされた……あの。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm23",0,1000,true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040520a00">
「<RUBY text="だんじょういん">弾正尹</RUBY>頼綱公の御息女であらせられました
のか」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040530b28">
「はい」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040540a00">
「これは……
　知らなかった事とはいえ、御無礼を」


{	FwC("cg/fw/fw桜子_悲哀.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040550b28">
「……そのようなお気遣いは無用に。
　今はただ、賊将の落とし胤というだけの事
に過ぎません」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　感情なく、岡部の姫が言う。
　俺は暫時、続けるべき言葉を持たなかった。一条も
絶句している。

　その足元に倒れた棒――よりにもよって崖のある西
へ向いていた――をさりげなく蹴り飛ばしつつ、胸中
の<RUBY text="パズルピース">断片群</RUBY>に整合をつけてゆく。
　……成程。それでこの、<RUBY text="・・・・">浮いた姿</RUBY>か。

　岡部頼綱。一時は足利護氏に匹敵する権勢を有し、
弾正尹――皇族を当てるのが通例であった――の官職
まで得た人物。
　その、娘。

　名家の出自ではあるが、今はその名声を公に認めら
れない。高貴であるが、富貴を失っている。
　といって、<RUBY text="じげ">地下</RUBY>に居場所を得られるわけでもなく。

　本人の語る通り、ただ敗将の胤であり、それ以外の
何者でも有り得ない。
　この城にあって存在が際立つのは当然だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040560b28">
「わたくしもほんの一週間ほど前、京極家の
預かりとなることが決まり、篠川公方府から
この城へ移されたばかりなのです。
　それで、道もまだ良くわからず……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040570a00">
「……は」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　半端な相槌を打って、歩みを再開する。
　方角の見当はかなり<RUBY text="アバウト">適当</RUBY>なものだった。しかし立ち
止まっていては空気の停滞に耐えられそうもなかった。

　考えた事はさして変わりなかったのだろう。
　他の二人も躊躇なく歩き始める。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040580a00">
（同じだな……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　ふと、そんな事を思った。
　俺と一条と岡部の姫。侵入者二人と死せる敵将の娘。

　どちらにとっても、この荘厳な城は安住の地となり
得ない……。

　こちらが城に馴染まぬと知って、似たような感興を
抱いたのか。
　深い孤立に彩られていた姫君の<RUBY text="かお">貌</RUBY>は、今はわずかに
柔らかかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040590b28">
「……何か？」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0040600a02">
「あ……いえ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　急に声を掛けられ、一条が泡を食う。
　何を思ってか桜子姫の横顔を注視していたようだが、
<RUBY text="レスポンス">反応</RUBY>があるとは予想だにしていなかったらしい。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0040610a02">
「その、綺麗だなって思って。
　なんていうか、さすがお姫さまっていうか」


{	FwC("cg/fw/fw桜子_羞恥.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040620b28">
「……ありがとうございます。
　でも、奥御殿にいらっしゃる姫様方の方が
ずっとお美しいでしょう」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　いくらかの羞恥を滲ませて、姫が小さく応える。
　確かに、ここから遠くない場所で安逸を貪っている
であろう貴婦人達とは、身を包む装いの点で格段の差
があるに違いない。

　が。
　一条は、首を左右した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_照れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0040630a02">
「そんな、格好だけのことじゃなくて。
　その……本物、って感じが」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040640a00">
「……本物だぞ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　失礼過ぎる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_慌て.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0040650a02">
「そ、そうなんですけど！
　そうじゃなくて……その本物っぽさが本物
っぽいから」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040660a00">
「落ち着け。
　言いたい事はわからんでもないが、言って
いる事はさっぱりわからん」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　最近、俺の周囲にその手の人間が多い気がする。
　どういう訳か。

　ふと見れば、桜子姫が<RUBY text="たま">堪</RUBY>りかねたように、くすくす
と笑い出していた。
　品良く口元を手で隠しているが、声を殺し切れては
いない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040670b28">
「申し訳ありません……。
　けれど、おかしな方々」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040680a00">
「只今の一幕をもって我々の人間像を見定め
ないで頂けるならば、深く感謝の念を抱くに
吝かではありません」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0040690a02">
「すごく回りくどいんですけど」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040700a00">
「この娘は変ですが自分は普通です」


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0040710a02">
「わかりやすい……そして酷い……」


{	FwC("cg/fw/fw桜子_笑い.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040720b28">
「ふふ。
　お二人とも、幕府のほかの方々とはだいぶ
違います」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040730a00">
「は。
　普陀楽城に来て、まだ一日も経っておりま
せんから。諸兄のようには馴染んでおらぬの
でしょう」


{	FwC("cg/fw/fw桜子_笑い.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040740b28">
「ええ。
　あまり……本物、って感じが致しません」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　一条を真似て、姫がおどけた口調で言う。
　言われたこちらは笑うどころではなかったが。

　めくら射ちに射掛けた矢が的を貫いている。
　姫に底意がないのは明らかであるにせよ、全く動揺
せずに済ますのは無理だった。

　それでもどうにか、驚きは顔の表面へ浮き出る前に
沈める。
　一条も、しゃっくりに似た声を小さく漏らすだけで
こらえたようだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040750a00">
「……こちらへ来る前は、田舎で事務仕事を
していたに過ぎぬ者です。
　ひょんな縁からこんな所へ栄転してしまい
ましたが、正直、戸惑うばかりで」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040760b28">
「そうなのですか……。
　それは気苦労も多いことでしょう」


//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040770b28">
「わたくしも……お二人のように働いておら
れる方々とは比べ物になりませんけれども。
　慣れない土地では、色々」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040780a00">
「は……」


{	FwC("cg/fw/fw桜子_悲哀.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040790b28">
「特に道が複雑なのは困ります。
　篠川と違って始終監視の目が付いて回らぬ
のは良いのですが……出歩く度に迷わされる
のは、どうにも」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　普陀楽に限らず城塞というものは、必要以上に入り
組んだ道路構造を有する事が稀でない。
　敵軍に城門を突破された際、少しでも侵攻を遅らせ、
また兵力を分断する為だ。

　無論、地理に明るい者なら最小限の時間で要所間を
移動できるようにもなっているが……
　在城一週間の桜子姫がそれを知らなくとも不思議は
ない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040800b28">
「今日も八幡様にお参りした後、馬場に立ち
寄って馬を眺めていこうと思ったのですが。
　その途中で、迷ってしまって」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040810a00">
「……はぁ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
　俺の記憶が確かなら、その二箇所は直線距離で五〇
メートルと離れていない筈だが……。
　そして直線同様の道があった筈だが……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040820b28">
「困りませんか？
　どうして、どこの道路も分岐なんて意地の
悪いことをするのでしょう」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040830a00">
「それは道路交通局に訊いてみないことには」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040840b28">
「みんな一本道なら迷ったりしませんのに」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040850a00">
「確かに迷いはしないでしょうけれども」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
　交通の利便性と並立させるには一体どれだけの道路
が必要になるやら。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetComic(@0,@0,11);
	SetFwC("cg/fw/fw一条_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0040860a02">
「ですよね！」


{	DeleteComic();
	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040870b28">
「わかって頂けます？」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0040880a02">
「すごく。
　そう分岐なんてするから悪い。あれが全部
悪い。一本道をたくさん作ればいいんだよな。
地上で足りなければ地下にトンネル掘って」


{	FwC("cg/fw/fw桜子_笑い.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040890b28">
「そうですそうです。
　橋をいっぱい架けたっていいんですし。空
ならいくら使ったって誰も困りませんもの」


//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0040900b28">
「ね、あなたもそう思いませんか？」


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0040910a00">
「個人的見解を申し上げれば、そんなジャン
グルジムのような街には住みたくありません」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
　重度の方向認識障害者二人が意気投合していた。
　そして俺は取り残されていた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆黒
	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb02_005.nss"