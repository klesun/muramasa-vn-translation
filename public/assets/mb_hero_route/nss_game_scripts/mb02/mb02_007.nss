//<continuation number="170">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_007.nss_MAIN
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
	#bg033_普陀楽城宿舎_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb02_008.nss";

}

scene mb02_007.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb02_006.nss"

//◆翌日
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg033_普陀楽城宿舎_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm26",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　一条を先に送り出し、俺は<RUBY text="しばら">暫</RUBY>く宿舎に留まった。

　今日の予定は手分けしての城内見回りだ。
　名目は、城内各部署への連絡事務である。

　緊急性と機密性は高くないが口頭通達の必要がある
連絡は、政所に属する公人が日常的に担う職務の一つ。
　つまりふらふら出歩いていようと、不審を買うには
あたらない。

　警邏の兵士に見咎められても、適当な書類を見せて
そう説明すればすぐ解放されると岩田女史は保証した。
　足で情報を稼ぎたいこちらにとって、これほどの好
条件も他に無かろう。

　情報――そう情報だ。それも文章に変換されたもの
ではない、<RUBY text="き">生</RUBY>の情報が要る。
　すべき行動を策定するにも実行するにも、まず城の
現状をもう少し肌で知らぬことには始まらない。

　言うなれば遊佐童心に一泡吹かせるのが俺と一条の
仕事なのだが、あの大入道をして「うわぁ」と言わし
めるのは丸木舟で大洋を横断するより困難そうである。
　<RUBY text="けいけい">軽々</RUBY>には動けなかった。

　とはいえやはり、時間を掛けるのも下策だろう。
　一晩経っても一条は相変わらず、剣呑な気配を衣の
ように纏いつけている。

　城勤めの緊張で気が立っていると見えなくもないの
がせめてもの救いだが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw岩田_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0070010b20">
「あの方には、武官として潜入して頂いた方
が良かったかもしれません」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0070020a00">
「あるいは」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　ここへ来る途中、擦れ違ったのか。
　後ろを気にしながら嘆息する岩田女史に、俺は頷き
を返した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw岩田_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0070030b20">
「あまり怪しまれないよう、私の方から手は
打っておきますが……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0070040a00">
「お願いします。
　自分も少し考えておきましょう。……城内
に生活雑貨などを取り扱っている店舗はあり
ますか？」


{	FwC("cg/fw/fw岩田_通常.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0070050b20">
「南三ノ丸に出入りの業者が詰めております
が」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　南三ノ丸。徒歩で行くには少し遠いが、難儀という
ほどでもない。事のついでに立ち寄っても良い場所だ。
　俺は首肯して、話題を転じた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0070060a00">
「昨日、岡部の姫に出会いました」


{	FwC("cg/fw/fw岩田_通常.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0070070b20">
「……そうですか。
　あの方に」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0070080a00">
「京極家にお預けの身と伺いましたが、率直
な話、現在の立場はどのようなものでしょう
か」


{	FwC("cg/fw/fw岩田_通常.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0070090b20">
「言ってしまえば厄介者です」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　率直にと断ったせいだろう。
　中年の密偵は歯に衣を着せなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw岩田_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0070100b20">
「抱え込んでおいても役には立ちません。
　が、野放しにしてしまえば反幕勢力を糾合
する旗頭にもなりかねず……」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0070110a00">
「成程」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　足利護氏の宿敵たり得た唯一の人物、岡部頼綱の娘。
　六波羅への刃を心に秘め隠す人々の象徴的統率者と
しては、最高の人材であるかもしれない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0070120a00">
「そのような動きが姫の周辺に？」


{	FwC("cg/fw/fw岩田_通常.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0070130b20">
「篠川では見られた模様です。
　それもあって、より守りの堅い普陀楽へ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　送られてきたというわけか。
　確かに、桜子姫を欲する者がいたとしても、この城
までは手を伸ばせなかろう――<k>いや。決め付けるのは
早計だ。

　現に、ここにこうして反六波羅的な男が侵入を果た
している。
　他にもいないとは言い切れまい。

　……となると、あの姫君の末路は見えている。

　今ではない。今手を下せば人心を刺激する。一年か
二年後、岡部の名が人々の記憶から薄らいだ頃。
　密かに――――で、あろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw岩田_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0070140b20">
「……利用するおつもりですか？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0070150a00">
「まだ、そこまでは」


{	FwC("cg/fw/fw岩田_通常.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0070160b20">
「<RUBY text="・・・">私ども</RUBY>にとってはいささか危険な駒です。
　もしあの姫を使われる場合には、先立って
ご相談頂けると、無用の齟齬を生まずに済み
ましょう」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0070170a00">
「……心得ております」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　忠告めいた、それは恫喝だった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb02_008.nss"