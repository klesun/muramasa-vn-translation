//<continuation number="710">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_010.nss_MAIN
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
	#bg028_横浜ＧＨＱ基地_03=true;


	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_ウォルフ=true;

	$PreGameName = $GameName;

	$GameName = "mc02_011.nss";

}

scene mc02_010.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc02_009.nss"


//◆空
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");

	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg002_空a_01.jpg");
	
	SoundPlay("@mbgm35", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒幕１",1500,true);
	
	WaitKey(1000);
//◆昼→夕→夜
	CreateTextureSP("絵背景11", 9, Center, Middle, "cg/bg/bg002_空a_02.jpg");
	FadeDelete("絵背景10",1000,true);
	WaitKey(1000);
	CreateTextureSP("絵背景12", 8, Center, Middle, "cg/bg/bg002_空a_03.jpg");
	FadeDelete("絵背景11",1000,true);
	WaitKey(1000);
//◆横浜基地
	CreateTextureSP("絵背景13", 7, Center, Middle, "cg/bg/bg028_横浜ＧＨＱ基地_03.jpg");
	FadeDelete("絵背景12",1000,true);
//◆ウォルフ
	StR(1000, @0, @0, "cg/st/stウォルフ_通常_私服.png");
	FadeStR(300, true);

	SetFwC("cg/fw/fwウォルフ_通常.png");

	#voice_on_ウォルフ=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100010a13">
「はて……ここでもないか……」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100020a13">
「何処へ行ってしまったやら。
　世話の掛かる〝<RUBY text="リトルガール">少女</RUBY>〟だ」


{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100030a13">
「捕まえたらパンツ脱がせて陰毛抜くか……」


{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100040a07">
「抜くな抜くな。
　誰のことか知らんけど」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆茶々丸
	StL(1000, @-50, @0, "cg/st/st茶々丸_通常_私服.png");
	Move("@StL*", 300, @50, @0, Dxl1, false);
	FadeStL(300, true);


	SetFwC("cg/fw/fwウォルフ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100050a13">
「おやおや。
〝<RUBY text="リトルガール">少女</RUBY>〟を探していて別の<RUBY text="リトルガール">少女</RUBY>に出会ってし
まったよ」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100060a13">
「君はいつもいつも神出鬼没だね。
　パンツ脱ぐ？」


{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100070a07">
「脱がん」


{	FwC("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100080a13">
「これだ……人間というやつはどいつも。
　自分だけが正しいと信じ、あらゆる他人は
愚かだと信じ、神を疑い、真理を嘲笑う……
そしてパンツを脱がないのだ。何故だ!?」


{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100090a07">
「いや。だからさ。
　そんなに脱がせたけりゃ自分の脱がせよ」


{	FwC("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100100a13">
「むさい男がパンツ脱いで何が楽しい。
　馬鹿じゃないのか君は？」


{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100110a07">
「うわー変なとこだけ正気だなおめー。
　ぶっちゃけ三回くらい殺したくなったけど
まぁいいや今は」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100120a07">
「知らせに来たんだよ。
〝姫〟は五日後に目覚める」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100130a13">
「……ほう」


{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100140a13">
「確かかね」


{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100150a07">
「あての眼に狂いは、せいぜい一八〇度しか
ない」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100160a13">
「では大丈夫だな」


{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100170a07">
「……こいつ人のボケはスルーなんだぜ……。
　自分は人にさんざん突っ込ませてるくせに
よ……」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100180a13">
「誰が君の性器に陰茎を挿入したと？」


{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100190a07">
「んなこた言ってねぇよ！」


{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100200a07">
「ぐあー、うっかり何の捻りもないつまらん
突っ込み入れちまったーーー!!」


{	FwC("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100210a13">
「うるさいぞ。馬鹿か君は」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(150,0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_落胆.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100220a07">
「……あて、苛められてる……？
　苛められてるよね？」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100230a13">
「で、〝姫〟はその時刻に合わせて普陀楽城
に運び込まれるのかな？」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100240a07">
「あぁ。
　その辺の手筈はもう整ってる」


{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100250a13">
「やり直しは困難なのだ。
　間違いは犯してほしくない」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100260a13">
「確かに？」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100270a07">
「確かに」


{	FwC("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100280a13">
「パンツは？」


{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100290a07">
「穿かせとく」


{	FwC("cg/fw/fwウォルフ_怒り.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100300a13">
「脱がせ！」


{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100310a07">
「嫌だ！」


{	FwC("cg/fw/fwウォルフ_絶叫.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100320a13">
「少女の無垢な下半身が見たい！」


{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100330a07">
「うるせえ!!」


//◆Is someone there?
{	NwC("cg/fw/nw警備兵.png");}
//【ｅｔｃ／巡回兵士】
<voice name="ｅｔｃ／巡回兵士" class="その他男声" src="voice/mc02/0100340e119">
「……そこに誰かいるのか！」


{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100350a07">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆ひゅん。茶々丸消え。
	OnSE("se人体_動作_跳躍01", 1000);
	DrawDelete("@StL*", 300, 100, "slide_01_01_0", false);

	WaitKey(1000);

	OnSE("se人体_足音_走る01_L", 1000);
	WaitKey(2000);

//◆入れ替わりにＧＨＱ兵士
	StL(1000, @60, @0, "cg/st/stＧＨＱ兵士_通常_制服.png");
	Move("@StL*", 300, @-60, @0, Dxl2, false);
	FadeStL(300, true);
	SetVolume("@OnSE*", 1000, 0, null);

//◆横書き

	SetFwH("cg/fw/fwウォルフ_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100360a13">
「ああ、失敬。
　少々スターライトポエムタイムを楽しんで
いたのだよ。君の仕事の邪魔だったかな？」


{	NwH("cg/fw/ny警備兵.png");}
//【ｅｔｃ／巡回兵士】
<voice name="ｅｔｃ／巡回兵士" class="その他男声" src="voice/mc02/0100370e119">
「あっ……も、申し訳ありません！
　教授でしたか」


{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100380a13">
「いやいやいや。
　気にせず任務に戻ってくれたまえ」


{	NwH("cg/fw/ny警備兵.png");}
//【ｅｔｃ／巡回兵士】
<voice name="ｅｔｃ／巡回兵士" class="その他男声" src="voice/mc02/0100390e119">
「はっ！」


{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100400a13">
「ああ、君」


{	NwH("cg/fw/ny警備兵.png");}
//【ｅｔｃ／巡回兵士】
<voice name="ｅｔｃ／巡回兵士" class="その他男声" src="voice/mc02/0100410e119">
「はい？」


{	FwH("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100420a13">
「パンツ脱いだ少女を持ってないか？
　ちょっと手持ちを切らしていてね」


{	NwH("cg/fw/ny警備兵.png");}
//【ｅｔｃ／巡回兵士】
<voice name="ｅｔｃ／巡回兵士" class="その他男声" src="voice/mc02/0100430e119">
「い、いえ……生憎と。
　失礼します」


</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(150,0);//―――――――――――――――――――――――――――――

//◆去る
	DeleteStL(300, false);
	OnSE("se人体_足音_歩く01_L", 1000);
	WaitKey(2000);
	SetVolume("@OnSE*", 1000, 0, null);

//◆縦書き
	StL(1000, @0, @40, "cg/st/st茶々丸_通常_私服.png");
	FadeStL(300, false);
	Move("@StL*", 300, @0, @-40, DxlAuto, true);

	SetFwC("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100440a07">
「……ふー」


{	FwC("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100450a13">
「君の愚かしい失態でプチピンチであった。
　気をつけたまえよ？」


{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100460a07">
「怒る気もしねぇー」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100470a07">
「にしてもおめー英語が達者だよな。大和語
もだけどさ。
　ほんとに<RUBY text="ドイツ">独逸</RUBY>人か？」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100480a13">
「独逸は故郷には違いないがね、そこで暮ら
した時間より世界を旅して回っていた時間の
方が長い。
　母国など有って無いようなものだ」


{	FwC("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100490a13">
「強いて言えばパンツ脱いだ少女が住まう国
こそ我が母国――」


{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100500a07">
「おめーの居場所地球上にないからな」


{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100510a13">
「ま、現在の国際情勢と僕の専門を鑑みれば
英語と大和語に熟達するのはシンプルな論理
的帰結でしかないよ」


{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100520a07">
「そか」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100530a13">
「しかし君の能力も便利なものだね。
　突然現れるのも咄嗟に隠れるのも自在じゃ
ないか」


//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100540a13">
「それ僕も修行とかすれば何とかなるかな？」


{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100550a07">
「さぁ？　なるんじゃねえの？
　とりあえず腕立て伏せ一万回からやってみ」


{	FwC("cg/fw/fwウォルフ_絶叫.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100560a13">
「本当だな！　やるぞ!?
　それで身につかなかったらパンツ脱がす!!」


{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100570a07">
「うわーごめんなさい！　嘘つきました！
　あんたやるったら本当にやりそうだし抵抗
するのも無理っぽいから勘弁してください！」


{	FwC("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100580a13">
「ちっ、仕方ない。
　今回は視姦だけで許してやろう」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――


	Shake("@StL*", 500, 5, 0, 0, 0, 300, null, true);

	SetFwC("cg/fw/fw茶々丸_泣き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100590a07">
「うっうっ、嫌だよう。
　粘っこい視線が絡みついて気持ち悪いよう」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(150,0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwウォルフ_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100600a13">
「ムフー、堪能した。
　で、計画に問題はないわけだね？」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100610a07">
「それはむしろこっちが訊きてーとこ。
　<RUBY text="・・・">落とす</RUBY>用意はちゃんとできてんのか？」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100620a13">
「心配いらない。
　キャノン中佐は動かせる。つまりウィロー
少将も動かせるし、ＧＨＱも動かせるという
ことだ」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100630a07">
「入れ子構造の組織って素敵だねー」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100640a13">
「偉大なる友、キャノン君に幸あれ。
　彼のためなら僕がパンツ脱いでもいいな」


{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100650a07">
「やっぱ脱ぐの!?」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100660a13">
「……冗談くらい理解してくれないものかね。
　これだから大和人は無粋だというのだよ」


{	FwC("cg/fw/fw茶々丸_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100670a07">
「……ごめんなさい国民の皆さん……。
　こんな変態にバカにされてしまいました」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100680a13">
「〝<RUBY text="ザ・ガジェット">平和実現装置</RUBY>〟は定められた時刻に合わ
せて送り出す。
　あれと〝姫〟との邂逅が我々の求めた道を
遂に切り開くだろう」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100690a07">
「……ああ」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100700a13">
「<RUBY text="ゴールデン・ドーン">黄金の夜明け</RUBY>のために。
　同志茶々丸」


{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100710a07">
「黄金の夜明けのために。
　同志ウォルフ」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"mc02_011.nss"