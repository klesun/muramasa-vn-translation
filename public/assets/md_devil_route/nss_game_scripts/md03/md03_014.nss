//<continuation number="1040">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_014.nss_MAIN
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
	#bg057_普陀楽城廊下_01=true;
	#bg089_普陀楽城内高級士官用食堂_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md03_015.nss";

}

scene md03_014.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md03_013.nss"


//◆廊下・昼

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");


	OnBG(100, "bg057_普陀楽城廊下_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm30", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒",1500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　報告を終え、退出する。
　今日のうちに片付けなければならない案件は、まだ
残っていた。

　急ぎ足に、仕事場へ向かう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw獅子吼_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140010a06">
「湊斗中佐」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆獅子吼

	StL(1000, @0, @0, "cg/st/st獅子吼_通常_制服.png");
	FadeStL(500, true);

	Wait(300);

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140020a00">
「大鳥中将閣下。
　……報告内容に問題がありましたでしょう
か」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140030a06">
「いや、違う」

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140040a06">
「食事は済ませたか？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140050a00">
「いえ、まだ」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140060a06">
「ならば付き合え」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆士官食堂。bg089a

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	DeleteStL(0,true);
	OnBG(100, "bg089_普陀楽城内高級士官用食堂_01.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　篠川公方、竜軍中将との会食――
　と言っても大袈裟な事は何もなく、他に同席する者
は皆無、場所は城内の士官用食堂であった。

　<RUBY text="そっけ">素気</RUBY>もなければ洒落気もないが、この人物らしいと
言えば実にらしい。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140070a00">
「……閣下は、すぐ篠川へお戻りに？」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140080a06">
「ああ。
　今夜の内には<RUBY text="た">発</RUBY>つ」

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140090a06">
「ここで手を抜いて京都の公家衆にまたぞろ
反抗心をもたげられては、何もかも水の泡だ。
　進駐軍との開戦に向けた準備も調えておか
ねばならんしな」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140100a00">
「……そのような多忙のところ、小官などの
ためにお時間を頂き、感謝の言葉もございま
せん」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　皮肉の響きが顕れないよう、注意しつつ言上する。
　
　その開戦準備とやらは今頃、茶々丸の手で歪められ
ている筈だった――<RUBY text="・・・">こちら</RUBY>の目的に沿うように。

　詳細は知らないが、その変化が六波羅の利益に寄与
する事は有り得ないだろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw獅子吼_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140110a06">
「食事の相手に呼んだだけのことだ。
　気にするな」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　大鳥獅子吼中将は、冷たく言い捨てた。
　しかし、声調の中に敵意や嫌悪感といった類のもの
は感じ取れない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw獅子吼_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140120a06">
「そもそも、俺の方で貴様に用事があったの
だしな」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140130a00">
「は。
　どのような御用件でありましょうか」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140140a06">
「一言で済む」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140150a00">
「は……」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140160a06">
「単刀直入に言えばな」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　箸を置き、手巾で口元を拭い――
　ぎろりと俺の顔を見やって、中将は告げた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);


	SetFwC("cg/fw/fw獅子吼_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140170a06">
「茶々丸を切らんか」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ボックス消してウェイト
	WaitKey(800);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140180a00">
「……」

{	SoundPlay("@mbgm35", 0, 1000, true);
	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140190a00">
「閣下……？」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140200a06">
「聞き間違いか――などとつまらん定型句を
言うなよ」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140210a00">
「先回りされては口にもできませんが……
　只今の御言葉は正確なところ、どのような
意味でしょうか」

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140220a06">
「ふん。
　どう解釈されようが構わんのだがな……」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140230a06">
「奴の首を実際にぶった斬ってもいいぞ。
　後の面倒は俺がみてやる」

{	FwC("cg/fw/fw景明汚染_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140240a00">
「御冗談を」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　洒落にならない。
　ここは食堂、個室ではないのだ――誰が何処で耳を
そばだてているやら、知れたものではない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw獅子吼_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140250a06">
「今日の仕事ぶりを見るに、貴様なら公方職
くらい務まりそうだ。
　茶々丸を弑して後釜に座っても、格別問題
は無かろうよ」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140260a06">
「俺も似たようなことをやっている。茶々丸
にしてからが、親を殺して地位を奪ったのだ。
　貴様が同じことをしたからといって、今更
誰が文句など言うか」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140270a00">
「……閣下。
　少々、お戯れが過ぎます」

{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140280a06">
「ふん……そうか？
　まあ、いい」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140290a06">
「なら言葉の意味を変えてやろう。
　切れと言ったのは、見切れということだ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140300a00">
「見切れ？」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140310a06">
「茶々丸を捨てて俺の下につけ。
　厚遇は約束する」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140320a00">
「…………」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140330a06">
「連隊をやろう。
　勿論、大佐に昇進させた上でな」

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140340a06">
「どうだ。
　男として世に生まれ落ちたからには、一個
連隊率いて戦場を駆け巡ってこそ本懐という
ものであろうが？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140350a00">
「それは……否定いたしかねますが」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　子供の頃、そんな生き様を望んだこともある。
　まさしく男子全てがそうであるように。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140360a00">
「しかしこの歳になれば、嫌でも分際を知る
ものです。
　自分に連隊指揮官の重職が務まるとは思え
ません」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140370a06">
「過度の謙遜は貴様らしくないぞ」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140380a00">
「身贔屓を省いた自己評価であります」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140390a06">
「大嘘を抜かせ。
　でなければ……案外、貴様は自分を知らん
のだ」

{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140400a06">
「つまらんな。
　湊斗、俺を失望させるつもりか？」

{	FwC("cg/fw/fw景明汚染_冷笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140410a00">
「残念であります。
　大鳥閣下の御期待に応えかねたのであれば、
只今の有難いお話も無かったことにするしか
ございますまい」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140420a06">
「……ち。
　この鉄面皮が！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　大鳥獅子吼は、口の端を引き曲げた。
　さも愉快げに。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw獅子吼_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140430a06">
「それほど茶々丸がいいのか？」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140440a00">
「市井の身から引き上げて頂いた恩を感じて
おります」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140450a06">
「心にもないことを言うな。
　露骨に歯が浮いているわ」

{	FwC("cg/fw/fw景明汚染_冷笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140460a00">
「これは不覚……」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140470a06">
「いちいち人を食った奴だ。
　ふん、忌々しい」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140480a06">
「茶々丸、あの阿修羅じみた小娘と比べても、
俺がそう劣るとは思えんがな……。
　貴様の目で見ると差があるのか」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140490a00">
「いえ、そのようなことは決して」

{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140500a06">
「では何故だ。
　茶々丸にこだわる理由は何だ？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140510a00">
「…………」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140520a06">
「そうか。言っていたな……。
　利害の一致がどうのこうのと」

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140530a06">
「何か都合あって茶々丸のもとを離れられん
というわけか」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140540a00">
「……解釈は御自由に」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140550a06">
「その都合とやらを、俺が引き受けてやると
言ったら？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140560a00">
「大鳥閣下……。
　自分と致しましては、閣下ほどの方が小官
如きにかくも固執されることこそ、不思議で
なりません」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140570a00">
「その辺りの御本心について、お尋ねしても
宜しいでしょうか？」

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140580a06">
「何だ。話を逸らす気か？
　ふん……まぁ、今日は見逃しておこう」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140590a06">
「深追いは用兵の禁則だからな」

{	SetVolume("@mbgm*", 2000, 0, null);
	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140600a00">
「……」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140610a06">
「貴様を誘うのは貴様の才を買っているから
だ。が……
　他にも理由がないことはない、な」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140620a00">
「それは、どのような」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140630a06">
「…………」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140640a00">
「……？」

{	SoundPlay("@mbgm26",0,1000,true);
	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140650a06">
「貴様の面を見ていると、どうも弟のことを
思い出す。
　妙な話だ。俺はあいつの顔などもう覚えて
いないというのに」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140660a00">
「弟御がおられたのですか？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　聞いた事もない話である。
　大体、大鳥獅子吼は大鳥家に生まれついた人間では
なく、外から養子に入っていた筈――<k>そうか。養子に
入る前、実家に弟がいたという事か。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw獅子吼_遠想.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140670a06">
「幼い頃に別れたきりだ。今どこで何をして
いるのか……生きているのかすらわからん。
　生きていれば、貴様と同じ年頃のはずだ」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140680a00">
「……」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140690a06">
「それだけだ。
　ふん、我ながら気の迷いだな。貴様くらい
の歳の男など、いくらでもいように」

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140700a06">
「だが貴様だけが……妙に懐かしい」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140710a00">
「閣下……」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140720a06">
「ふん。下らん。馬鹿馬鹿しい。
　これでは妄想狂だな。ああ、下らん。ふん
……俺も先は長くなさそうだ。馬鹿め」

{	FwC("cg/fw/fw獅子吼_影人.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140730a06">
「貴様を側に置いて、俺は同じ血肉で出来た
弟と一緒に生き、一緒に戦う、そんな心地を
味わいたいらしい。
　下らん……下らんな！」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140740a06">
「俺としたことが！」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140750a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　天井を見上げて自嘲する大鳥中将に、俺は暫し言葉
が無かった。
　壁の掛け時計の音だけを空虚に聴く。

　いつしか、食堂からは人気が失せていた。
　空気がやや肌寒い。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140760a00">
「……どの軍にいようと、同じ六波羅。
　閣下と自分とが肩を並べて戦うことに違い
はないかと」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140770a00">
「このような言い様が許されるのであれば、
ですが」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140780a06">
「ふん。
　口先だな……」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140790a06">
「貴様が戦う理由は、六波羅への忠義などで
はなかろう」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140800a00">
「…………。
　大鳥閣下を以て忠臣の鑑とするのであれば、
成程、返す言葉もございません」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140810a00">
「閣下はまさに、六波羅の正義を体現される
御方ゆえ」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140820a06">
「ほう。
　そう見えるか？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140830a00">
「違いましょうや」

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140840a06">
「違いはせんな。
　違いはせんが」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140850a00">
「……？」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140860a06">
「正義。
　忠義」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140870a06">
「しかし、所詮は私心だ。
　俺がやりたくてやっているに過ぎんからな」

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140880a06">
「そう考えれば……ふん、同じか。
　貴様が脳裏で何を企もうと、詰れた筋合い
ではないわ」

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140890a06">
「同じ私心。
　同じ私利私欲よ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140900a00">
「……」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140910a06">
「誰にもひとつくらいは無条件で信じられる
価値があっていい。
　いくつもあったら単なる馬鹿か聖人だがな」

{	FwC("cg/fw/fw獅子吼_影人.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140920a06">
「家族だの、親友だの。
　今の俺にはどちらも無いが……国家がある」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140930a06">
「この大和という国だけは信じられる。
　守り通すため、身命を擲てる」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140940a00">
「…………」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140950a06">
「貴様にも何か、あるのだろう？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140960a00">
「……はい。閣下」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140970a00">
「あります」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140980a06">
「ならば俺達は同類だ。
　同胞ではないのだとしてもな……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140990a00">
「…………」

{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0141000a06">
「……ふん。下らん。
　俺は随分と、らしくないことを話していた
ようだ」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0141010a06">
「下らん。愚かしいな。我ながら」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0141020a00">
「閣下……」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0141030a06">
「時間を取らせたな。
　俺はもう行く」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆がた。立ち上がって去る獅子吼

	OnSE("se日常_物_椅子鳴る02", 1000);

	StL(1000, @0, @50, "cg/st/st獅子吼_通常_制服.png");
	Move("@StL*", 300, @0, @-50, Dxl2, false);
	FadeStL(300, true);
	
	WaitKey(400);
	DeleteStL(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　立ち上がって、敬礼する暇もなかった。
　竜軍中将の姿が視界から消え、食堂からも去る。

　俺は取り残され、暫し呆然と、前方の空席を眺めて
いた。
　
　…………私心。

　無条件で、信じられる価値。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0141040a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md03_015.nss"