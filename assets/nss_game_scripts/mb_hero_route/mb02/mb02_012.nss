//<continuation number="1160">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_012.nss_MAIN
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
	#bg063_普陀楽城内廊下_01=true;
	#bg045_普陀楽城公方の間_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb02_013.nss";

}

scene mb02_012.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb02_011.nss"

//◆本丸廊下
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg063_普陀楽城内廊下_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　良く訳もわからぬまま、俺は足利四郎邦氏が待つと
いう場まで赴いた。

　一応、先導の女官に事由を訊ねてはみたのだが。
　ただ一言「知らぬ」と実に素っ気なく吐き捨てられ、
それきりだった。

　本当に知らないのかどうかは不明であったが、追及
するわけにもいかず、俺は口を噤むしかなかった。
　そうして、奥の一間。

　促されるまま、その部屋へと踏み入る。
　女官は続かず、背後でぴしゃりと辛辣な音を鳴らし
て<RUBY text="ふすま">襖</RUBY>を閉ざした。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆邦氏私室
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg045_普陀楽城公方の間_01.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);
	SoundPlay("@mbgm19",0,1000,true);

	SetFwC("cg/fw/fw邦氏_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120010b49">
「改！
　良く来てくれた」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120020a00">
「ははっ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　待ちかねていた様子で、邦氏が満面の笑みを見せる。
　それで困惑が晴れるわけでもなかったが、ひとまず
俺は平伏して挨拶を述べた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120030a00">
「殿下におかれては御機嫌麗しく――」


{	FwC("cg/fw/fw邦氏_通常b.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120040b49">
「いや、良い良い。
　そんな堅苦しい話でそなたを呼んだのでは
ないのだ」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120050a00">
「は……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　それは確かに、礼式を重んずるならそもそも殿上人
が公人風情と対話する事からして有り得まいが。

　……結局、どうした風の吹き回しなのか。
　先日の一件でこの少年が俺をいたく気に入ったのだ
としても、まさか奥の間にまで呼び入れて蹴球談義を
しようというのではあるまいし。

　四郎邦氏は挨拶を無用としながら、しかしすぐ用件
に入るでもなかった。
　言葉に迷う風の沈黙だけを漂わせている。

　彼我の立場を思えば、こちらから催促するなど論外。
　さて……どうしたものか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw邦氏_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120060b49">
「……実はな……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120070a00">
「はっ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト
	WaitKey(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　十秒が経過した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120080a00">
「…………」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120090b49">
「……余は……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120100a00">
「ははっ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆ウェイト
	WaitKey(4000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　童謡を一曲唄い終える程度の時間が過ぎた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120110a00">
「…………」


{	FwC("cg/fw/fw邦氏_恋情.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120120b49">
「……花……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120130a00">
「は」


{	FwC("cg/fw/fw邦氏_恋情.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120140b49">
「女性は……
　やはり、花を好むであろうか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　……………………。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120150a00">
「花……？」


{	FwC("cg/fw/fw邦氏_通常b.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120160b49">
「うん……。
　いや、花でなくても良いのだが……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　ようやく始まってみれば、対話はまるで要領を得な
かった。
　邦氏と俺と花と女性が一体何をどうして繋がるのか、
さっぱり不明である。

　他に仕方もなく、可能な範囲で回答する。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120170a00">
「通念としては、それに相違ありませぬかと」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120180b49">
「通念……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120190a00">
「男に置き換えるなら……
　男は野球を好んで観る、男は肉類を好んで
食す、と云われるのと同じような事であろう
と愚考致します」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120200b49">
「うむ……。
　だが実際には、野球も肉も好まぬ男は多い」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120210a00">
「御意」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120220b49">
「女性も、花が好きとは限らないかな」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120230a00">
「人によりけりで御座いましょう。
　花より団子とも申します」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120240b49">
「花より団子か……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120250a00">
「はっ」


{	FwC("cg/fw/fw邦氏_失意.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120260b49">
「団子の方が良いのだろうか……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120270a00">
「は」


{	FwC("cg/fw/fw邦氏_怒り.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120280b49">
「いや、改、おまえ本当にそう思うか!?
　やにわに女性に対して団子を贈るというの
は男女間の礼節に適っているのかっ!?」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120290a00">
「いえ、それは、なかなかにアバンギャルド
な挑戦となりますが」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　いきなり正気へと戻った様子で、口調も素のそれへ
戻して言ってくる邦氏に慌ててかぶりを振る。
　筋道の見えない会話に対応するのはどうにも厄介だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120300a00">
「しかし女性の中には我が妹のように、男性
から恋文とともに花を贈られるや一口<RUBY text="かじ">齧</RUBY>って
『不味い』と怒り、蹴り飛ばして全治三ヶ月
の重傷を負わせる者もおり――」


{	FwC("cg/fw/fw邦氏_怒り.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120310b49">
「そんな奇人変人のことは聞いてないよ！
　そうじゃなくて……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120320a00">
「は」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120330b49">
「あの人は……もっとこう……」


{	FwC("cg/fw/fw邦氏_恋情.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120340b49">
「こう……
　…………だと思うし」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120350a00">
「は」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　俺は何か、<RUBY text="シックスセンス">心眼</RUBY>でも求められているのだろうか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw邦氏_失意.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120360b49">
「でも、僕の勝手な思い込みかもしれないし
……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120370a00">
「は」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120380b49">
「だから、おまえを呼んだんだよ！
　どう思う？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120390a00">
「は。
　その前に、殿下」


{	FwC("cg/fw/fw邦氏_通常b.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120400b49">
「うん」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120410a00">
「不肖この改、今一つ御話が飲み込めませず。
　恥を忍んでお願い申し上げますが……どう
か御説明を頂けますまいか」


{	FwC("cg/fw/fw邦氏_恋情.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120420b49">
「…………」



//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120430b49">
「……」

{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120440b49">
「す、すまない。
　悩みが先に立って……事の順序を忘れてた」

{	FwC("cg/fw/fw邦氏_恋情.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120450b49">
「その、桜子どののことだ」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120460a00">
「岡部の」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120470b49">
「うん。
　足利と岡部の家とは……色々とあったが」


//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120480b49">
「すべてはもう、過去のことだ。
　水に流したい……いや、これは勝手な言い
草かもしれないけど」


//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120490b49">
「でも、桜子どのがいつまでも肩身のせまい
思いをすることはないと思う……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　勝者が敗者に和を求めるのは難しい。
　あるいは敗者から求める以上に。

　足利四郎の言い方は何とも煮え切らないものだった
が、それも真っ当な感性を備えていればこそだろう。
　俺は助け舟を出す心地で、頷いた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120500a00">
「僭越ながら自分も、左様に存じます」


{	FwC("cg/fw/fw邦氏_通常b.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120510b49">
「そうか！
　うん……おまえならきっと賛成してくれる
と思った」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　たったあれだけの関わりで、俺はこの少年に見込ま
れていたらしい。
　……己の真の立場を思い起こし、しくりと胸が痛む。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120520a00">
「して――」


{	FwC("cg/fw/fw邦氏_通常b.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120530b49">
「この間、おまえも桜子どのを見ただろう」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120540a00">
「は」


{	FwC("cg/fw/fw邦氏_通常b.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120550b49">
「あの時の、桜子どのは――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　少年は記憶を呼び起こす風で口を閉ざした。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト
	WaitKey(6000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　<RUBY text="らーめん">支那そば</RUBY>を一杯食べ終わる程度の時間が経過した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw邦氏_恋情.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//◆ドリーム
{	SetComic(@0,@0,13);}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120560b49">
「…………」


{	DeleteComic();
	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120570a00">
「……殿下」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120580b49">
「…………はっ!?」


{	SetComic(@0,@0,16);
	FwC("cg/fw/fw邦氏_通常b.png");}
//嶋：修正（話してた）【090930】
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120590b49">
「ご、ごめん。
　どこまで話したっけ？」


{	DeleteComic();
	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120600a00">
「あの時の桜子どのは、までで御座います」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　何となくこちらが申し訳ない気分になりつつ説明。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw邦氏_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120610b49">
「あ、うん。
　あの時……」


{	FwC("cg/fw/fw邦氏_失意.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120620b49">
「僕には、とても辛そうに見えた……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120630a00">
「……は」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　あの折の姫は少なくとも表面上、平静を保っていた
筈だが。
　……やはりこの少年、鈍感ではない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw邦氏_失意.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//◆ボイスは「綺麗だったけど……」小声で。
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice2/mb02/0120640b49">
「…………」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120650a00">
「はっ？」


{	FwC("cg/fw/fw邦氏_通常b.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120660b49">
「な、何でもないっ。
　そこで、だ」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120670b49">
「岡部との戦からまだ日も浅い。桜子どのに
心痛が多いのは仕方がないが……
　少しでも……苦しみを和らげて差し上げる
方法はないかと思って」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120680a00">
「成程。
　それで、花」


{	FwC("cg/fw/fw邦氏_通常b.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120690b49">
「うん……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　ようやく話の一筋は繋がった。
　だが、もう一筋。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120700a00">
「しかし殿下。
　<RUBY text="なにゆえ">何故</RUBY>、そのお悩みを自分などに」


{	FwC("cg/fw/fw邦氏_通常b.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120710b49">
「おまえしか思いつかなかったんだ」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120720a00">
「そのような――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　事はありますまいと続けかけ、俺は舌を引き止めた。
　言葉を呑み、先日の情景を想起する。

　護衛と従者に囲まれた王者の、孤独な遊び。
　……本当に、いないのかもしれない。こんな相談を
持ち掛けられる相手は、この少年の周囲には誰も。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120730a00">
「――御信頼を頂いておりましたとは。
　身に余る光栄と存じます」


{	FwC("cg/fw/fw邦氏_通常b.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120740b49">
「そう言ってくれると僕も嬉しい。
　それで、どうだろう」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120750a00">
「はっ……」


{	FwC("cg/fw/fw邦氏_通常b.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120760b49">
「良い花を選んで贈れば、桜子どのは喜んで
くれるだろうか？
　それとも、他のものがいいのか……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120770a00">
「さて――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　考えを巡らす。
　とはいえ当然、俺は桜子姫の物の好みなど知らない。

　目前の足利邦氏と同様、ほんの僅かな接触を持った
に過ぎぬ縁だ。何を語り合い、何を理解し合ったので
もない。
　だが――それでも幾らかは、わかる事もある。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw邦氏_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120780b49">
「改？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120790a00">
「思いますに……
　花ならば花で、宜しゅう御座いましょう」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120800b49">
「どういうことだ？
　他の物でもいいというように聞こえるぞ」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120810a00">
「はい」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120820b49">
「……団子とか」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120830a00">
「宜しゅう御座いましょう」


{	FwC("cg/fw/fw邦氏_怒り.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120840b49">
「改。
　ちゃんと真剣に考えてる……？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120850a00">
「無論に御座います」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　不安げにこちらの顔を覗いてくる少年王へ、小さく
笑みを作って応える。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120860a00">
「他ならぬ邦氏殿下の御下問をどうして<RUBY text="ないがし">蔑</RUBY>ろ
に致しましょう」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120870b49">
「でも……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120880a00">
「殿下」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　表情を改めて告げる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120890a00">
「桜子姫に殿下が御贈りしたきものは、物、
それ自体では御座いますまい」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120900b49">
「……？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120910a00">
「贈り物に事寄せて、姫を<RUBY text="いた">労</RUBY>わられる殿下
の御心をこそ届けたいので御座いましょう」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120920b49">
「う、うん」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120930a00">
「<RUBY text="さ">然</RUBY>れば、物自体は何でも構わぬと存じます。
　殿下の御気持ちを伝えるに足る物であれば
良し」


//嶋：修正（知らぬ）【090930】
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120940a00">
「姫の望まれる品がわかるなら格別、それは
今は御本人しかわからぬ以上、肝要なのはその
一事に尽きます。
　どうか御心のままにお選び下さい」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120950b49">
「……つまらぬ物を寄越されて、桜子どのが
嫌がるようなことはないだろうか……？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120960a00">
「御懸念無用と存じます。
　自分如き凡愚に貴き方の御器量など計れる
ものでは御座いませぬが」


//【景明】
<voice name="景明" class="景明" src="voice/mb02/0120970a00">
「かの姫君であれば、必ずや……
　贈り物と共に、殿下の御厚情をも受け取ら
れることでありましょう」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120980b49">
「……そうか……」


{	FwC("cg/fw/fw邦氏_通常b.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0120990b49">
「うん、そうだな！
　ありがとう改。何だか迷いが晴れた」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0121000a00">
「はッ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　笑顔を寄越す邦氏に、深く頭を垂れる。
　己の身を振り返れば些か複雑な心境にもなるが、今
はそれは忘れておく。

　この優しい少年を助けてやれたのならそれで良い。
　何にしてもこれで御役御免なのだし……少しばかり
道草をした、そう考えるに留めておくとしよう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw邦氏_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0121010b49">
「よし、決めた。
　やっぱり花にしておく」


{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0121020a00">
「結構かと……」


{	FwC("cg/fw/fw邦氏_通常b.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0121030b49">
「では頼むぞ、改」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0121040a00">
「は」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　…………。

　はて。
　俺の用事は、もう済んだのではないのか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw邦氏_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0121050b49">
「桜子どののもとへ<RUBY text="しか">確</RUBY>と届けてくれ」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0121060a00">
「…………<?>
{	Wait(500);}
殿下。
　そういったものは、御自身でお渡しになら
れた方が宜しいかと存じます」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0121070b49">
「それはそうなのだろうが……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0121080a00">
「ここで臆されてはなりません」


{	FwC("cg/fw/fw邦氏_失意.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0121090b49">
「いや……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　邦氏は困った顔をしている。
　臆したとか、恥ずかしいというのとは違う様子だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0121100a00">
「殿下？」


{	FwC("cg/fw/fw邦氏_失意.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0121110b49">
「……そうしたいのは山々だけど。
　僕が――余がそれをすれば大事になる」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0121120a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　確かに。

　<RUBY text="や">已</RUBY>む無しか。
　これも乗り掛かった舟だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0121130a00">
「畏まりました。
　使者の任、謹んで承ります」


{	FwC("cg/fw/fw邦氏_通常b.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0121140b49">
「やってくれるか！」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0121150a00">
「はっ。して、贈り物は……
　ひとまず出直して参った方が宜しくありま
しょうか」


{	FwC("cg/fw/fw邦氏_通常b.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0121160b49">
「いや。
　実は一つ、もう選んであるんだ……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb02_013.nss"