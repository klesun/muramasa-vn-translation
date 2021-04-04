//<continuation number="890">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_020.nss_MAIN
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

	$GameName = "mc02_021.nss";

}

scene mc02_020.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc02_019.nss"

//◆夜
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 15000, "BLACK");
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg028_横浜ＧＨＱ基地_03.jpg");
	StL(1100,@0,@0,"cg/st/st香奈枝_通常_制服c.png");
	FadeStL(0,false);
	Delete("上背景");
	FadeDelete("黒幕１", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　夜。
　俺は再び、大鳥大尉に外へ連れ出された。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm16",0,1000,true);

	DrawDelete("黒幕１", 1000, 100, "blind_01_00_1", true);
	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200010a03">
「……そうですか。
　あの方は景明さまにそんなお話を……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200020a00">
「はい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　いつも大尉から付かず離れずの永倉侍従がやや距離
を取り、それとなく周囲を警戒し始めた時点で、どの
ような会話が望まれているのかは察せられた。
　如何にしてか、あの中佐の訪問を知ったに違いない。

　尋ねられる前に俺から口火を切り、対談のすべてを
話した。
　大尉からも情報の提供があった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200030a00">
「……資料管理課課長。実態は諜報総監。
　そして貴方の上司……あのキャノン中佐が」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200040a03">
「ええ。
　ＧＨＱの大和経略において、実権を掌握し
ていると言っても過言ではない方です」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200050a00">
「それはつまり、彼の語った内容は一中佐の
見解に留まるものではなく……ＧＨＱ全体の
思想でもあると？」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200060a03">
「虚実はともかく。
　あの方の言葉にはそれだけの重みがあると
考えた方がよろしいでしょうね」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200070a00">
「……虚実。
　大尉殿、キャノン中佐の自分に対する依頼
の件は、果たして額面通りに受け取ったもの
でしょうか？」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200080a03">
「そうですね……それに関しては。
　呆れ返るほど効果的な作戦ですし、」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200090a03">
「<RUBY text="・・・・・・">わたくしにも</RUBY>似たようなプランが用意され
ていますから。
　また別に思案があるとしても、景明さまの
協力が欲しいというのは嘘ではないでしょう」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200100a00">
「……成程」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
〝大鳥〟の名の活用か。
　大和の既存権力層を排除した後、香奈枝嬢を後釜に
据えようという画策があるわけだ――キャノン中佐の
脳内に。

　実行されれば、彼女は傀儡君主となる。
　妹と同じ配役を、より広い舞台で演じさせられる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200110a00">
「大尉殿。
　貴方は承服しておられるのですか？」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200120a03">
「自分に関するプランを？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200130a00">
「はい」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200140a03">
「一概に否定はしません」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200150a00">
「……。
　余り、大尉の御気性にそぐう提案とも思え
ませんが」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200160a03">
「先日、申し上げましたでしょ。
　わたくしが大和へ帰国したのは、第一に民
を守る<RUBY text="つとめ">責務</RUBY>を果たすため――」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200170a03">
「国際連盟、要するに大英連邦ということに
なりますけれど、その征服を受け入れるのが
大和にとって最良なら……わたくしもそれに
従い、求められる役割を果たすまでです」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200180a03">
「否やはありません。
　わたくし個人の好みなど、考慮の要もない
ことです」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200190a00">
「……は」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　俺は貴人への略礼を<RUBY text="と">執</RUBY>った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200200a03">
「景明さまはいかがですの？」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200210a00">
「……考えては、みました」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200220a00">
「キャノン中佐の示す<RUBY text="みち">未来</RUBY>が最善であるのか
……まさにその一点を。
　本当に、それが最も良い可能性であるのか」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200230a03">
「ご結論は？」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200240a00">
「一時的な平和は訪れるでしょう」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200250a00">
「進駐軍が六波羅を駆逐し、大和の統治権を
握ったなら、施政の多くの点で改善が期待で
きます……大英連邦が大和に限って<RUBY text="ジェントルマンシップ">紳士道</RUBY>を
放棄しない限りは」

//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200260a00">
「大和は大英を宗主国と仰ぎ――スカンジナ
ビアやバルト三国、<RUBY text="モンゴル">蒙古</RUBY>のように、<RUBY text="ロシア">露帝国</RUBY>を
封ずる壁の一枚となります。
　<RUBY text="ケイジ・オブ・ベアーズ">対露封鎖網</RUBY>が遂に完成します……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200270a00">
「しかしそうなった時、露帝は黙って両手を
上げるでしょうか？」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200280a03">
「……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200290a00">
「南下政策は彼らの生命線です。
　その切断をただ看過するとは思えません」

//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200300a00">
「彼らが封鎖網の実力突破を図った時……
　まず狙われるのは」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200310a03">
「――占領から間もない大和？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200320a00">
「支配体制が確立する前なら付け入る間隙は
ある、おそらくそう考える者がいるでしょう。
　で、あれば――大和の春も長くは続かない」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200330a00">
「<RUBY text="ロイヤルナイツ">女帝軍</RUBY>と<RUBY text="コサック">露帝軍</RUBY>による激戦の巷となります」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200340a03">
「もちろん、そんな<RUBY text="こと">事態</RUBY>は大英連邦も望みま
せん。外交で決着をつけようとするでしょう。
　幾らかは露帝の要求にも応じ、代償に連盟
への参加を求める、その辺りで。……けれど」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200350a03">
「目論見通りにゆくとは限らない」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200360a00">
「はい。
　過去の歴史が証明するように……」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200370a03">
「だからキャノン中佐の依頼は拒む――と？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200380a00">
「……そうなります」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　それのみが理由ではなかったが。
　……ＧＨＱに与するという事は、<RUBY text="・・・・">あの騎士</RUBY>を戦友と
呼ぶという事でもある。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆バロウズ一瞬

	EfRecoIn1(18000,400);

	CreateTextureSP("絵回想100", 2000, Center, InBottom, "cg/bg/bg077_建朝寺得月楼前_02.jpg");
	CreateTextureSP("絵回想200", 2100, Center, InBottom, "cg/st/3dバロウズ_立ち_通常.png");
	EfRecoIn2(200);


	Wait(150);


	EfRecoOut1(200);

	Delete("絵回想*");

	EfRecoOut2(400,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　私的な感情問題に過ぎない。軽くはないが。香奈枝
嬢に告げるような事ではなかった。
　
　告げるべき事は他にある。一件。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200390a00">
「……いや。
　これも微妙なところか」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200400a03">
「？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200410a00">
「実はもう一つ、別の危惧が」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200420a03">
「何ですかしら」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200430a00">
「論理的考察ではなく、ほとんど単なる憶測
になってしまうのですが」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200440a03">
「構いませんことよ？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200450a00">
「……キャノン中佐は……
　本当に、大英連邦に対して忠実な軍人なの
でしょうか？」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200460a03">
「――――」


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200470a00">
「我ながら、これは下衆の勘繰りも同然。
　お恥ずかしい」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200480a03">
「……けれど、そう勘繰った根拠はお有りに
なる……？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200490a00">
「根拠と呼べる程のものは。
　ただ……」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200500a00">
「彼との対話において、自分も正直の徒では
ありませんでしたが、それ以上に中佐の方が
深く本心を隠しておられたと思うのです。
　しかし、一度」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想
	SetVolume("@mbgm16*", 400, 500, null);

	EfRecoIn1(18000,600);
	CreateTextureSP("絵背景20", 10, Center, Middle, "cg/bg/bg030_ＧＨＱ監禁部屋_01.jpg");
	EfRecoIn2(300);

	SetFwC("cg/fw/fw景明_困惑.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200510a00">
「賢明。
　独立国家の誇りを捨て、<RUBY text="クィーン">女王陛下</RUBY>の施しを
受ける身に甘んじる事が、賢明な選択という
ものですか？」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0200520b03">
「――――」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0200530b03">
「君の言うことは……まぁ、理解できる」


//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0200540b03">
「が、得てして大衆とは君のように考えない
ものだ。
　誇りある苦痛より隷従しての安楽を望む」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0200550b03">
「そうした人々に対する理解も……必要だと、
俺は思うがね……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	EfRecoOut1(300);
	Delete("絵背景20");

	StL(1100,@0,@0,"cg/st/st香奈枝_通常_制服c.png");
	FadeStL(0,true);

	SetVolume("@mbgm16*", 300, 1000, null);
	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200560a00">
「あの一瞬だけ、キャノン中佐は<RUBY text="・・・・">素の感情</RUBY>を
覗かせた……。
　自分にはそう思えるのです」


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200570a03">
「……<RUBY text="クイーンズルール">女王支配</RUBY>への反発を？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200580a00">
「わかりません。
　本当に憶測なのです」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200590a03">
「――――――――」


//◆呟くように
{	DeleteStL(300,false);
	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200600a03">
「……やっぱり、こちらからの対処も考えて
みるべきかしら……？
　いえ……伯爵を動かすには、もう遅い……
……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200610a00">
「大尉殿？」


{	StL(1100,@0,@0,"cg/st/st香奈枝_通常_制服c.png");
	FadeStL(300,false);
	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200620a03">
「ごめんなさい。何でもありませんの。
　それで……もし景明さまの推測が当たって
いたとすると、どうなります？」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200630a00">
「彼が万一にも女王への叛意を有していると
すれば、大和占領を積極的に推し進めるのも
その為ということになります。
　この国に拠って大英連邦に牙を剥く――」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200640a00">
「やはり大和は戦場となるでしょう。
　この場合、単に大英連邦と露帝が争う場合
よりも情勢は混迷し、人々は更に苛酷な境遇
に置かれるかもしれません」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200650a00">
「……あるいは六波羅時代を懐かしむ声さえ
上がる程の」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200660a03">
「もとの濁りの田沼恋しき？
　勘弁して頂きたいものですね」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200670a00">
「完全に同意します」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200680a03">
「つまり景明さまの見るところ、わたくしの
上司に付き従う先はどう転ぶにしろ必ずしも
明るくないと。
　でも――」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200690a03">
「なら景明さまには、独自の展望がお有り？
　より確実に、大和の平和を約束するような」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　その追及は辛辣だった。

　確実に大和の平和を約束する道。
　そう――そんなものが簡単に見つかれば、誰も苦労
はしなかったのだ。舞殿宮も、養父も。

　人よりも広い視野と深い思慮を備えていたであろう
あの両人でさえ、世情の混沌の深まりに敗れ、遂には
道を見失って転落した。
　一国の将来を占うはそれほどの難事。

　試すまでもなく、湊斗景明の器量には余る。
　
　だが――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200700a00">
「展望はありません。
　ただ、<RUBY text="・・・・">こだわり</RUBY>なら一つ」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200710a03">
「こだわり？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200720a00">
「現世界情勢を思えば大和の平和を保つのは
難しい。軍事的緊張と無縁ではいられません。
　しかし、いずれ戦争を避け得ないとしても
――」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200730a00">
「それはこの国の人間がこの国の舵取りをし
た結果であるべきだと考えるのです。
　大鳥大尉」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200740a03">
「…………」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200750a00">
「他国の都合で振り回された挙句にそうなる
のでは余りにもやるせない。
　第一、開戦が他国の都合であるなら終戦も
他国の都合となってしまうのが道理」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200760a00">
「途方もない損害が払われたすえ、大和には
何も益するところがない……最悪、この国は
そんな歴史を刻んでしまうことも有り得ます。
　どうにも、それは受け入れ難い」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200770a00">
「大和の浮沈はせめて大和の意思で決めたい。
　こだわりとはそういう事です」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200780a03">
「…………。
　……では……」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200790a03">
「景明さまの、その<RUBY text="・・・・">こだわり</RUBY>のためには――
　今、六波羅軍が壊滅するような事があって
はならない」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200800a03">
「そうですね？」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200810a00">
「……はい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　確かに。

　善悪の云々は兎も角、現大和においては幕府軍だけ
が唯一最大の、大和固有の軍事力だ。
　諸外国の介入を掣肘し、大和国民の自主独立を守る
役目は、彼らにしか果たせない。

　これを失えば大和は他国人の<RUBY text="コロセウム">闘技場</RUBY>と化すまで。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200820a00">
「キャノン中佐との対話が戦略論に及んだ時、
彼も言っていました。六波羅を短時日の内に
撃滅することは可能だと。
　しかし考えられません」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200830a00">
「進駐軍と幕府軍――両軍の陣容を比較して、
六波羅が絶対的に劣弱であるなどとは……。
　大尉殿、本当にそのような作戦構想が実在
するのですか？」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200840a03">
「実在します」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200850a00">
「……」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200860a03">
「わたくしも詳細は掴んでいません。
　厳重な情報規制が掛けられ、上層部の他は
実行部隊にしか知らされていないようです」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200870a03">
「ようやく探り出せたのは、作戦の決行日と
……そのために用意された一つの兵器」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200880a00">
「……それは？」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200890a03">
「<RUBY text="フォージド・ボム">鍛造雷弾</RUBY>」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mc02_021.nss"