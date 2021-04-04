//<continuation number="540">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb01_004.nss_MAIN
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
	#bg032_八幡宮奥舞殿内b_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb01_005.nss";

}

scene mb01_004.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb01_003a.nss"
//前ファイル　"mb01_003b.nss"


//◆合流

	PrintBG("上背景", 30000);
	OnBG(100,"bg032_八幡宮奥舞殿内b_01.jpg");
	StR(1000, @0, @0,"cg/st/st署長_通常_制服.png");
	FadeBG(0,true);
	FadeStR(0,true);
	Delete("上背景");
	SoundPlay("@mbgm19",0,1000,true);

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040010a10">
「八幡宮が消えたいうんは？」


{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0040020a11">
「相変わらず工事用の<RUBY text="カーテン">帷幕</RUBY>が張り巡らされて
おり、外からは様子を窺えません。
　警備体制も依然として厳しいままです」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0040030a11">
「ですが昨晩、どうにか配下の者を忍び込ま
せるのに成功しました。
　……無かったそうです」


{	FwC("cg/fw/fw親王_驚き.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040040a10">
「無かった……」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0040050a11">
「はい。
　何も……」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040060a10">
「八幡宮が、根こそぎ？」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0040070a11">
「は。
　近隣の土地も含めて」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040080a10">
「……」


{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0040090a11">
「……」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040100a10">
「何やっちゅうねん……」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0040110a11">
「わかりません。
　些か、事態が突飛過ぎ……」


{	FwC("cg/fw/fw親王_凹む.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040120a10">
「程があるえ。
　どんな怪奇現象や」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0040130a11">
「……今は、宮殿下。
　それよりも今後の事を」


//【署長】
<voice name="署長" class="署長" src="voice/mb01/0040140a11">
「何はともあれ、大将領は姿を消しました」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040150a10">
「うん……」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0040160a11">
「事態の謎は謎として、むろん調査せぬわけ
には参りませんが……そればかりにかまけて
いては時勢に乗り遅れます。
　今は、当初の予定通りに行動を起こさねば」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040170a10">
「……そやな。
　こっちの思い通りには動いてるんや」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040180a10">
「手を打ってかんとあかんな」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0040190a11">
「は」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040200a10">
「幕府中枢のガタガタっぷりは予想以上の事
になってるえぇ。
　頭が一つから四つに増えた途端、何をする
にもいちいち揉めるようになったらしうてな」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040210a10">
「わしの<RUBY text="けんちょうじ">仮御所</RUBY>行きがこんな遅れたのもその
せいや。
　いつまでも城内に置いといたって仕方ない
のは、あいつらみんなわかってたのにな」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0040220a11">
「なるほど……。
　邦氏殿下は？」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040230a10">
「若過ぎるわ。一応、近いうちに大将領位を
継がはる御方と奉られてはいるけどな。
　<RUBY text="・・・・">あの四人</RUBY>をまとめて言うこと聞かせるのは、
なんぼなんでも、荷が重いわ」


{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0040240a11">
「……。
　同情したくなります」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040250a10">
「ほんとにな……」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0040260a11">
「四公方の中で、誰かが突出する気配は？」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040270a10">
「や、それがねえ。
　うまい具合に<RUBY text="パワーバランス">力の均衡</RUBY>が取れてるんよ」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040280a10">
「まず最年長で政戦両面の実績は抜群の古河
公方、遊佐童心やろ。
　んで、護氏の息子で邦氏の叔父になる足利
宗家出身の小弓公方、今川雷蝶がおって」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040290a10">
「堀越公方、足利茶々丸は経済的に。
　篠川公方、大鳥獅子吼は軍事的に、四人の
中で最大の力を持ってる……」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040300a10">
「どや？
　見事なもんやないか」


{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0040310a11">
「……確かに。
　これは護氏の遺産でしょうな」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040320a10">
「ああ。まったくうまいことやってたもんや。
　お陰で今、あいつらは苦労してるえ」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040330a10">
「護氏には都合が良かったんやろけどな……
四公方の力が拮抗してるってのは。
　今、それで都合が良いのはこっちや」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0040340a11">
「……既に、目算が？」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040350a10">
「うん。
　実はもう、当たりをつけてあってな」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0040360a11">
「……お早い」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040370a10">
「ただ、なぁ……。
　策の幅を広げるには、やっぱ力が欲しいわ」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040380a10">
「別に軍隊を寄越せとは言わん。
　いざっていう時にあてにできる武者が一騎、
おるだけでだいぶ話が変わるんやけど……」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0040390a11">
「…………」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040400a10">
「景明くん、手伝ってくれんかなぁ」


{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0040410a11">
「……申し訳御座いません。
　宮殿下、どうかあの者につきましては」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040420a10">
「銀星号で、いっぱいいっぱいか」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0040430a11">
「は……」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040440a10">
「……そやねえ。
　景明くんには、そっちに集中してもらお」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040450a10">
「誰か、他に……
　おらんわなぁ」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040460a10">
「無いものねだりはみっともないけど……
　なんとかならんかな？　署長」


{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0040470a11">
「……」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040480a10">
「ならんわなぁ」


{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0040490a11">
「……一人。
　心当たりが、なくもなく」


{	FwC("cg/fw/fw親王_驚き.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040500a10">
「え？
　……ほんとに？」


{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0040510a11">
「は。
　護氏暗殺のような仕事に使えるとも思えぬ
者なので、あの折は敢えて申し上げませなん
だが……」


//【署長】
<voice name="署長" class="署長" src="voice/mb01/0040520a11">
「今後の件に関してなら、話の持ち掛けよう
であるいは」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0040530a10">
「だ、誰や誰や？
　勿体ぶらんと、早う！」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0040540a11">
「はっ……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb01_005.nss"