//<continuation number="1390">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_031.nss_MAIN
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
	#bg104_普陀楽城外郭大船方面_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_032.nss";

}

scene md04_031.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md04_030.nss"


//◆藤沢口
//◆戦闘

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg104_普陀楽城外郭大船方面_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm35", 0, 1000, true);
	CreateSE("銃撃戦", "se戦闘_銃器_拳銃銃撃戦01_L");
	MusicStart("銃撃戦", 2000, 500, 0, 1000, null,true);
	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	StL(1000, @0, @0, "cg/st/st茶々丸_通常_制服a.png");
	FadeStL(300, true);

	Wait(500);
	SetVolume("銃撃戦", 3000, 200, null);


	SetFwC("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310010a07">
「なんか……
　今日は妙だな」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310020a00">
「何がだ」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310030a07">
「進駐軍の連中。
　やけに攻め手が中途半端じゃない？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310040a00">
「…………」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310050a00">
「言われてみればな」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310060a07">
「でしょ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310070a00">
「しかしそれは、事が思惑通りに進んでいる
からではないのか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　周囲を確認したのち、茶々丸の耳元に云う。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明汚染_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310080a00">
「後で決戦兵器を使う気でいれば、強攻して
無駄な犠牲を出そうとは思うまい」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310090a07">
「そうなんだけどね……。
　どうも引っ掛かるなァ」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310100a07">
「ウォルフからの連絡もまだ来ないし……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310110a00">
「…………」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310120a07">
「うまく片付いたなら、一報寄越すはずなん
だけど」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310130a00">
「柳生常闇を経由してか？」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310140a07">
「うん」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0310150b37">
「はい。
　只今、お届けにあがりました」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆常闇斎

	StR(1000, @0, @0, "cg/st/st常闇斎_通常_私服.png");
	FadeStR(300, false);
	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310160a00">
「…………」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310170a07">
「…………」

{	FwC("cg/fw/fw常闇斎_思考.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0310180b37">
「何か？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310190a00">
「心臓に悪いな」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310200a07">
「心臓に悪いよ」

{	FwC("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0310210b37">
「これは、御無礼」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　例によって音も気配もなく現れたその男は、慇懃に
一礼した。
　そして先刻の俺と同様、辺りに警戒の視線を配って
から再び話し出す。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw常闇斎_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0310220b37">
「鎌倉の進駐軍臨時司令部にいる同志の一人
から、たったいま通報がありました」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310230a00">
「……？」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310240a07">
「……ウォルフだろ？」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0310250b37">
「違います。
　緑龍会のメンバーではありますが」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310260a07">
「なんでよ。
　連絡の窓口をいくつも作ると混乱するから、
ウォルフが一括で引き受けるって約束だった
ろーに」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0310270b37">
「ウォルフ教授は現在、拘禁されています」

{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310280a07">
「……はァ!?
　何やってんだあのパンツ親父！」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310290a07">
「ま、まさかとは思うが――」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310300a00">
「強制猥褻罪か？」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310310a07">
「こんな時にッッ!!」

{	FwC("cg/fw/fw常闇斎_思考.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0310320b37">
「いえ、もう少し事態は深刻かと。
　キャノン中佐も教授と同じく、行動の自由
を奪われた状態にあるようです」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310330a07">
「……んだと……」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310340a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　キャノン中佐？
　聞いた覚えのある名だ。

　確か――鍛造雷弾投下作戦を行う予定のＧＨＱ将校。
　
　それが、拘禁された？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_冷酷.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310350a07">
「ウィロー少将は？」

{	FwC("cg/fw/fw常闇斎_思考.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0310360b37">
「わかりません。
　既に抹殺された可能性もあります」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310370a07">
「何があった」

{	FwC("cg/fw/fw常闇斎_思考.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0310380b37">
「昨夜未明……いえ、正確には今日ですが。
　国連事務局次長ルービィ・サシュアント伯
が密かに入国、鎌倉市内の野戦司令部を訪れ、
何らかの処断を行った模様です」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0310390b37">
「以降、ウィロー少将は所在不明。
　キャノン中佐とウォルフ教授は個別に監禁」

//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0310400b37">
「軍の統帥権は、国連全権代理及び大英連邦
女王の信任大使として、サシュアント伯爵が
事実上掌握しつつあるようです」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310410a07">
「…………」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310420a00">
「……茶々丸、どういう事だ？」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310430a07">
「バレた……」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310440a07">
「ＧＨＱの対大和政策を仕切ってたキャノン
中佐は新大陸独立派だったんだ、お兄さん。
　独立のために大和が欲しくて、大和を奪る
ために鍛造雷弾を使おうとしてた」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310450a07">
「<RUBY text="あてら">緑龍会</RUBY>は、つーかウォルフ教授は、独立派
に協力しつつ利用する腹だったんだけど……」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310460a00">
「…………。
　この土壇場で、キャノン中佐とその一党の
正体が国連に露見した？」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310470a07">
「としか、考えられない」

{	FwC("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0310480b37">
「はい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　成程。
　進駐軍のような強大な軍政組織に緑龍会などという
怪しげな集団が干渉できたのは、相応の付け入る隙が
あったからか。

　<RUBY text="ネオブリテン">新大陸</RUBY>独立派――<RUBY text="アメリカンドリーマーズ">夢見る人々</RUBY>。大英連邦の表の大敵
がロシア帝国なら、潜在的な大敵は彼らだと云える。
　大規模な一斉蜂起は過去に四度。中小規模の反乱は
幾度あったか、数え切れない。

　進駐軍の中心派閥がその独立派で、密かに大英連邦
を敵視していたのなら、ウォルフ教授のような底意の
ある協力者を受け入れたのも納得はいく。
　役立つ味方はいくらでも欲しい心境であったろう。

　上手く<RUBY text="・・">寄生</RUBY>したものだ。
　しかしそれも、宿主が枯死しかけている今となって
は――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310490a00">
「…………」

{	StL(1000, @0, @0, "cg/st/st茶々丸_通常_制服a.png");
	FadeStL(300, false);
	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310500a07">
「……くっそー……」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310510a07">
「なんで陰謀ってやつはこううまくいかない
んだ!?」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310520a00">
「陰謀だからだろうよ」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310530a07">
「このままだと鍛造雷弾は落ちねえ。
　国連から来た奴は大和をどうにかするより
ＧＨＱの整理を先にしたいはずだからな……」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0310540b37">
「…………」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310550a00">
「茶々丸。
　キャノン中佐とやらは、<RUBY text="・・・">できる</RUBY>男か？」

{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310560a07">
「え？」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310570a00">
「身柄を自由にしてやりさえすれば、今ここ
からでも失地を取り返せるか？」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310580a07">
「ん……それは……そうだね。
　あいつはタフだし、頭も切れる」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310590a07">
「指揮権を奪回して作戦を続行するくらいの
ことはやれるかな。
　全権代理って奴もまだおおっぴらに中佐を
反逆者扱いはしていないっぽいし……」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0310600b37">
「ええ、そういう話です。
　しかし湊斗様……ならどうすると仰せられ
ますか？」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310610a00">
「その男を救えば何とかなるなら、救うまで」

{	FwC("cg/fw/fw景明汚染_冷笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310620a00">
「これから行ってくる」

{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310630a07">
「お兄さんが!?」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310640a00">
「他に誰がいる」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310650a07">
「いや、でも……
　だめだよ、危ないよ」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310660a00">
「戦場で云う台詞とも思えんが」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310670a07">
「程度ってもんがあるし。
　こないだみたいに危険なのはやだからね！」

{	FwC("cg/fw/fw景明汚染_愉悦.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310680a00">
「この間？
　建朝寺の時の話か」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310690a07">
「あれはあてのミスだったけど。
　まさかあのまっくろ太郎が武者とは思わな
かったから……あー、あんなのにお兄さんを
けしかけたあの時の自分をどつき倒したい！」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310700a07">
「いま思い出しても食欲が減退するわ！」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明汚染_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310710a00">
「……一蹴しただろうが」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310720a07">
「結果はそうだけどさ。
　進駐軍の司令部にいる竜騎兵は一騎や二騎
じゃないんだよ、絶対」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310730a00">
「どうにかする」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310740a07">
「どうにかするでどうにかなったら六年前の
戦争でうちの国負けてません！」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310750a00">
「何だそれは。
　お前はそこまで俺を信用できんのか」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310760a07">
「そ、そうじゃないよ。
　そうじゃないけど……」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310770a00">
「…………」

{	FwC("cg/fw/fw茶々丸_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310780a07">
「が、ガンくれてもこれはだめ！
　こここここ怖くなんかないしね！」

{	FwC("cg/fw/fw茶々丸_泣き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310790a07">
「ぷいっ」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310800a00">
「まぁいい。
　お前が許そうが許すまいが知らん」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310810a00">
「行ってくる」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310820a07">
「いーやーじゃー!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆ずるずる
//	Request("@StL*", Smoothing);
//	Move("@StL*", 300, @50, @100, null, false);
//	Zoom("@StL*", 300, 1500, 1500, null, true);

	DeleteStL(150,true);
	CreateTextureEX("でかちゃちゃ", 1000, @-250, @-300, "cg/st/resize/st茶々丸_通常_制服a_l.png");

	Fade("でかちゃちゃ", 150, 1000, null, false);


	OnSE("se人体_動作_人引きずる_L", 1000);
	Shake("でかちゃちゃ", 400, 1, 0, 0, 0, 1000, DxlAuto, true);
	Shake("でかちゃちゃ", 400, 1, 0, 0, 0, 1000, DxlAuto, true);



	WaitKey(1000);
	SetVolume("@OnSE*", 1000, 0, null);


	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310830a00">
「帯を掴むな」

{	FwC("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0310840b37">
「堀越中将様。
　その、そろそろ人目が」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310850a07">
「だめったらだめったらだめーーー!!
　どうしてもっていうなら――」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310860a00">
「何だ」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310870a07">
「あても一緒に行く！」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310880a00">
「馬鹿かお前は」

//◆コミカル怒
{	SetComic(@0,@0,15);
	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310890a07">
「あんたにゃ負けるわ！」

{	DeleteComic();
	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310900a00">
「将軍が陣を離れてどうする」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310910a07">
「お兄さんだって副官でしょ！」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310920a00">
「辞めれば済む事だな」

{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310930a07">
「あてを捨てる気!?」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310940a00">
「そういう話ではないが、そういう話だった
としても、別に躊躇う理由はないと思う」

{	FwC("cg/fw/fw茶々丸_泣き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310950a07">
「わーん、この人ひどい！」

{	FwC("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0310960b37">
「湊斗様。
　堀越中将様」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("でかちゃちゃ", 300, true);


	StR(1000, @0, @0, "cg/st/st常闇斎_通常_私服.png");
	FadeStR(300, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　茶々丸を引きずったまま再び歩き出そうとした刹那、
おかしさを堪えているような声が横から割って入った。
　異貌の男が口元を押さえつつ、こちらを見ている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0310970a00">
「今度はお前か」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0310980a07">
「うー」

{	FwC("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0310990b37">
「ここはどうか、私めにお任せを」

{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0311000a07">
「……常闇？」

{	FwC("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0311010b37">
「実は元々、そのつもりでおりました」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0311020a00">
「お前とて暇を持て余す身ではなかろう」

{	FwC("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0311030b37">
「私の職務など、代理の務まる者は幾らでも
おります」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0311040a00">
「それは俺も同じだ。
　俺の方が面倒もない」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0311050b37">
「しかし適材適所と申しましょう。
　貴方様は潜入工作の専門家ではあられない」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0311060a00">
「……」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0311070b37">
「この常闇は足利家の裏方、柳生一門の長。
　敵の陣中に潜り込むなど、日常茶飯のこと
でございます」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0311080a07">
「常闇……頼める？」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0311090b37">
「緑龍会のため。
　我が信仰のため」

{	FwC("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0311100b37">
「必ずやご期待に沿いましょう」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0311110a07">
「うん……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0311120a00">
「……」

{	FwC("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0311130b37">
「湊斗様。
　いみじくも堀越中将様が申された通り――
企み事とはなかなか思うように運ばぬもの」

{	FwC("cg/fw/fw常闇斎_思考.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0311140b37">
「更にこの上、予期せぬ事態があるやもしれ
ませぬ。
　貴方様は堀越中将様の傍らへお残りになり、
異変に備えて下さりませ」

{	FwC("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0311150b37">
「常闇、伏してお願い申し上げます」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0311160a00">
「……わかった」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0311170a00">
「柳生常闇斎」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0311180b37">
「はい」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0311190a00">
「俺はお前が生きようが死のうが構わん」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0311200b37">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0311210a00">
「だが、つまらん死に方はするなよ」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0311220a00">
「それは……どうも許せん気がする……」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0311230b37">
「――――」

{	FwC("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0311240b37">
「畏まりました。
　ですが、ご案じなく……」

{	FwC("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0311250b37">
「行く先には、私の運命が待ち受けている。
　そのような予感がいたします」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0311260a00">
「運命？」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0311270b37">
「はい」

{	FwC("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0311280b37">
「おそらく――こちらに残られる湊斗様にも」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0311290a00">
「…………」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0311300b37">
「……これは。
　予言者じみたことを申し上げました」

{	FwC("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0311310b37">
「つまらぬ話でお耳汚しを」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0311320a07">
「常闇……」

{	FwC("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0311330b37">
「行って参ります」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆しゅいん。消失


	OnSE("se人体_動作_跳躍02",1000);
	DeleteStA(200,true);

	Wait(200);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　陰なる男は現れた時のように一礼して――
　陰のように消えた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0311340a00">
「……」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0311350a07">
「お兄さん、なんであんなこと言ったの？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0311360a00">
「……何かな。
　予感とやらが、俺にもあった」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0311370a07">
「どんな？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0311380a00">
「あの男と、もう会うことはない」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0311390a07">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("銃撃戦", 1500, 0, null);
	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md04_032.nss"