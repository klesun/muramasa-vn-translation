//<continuation number="480">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_001.nss_MAIN
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
	#bg026_普陀楽山塞a_01=true;
	#bg032_八幡宮奥舞殿内b_01=true;
	#bg061_普陀楽城大手門b_01=true;
	#bg062_普陀楽城大手道_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb02_002.nss";

}

scene mb02_001.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb01_014.nss"

//◆普陀楽城
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg026_普陀楽山塞a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm26",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……<RUBY text="フダラク">普陀楽</RUBY>城塞。
　ふだらくとは、仏教的宇宙観における浄土の一つを
云う。

　天龍寺派臨済宗を始めとする仏教への帰依が深い、
六波羅ならではの名であろう。
　しかし、命名にあたっては一悶着があったらしい。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0010010a02">
「……そういえば、前から気になってたんで
すけど」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0010020a00">
「ああ」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0010030a02">
「ふだらくって、ふつう普陀落とか、普陀洛
とかって書きませんか。
　仏教関係の本なんかだと……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0010040a00">
「それが問題になった」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　空中へ字を書いて問う一条に、頷く。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0010050a00">
「城名にあてる漢字としてはあまりに縁起が
悪かろう。
　落は無論、洛にしても」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0010060a02">
「……そりゃそうですね」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0010070a00">
「そこで一字変えて、普陀楽城となった。
　そのせいかどうかは知らないが、この城は
落城は無論、未だ攻め寄せられた経験もない」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　竣工から五年も経たぬ歴史の浅さであれば当然と、
そう言ってしまえばそれまでの事だが。
　見る者に攻撃の意欲を失わせるほどの威容を示して
いる事もまた、事実である。

　威容のうちどの程度が実力で、どの程度が虚仮威し
であるのか。セヴァストポリかそれとも五稜郭か。
　……政情の行方によってはいずれ、問われることも
有り得よう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0010080a00">
（政情、か……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　そこへ一石を投じる結果にはなる。
　俺と一条がこの城へ入り、<RUBY text="・・">役目</RUBY>を果たせば。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想
	SetVolume("@mbgm*", 1000, 0, null);
	OnSE("se擬音_回想_フラッシュバック01",1000);
	CreateColorEXadd("絵白転", 5000, "#FFFFFF");
	Fade("絵白転", 1600, 1000, null, true);

	CreateTextureSP("絵回想背景", 2000, Center, Middle, "cg/bg/bg032_八幡宮奥舞殿内b_01.jpg");
	Fade("絵白転", 2000, 100, null, true);
	SoundPlay("@mbgm30",0,1000,true);

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb02/0010090a10">
「小弓公方、今川雷蝶……。
　この男が今、幕府の主導権を握りたがって
あくせくしてるんやけど」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb02/0010100a10">
「そうは問屋が卸さん。
　血筋からいえば四公方の筆頭やけどな……
それだけで納得するほど他の三人は甘くない」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb02/0010110a10">
「結局、邦氏の後見には長老格の遊佐童心が
立てられて、雷蝶は風下にやられてもうた。
　そこで……な」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb02/0010120a10">
「この雷蝶に力を貸す。
　こっちの政治的地位の向上と引き換えにな。
六波羅の執権に押し上げてやるんや……」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb02/0010130a10">
「朝廷の権威で後光をつけてやったり。
　幕府の内側にいたらやりにくい<RUBY text="・・">仕事</RUBY>を代行
してやったりしてな」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb02/0010140a10">
「そや。仕事や……。
　それを景明くんと一条さんには頼みたい」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb02/0010150a10">
「今の雷蝶には童心が目の上の<RUBY text="こぶ">瘤</RUBY>。
　しゃあけど自分で<RUBY text="・・・・・">ちょっかい</RUBY>かけたらすぐ
バレてまうわ」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb02/0010160a10">
「そこでうちらが手を出す。
　遊佐童心の権威が失墜するような事件を、
普陀楽城に潜入して引き起こしてやるんよ」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb02/0010170a10">
「手引きは雷蝶の配下がしてくれる……」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb02/0010180a10">
「具体的なとこは任せるわ。
　けど、やり過ぎないように気ぃつけてな。
幕府を操るのがこっちの目的なんやから」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb02/0010190a10">
「潰してもうたら元も子もない……。
　進駐軍っちゅうもう一つの敵がおることも
忘れんといてな」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEXadd("絵白転２", 5000, "#FFFFFF");

//◆戻り
//◆大手門
	SetVolume("@mbgm*", 3000, 0, null);
	Fade("絵白転２", 500, 1000, null, true);
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg061_普陀楽城大手門b_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 2000, true);
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm24",0,1000,true);

	StR(1000, @0, @0,"cg/st/st景明_通常_変装.png");
	StL(1000, @0, @0,"cg/st/st一条_通常_変装.png");

	WaitKey(1000);

	FadeStR(500,false);
	FadeStL(500,true);

	WaitKey(500);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0010200a00">
「自分は新任の<RUBY text="まんどころくにん">政所公人</RUBY>、<RUBY text="あらたかげあき">改景秋</RUBY>です。
　こちらは同じく、<RUBY text="あらたいちひめ">改一媛</RUBY>」


//【景明】
<voice name="景明" class="景明" src="voice/mb02/0010210a00">
「担当の方にお取次ぎを願います」


{	NwC("cg/fw/nw門衛.png");}
//【ｅｔｃ／門番】
<voice name="ｅｔｃ／門番" class="その他男声" src="voice/mb02/0010220e281">
「お待ち下さい。{WaitKey(2000);}<BR>　…………本日着任、<RUBY text="いんば">印旛</RUBY>代官所より転出の
改景秋殿。はっ、承っております」


//【ｅｔｃ／門番】
<voice name="ｅｔｃ／門番" class="その他男声" src="voice/mb02/0010230e281">
「どうぞお通り下さい。
　只今、政所へ連絡致します」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0010240a00">
「有難うございます」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　いかにも門衛らしい、堅物の顔貌をした中年武官に
会釈して通用門を潜り抜ける。
　その先は民間人には無縁の世界、つまり俺にも全く
未知の領域だった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆城内・大手道
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg062_普陀楽城大手道_01.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　見晴るかせば、山の形状に沿う格好で道が――堀が
刻まれ、天然あるいは人工の棚に曲輪が築かれている。
　甲州武田流の、典型的な平山竜塞だ。規模が多くの
先例とは余りにも違い過ぎるが。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st一条_通常_変装.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0010250a02">
「あそこに行けばいいんでしょうか」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0010260a00">
「いや」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　最も手近な曲輪を指差して、一条。
　俺は<RUBY text="かぶり">頭</RUBY>を振った。

　普陀楽城の内部構造などが公開されている筈もなく、
事前調査で得られた情報はごく僅かなものに過ぎない。
　しかしそれでも、通例に照らせばある程度まで推察
する事は可能だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0010270a00">
「あれはおそらく下級武官の詰所だ。
　政務施設は普通、ずっと奥にある」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0010280a02">
「……じゃあ、山登りですか？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　呆れたようなその声は、面倒を嫌がったのではなく、
毎朝幕府の役人達が群れを成して登山する光景を想像
したためのものだろう。
　苦笑して、誤解を訂正する。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0010290a00">
「その必要はない。
　待っていれば、迎えが来る」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0010300a02">
「……迎え？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　ピンと来ない様子の、<RUBY text="おうむ">鸚鵡</RUBY>返し。
　俺は山裾へ向かって延びてゆく大手道を指し示した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0010310a00">
「アスファルトで舗装されている。
　……最新の技術だな。凹凸が少ない」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0010320a02">
「そうですね…………あ、そうか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　一条が気付くのと前後して、空虚ながらも重々しい
低音が山の斜面を滑り落ちてくる。
　<RUBY text="エンジン">内燃機関</RUBY>の排気音だった。

　思ったよりも早い。
　あの実直そうな門衛は自分で言った通り、速やかに
連絡をしてくれたようだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0010330a02">
「車かぁ」


{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0010340a00">
「これだけ広い城内だ。
　移動手段が徒歩に限られては機能すまい」


//【景明】
<voice name="景明" class="景明" src="voice/mb02/0010350a00">
「丁寧に舗装された道路もある……。
　本丸から大手門まで、ものの十数分もあれ
ば行き着けるのかもしれんな」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0010360a02">
「便利なもんですね」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0010370a00">
「火急の折、兵員を迅速に展開するのにも役
立ちそうだ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　この城へ攻め込む者にとっても同じ事が言えるが。
　いや、だからこそのアスファルト舗装なのかもしれ
なかった。コンクリートではなく。

　コンクリート舗装の方が耐久性は高い。
　五〇トン超の重戦車の走行にも耐えられるだろう。
これがアスファルトだと、路面の損傷は避けられない。

　しかしアスファルトは処理が容易である。
　敵に使われかねない場合は破壊し、自軍が使う時に
また敷設、という腰の軽い運用も不可能ではない。

　……尤も、それもコストを度外視すればの話だ。
　実際にそこまでするものかは未知数だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆車が来る。停車
	CreateSE("SE01","se乗物_車_停止01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0010380a00">
「国産車だな」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0010390a02">
「あっ。
　そういえば新聞で見たことあります。これ」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0010400a00">
「トミタＡＡ型。
　国産乗用車の第一号だ」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆顔Ｇは露骨にケバい中年女性。雷蝶っぽい
	CreateSE("SE01","se乗物_車_ドア開閉01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw岩田_微笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0010410b20">
「この城で使われている車は全て国産ですよ。
　値は張りますが、それが公人の嗜みという
ものですからね」


{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0010420a00">
「全く同意できます。その姿勢なくして国内
産業の育成は成し得ません。
　……貴方が、今川中将閣下の？」


{	FwC("cg/fw/fw岩田_通常.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0010430b20">
「無用心ですよ、湊斗様。ここで迂闊にその
名前を口になさいますな。
　私は表向き小弓とは何の関係もない一介の
役人を装い、<RUBY text="スパイ">密偵</RUBY>活動をしているのですから」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0010440a00">
「とてもそうは見えませんが」


{	FwC("cg/fw/fw岩田_微笑.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0010450b20">
「ふふふ……当然でしょう。
　そうでなくては密偵など務まりませんもの」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0010460a02">
「湊斗さん。
　話が通じてないような気が」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0010470a00">
「俺もそう思う」


{	FwC("cg/fw/fw岩田_微笑.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0010480b20">
「さ、どうぞ。
　まずは官舎へご案内します」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

//◆ぶろろー。
	CreateSE("SE01","se乗物_車_発車01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵暗幕", 15000, "#000000");
	DrawTransition("絵暗幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	WaitKey(1000);

	ClearWaitAll(3000, 0);

}

..//ジャンプ指定
//次ファイル　"mb02_002.nss"