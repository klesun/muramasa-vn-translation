//<continuation number="590">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_002.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/mb02_002.nss","IchijyouMonzetsu",true);
	Conquest("nss/mb02_002.nss","IchijyouMonzetsuSet",true);
	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼イベントＣＧ
	#bg050_普陀楽城宿舎前_01=true;
	#bg063_普陀楽城内廊下_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb02_003.nss";

}

scene mb02_002.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb02_001.nss"


//◆官舎
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureEX("絵演震", 500, Center, Middle, "cg/bg/bg050_普陀楽城宿舎前_01.jpg");
	OnBG(100,"bg050_普陀楽城宿舎前_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);
	SoundPlay("@mbgm23",0,1000,true);

	SetFwC("cg/fw/fw岩田_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0020010b20">
「この一棟をお使い下さい」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0020020a02">
「え？
　ここ一軒、全部？」


{	FwC("cg/fw/fw岩田_通常.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0020030b20">
「少し前まで警備兵の詰所だったものです。
　住むには手狭で、少々不自由をお掛けする
かもしれませんが」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020040a00">
「充分です。
　他の官舎から離れているのがいい」


{	FwC("cg/fw/fw岩田_微笑.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0020050b20">
「ええ。その点を考慮して手配しました。
　ここでの会話は誰にも聞かれずに済みます」


{	FwC("cg/fw/fw岩田_通常.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0020060b20">
「それでも油断はなさいませぬように」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020070a00">
「心得ております。
　ところで」


{	FwC("cg/fw/fw岩田_通常.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0020080b20">
「はい」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020090a00">
「今後、貴方と連絡を取る際にはどのように
しましょう」


{	FwC("cg/fw/fw岩田_通常.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0020100b20">
「政所で、<RUBY text="よりゅうど">寄人</RUBY>の岩田を呼び出して下されば
結構です。
　お二人は私の部下という事になっています
から、人目を憚る必要はありません」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020110a00">
「了解しました」


{	FwC("cg/fw/fw岩田_通常.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0020120b20">
「他には何か？」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0020130a02">
「あ、あのー」


{	FwC("cg/fw/fw岩田_通常.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0020140b20">
「はい？」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0020150a02">
「あたしと湊斗さんがここで一緒に暮らして、
その、問題とかないのか？
　傍目にかなり怪しいような気が……」


{	FwC("cg/fw/fw岩田_微笑.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0020160b20">
「？　大丈夫ですよ。
　お二人は夫婦ということになっていますし」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆どがん
	CreateSE("SE01","se擬音_コミカル_頭ぶつける");
	CreateSE("SE02","se戦闘_攻撃_殴る01");
	MusicStart("SE01",0,1000,0,1200,null,false);
	MusicStart("SE02",0,1000,0,1200,null,false);
	Fade("絵演震", 0, 750, null, true);
	Shake("絵演震", 600, 6, 0, 0, 0, 1000, DxlAuto, false);

	Wait(500);

	SetFwC("cg/fw/fw岩田_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0020170b20">
「……宿舎は外壁や天守ほど頑丈に出来てい
ませんので、柱へ強烈な頭突き等を加えるの
はご遠慮下さい」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020180a00">
「だそうだ、一条」


{	SetComic(@0,@0,17);
	FwC("cg/fw/fw一条_慌て.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0020190a02">
「で、でで、でも！
　夫婦!?」


{	DeleteComic();
	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020200a00">
「知らなかったのか」


{	FwC("cg/fw/fw一条_驚く.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0020210a02">
「聞いてませんし！」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020220a00">
「偽名の苗字を同じにしただろう」


{	FwC("cg/fw/fw一条_慌て.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0020230a02">
「そ、それは、兄妹なのかなーと」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020240a00">
「夫婦ということにしておかないと、宿舎を
分けられてしまうだろうが。
　それでは不便で困る」


{	FwC("cg/fw/fw一条_驚く.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0020250a02">
「そりゃそうですけど！」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020260a00">
「嫌なのか」


{	SetComic(@0,@0,17);
	FwC("cg/fw/fw一条_慌て.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0020270a02">
「え……え？」


{	DeleteComic();
	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020280a00">
「俺と夫婦を装うのは嫌か」


{	SetComic(@0,@0,13);
	FwC("cg/fw/fw一条_照れ.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0020290a02">
「そ、それは……
　そんなことは……」


{	DeleteComic();
	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020300a00">
「俺は嫌だ」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//―――――――――――――――――――――――――――――

//◆ずがーん
	CreateSE("SE01","se戦闘_攻撃_鎧攻撃命中");
	MusicStart("SE01",0,1000,0,750,null,false);
	Fade("絵演震", 0, 750, null, true);
	Shake("絵演震", 600, 0, 10, 0, 0, 1000, DxlAuto, false);

	Wait(500);

	SetFwC("cg/fw/fw岩田_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0020310b20">
「サマーソルトキックもご遠慮下さい」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020320a00">
「だそうだ、一条」


{	FwC("cg/fw/fw一条_涙.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0020330a02">
「うっ、うぅ……だって……」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020340a00">
「婚姻とは神前で誓うべきもの。
　方便で詐称するのは気が進まん」


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0020350a02">
「……はぁ」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020360a00">
「だが、その点を置けば。
　お前のような見目良い少女と住まいを共に
するのは男性として率直に喜ばしい」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//―――――――――――――――――――――――――――――

//◆ずどーん
//◆ごろごろごろ
//◆どぎゃーん
//◆ひひーん
//◆ぱからっぱからっ
	IchijyouMonzetsu();

	Wait(500);

	SetFwC("cg/fw/fw岩田_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0020370b20">
「あなた、わざとやってませんか？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020380a00">
「何の事でしょう」


{	FwC("cg/fw/fw一条_驚く.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0020390a02">
「わ……うわーーー!!
　馬がっ、馬がっ」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――


//◆※以下、全てＳＥ扱い
//◆景明と岩田の会話のバックで流しておく


//◆ＳＥ：ひひーん。馬数頭？
	CreateSE("SE02","se擬音_コミカル_馬鳴き声");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateVOICE("一条","mb02/0020400a02");
	MusicStart("一条",0,800,0,1000,null,false);

/*
	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0020400a02">
「うわよせやめろ……ぎゃー！　舐めるな！　噛むな！
へ、へんなもんこすりつけるなーーっ！　湊斗さーん！
ちょ、馬が、馬が襲って……ひーーーっ！」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

*/
//◆ここまで

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020410a00">
「ともかく、我々は早速行動に移ります」


{	FwC("cg/fw/fw岩田_通常.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0020420b20">
「最初はどのように？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020430a00">
「情報収集を。
　城内の人物と事物を己の耳目で確認します」


//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020440a00">
「計画立案は、その後に」


{	FwC("cg/fw/fw岩田_通常.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0020450b20">
「そうですね。それが宜しいでしょう」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020460a00">
「まずは<RUBY text="ターゲット">標的</RUBY>の実像を知りたいところです。
　手配りをして頂けますか」


{	FwC("cg/fw/fw岩田_通常.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0020470b20">
「そのくらいならすぐに。業務にかこつけて
面会できるよう取り計らいましょう。
　その間に、入浴を済ませておいて下さい」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020480a00">
「成程……。
　身嗜みに<RUBY text="うるさ">煩</RUBY>い人物ですか」


{	FwC("cg/fw/fw岩田_微笑.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0020490b20">
「ええ。
　馬糞臭い少女が公文書を持って来たら怒る
と思います」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

//◆ひひーん
	CreateSE("SE02","se擬音_コミカル_馬鳴き声");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateVOICE("一条","mb02/0020500a02");
	MusicStart("一条",0,1000,0,1000,null,false);

	$残時間=RemainTime("一条");
	WaitKey($残時間);

	ClearWaitAll(2000, 2000);

/*
//◆ボイスのみ。テキスト出さず
	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0020500a02">
「どあーーー!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――
*/

//◆本丸廊下
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg063_普陀楽城内廊下_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm16",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　馬糞臭い少女を風呂に浸からせた後、岩田女史から
書類を受け取って普陀楽城本丸へ入る。
　書類自体は、どうという事もない定期報告書だった。
しかし執政に提出し、捺印を貰う必要がある。

　格好の材料だった。あの工作員の仕事はなかなか手
早くそつがない。
　これで現在の幕府執政――唯一城に残っている公方、
遊佐童心に何の不自然もなく会う事が叶う。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st一条_通常_変装.png");
	FadeStR(300,false);

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0020510a02">
「遊佐童心って、どんな奴なんでしょう」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020520a00">
「それを多少なりと知る為に会いに行くのだ
が」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　周囲を確認する。
　幸い、人影はない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020530a00">
（言葉遣いに注意しろ。宿舎とは違う、どこ
で誰が聞いているかわからん。
　六波羅の新米小役人になり切っておけ）


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0020540a02">
（あ、はい。
　すみません）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　小声で注意してから、話を続ける。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020550a00">
「遊佐<RUBY text="これもり">惟盛</RUBY>入道童心……関東四公方の最年長
であられ、<RUBY text="さきの">前</RUBY>大将領護氏殿下の懐刀と目され
ていた御方でもある。
　軍政両略の道に明るく」


//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020560a00">
「その一方、文化芸能も大いに好まれ、多く
の芸術家を保護しまた御自ら嗜まれる。
　単なる伝統保守よりも新奇な試み、前衛的
な挑戦を愛されるその姿勢と……」


//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020570a00">
「公務においてもしばしば型破りな振舞いを
見せることから――人呼んで、<RUBY text="バサラ">婆娑羅</RUBY>公方。
　俺が知っているのはこの程度だ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　一般常識の範疇である。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0020580a02">
「あたしもそのくらいです。
　六波羅のれんちゅ……方々って、私生活と
か、生々しい姿をほとんど新聞や雑誌に見せ
ませんから」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020590a00">
「確かに」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　世界各国の王侯貴族と比較しても少ない方だろう。
　それはおそらく――大和支配という<RUBY text="・・・・">軍事行動</RUBY>の最中
であるとの認識が彼らの<RUBY text="うち">裡</RUBY>にあるからだ。

　平和時の富貴層の義務として、大衆に<RUBY text="ゴシップ">世間話</RUBY>の種を
提供するよう振舞うのは、全てが終わった後……
　大和唯一にして絶対の支配者に成り<RUBY text="おお">果</RUBY>せた後の事だ
ろう。

　多くの血を流した末に。あるいは流し<RUBY text="・・・">ながら</RUBY>。
　……そうさせぬ為に、俺と一条は此処にいた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆転換
	SetVolume("@mbgm*", 2000, 0, null);

	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

	WaitPlay("@mbgm*", null);
	ClearWaitAll(1000, 0);

}

..//ジャンプ指定
//次ファイル　"mb02_003.nss"



.//プロセス用======================================================

function IchijyouMonzetsu()
{
	CreateProcess("Ｐ一条悶絶", 5000, 0, 0, "IchijyouMonzetsuSet");
	SetAlias("Ｐ一条悶絶","Ｐ一条悶絶");
	Request("Ｐ一条悶絶", Start);
	Request("Ｐ一条悶絶", Disused);

}

function IchijyouMonzetsuSet()
{
//◆ずどーん
	CreateSound("PSE01a", SE, "sound/se/se人体_衝撃_瓦礫ぶつかる01");
	SetVolume("PSE01a", 0, 0, NULL);
	SetAlias("PSE01a", "PSE01a");
	Request("PSE01a", "Play");
	SetVolume("PSE01a", 0, 1000, null);
	Request("PSE01a", Disused);
	Shake("@絵演震", 600, 20, 0, 0, 0, 1000, DxlAuto, false);
	Wait(600);

//◆ごろごろごろ
	CreateSound("PSE01b", SE, "sound/se/se戦闘_攻撃_人投げ込む");
	SetVolume("PSE01b", 0, 0, NULL);
	SetAlias("PSE01b", "PSE01b");
	Request("PSE01b", "Play");
	SetVolume("PSE01b", 0, 1000, null);
	Request("PSE01b", Disused);
	Shake("@絵演震", 600, 0, 20, 0, 0, 1000, DxlAuto, false);
	Wait(600);

//◆どぎゃーん
	CreateSound("PSE01c", SE, "sound/se/se擬音_コミカル_爆発01");
	SetVolume("PSE01c", 0, 0, NULL);
	SetAlias("PSE01c", "PSE01c");
	Request("PSE01c", "Play");
	SetVolume("PSE01c", 0, 1000, null);
	Request("PSE01c", Disused);
	Shake("@絵演震", 600, 40, 40, 0, 0, 1000, DxlAuto, false);
	Wait(600);

//◆ひひーん
	CreateSound("PSE01d", SE, "sound/se/se擬音_コミカル_馬鳴き声");
	SetVolume("PSE01d", 0, 0, NULL);
	SetAlias("PSE01d", "PSE01d");
	Request("PSE01d", "Play");
	SetVolume("PSE01d", 0, 1000, null);
	Request("PSE01d", Disused);
	Wait(1000);

//◆ぱからっぱからっ
	CreateSound("PSE01e", SE, "sound/se/se擬音_コミカル_馬蹄");
	SetVolume("PSE01e", 0, 0, NULL);
	SetAlias("PSE01e", "PSE01e");
	Request("PSE01e", "Play");
	SetVolume("PSE01e", 0, 1000, null);
	Request("PSE01e", Disused);

	WaitPlay("PSE01*", null);

}