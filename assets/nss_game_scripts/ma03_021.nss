//<continuation number="660">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_021.nss_MAIN
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

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene ma03_021.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_020a.nss"
//前ファイル　"ma03_020b.nss"



//◆合流
	PrintBG("上背景", 30000);
	OnBG(100,"bg036_競技場通路_01.jpg");
	FadeBG(0,true);
	Delete("上背景");

	SoundPlay("@mbgm30",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……まあ、まだ明日のレースに参戦すると決まった
わけではないが。
　残りのガレージで寄生体を発見できれば、話はそこ
で済む。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0210010a00">
「後はどこが残っていたでしょうか」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0210020a04">
「お待ちくださいませ。
　……タムラだけでございますね」

//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0210030a04">
「一番遠かったので後回しにしておりました」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0210040a03">
「参りますの？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0210050a00">
「はい。
　低いですが、タムラの予備騎にも可能性は
あります」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　余り正直ではない事を云う。
　それはあるまいと考えていた。銀星号がもしタムラ
に目をつけたのなら、何をおいても、あのメタリック
ブルーの騎体を選んだに違いないと思われるからだ。

　しかしそれが確認を怠るべき理由とはならない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0210060a04">
「そろそろ零時を回りますねぇ」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0210070a03">
「髪とお肌の具合が心配です。
　徹夜は良くないって言いますもの」

{	FwC("cg/fw/fw一条_冷笑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0210080a02">
「へっ。
　ちゃらちゃらしたもんだな、ＧＨＱの大尉
さんは」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0210090a03">
「そういうあなただって、毎日手入れはして
いるのでしょう？
　こんな白くて、ぷにぷにしてて、うらやま
しいったら」

{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0210100a02">
「触るな！　つまむな！
　つーか、あたしはそんなかったるいことは
してねぇ！」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0210110a03">
「…………」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0210120a03">
「嘘？」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0210130a02">
「本当だよ」

{//◆チャキ
	OnSE("se戦闘_銃器_構える01",1000);
	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0210140a02">
「なんで銃がこっち向くんだ！」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0210150a04">
「お嬢さま、お気を確かに！
　認めがたいことですが、時としてこのよう
な方は存在するのです！」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	Delete("@text0040");
	SetFwC("cg/fw/fwさよ_怒り.png");

//<voice name="さよ" class="さよ" src="voice/ma03/0210160a04">

	SetBacklog("「本当にッ！　認めたくはありませんがッ！　いるものはいるのですッ！　仕方がないのですッ!!」", "voice/ma03/0210160a04", さよ);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0059]
//嶋：音声：四分割して頂けると助かります。
//【さよ】
{	CreateVOICEEX("さよ１","ma03/0210161a04","さよ");
	MusicStart("さよ１",0,1000,0,1000,null,false);}
「本当にッ！<k>
{	CreateVOICEEX("さよ２","ma03/0210162a04","さよ");
	SetVolume("さよ１", 0, 0, null);
	MusicStart("さよ２",0,1000,0,1000,null,false);}
　認めたくはありませんがッ！<k>
{	CreateVOICEEX("さよ３","ma03/0210163a04","さよ");
	SetVolume("さよ２", 0, 0, null);
	MusicStart("さよ３",0,1000,0,1000,null,false);}
　いるものはいるのですッ！<k>
{	CreateVOICEEX("さよ４","ma03/0210164a04","さよ");
	SetVolume("さよ３", 0, 0, null);
	MusicStart("さよ４",0,1000,0,1000,null,false);}
　仕方がないのですッ!!」

</PRE>
	SetTextEXC();
	Request("@text0059", NoLog);
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetVolume("さよ４", 0, 0, null);

	SetFwC("cg/fw/fw香奈枝_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0210170a03">
「くっ……
　ナチュラルボーン・フリークス……！」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0210180a02">
「……化物呼ばわりかよ。
　こんなつまんねーことで」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0210190a04">
「綾弥さまも口にはお気をつけを。
　壁に耳あり、障子に目あり。いつの間にか
多大な敵をつくっているやもしれません」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0210200a02">
「？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
　……そういえば。
　女性を連れ回すような時間帯ではないか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0210210a00">
「大尉殿。
　お先に宿舎へ戻られては」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0210220a03">
「あら、あらっ。
　景明さま、わたくしの美容にお気を遣って
くださるなんて嬉しいです」

{	SetComic(@0,@0,1);
	FwC("cg/fw/fw一条_警戒.png");}
//◆コミカル怒り
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0210230a02">
「……」

{	DeleteComic();
	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0210240a03">
「でもご心配なく。今のはほんの冗談ですの。
　わたくしだってお肌の出来には自信があり
ますもの」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0210250a03">
「この通りっ。
　景明さま、触ってくださってもよろしゅう
ございましてよ？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0210260a00">
「任務中ですので、お気持ちだけ頂きます」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　と言っている傍から、腕を胸元へ抱き込まれている
わけだが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0210270a02">
「てめー！」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0210280a04">
「見事な仕掛け技でございますお嬢さま！
　そう、ナチュラルな魅力で迫る年下系ヒロ
インに対抗して、色気で行く年上系！　それ
こそが正しい在りかたというもの！」

{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0210290a04">
「まぁ大抵の場合、そうした年上系は序盤を
リードするものの最後には逆転負けを喫する
と相場が決まっているのですけれども」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0210300a03">
「皆まで言わなくてもよくってよ、ばあや！
　既成事実ねっ！　既成事実があれば勝てる
のね！」

{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0210310a02">
「面白夢空間逝ってんじゃねぇぞ腐れアマ。
　とっとと離れやがれ、湊斗さん嫌がってる
だろうが！」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0210320a03">
「あら、誰がそんなことを言ったのかしら。
　ねぇ、景明さま？　わたくしと一緒に愛の
自転車・人生薔薇色号に二人乗りして新たな
未来へ漕ぎ出してくださるでしょう？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0210330a00">
「いいえ」

{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0210340a03">
「ほら御覧なさい！」

{	FwC("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0210350a02">
「そりゃあたしの台詞だぁッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆閃光の蹴り。げし。
	CreatePlainSP("絵振", 1000);
	CreateSE("SE01","se戦闘_攻撃_殴る05");
	MusicStart("SE01",0,1000,0,1500,null,false);
	CreateColorSP("絵フラ", 5000, "#FFFFFF");
	Wait(10);
	DrawDelete("絵フラ", 200, 100, "circle_01_00_1", false);
	FadeFR3("絵振",0,1000,200,0,0,10,Dxl2,true);

	OnSE("se人体_衝撃_転倒03",1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　途方もなく鋭い角度で蹴りが入った。
　俺の隣から大尉が消え、ごろごろ、ずしゃーという
振り返りたくもないような音が続いて背後から轟いて
くる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	Delete("絵振");
	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0210360a00">
「……自転車の二人乗りは交通法規に抵触し
ます、大尉殿」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0210370a04">
「遅うございますよ、湊斗さま」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　わかってはいるが。

　ゆらり、と大鳥大尉が立ち上がった。
　手の甲で口元を拭い、彼女はクククと笑う。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0210380a03">
「見事な蹴りでしてよ、一条さん。
　うっかり走馬灯を見てしまうところでした」

{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0210390a02">
「そのまま帰ってこなけりゃいいもんを。
　しぶてぇアマだな」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0210400a03">
「今度はこちらから参りましょう。
　受けて頂けるかしら？」

{	FwC("cg/fw/fw一条_冷笑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0210410a02">
「……拳闘か？
　笑わせやがる……」

{	FwC("cg/fw/fw一条_戦闘.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0210420a02">
「来い」

{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0210430a03">
「……ふふふ」

{	FwC("cg/fw/fw一条_冷笑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0210440a02">
「へっ……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0210450a00">
「では、侍従殿。
　自分はタムラのガレージを見て参ります」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0210460a04">
「は。いってらっしゃいまし」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　車を曳き、タムラのガレージ方向へ歩き出す。
　ここからなら程近い。

{	SetVolume("@mbgm*", 2000, 0, null);}
　が。<k>
　数歩も進まぬ内、ふと足が止まった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0210470a00">
「……」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0210480a04">
「おや、いかがされましたか？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0210490a00">
「いえ。
　今……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　少し先の交差路を駆け抜けていった、複数の影。
　あれは、見間違いでないとしてだが――顔を覆面で
隠していた。

　いかにも即席の、いい加減なマスク。
　まるで銀行強盗か何かのような。

　食事と一緒に一条が持ち帰った話を思い出す。
　
　……妙な連中がうろついている。
　物騒な、殺気立った奴らが……

　彼らが駆けて行った先には――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170a]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0210500a00">
「ッ！」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆駆け出す音。たっ。
	SoundPlay("@mbgm13",0,1000,true);
	CreateSE("SE01","se人体_足音_走る01_L");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetVolume("SE*", 3000, 0, null);
	CreateTextureSP("絵ＥＦ", 1000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	DrawTransition("絵ＥＦ", 200, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", false);
	FwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170b]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0210510a04">
「湊斗さま？」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0210520a02">
「えっ？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0210530a03">
「あら？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　――タムラのガレージしかない。


　村正を連れ出している暇はなかった。
　いざとなったら呼べば良い。だがおそらくその必要
はあるまいと思えた。

　あれはもっと安易な<RUBY text="トラブル">事件</RUBY>だ。
　予測される被害が軽いということを意味するもので
はないが。傷害、殺人が含まれる可能性もある。

　決して座視はできない。
　俺は駆けた。背後からも三つ――六つというべきか？
――の足音が続いている。

　いや。
　脇道からも、一つ――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	FadeDelete("絵ＥＦ", 500, false);
	SetFwC("cg/fw/fw茶々丸変装_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0210540a07">
「やっ」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0210550a00">
「！」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0210560a00">
「貴方は」

{	FwC("cg/fw/fw茶々丸変装_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0210570a07">
「こんなこともあるんでないの？　って思って
ねー！」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0210580a07">
「ちょっくら張り込んだりしてたわけだけど。
　いやはやなんつーか……期待を裏切らない
展開じゃない？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0210590a00">
「是非、裏切って欲しいものでしたが！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　駆け続ける。
　少女はぴったりと横に併走してきた。俺が加減して
いるのではない。彼女が小柄な体躯に見合わぬ速さを
備えているのだ。……あるいは何かの体術か。

　タムラのガレージが見える。
　既にその中からは、劔冑の調整作業によるものでは
決してない喧騒が聞こえてきていた。

{	CreateSE("SE01","se戦闘_破壊_金属");
	CreateSE("SE02","se日常_物_木箱壊れる01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE02",0,1000,0,750,null,false);}
　重いものが転がる音。
　硬いものがぶつかる音。
　……悲鳴。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0210600a00">
「――」

{	FwC("cg/fw/fw茶々丸変装_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0210610a07">
「――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　隣の少女と一度だけ視線を交わして、飛び込む。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ガレージ内
	PrintGO("上背景", 25000);

	CreateColorSP("絵暗転", 10000, "#000000");

	OnBG(100,"bg037_競技場ガレージa_01.jpg");
	FadeBG(0,true);

	DrawDelete("上背景", 150, 100, "circle_01_00_1", true);

	DrawDelete("絵暗転", 150, 100, "circle_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　状況を確認。
　覆面の男が五、六、七人。うちの四人がスタッフを
追い散らし、三人が一箇所へ向かっている。

　タムラチームは丁度仮眠をとっていたところだった
らしい。運が悪い――いや。そんな筈はないか。
　運の問題などではなく、まさにその隙を狙われたに
決まっている。

　スタッフは例外なく惑乱の波に押し流されていた。
まだ寝転がったまま凝然と眼を<RUBY text="みは">瞠</RUBY>るばかりの者も多い。
　三人に狙われている標的――ガレージの隅の皇路操
は、いま呆然としつつ体を起こそうとしていた。

　迫る覆面の手には短い鉄の棒。
　無骨かつ有用な凶器。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0210620a00">
「警察だ!!　全員静止!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　腹腔から声を張る。
　一瞬、誰もが動きを止めた。

　……だが、一瞬を越えても留まり続けたのはタムラ
のスタッフらのみ。
　覆面の集団は再び動き出す。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0210630a00">
（やはりか）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　落ちたりとはいえ警察は警察。
　このような局面でその名を聞けば、今少しは怯みを
見せても良さそうなものだ。

　それがまるで知らぬげな態度。
　ということはつまり――警察など歯牙にも懸けぬ、
それだけの<RUBY text="・・・">裏付け</RUBY>をもって事に及んでいる。

　そして最優先の狙いが騎手。レースチームの心臓部。
　であれば、彼らの正体は――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸変装_歯噛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0210640a07">
「――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	OnSE("se人体_動作_後ずさり01",1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　隣の少女が大きく踏み込む。
　その視線が狙撃しているのは、皇路操に向かう三人
の先頭、最も危険な位置にいる男の背中。

　彼らの一瞬の停止は、少女の足に追いつかせるだけ
の余裕を与えていた。
　問題はどう制するかだが――この刹那、悩むことを
やめる。やるからには手立てがあるのだろうと信じる。

　俺は他の二人を制圧しなくてはならない。
　踏み出す。背後から怒声。一条か――彼女らも間に
合ったらしい。

{	OnSE("se人体_動作_跳躍01",1000);}
　踏み込む。
　追いすがるこの格好、背面を狙う打撃は効果が薄い。
狙いは脇。肝臓を引っ掛けるように――否、軌道修正。
この男は確実に仕留める必要あり。

　腋の下を刺し穿つ。
　――一撃必倒の急所。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆打撃
	OnSE("se戦闘_攻撃_殴る03",1000);
	CreatePlainSP("絵振", 1000);
	Shake("絵振", 300, 0, 10, 0, 0, 1000, Dxl2, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　男は悲鳴も上げなかった。
　泡を吹き、大きくよろけて隣の仲間に体を預ける。

　そちらの男が、驚きを覚えたとしても一呼吸に満た
ない間のことだった。
　今や障害でしかない仲間を跳ね除けて、標的を狙い
続ける――果断と評して良い行動。

　だが届く。
　男が右手の凶器を振り下ろすよりも、こちらの方が
速い。

　左足を踏み締め。
　右足で蹴る。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆蹴り
	OnSE("se戦闘_攻撃_キック02",1000);
	Shake("絵振", 300, 20, 0, 0, 0, 1000, Dxl2, false);

	SetNwC("cg/fw/nw覆面Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【ｅｔｃ／覆面Ａ】
<voice name="ｅｔｃ／覆面Ａ" class="その他男声" src="voice/ma03/0210650e239">
「げぼっ!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	Delete("絵振*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　果断で目的を見失わなかったからこそ、俺に対して
全くの無防備だった彼は横腹が背骨までへこむほどに
蹴り込まれて、棒立ちになった――半瞬。

　<RUBY text="バネ">弾機</RUBY>が返るように、吹き飛ぶ。凶行を続ける能力を
喪失したのは疑いなかった。
　開いた視界に、間接的そして直接にも見知った少女
騎手の姿が覗く。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw操_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【操】
<voice name="操" class="操" src="voice/ma03/0210660b42">
「……あなた、は」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　蹴り足を戻し、それを軸に回転。
　周囲状況を確認。

　最初に見たのは――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


}

//◆選択：一条／香奈枝／ライガー

..//ジャンプ指定
//◆一条　"ma03_021a.nss"
//◆香奈枝　"ma03_021b.nss"
//◆ライガー　"ma03_021c.nss"



//★選択肢シーン
scene ma03_021.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	SoundPlay("@mbgm13",0,1000,true);
	PrintGO("背景０", 30000);
	OnBG(100,"bg037_競技場ガレージa_01.jpg");
	FadeBG(0,true);
	FadeDelete("背景０", 0, true);

//■選択肢
	SetChoice03("一条","香奈枝","ライガー");
	select
	{
		//カーソル用
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @選択肢１
		{
			ChoiceA03();
//一条　"ma03_021a.nss"
				$GameName = "ma03_021a.nss";
		}
		case @選択肢２
		{
			ChoiceB03();
//香奈枝　"ma03_021b.nss"
				$GameName = "ma03_021b.nss";
		}
		case @選択肢３
		{
			ChoiceC03();
//ライガー　"ma03_021c.nss"
				$GameName = "ma03_021c.nss";
		}
	}
}

