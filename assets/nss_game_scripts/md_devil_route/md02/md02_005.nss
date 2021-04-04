//<continuation number="510">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_005.nss_MAIN
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
	#bg098_堀越御所内廊下_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_006.nss";

}

scene md02_005.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md02_004.nss"

//◆フェードイン
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	OnBG(100, "bg098_堀越御所内廊下_01.jpg");
	FadeBG(0, true);
	StR(1000, @0, @0, "cg/st/st光_通常_私服.png");
	StL(1000, @0, @0, "cg/st/st茶々丸_通常_私服.png");
	FadeStR(0, false);
	FadeStL(0, true);

	SoundPlay("@mbgm27", 0, 1000, true);
	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	SetFwC("cg/fw/fw光_不思議.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【光】
<voice name="光" class="光" src="voice/md02/0050010a14">
「景明？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0050020a00">
「いや……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　頭の芯から襲ってきた、軽い眩暈を振り払う。
　嘔吐感は力任せに飲み下した。

　……迷妄するまい。
　余計な事だ。余計な。

　俺は律儀にこちらを待っていたらしい光へ向き直り、
ひとまず最も気に掛かる事柄だけを訊いてみた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0050030a00">
「お前は……ずっとここに……
　堀越公方のもとにいたのか？」

{	FwC("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0050040a14">
「そうだな。
　故郷を離れてからこれまで、おおむねこの
館を足場にしている」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0050050a00">
「何故だ」

{	FwC("cg/fw/fw光_不思議.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0050060a14">
「なぜ？
　……ふむ。訊かれてみれば、格別の理由は
ない」

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0050070a14">
「故郷を出た後、<RUBY text="・・・・">真っ直ぐ</RUBY>進んでいたらここ
へ行き着いたというだけの話だな。
　別にほかの場所へ移っても構わない――」

{	FwC("cg/fw/fw茶々丸_泣き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0050080a07">
「御姫ーっ！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆だき。
	DeleteStL(200,true);
	OnSE("se人体_動作_抱く01", 1000);
	Shake("@StR*", 200, 15, 0, 0, 0, 300, null, true);


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0050090a00">
「……」

{	FwC("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0050100a14">
「――構わないのだが、嫌がるやつがいる。
　これが理由といえば理由か」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0050110a00">
「引き止められているから……？
　それだけなのか」

{	FwC("cg/fw/fw光_慈愛.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0050120a14">
「人から好意を向けられるのは嬉しいものだ。
無闇にはねつけるのも気が引ける。
　光の目的の障害になるなら別だが、そうで
なければ意に沿ってやっても構わん」

//【光】
<voice name="光" class="光" src="voice/md02/0050130a14">
「それに伊豆は水も食も空気も良いしな。
　居心地はなかなかだ」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0050140a07">
「姫ありがとーっ」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0050150a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　光の言葉に嘘の気配はない。
　元より、嘘をつける人間でもない。

　光は格別の理由なく、堀越公方のもとにいるのか。
　
　だが……公方の<RUBY text="がわ">側</RUBY>では？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0050160a00">
「閣下」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0050170a07">
「うに」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0050180a00">
「貴方は如何なる所以から、光の滞在を望ま
れるのですか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　常識的に考えれば、厄介事――どころの話ではない。
　気分次第で平和な町を<RUBY text="たちま">忽</RUBY>ち戦場に変える客人など、
誰が歓迎するだろう。

　戦うか逃げるか、さもなくば隠れて去るのを待つか。
いずれかを選ぶのが正しい対応というものだ。
　天災に遭いながら生き延びた幸運を<RUBY text="むげ">無碍</RUBY>にする如く、
頼み込んで引き止めるとは――筋が通らない。

　……だからこそ、光は誰かに匿われているのかもし
れないと思いつつ、その推測に現実感を覚えられずに
いたのだが……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0, "cg/st/st茶々丸_通常_私服.png");;
	FadeStL(300, false);

	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0050190a07">
「恩人なんだよね」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0050200a00">
「恩人……？」

{	FwC("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0050210a14">
「そうなのか」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0050220a00">
「……」

{	FwC("cg/fw/fw茶々丸_泣き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0050230a07">
「……忘れられてるよ……。
　うっかり殺されかかってたあての前に颯爽
と現れてくれた御姫の勇姿、総天然色でマイ
メモリーに保存してあるのに……！」

{	FwC("cg/fw/fw光_不思議.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0050240a14">
「そういえば死に掛かっていたな」

{	FwC("cg/fw/fw光_笑い.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0050250a14">
「うむ、思い出した！
　見たところ戦えそうにないし、どうしてか
<RUBY text="うた">汚染波</RUBY>の影響を受けないし、なんだか珍妙な
生き物に思えたので殺すのをやめたんだった」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0050260a07">
「そんな理由かよ」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0050270a07">
「いやまー、御姫にあてを助ける気なんてな
かったのは最初から知ってたけどね。
　結果的にそーなったってだけで」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0050280a07">
「でも御姫が来てくれたおかげであてが救わ
れたのは事実だし、なら恩に着るのは当然て
もんでしょう」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　……足利茶々丸もやはり、嘘を言っているようには
見えない。
　光と違い、虚言詭弁は常套手段であろう政治権力者
の事、上辺の印象を鵜呑みにはできないが……。

　おそらく、恩を受けたというのは真実。
　しかし、それのみとは考えられない。

　何か別に理由があって、光を留めている。
　そうみるのが妥当だ。

　咄嗟に思い付く理由は二つ。

　一つは、光を支配――制御する方法を心得ており、
自分の意のままに動かせるから。
　……しかしこれは深く検討するまでもなく<RUBY text="ナンセンス">的外れ</RUBY>で
ある。

　己の意思の矛先を他人に委ねる光ではない。
〝銀星号〟なら尚更だ。実力をもってにせよ、口舌を
もってにせよ、他者が彼女を操るなど全く不可能な事
だろう。

　そもそも、いま目の当たりにしている両者の関係は
とてもそんな風には見えない。
　足利茶々丸は光に過度の干渉をせず、なればこそ、
光もこの館を過ごしやすいと感じているようだ。

　では？
　
　……もう一つの理由か？

　<RUBY text="・・・・・・・・・・・・・">支配制御などするまでもなく</RUBY>、光の存在が堀越公方
の利益に適うから。
　
　――――なのか？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0050290a00">
「……敢えてお尋ねします。
　閣下が光を手元に留めておかれるのには、
何か目的とするところがお有りなのではござ
いませんか」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0050300a07">
「うん」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0050310a00">
「……」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0050320a07">
「あるよ？」

{	FwC("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0050330a14">
「あると聞いているな」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0050340a00">
「……それはどのような目的でしょう」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0050350a07">
「まだ内緒」

{	FwC("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0050360a14">
「内緒だと聞いている」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0050370a00">
「…………」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0050380a00">
「お前はそれでいいのか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　光に訊く。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_好戦.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【光】
<voice name="光" class="光" src="voice/md02/0050390a14">
「構うまい。
　光が野望を抱いて生きるように、他の者に
も望みがあるのは当然のこと」

//【光】
<voice name="光" class="光" src="voice/md02/0050400a14">
「望みのため、光を利用したくばするがいい。
　それがおれの関知せぬ所で終始するのなら
どうでも構わぬことであるし、おれの妨げに
なるのなら戦って勝敗を決するまでのことだ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　唖然とするほかない、割り切りの良さだった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0050410a07">
「御姫と話してると、小さなことでいちいち
悩んでる自分が馬鹿に思えてこない？
　あてはしょっちゅう」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0050420a00">
「……は」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　仕方もなく、頷く。

　だが……やはり俺は気に掛かった。
　堀越公方の目的とは何なのか？　制御不能の殺戮者
にどのような実益価値があるというのか？

　想像もつかない……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0050430a07">
「御姫、朝ごはんどうする？」

{	FwC("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0050440a14">
「貰う」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0050450a07">
「<RUBY text="まかない">厨房</RUBY>に言えばくれると思うよ」

{	FwC("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0050460a14">
「今日の当番は誰だ？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0050470a07">
「<RUBY text="みちば">三千場</RUBY>のおっちゃん」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0050480a14">
「あの職人か。なら期待できるな。
　行ってこよう」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆光、去る
	DeleteStR(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　伸びやかな挙措で、光は廊下を歩いていった。
　その背を見送る。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0050490a07">
「で」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　視界へ割って入るように、足利茶々丸。
　少女の瞳は些か、意地の悪い色を含んでいた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0050500a07">
「お兄さん、これからどうするの？
　鎌倉に帰る……？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0050510a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md02_006.nss"