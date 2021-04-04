//<continuation number="940">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma05_008.nss_MAIN
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

	$GameName = "ma05_009.nss";

}

scene ma05_008.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma05_007.nss"


//◆暗転
//◆復帰
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 1500, "#000000");
	OnBG(100,"bg052_湊斗家道場_01.jpg");
	FadeBG(0,true);
	StR(1000, @0, @0,"cg/st/st統_通常_私服.png");
	FadeStR(0,true);
	Delete("上背景");

	SetFwC("cg/fw/fw統_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【統】
<voice name="統" class="統" src="voice/ma05/0080010b46">
「……景明？」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080020a00">
「……あ……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵暗転", 600, true);
	SoundPlay("@mbgm18",2000,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　――立ち尽くしていたらしい。
　声に振り返ってみれば、<RUBY text="はは">養母</RUBY>が戸口に立ち、案じる
様子で俺を見ていた。

　何分も呆けてはいなかったと思うが……いや、そう
なのかもしれない。
　急激な現実感の回復に戸惑う。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080030a00">
「……申し訳ありません。稽古をしていたの
ですが。
　少し、考える事があって……没頭しており
ました」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080040b46">
「……そか。
　ま、ほどほどにしときなさい」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080050a00">
「はい。
　ご心配をお掛けしました」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　頭を下げた拍子に、汗で湿った前髪が額に触れる。
　……冷たかった。やはり、結構な時間が経っていた
らしい。

　両の瞼を閉ざし、その上から軽く手を当てる。
　意味は何もないが、平静を取り戻すにはこういった
儀式が不可欠だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【統】
<voice name="統" class="統" src="voice/ma05/0080060b46">
「……しっかし。
　本家も、無茶なこと言ったもんだな」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080070a00">
「は……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　既に、本家での<RUBY text="いきさつ">経緯</RUBY>については報告を済ませている。
　養母は――諸手を挙げて喜んだりはしなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【統】
<voice name="統" class="統" src="voice/ma05/0080080b46">
「おまえの頼みを体よく蹴ったつもりか……
わたしへの当てつけか。単なる<RUBY text="・・・・">物の弾み</RUBY>か。
　何にしろ、まともな考えじゃないな。一人
で山賊をどーにかしろ、なんてさ」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080090a00">
「……御本家からは、町の人々に協力を仰い
でも良いと言われてはいます」

{	FwC("cg/fw/fw統_睨む.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080100b46">
「おまえがそうしないことくらい、向こうだ
ってわかってるよ。付き合いは長いんだから。
　わかってて言ったんだ。あの爺いめ」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080110a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　否定の根拠が見つからず、口を噤む。
　確かに、町の人を巻き込むつもりはない。山賊は町
全体の問題ではあるが、今回の本家との取り決めは俺
が個人的な都合で結んだものだ。

　他人に危険を分かち合わせるべきではなかった。
　成程、あの御老人であれば、俺のそんな心理くらい
見通すだろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080120a00">
「……しかし、御本家は約束は守ります。
　それだけの<RUBY text="プライド">自尊心</RUBY>は持っておられる方です」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080130b46">
「……そこは信じるけどね。
　景明、おまえ本気でやるつもりなの？」

{	FwC("cg/fw/fw景明過去_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080140a00">
「はい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　ようやく開いた道だ。
　光を救うに至る。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【統】
<voice name="統" class="統" src="voice/ma05/0080150b46">
「出てってください、ってお願いして、はい
そうですか……で済む話じゃないんだよ？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080160a00">
「何にせよまずは話し合いから試みるつもり
ではいますが……はい。
　おそらくそれでは済まないでしょう」

{	FwC("cg/fw/fw統_睨む.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080170b46">
「死ぬかも」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080180a00">
「可能性としては」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080190b46">
「死ぬと痛いぞ。
　いや、試したことないからわからんけどさ」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080200a00">
「では、死なないように注意します」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080210b46">
「怖くないのか？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080220a00">
「恐ろしいです。
　山賊団の直中へ一人で乗り込む……などと
考えただけで」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　俺は片手を突き出した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080230a00">
「この通り。
　指先が震えます」

{	FwC("cg/fw/fw統_痛笑.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080240b46">
「……だったらさ」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080250a00">
「しかし。
　光を救う為」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　震えは止まった。
　その五指を握り込む。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明過去_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080260a00">
「是非もありません」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080270b46">
「…………。
　困った息子だ」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080280a00">
「お許しを」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080290b46">
「もう少し横着な子に育てりゃ良かった」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080300a00">
「精一杯、統様を見習ったつもりでしたが」

{	FwC("cg/fw/fw統_笑い.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080310b46">
「……可愛くない言い草だけは一人前だよ。
　ったく、もう」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080320b46">
「わかった。
　でも、わたしも一緒に行くからね」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080330a00">
「それはなりません」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080340b46">
「なりませんたって、なるもん。
　息子をそんなとこへ一人で行かせられるか」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080350a00">
「昨今は、母親の過保護が社会問題化してい
ます」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080360b46">
「息子を武装略奪集団の中へ一人で送り込む
母親がいたらそりゃ虐待っていう社会問題だ
と思います」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080370a00">
「むしろ息子の非行ではないでしょうか。
　……いえ、そういう問題ではなく」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080380a00">
「御本家からは自分の手腕で事を解決せよと
命じられています。
　統様のお力は借りられません」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080390b46">
「でも、町の人間を使っていいとも言ってた
んだろ。
　わたしだって町の人間だ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080400a00">
「……」

{	FwC("cg/fw/fw統_笑い.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080410b46">
「ふふ、不器用な息子め。
　口で母に勝とうなど十年早い――」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080420a00">
「御本家は、町の人間とは言っておりません。
　町の<RUBY text="・">男</RUBY>と言っておりました」

//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080430a00">
「お諦めください、統様」

{	FwC("cg/fw/fw統_睨む.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080440b46">
「……十秒経ってねぇ……
　つーか爺いのあほー！　そんなにわたしが
嫌いかー！」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080450a00">
「それに……統様。
　光を一人残しては行けません」

{	FwC("cg/fw/fw統_悲哀.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080460b46">
「……」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080470a00">
「自分の留守の間、光をお守りください。
　お願い致します」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080480b46">
「…………。
　あー！」

{	FwC("cg/fw/fw統_怒り.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080490b46">
「もー！」

//【統】
<voice name="統" class="統" src="voice/ma05/0080500b46">
「くそー！
　可愛くねえーー!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆がば
	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEX("絵暗転", 1500, "#000000");
	Fade("絵暗転", 200, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　視界が、急に閉ざされた。
　……頭を抱き込まれたのだと、そう気付くまで数秒
掛かった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_痛笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【統】
<voice name="統" class="統" src="voice/ma05/0080510b46">
「ろくでもない息子だ。
　母親の言うことを聞きゃあしない」

{	FwC("cg/fw/fw景明_悲しみ.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080520a00">
「申し訳ありません」

{	FwC("cg/fw/fw統_痛笑.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080530b46">
「おまえみたいな子供は大嫌いだ」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080540a00">
「<RUBY text="あい">敬愛</RUBY>しております。
　統様」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080550b46">
「ばかったれ。
　いいか？　親不孝。いっこだけ、わたしの
言う通りにしなさい」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080560a00">
「はい」

{	FwC("cg/fw/fw統_優しい.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080570b46">
「無事に帰って来ること」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080580a00">
「は。
　最大限の努力を払います」

{//◆ごち。
	CreateSE("SE01","se戦闘_攻撃_殴る02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FwC("cg/fw/fw統_睨む.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080590b46">
「空気読め。
　そんな言葉を聞きたがってると思うか」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080600a00">
「……必ず帰ります。
　統様」

{	FwC("cg/fw/fw統_笑い.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080610b46">
「よろしい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆画面復帰
	FadeDelete("絵暗転", 600, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　抗い難い力を持っていた、養母の腕から解放される。
代わりに与えられたのは嘆息だった。
　何かを振り払うような間を置いて、養母は再び俺を
真っ直ぐに見やってくる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【統】
<voice name="統" class="統" src="voice/ma05/0080620b46">
「いつ行く？」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080630a00">
「明日にでも」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080640b46">
「会社は？」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080650a00">
「既に休暇を申請してあります」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　どのみち山賊に持ち去られた商品の補充がつくまで
は仕事が回らない。
　出勤しても、することがなかった。

　それに山賊問題の解決は会社の利益にも寄与する。
　事情を話して休暇を求めると、社長は一も二もなく
認めたばかりか、有給扱いにまでしてくれた。

　……尤もそれは、期待の顕れというよりも、香典の
前払いという面が強い様子ではあったが。
　あの時社長の表情にあった希望と諦めの<RUBY text="せめ">鬩</RUBY>ぎ合いは、
一対九で諦め側が優勢と見えた。

　無理もない事ではある。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【統】
<voice name="統" class="統" src="voice/ma05/0080660b46">
「……策の一つくらいはあるんだろね？」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080670a00">
「別段」

{	FwC("cg/fw/fw統_驚き.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080680b46">
「無いのか息子よ!?」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080690a00">
「まずは会ってから、考えます」

{	FwC("cg/fw/fw統_痛笑.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080700b46">
「あぁ……
　やっぱすっげー不安……」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080710a00">
「どうか、ご心配なく」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080720b46">
「無茶言うなっつーの。
　じゃ……一つだけ助言だ」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080730b46">
「こいつは母親じゃなくて、武の道の先達と
して。
　……なんて大仰に構えて言うと無闇やたら
恥ずかしいけど」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080740a00">
「はっ。
　承ります」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　居住まいを正して、聴く姿勢をとる。
　養母がそのように前置きして話す事には、そうする
だけの価値がある筈だった。

　彼女も自分の父親から吉野御流を学んでいる。
　娘と同じように。光が吉野御流の修行を希望した際、
本家が苦々しく思いながらも最終的に黙認したのは、
何の事はない、既に養母の前例があったからだった。

　しかもその力量は凡庸の域を優に超える。
　養母が殊更に手並みを披露することは決してない。
が、日常のさりげない立ち居振る舞いから窺える業の
程は、天才の光にさえ匹敵するものだ。

　その人の助言ならば<RUBY text="あだ">徒</RUBY>や<RUBY text="おろそ">疎</RUBY>かにはできない。
　拝聴の構えで待つ俺に、養母は告げた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_睨む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【統】
<voice name="統" class="統" src="voice/ma05/0080750b46">
「殺しちゃいけないよ」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080760a00">
「……」

{	FwC("cg/fw/fw統_睨む.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080770b46">
「誰も。
　一人も、殺しちゃあ駄目だ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080780a00">
「……は」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　確かに、無用の殺生は武人として最も恥ずべき事。
　言われるまでもなく、避けられる限りは避けたい。

　しかし……数と凶暴性で圧倒する山賊団を相手に、
不殺を通して立ち向かえるものだろうか？
　それは余りに難しいのではないかと思えた。

　そんな内心が伝わったのだろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【統】
<voice name="統" class="統" src="voice/ma05/0080790b46">
「景明。
　敵を殺せば、戦いは終わると思う？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080800a00">
「……」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080810b46">
「それは違うよ。
　逆だ」

{	FwC("cg/fw/fw統_悲哀.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080820b46">
「敵を殺したら、戦いは<RUBY text="・・・・・・・">終わらなくなる</RUBY>」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080830a00">
「……は……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　漠然と……
　養母の言わんとするところはわからなくはない、が
……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【統】
<voice name="統" class="統" src="voice/ma05/0080840b46">
「もしもおまえが死んだら、わたしはおまえ
を死なせた奴を全員殺す。
　一人も許さない。絶対に」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080850a00">
「！」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080860b46">
「…………おまえが誰かを殺したらさ。
　その人の身内が、同じように誓うかもしれ
ないんだよ」

{	FwC("cg/fw/fw統_悲哀.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080870b46">
「そうなったら、そいつも殺す？
　そうしたら今度は、そいつの兄弟かなんか
が復讐に来るかもしれないね……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080880a00">
「…………」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0080890b46">
「終わらないだろ？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080900a00">
「はい……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　養母の言う通り。
　俺は己の浅慮を恥じた。

　一人でも殺せば、そこには拭い難い怨恨が生まれる。
　そうなったが最後、その先は泥沼の潰し合いが待つ
ばかりだろう。

　俺一人で始めた事でも、町が巻き込まれずに済む筈
はない。
　山賊側と町側に多大な死者が出ることになる。

　それこそは、万難を排して避けたかった最悪の結末
であるのに……
　解決どころか、本末転倒も甚だしい。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【統】
<voice name="統" class="統" src="voice/ma05/0080910b46">
「だからいいね、景明……
　どうするにしろ、誰も死なせないように」

//【統】
<voice name="統" class="統" src="voice/ma05/0080920b46">
「おまえ自身も含めてだよ」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080930a00">
「…………」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0080940a00">
「はい。
　統様」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　深々と一礼する。
　夜の到来を告げる冷たい風が、縁側から吹き込んで
きていた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma05_009.nss"