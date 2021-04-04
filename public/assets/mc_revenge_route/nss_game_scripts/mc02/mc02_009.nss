//<continuation number="1180">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_009.nss_MAIN
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
	#ev171_香奈枝に跪く景明=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc02_010.nss";

}

scene mc02_009.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc02_008.nss"

//■memo　景明の立ち絵不要

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");
	CreateTextureSP("絵背景10", 11, Center, Middle, "cg/bg/bg030_ＧＨＱ監禁部屋_01.jpg");

	StR(1000, @0, @0, "cg/st/st香奈枝_通常_制服c.png");
	FadeStR(0, true);

	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	SoundPlay("@mbgm06",0,1000,true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090010a00">
「……ご帰国は、父の<RUBY text="あだうち">仇討</RUBY>のため？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090020a03">
「……そうですね。
　その気も無いと言えば嘘になりますけれど」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090030a03">
「獅子吼への復讐しかやることが無いなら、
この国へ戻ることはなかったでしょう」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090040a00">
「……」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090050a03">
「大和に帰ってきた理由は二つあるのです」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090060a03">
「一つは……<RUBY text="ノーブル">貴顕</RUBY>の血統に連なる者としての
責務を果たすため。
　我々は民衆を守る代価として彼らから糧を
得ていたのですから」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090070a03">
「大和がかつてない危難の中にある時、遠い
国から暢気に眺めているわけには参りません。
　わたくしには<RUBY text="くにたみ">国民</RUBY>を救うために為すべきを
為す義務があります」


{	StL(1000, @0, @0, "cg/st/stさよ_通常_私服.png");
	FadeStL(300, false);
	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0090080a04">
「まさに、まさに」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　俺も無言で頷きを返した。
　そういうものだ――本来の、正しい貴族階級とは。
古代における誕生から時を経るにつれ、次第に義務は
忘れ去られ権利ばかりが強められてしまったが。

　大鳥家が長く続いたのは、代々の人間がこの香奈枝
嬢のように貴種の本分を忘れぬよう心懸けたせいでも
あるのだろうか……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090090a03">
「……そして、もう一つ。
　家族を守るため」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090100a00">
「妹君……ですか」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090110a03">
「ええ。
　花枝――わたくしの最後の肉親です」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0090120a04">
「お嬢さまとは七つ違いであらせられますな」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　結構、離れている。
　成程……だから余計に心配なのか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090130a03">
「まぁ実際のところ、あの子のことはわりと
ついでというか、かなりどーでもよろしいの
ですけど」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090140a00">
「は？」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0090150a04">
「左様でございますねぇ。
　お嬢さまのご留学前の時点で、姉妹喧嘩の
勝敗は五分五分に迫っていたと記憶しており
ますし」


{	FwC("cg/fw/fw香奈枝_凹む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090160a03">
「取っ組み合いで勝っても最後に落とし穴に
はまっているのはわたくしだったりするのよ
ねぇ……」


{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0090170a04">
「悪辣な策謀に長けた、末恐ろしい姫さまで
ございました」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090180a03">
「そうそう。
　わたくしとはもう似ても似つかぬ」


{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0090190a04">
「悪虐な暴力に長けたお嬢さまとは嫌になる
ほど血の繋がりを感じさせましたなァ。
　一体何の呪いであのお優しい旦那様と奥方
様からこんな地獄チック姉妹が生まれたやら」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0090200a04">
「実は橋の下から拾われてきたのでしょうか」


{	FwC("cg/fw/fw香奈枝_怒笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090210a03">
「ねえばあや、前から訊きたかったのだけど、
あなた主従関係っていうものを何だと思って
いて？」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090220a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　どんな妹御なのだか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0090230a04">
「要するにでございますね。
　現在は傀儡当主に甘んじているとしても、
いつまでもそのままでいるとは到底思えない
ような御方でありまして」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090240a00">
「はァ」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090250a03">
「誰かの助けなどなくとも、あと数年の時間
があれば獅子吼を排除して名実そろった当主
になるでしょうね。……さっき仇討の為なら
帰らなかったと言ったのはそういうことです」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090260a03">
「わたくしが出しゃばるより妹に任せておい
た方がずっとスマートに、まわりへの迷惑も
最小限で片付くんですもの。
　それがわかっていては何もできません」


{	FwC("cg/fw/fwさよ_涙.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0090270a04">
「獅子吼殿にもその方が辛いでしょうなァ。
　花枝さまは真の残虐さを備えた御方、あっ
さり殺すよりも生かしておいて延々と苦しめ
続ける方法を採られるに違いありませぬゆえ」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090280a00">
「……」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090290a03">
「そういう妹なんです。
　……だから、わたくしが守りたかったのは
あの子よりも……もう一人のほう」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090300a03">
「わたくしと花枝の従兄弟。
　獅子吼が血眼で求めた大鳥本家正統の嫡子。
　……そちらなのです」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090310a00">
「……？
　しかし」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　話を聞く限り、その伯父の嫡男というのは香奈枝ら
姉妹の政敵にあたるのではないか。
　それを……守る？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0090320a04">
「政治的事情だけが人間関係の全てではござ
いませんよ、湊斗さま」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090330a00">
「……は」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090340a03">
「親同士の関係は複雑でしたけれど、子供は
また別だったということです。
　わたくしも花枝も、従兄弟のことはとても
好きでした」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090350a03">
「あの小さな男の子を抱っこすると、何だか
幸せな心地になれて……。
　花枝もそうだったから、今日はどっちが彼
を抱くのかでまた喧嘩になって」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090360a03">
「花枝は許嫁として。わたくしは将来の義姉
として……。
　あの子を<RUBY text="かいな">腕</RUBY>に入れる権利は自分にあるんだ
と言い張って、譲らなかったものです」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090370a00">
「……そうでしたか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　子供にとっては政敵である前にまず親類。
　成程、であれば敵意など無いだろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090380a00">
「では、守りたかったというのは」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090390a03">
「彼は大鳥一門の遠縁にあたる家庭で平穏に
暮らしていました。何も知らず。
　どう考えても……大鳥の当主なんかに祭り
上げられるよりそのままの方が幸せでした」


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090400a03">
「それでも、彼自身が当主たろうと望むなら
いい。けれど獅子吼はきっと彼の自発的意思
などに拘泥しない。拒まれれば腕ずくで奪う。
　わたくしはその時、彼を救うつもりでした」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090410a03">
「彼の幸福を守るため。
　花枝が用済みの道具として処分されるのを
防ぐため。
　……わたくしはそうしようと思っていた」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090420a03">
「なのに……
　何もできなかった」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090430a00">
「――――」


</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300, false);

//■セリフを聞かせるために音楽消す inc櫻井

	SetVolume("@mbgm*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　唐突に現れた艶やかなる朱の<RUBY text="いろ">彩</RUBY>に――
　目を奪われる。

　大鳥香奈枝の、良く整った口唇の端から、血が一筋
滴っていた。
　唇の内側か、頬の裏か……どこかを噛み切ったよう
だった。

　悲痛というものを、彼女はいま舐めている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090440a00">
「何故……」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090450a03">
「何故？」


{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0090460a04">
「何故、ですと？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090470a00">
「…………」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090480a03">
「景明さま。
　よろしくて……」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090490a03">
「その男の子は」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090500a03">
「わたくしたちが愛していたその子は、ね」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090510a03">
「名を」

{	SetVolume("@mbgm*", 1000, 0, null);}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090520a03">
「雄飛、というのです」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);


//◆ズガーン。すげえショック。


	OnSE("se擬音_シリアス_ショック01", 1000);
	
	CreateColorEX("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 1000, 1000, null, true);

//◆場面回想
	EfRecoIn1(18000,600);
	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg015_鎌倉路地裏_02.jpg");
	Delete("黒幕１");

	EfRecoIn2(300);

	SetFwC("cg/fw/fw雄飛_怒りa.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/mc02/0090530b56">
「おい！　そこの――<RUBY text="くらぐら">暗々</RUBY>とした悪党ッ！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆場面回想

	EfRecoIn1(18000,600);

	Delete("絵回想*");
	CreateTextureSP("絵回想100", 1000, Center, Middle, "cg/bg/bg009_鎌倉住宅街a_01.jpg");
	CreateTextureSP("絵回想200", 1100, 150, InBottom, "cg/st/st雄飛_通常_制服.png");
	CreateTextureSP("絵回想300", 1101, 618, InBottom, "cg/st/st景明_通常_私服.png");

	EfRecoIn2(300);

	SetFwC("cg/fw/fw雄飛_沈むa.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/mc02/0090540b56">
「……すいません。巧く言葉になんないです。
　でもおれはリツを探すために何かしたいし、
そうするべきだとも思うんです」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――
//おがみ：セピア処理対応
//	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆場面回想

	EfRecoIn1(18000,600);
	Delete("絵回想*");

	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/ev/ev106_雄飛と見下ろす村正_a.jpg");

	EfRecoIn2(300);

	SetFwC("cg/fw/fw雄飛_笑顔b.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/mc02/0090550b56">
「信じるよ。
　この世には村正っていう名の、正義の味方
がいるってことを」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――
//おがみ：セピア処理対応
//	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆戻り

	EfRecoOut1(300);


	Delete("絵回想*");
	Delete("Memory_cover");
	EfRecoOut2(600,true);

	SoundPlay("@mbgm33", 0, 1000, true);
	
	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090560a03">
「彼は死んでしまった。
　ええ……死んでしまったのです」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090570a03">
「わたくしにも、花枝にも……獅子吼にも、
まったく関係のないところで。
　唐突に――死んでしまいました」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090580a03">
「それは誰よりも景明さまがご存知でしょう？
　ねえ……？」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090590a00">
「――――」


{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0090600a04">
「知らぬはずはありませぬな……。
　<RUBY text="・・">村正</RUBY>殿」


{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0090610a04">
「まことに失礼ながら、色々調べさせて頂き
ました。
　何より……江ノ島で、貴方さまと雪車町殿
のお話を不作法にも<RUBY text="・・・・・">盗み聴いて</RUBY>しまいまして」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0090620a04">
「悪人を斬るたび善人をも斬らねば収まらぬ
とは、難儀な劒冑をお使いでございますな」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090630a00">
「――――――――」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090640a03">
「そんな劒冑でも使わなくてはならなかった
のですね。
　銀星号――あの魔物がもたらす<RUBY text="わざわい">禍</RUBY>を止める
ために」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090650a03">
「……何ということなのでしょう。
　お察し致します、景明さま」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090660a03">
「銀星号の〝卵〟を受けた者は斬らねばなら
ない。斬るほかにない。
　放っておけば第二の銀星号になってしまう
のだから……どうにも、斬るしかありません」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090670a03">
「けれど、斬れば……
　もう一人、何の罪もない人を斬らなくては
ならなくなる」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090680a03">
「それでも無数の人々の命には替えられない。
　だから、あなたは……斬った。無辜の人を」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090690a03">
「さぞお辛かったことでしょう。
　お苦しかったことでしょう……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　呆然とするばかりの俺に、差し伸べられる白い指先。
　それは俺の頬へ触れ、ついと撫でた。

　官能的なほどに優しく。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

	SetFwC("cg/fw/fw香奈枝_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090700a03">
「けれど許しません」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090710a00">
「……」

{	SoundPlay("@mbgm14", 0, 1000, true);
	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090720a03">
「あなたは雄飛を殺した……。
　あの子の命を力ずくで奪った」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090730a03">
「それが本当に、どうしようもなく、止むを
得ない選択であったとしても。
　あなたに救われた大和の一億の人間全てが
あなたの免罪を認めたとしても」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090740a03">
「あなたが強いた、一つの嘆きに懸けて。
　わたくしはあなたを許しません」


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_銀星号_精神汚染波_L");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 5000, "#FFFFFF");
	CreateTextureSPmul("絵演憎悪", 4100, Center, Middle, "cg/ef/ef034_精神汚染.jpg");
	CreateTextureEX("絵演憎悪上", 4110, Center, Middle, "cg/ef/ef034_精神汚染.jpg");
	FadeDelete("絵色白", 500, false);
	Zoom("絵演憎悪上", 500, 1500, 1500, Dxl2, false);
	Fade("絵演憎悪上", 250, 1000, null, true);
	Fade("絵演憎悪上", 250, 0, DxlAuto, true);
	FadeDelete("絵演憎悪", 300, true);
	Delete("絵演憎悪上");
	SetVolume("SE01", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　恋情を囁くように熱っぽい、その眼差しに射竦めら
れる。
　
　膝が震えていた。失禁の兆候すら覚えた。

　何という殺意か。
　何という悪意か。

　この人は、<RUBY text="・・・・・・・・・・・・・・・・">命と魂の全てを懸けて俺に復讐する</RUBY>気で
いる。

　絶対に許されない。
　<RUBY text="・・・・・・・">絶対に殺される</RUBY>。

　今、この瞬間にも。

　恐ろしい。
　<RUBY text="かつ">嘗</RUBY>てこれほどの恐怖を味わった事はなかった。

　いや――きっとこれまでは恐怖など知らなかった。
　<RUBY text="・・・">これが</RUBY>恐怖だったのだ。

　逃げ出したい。
　喚き立てたい。
　人の憐れみを乞える行為なら、どんなことでもした
くてたまらない。

　許してくれと泣き叫びたい。

　……許してくれるだろうか。
　恥も外聞も捨て、どんな真似でもして、弁明を言い
立て謝罪を繰り返し贖罪を約束すれば……もしかした
ら……

　この<RUBY text="ひと">女性</RUBY>とて……許すのでは……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0, "cg/st/st香奈枝_通常_制服c.png");
	FadeStR(300, false);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090750a00">
「あ――貴方は……」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090760a03">
「はい」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090770a00">
「俺を……自分を――
　こ――こ、」


{	StL(1000, @0, @0, "cg/st/stさよ_通常_私服.png");
	FadeStL(300, false);
	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0090780a04">
「おや、どうされましたか湊斗さま？
　先ほどは平然と、なぜ自分を殺さなかった、
簡単に殺せた筈だ、などと仰られていました
のに」


{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0090790a04">
「お声が震えておりますよ。
　……化けの皮でもはがれましたかな？」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090800a00">
「……く……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　侍従の露骨な挑発の言辞も、心身を縛る恐怖を跳ね
除ける役には立たなかった。
　返答もできず、ただ息を呑む。

　震える舌をどうにか宥めて、俺は香奈枝嬢への言葉
を続けた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090810a00">
「こ――殺すのですか」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090820a03">
「……」


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090830a00">
「貴方は……もうご存知だ。
　村正のこと――銀星号のこと……」

//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090840a00">
「自分がどうして彼を殺したのか……」

//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090850a00">
「それら全てを理解して……
　それでも貴方は、自分を」

//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090860a00">
「……自分を……」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090870a03">
「許しません。
　殺します」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090880a00">
「……」


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090890a00">
「じ……自分が……
　泣いて慈悲を乞い……」

//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090900a00">
「残りの命の全てを贖罪の為に費やすと誓い
……」

//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090910a00">
「貴方の足元に伏して願っても……」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090920a03">
「…………」


{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0090930a04">
「おやおや」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090940a00">
「……そ……それでも。
　それでも、貴方は」

//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090950a00">
「貴方は」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090960a03">
「ええ。
　景明さま……」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090970a03">
「決して許しません」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090980a00">
「――――――――――――――――――」


</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　駄目だ。
　何をしても、無駄だ。

　許されない。
　殺される。

　湊斗景明は――――<RUBY text="さばか">断罪さ</RUBY>れるのだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090990a03">
「……不本意でしょうね。
　けれど雄飛だって不本意な最期を受け入れ
たんですもの。景明さまも我慢してくださら
ないと」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0091000a04">
「当然でございますな」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0091010a03">
「安心なさって。
　今すぐにとは申しません。銀星号の一件が
片付くまでは待って差し上げます。これまで
通り協力も致しましょう」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0091020a03">
「あれはわたくしとしても知らぬふりのでき
ない問題。
　解決するには景明さまのお力が要ります」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0091030a03">
「ですから……<RUBY text="・・・・・・・">それが済み次第</RUBY>。
　よろしくって？」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0091040a00">
「…………」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0091050a03">
「もちろん、抵抗せずに死ねなんて無慈悲な
ことは申しません。あの劒冑で戦われませ。
　遠慮は無用です。実は景明さまももう御覧
なのですけれど、わたくしも劒冑を――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆景明、動く
	Request("@StR*", Smoothing);
	Zoom("絵背景10", 300, 1500, 1500, null, false);
	Zoom("@StR*", 300, 1500, 1500, null, false);
	Move("絵背景10", 300, @-200, @0, null, false);
	Move("＠StR*", 300, @-500, @0, null, false);
	DeleteStL(300, false);
	DeleteStR(300, true);

//◆ＥＶ：跪いて香奈枝の手を押し戴く景明
	CreateTextureEX("絵ＥＶ", 5100, Center, Middle, "cg/ev/ev171_香奈枝に跪く景明.jpg");
	OnSE("se人体_動作_抱く01",1000);
	Fade("絵ＥＶ", 300, 1000, null, true);
	SetVolume("@mbgm*", 1000, 0, null);

	WaitKey(1000);

	SetFwC("cg/fw/fw香奈枝_悩む.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0091060a03">
「――――――――」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0091070a04">
「――――――――」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　両膝を床へ突く。
　白い手を押し戴く。

　冷たく美しい掌に、俺の眼窩から零れた雫が載る。
　もう、涙を堪えることはできなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm32", 0, 1000, true);

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0091080a00">
「……ありが……とう…………」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0091090a03">
「…………え？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0091100a00">
「貴方の存在に感謝します。
　貴方が<RUBY text="・・・・・">いてくれた</RUBY>ことに感謝します」


//【景明】
<voice name="景明" class="景明" src="voice/mc02/0091110a00">
「感謝を……」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0091120a04">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演ＥＶ", 5110, -1556, InBottom, "cg/ev/resize/ev171_香奈枝に跪く景明lm.jpg");
	Move("絵演ＥＶ", 6000, @0, -810, DxlAuto, false);
	Fade("絵演ＥＶ", 1000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　復讐すると云う。
　新田雄飛の非業の死に懸けて、俺を殺すと云う。

　湊斗景明を決して許さず、
　殺してくれると云う。

　――――ああ。

　完璧だ。

　完璧なる断罪者だ。

　湊斗景明の為の死だ。

　相応しい処刑だ。

　この人が俺を殺してくれる。
　――新田雄飛の無念を晴らす為に!!

　望み得る限り、最高至上の結末。
　それは突然に天から降ってきた。

　恵みのように。

　この世に正義はあった。
　邪悪を許さぬ裁きは実在した。

　もう、これ以上……何も望むものはない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0091130a00">
「大鳥香奈枝。
　貴方に全て捧げます」

//【景明】
<voice name="景明" class="景明" src="voice/mc02/0091140a00">
「この湊斗景明の全てを差し出します」

//【景明】
<voice name="景明" class="景明" src="voice/mc02/0091150a00">
「何もかも、貴方に従いましょう。
　生も死も、全て貴方の命ずるままに」

//【景明】
<voice name="景明" class="景明" src="voice/mc02/0091160a00">
「いつなりと――
　この首に、<RUBY text="さばき">断罪</RUBY>の刃を」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0091170a03">
「………………………………………………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　憂うべき何も、今は無い。

　責務を果たそう。銀星号を倒そう。
　そうして、村正の呪戒に縛られた俺が更にあと一人
誰かを殺そうとしても…………大丈夫。

　その前に俺は殺される。

　――この美しい<RUBY text="ひと">女性</RUBY>が俺を殺してくれる。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

	CreateColorEX("黒幕１", 25000, "BLACK");
	Fade("黒幕１", 2000, 1000, null, true);

//◆視点転換

	PrintGO("上背景", 30000);

	Fade("黒幕１", 0, 1000, null, true);

	OnBG(100, "bg030_ＧＨＱ監禁部屋_01.jpg");
	FadeBG(0, true);

	Delete("上背景");

	FadeDelete("黒幕１",2000,true);

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0091180a03">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演ＥＶ", 5110, -400, -190, "cg/ev/resize/ev171_香奈枝に跪く景明lm.jpg");
	Fade("絵演ＥＶ", 1000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　大鳥香奈枝にはわからなかった。

　錯乱して、喚き出すかもしれないとは思った。
　逆上して、襲ってくるかもしれないとは思った。

　泣いて命乞いをするかもしれないとは思った。
　覚悟を決め、全て諦めて<RUBY text="うなだ">項垂</RUBY>れるかもしれないとは
思った。

　しかし、<RUBY text="・・">これ</RUBY>だけは考えなかった。
　
　――――感謝。

　わからない。

　大鳥香奈枝には、湊斗景明がわからなかった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"mc02_010.nss"