//<continuation number="390">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb03_013.nss_MAIN
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
	#bg073_船上船縁付近_01=true;
	#bg001_空b_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb03_014.nss";

}

scene mb03_013.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb03_012.nss"

//◆黒
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg073_船上船縁付近_01.jpg");
	FadeBG(0,true);
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　夜のうちに行動を策定し、夜明けと共に開始した。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆海
//◆船上
	FadeDelete("絵暗転", 1000, true);
	SoundPlay("@mbgm16",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　計画は酷く杜撰である。
　
　――潜入できるところまで潜入し、<RUBY text="しか">然</RUBY>るのち強襲。
以上。

　作戦と呼ぶようなものではない。
　が、実行者が暗殺の専門家に<RUBY text="あら">非</RUBY>ざる俺と一条、時間
制限が詳細不明ながら至近、という条件ではまともな
作戦などそもそも立てようもなかった。

　時間制限が不明にして至近とはつまり、小弓幕軍が
舞殿宮攻撃の準備を終える前に……という意味である。
　作戦行動中の軍隊を二騎で襲撃して主将を討ち取る
のはどう考えても、いや考えなくても無理だからだ。

　今川雷蝶が小弓の公方府に留まっている間しか<RUBY text="チャンス">機会</RUBY>
は無い。……否。それでもどうか、と思う。
　公方府は歴とした軍事施設であり、しかも今は大軍
が詰める。襲撃の困難は如何程になろう。

　だが急な軍の召集は公方府に少なからぬ混乱を生じ
させている筈。ならば隙もあるに違いない。
　
　――そこが唯一、望みを懸けられる点だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0130010a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　分の悪い勝負だ。
　あるいは、作戦としては見事に失敗した普陀楽の時
よりも更に。

　しかし、不思議と危機感は無かった。
　見込みの薄いこの作戦が成功する事を、予知めいた
感覚で確信している……<k>わけではないが。そんな精神
的麻酔の持ち合わせは生憎と無い。

　成功率の低さは認識できている。
　にも関わらず切羽詰った焦りは疼かない――無論、
作戦の失敗が俺と一条そして親王らにとって何を意味
するかを考えれば焦りもするし危機感も覚えるのだが。

　今川雷蝶暗殺計画の失敗、その事自体には何の焦り
も呼び起こされない。
　
　むしろ――そうなるならその方が良い、と…………

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//◆ばふっ。抱きつき音
	SetVolume("@mbgm*", 1000, 0, null);
	CreateSE("SE01","se人体_動作_抱きつき01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0130020a00">
「…………」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0130030a02">
「…………」


{	SoundPlay("@mbgm27",0,1000,true);
	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0130040a00">
「真っ昼間から女性に抱き付かれている男と
いうのは、人目にどう映るものなのだろう」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0130050a02">
「いい身分ですね。
　あたしがそんなやつ見たら、海に蹴り込む
と思います」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0130060a00">
「それは普通に凍死する。離れてくれ」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0130070a02">
「大丈夫です。
　今のあたしは見てる方じゃないですから」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0130080a00">
「……こう密着されていると、男性的欲求が
励起しかねないのだが」


{	FwC("cg/fw/fw一条_照れ.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0130090a02">
「真っ昼間で、船の上ですよ？」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0130100a00">
「だから困っている。
　どう始末をつけろというのだ」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0130110a02">
「……湊斗さんて。
　実は結構、節操なし？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0130120a00">
「無い」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0130130a02">
「どうしてそんなに自信満々……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0130140a00">
「自制心に幻想を持っていないだけだが」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0130150a02">
「まぁそのへんの事情は知ってますけど……
　……知っちゃいましたけど……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	StR(1000, @-30, @0,"cg/st/st一条_通常_制服.png");
	Move("@StR*", 300, @30, @0, DxlAuto, false);
	FadeStR(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　ごにょごにょ呟きながら、一条は離れた。
　不快とは対極の体温が遠くなる。

{	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StR*", 300, @-30, @0, DxlAuto, false);
	DeleteStR(300,false);}
　と思えば、すぐに戻った。
　俺の前へ回って、コートの中へ潜り込むようにして
くる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0130160a00">
「もっと酷い」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0130170a02">
「そうかも」


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0130180a00">
「励起したらどうしろと」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0130190a02">
「その時はその時で」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0130200a00">
「……無責任だぞ」


{	FwC("cg/fw/fw一条_笑顔b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0130210a02">
「へへ」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0130220a00">
「寒いか」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0130230a02">
「そうですね。
　海の上は風も強いし」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0130240a00">
「そろそろ冬も近い」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0130250a02">
「はい……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　船足は別に荒くもなく、海風の強さも相応だ。
　それでも耳が<RUBY text="・・・・">ひりひり</RUBY>するほどの寒さを覚えるのは、
やはり本格的な冬季の到来を目前に控えて気温自体が
低下しているせいだろう。

　俺はコートの端を伸ばし、一条の頭も抱え込むよう
にした。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0130260a02">
「……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0130270a00">
「……」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0130280a02">
「大丈夫ですよ」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0130290a00">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　懐の中の少女は、唐突にそんな事を言った。

　覗き込む。
　こちらを勇気付けるような微笑と、疑いを知らぬ瞳
がそこにあった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0130300a02">
「湊斗さん、すこし不安そうに見えたから。
　……大丈夫です。あたしと湊斗さんが一緒
なら」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0130310a00">
「…………」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0130320a02">
「必ず勝ちます」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　――その<RUBY text="・・">勝利</RUBY>にこそ俺の不安があるのだ。
　とは、口にできなかった。

　少女は美しい。
　無垢の信念を有し、そのために身魂を捧げた人間と
いうものは、こうまでも輝く。

　眩しいと感ずる。
　尊いと思う。
　
　やはり、その思いは今でも変わらない。

　この少女は俺が手放してしまった<RUBY text="ゆめ">理想</RUBY>そのものだ。

　だというのに、何故――
　俺はこの光輝の中に埋没できないのだろう。

　何故、踏み<RUBY text="とど">止</RUBY>まってしまうのか。

　<RUBY text="ちから">武力</RUBY>ある者達が悉く<RUBY text="ほしいまま">欲儘</RUBY>に振舞い、弱者を虐げ搾取
するこの現代大和で、唯一、弱者の側に立って武力を
揮い不遜な強者に挑もうとする少女――
　そこに正義を認め。服し。一部となる、

　……その一歩手前で。
　どうして俺は踏み止まってしまうのか。

　何故、こんなにも気に掛かるのだろう。
　少女の放つ光の奥にあるもの……

　この輝きに<RUBY text="くら">眩</RUBY>まされてしまっている<RUBY text="・・">何か</RUBY>。
　陰に隠れ、正体の知れないそれが、どうしてこうも
引っ掛かるのか。

　どうして――――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0130330a02">
「このまま、小弓まで行くんですか？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0130340a00">
「……いや。
　できればそうしたいが、そうもゆくまい」


//【景明】
<voice name="景明" class="景明" src="voice/mb03/0130350a00">
「平時なら小弓港への定期便もあるだろうが、
今はおそらく軍用船以外の入港は禁じられて
いる。……仮に便があったとしても、厳しい
検問をパスせねば上陸できまい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　署長と繋がっている現地の警察官からの連絡によれ
ば、小弓軍管区は本格的な戦争に備えた事実上の戒厳
状態にあるという。
　主要な道路は既に封鎖されている、との事だ。

　空は無論<RUBY text="ドラグーン">竜騎兵</RUBY>の警邏隊が飛び回っている。これで
海路だけノーマークなどという事は有り得ない。
　今川雷蝶は先制攻撃を受ける危険性に配慮して警戒
態勢を敷いたのだろう。

　……過剰反応にも程があるが。それは親王側の実情
を知る人間だからこそ云える事だ。
　小弓公方にしてみれば、当然の措置に違いない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0130360a00">
「房総半島はほぼ全域が小弓軍の管轄にある。
港は全て使えないとみた方がいい。
　船は浦安で降りる」


//【景明】
<voice name="景明" class="景明" src="voice/mb03/0130370a00">
「そこから船橋までは<RUBY text="バス">乗合自動車</RUBY>。その先は
徒歩だ。
　少しばかり時間は掛かるが、それが一番目
立たないし小回りも利く」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0130380a02">
「装甲して飛んでいければ楽なんですけど」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0130390a00">
「小弓領空へ入った途端に察知される。
　公方府へ着く頃には完全包囲下だ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateStencil("絵演型",1000,center,Middle,128,"cg/st/3d銀星号_立ち_戦闘b.png",false);
	SetAlias("絵演型","絵演型");
	CreateColorEX("絵演型/色", 1050, "#000000");

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg001_空b_01.jpg");

	Move("絵演型", 0, @256, @0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　というより、着けるわけがなかった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("絵背景100", 1000, 1000, null, true);
	Fade("絵演型/色", 2000, 500, null, false);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0165]
　……<RUBY text="・・・">あいつ</RUBY>ならばそれでも、蹴散らしてしまうかも
しれないが。
　
　小弓へゆく目的の、もう一つを思う。

　白銀の星は六波羅の――青江が遺したその一言を俺
は忘れていない。
　普陀楽城では何の情報も得られなかった。ならば、
次にあたるべきは公方府だ。

{	FadeDelete("絵演型/色", 500, false);}
　まずは、小弓……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb03_014.nss"