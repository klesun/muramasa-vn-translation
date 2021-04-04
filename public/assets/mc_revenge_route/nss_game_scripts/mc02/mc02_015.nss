//<continuation number="440">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_015.nss_MAIN
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

	$GameName = "mc02_016.nss";

}

scene mc02_015.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc02_014.nss"


//◆フェードイン
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");
	CreateTextureSP("絵背景10", 1000, Center, Middle, "cg/bg/bg028_横浜ＧＨＱ基地_01.jpg");
	StL(1100,@-30,@0,"cg/st/st香奈枝_通常_制服c.png");
	FadeStL(0,false);
	SoundPlay("@mbgm35",0,1000,true);
	Delete("上背景");
	FadeDelete("黒幕１", 1000, true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0150010a00">
「では……こういう事なのですか。
　情勢の急変に焦った宮殿下と署長が不祥事
で横須賀に左遷されていた進駐軍将校を買収、
軍港の破壊を企み――」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0150020a00">
「それに失敗。
　事態は露見し、建朝寺へＧＨＱの制裁措置
を招くに至ったと……」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0150030a03">
「ええ。そんなところです。
　……信じられませんか？」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0150040a00">
「…………。
　いえ。残念ながら」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0150050a00">
「信ぜざるを、得ないようです」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0150060a03">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　全ての辻褄が合う。
　どうして、進駐軍と親王陣営が急に対立する格好と
なったのか――不可解だった部分が、全て解消されて
しまった。

　疑いたくとも疑う要素がない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0150070a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　――何たることか。

　胸中に湧いた慨嘆は、親王らの短慮を責めるもので
はなかった。
　あの元来は思慮深いはずの人々をしてそんな暴挙に
追いやった世情の転変こそ、嘆くべきだった。

　しかし……そうなると。
　
　建朝寺襲撃事件は、言ってしまうなら親王らの自業
自得なのか。

　つまり――<k>
　
　
　――――あれも。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想：明堯の死
	EfRecoIn1(18000,600);

	CreateTextureSP("イベ絵10", 2000, Center, Middle, "cg/ev/ev170_バロウズ署長を射殺_a.jpg");

	EfRecoIn2(300);
	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　<RUBY text="ちち">養父</RUBY>は……
　己の策謀に、己の命で始末をつけたのか。

　それが、養父の死の意味なのか……。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り

	EfRecoOut1(300);

	Delete("イベ絵*");

	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0150080a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　そう考えてみて、納得のいかぬことはない。
　理屈の上では――全く、納得するほかにない。

　だが。
　理屈を超えて…………どうしても。

　込み上げる感情が、
　抑え難いものが、<k>
　
　　　　　　　　　　　　　　　　　　…………有る。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想：バロウズ

	EfRecoIn1(18000,600);

	CreateTextureSP("絵回想100", 2000, Center, InBottom, "cg/bg/bg077_建朝寺得月楼前_02.jpg");
	CreateTextureSP("絵回想200", 2100, Center, InBottom, "cg/st/3dバロウズ_立ち_通常.png");


	EfRecoIn2(300);
	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　あの<RUBY text="クルセイダー">騎士</RUBY>。

　劒冑の特徴的な造形は、別の記憶を刺激する。
　昔、学校で読んだ西洋史の資料集。

　その中に掲載されていた写真の一枚。
　<RUBY text="シュヴィーツ">永世中立国</RUBY>の至宝――〝弓聖〟ウィリアム・テル。

　中世欧州史を彩る偉大な英雄が愛用し、彼の死後は
その名を冠して秘蔵された、名甲中の名甲である。
　伝説に曰く、左腕の<RUBY text="クロスボウ">石弓</RUBY>から放たれる矢は必中必殺
の魔弾。息子の頭上の林檎すら的確に射抜いたと云う。

　あの騎士の劒冑はその聖宝に瓜二つだ。
　
　しかし――違う。

　別物。

　無論、一国の国宝が容易く持ち出される筈がないと
いう判断もある。
　だがその点に思いを致さずとも、俺の眼はあの劒冑
を真物とは<RUBY text="み">鑑</RUBY>なかった。

　あれは<RUBY text="がんさく">贋作</RUBY>。
　紛い物だ。

　造形こそ、見事なまでに盗み取ってはいる。きっと
甲鉄の強度も真物におさおさ劣るまい。
　しかし〝弓聖〟には欠片も無いものが、その表面に
滲んで現れていた。

　鍛冶師の虚栄心。
　強烈な、けれども捻じ曲がった自負。

　名高い英雄の劒冑を騙って名声を盗むような真似を
しておきながら、その劒冑よりも自分の造った品の方
が実際は優れているのだと思い込む……
　そんな卑小な、屈折した人間像が透けているのだ。

　あの劒冑は決して見る人に感嘆の吐息をつかせる事
はない。
　眉をひそめさせ、不快げな唸りを上げさせるだけだ
ろう。

　そんな劒冑で――――養父は殺された。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0150090a00">
「…………」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　香奈枝嬢が言った通りだ。
　事件はもう終わっている。……政治的には、全て。

　しかし。
　俺の中では――――

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆戻り

	EfRecoOut1(300);
	Delete("くろ");
	Delete("絵回想*");

	EfRecoOut2(600,true);

	StL(1000,@-30,@0,"cg/st/st香奈枝_通常_制服c.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0150100a03">
「……そういえば。
　景明さま？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0150110a00">
「は。
　何でしょうか、大尉殿」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0150120a03">
「あの日は、わたくしの電話から随分と時間
が経った後で参られたようですけれど……
　何かございましたの？」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0150130a00">
「……はい。
　結果として、大尉のご忠告を無にしてしま
いました」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120a]
　本当に忠告のつもりであったのかどうかは兎も角、
心情的にそう言っておく。
　実際、忠告として生かす事もできた筈であった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演回想", 4100, Center, Middle, "cg/ev/ev946_村正ＶＳガッタイダー_a.jpg");
	Fade("絵演回想", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120b]
　<RUBY text="・・・">妨害者</RUBY>さえ現れなければ。
　俺がその対処に手間取らなければ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵演回想", 1000, true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0150140a00">
「……大尉殿」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0150150a03">
「はい？」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0150160a00">
「…………悪魔じみた姿の、巨大な武者……
に、心当たりはありませんか」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0150170a03">
「悪魔じみた？」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0150180a00">
「はい。
　他にはなかなか、形容の術がありません」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0150190a03">
「……さあ……？
　進駐軍内の騎士の方々は、もちろん色々な
<RUBY text="なり">形</RUBY>の劒冑をお持ちですけど」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0150200a03">
「悪魔っぽい、というのは……
　あまり正規軍に属する騎士の趣味ではなさ
そうですし」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0150210a00">
「……確かに」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　そんなものを使いたがる変人が仮にいたとしても、
周囲が喜ばないだろう。
　軍という組織で、規律を乱す振舞いは許されない。

　そうなると……あれはＧＨＱとは別口？
　
　いや、それにしては<RUBY text="タイミング">時機</RUBY>が合い過ぎている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0150220a00">
「……」


{	StCL(1200,@ 80,@ 0,"cg/st/stさよ_通常_私服.png");
	FadeStCL(300,false);
	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0150230a04">
「そんな悪趣味ソルジャーとどこぞで出くわ
されたのですか？　湊斗さまは」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0150240a00">
「はい。
　あの時、建朝寺へ向かう途上で」


{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0150250a04">
「…………ほぉ？」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0150260a03">
「…………？」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0150270a00">
「襲われ、不覚を取りました」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　苦い味を噛み、唾に混ぜて吐き捨てる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);
	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0150280a00">
「あの武者を手早く退けていれば……
　<RUBY text="ちち">養父</RUBY>を救えたかもしれない」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0150290a03">
「――――」


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0150300a03">
「え？」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0150310a03">
「……父？」


{	SoundPlay("@mbgm32",0,1000,true);
	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0150320a00">
「はい。
　建朝寺で、署長が殺害されたことはご存知
ありませんか」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0150330a03">
「え、あ……はい。
　いえ、知っていますけれど……」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0150340a04">
「……鎌倉署長の菊池明堯殿ですな。
　あの方の御遺体は確認しております」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0150350a00">
「……そうですか」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0150360a00">
「あれが自分の養父です。
　多大な恩を受けました」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0150370a03">
「――――――――」


{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0150380a04">
「しかし……姓が違うようですが？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0150390a00">
「事情あって、湊斗家からは籍を抜いていた
のです。
　それ以降、婿入りする前の旧姓を……菊池
の姓を養父は称していました」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0150400a04">
「……左様で」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0150410a00">
「自分が大尉のご忠告を生かし、すぐに駆け
つけていれば……守れたかもしれません。
　あの騎士の放った矢から……養父を……」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0150420a00">
「……あの騎士……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreatePlainEX("絵板写", 19900);

	CreateColorEX("絵色黒", 10000, "#000000");
	CreateTextureEX("絵演立絵", 11000, -925, -1476, "cg/st/resize/3dバロウズ_立ち_通常l.png");
	Fade("絵色黒", 1600, 1000, null, true);

	Move("絵演立絵", 6000, @0, @576, null, false);
	Fade("絵演立絵", 3000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　あの弓騎士。
　
　あれは――あれは間違いなく進駐軍の騎士だ。

　香奈枝嬢に、奴の素性を尋ねるべきだ！
　こちらは知っているに違いない！<k>
　
{Fade("絵板写", 300, 1000, null, false);}
　……その考えは雷光のように閃いて、消えた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0182]
　知ってどうする。
　探し出し、襲い、復讐するのか。

　そんなことをすれば――大鳥大尉の立場はどうなる。

　自分の連れてきた捕虜が脱走し、しかも自分の提供
した情報によって騎士――<RUBY text="ブラッドクルス">真打劒冑</RUBY>の所有者ならまず
間違いなく伝統的貴族階級だ――を斬ったとなれば。
　……大和出身の異端者を弁護する者はいないだろう。

　迷惑で済む話ではない。
　できる筈がなかった。

　――何もできない。
　養父の仇に、俺は何もすることができない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0150430a00">
「……ッッ!!
　あの……騎士……!!」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0150440a03">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆時間経過

	ClearWaitAll(2000, 2000);


}

..//ジャンプ指定
//次ファイル　"mc02_016.nss"