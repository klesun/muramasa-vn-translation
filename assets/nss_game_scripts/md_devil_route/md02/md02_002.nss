//<continuation number="850">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_002.nss_MAIN
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
	#bg097_堀越御所内景明の部屋_01=true;
	#ev218_茶々丸と同衾する景明_a=true;
	#ev953_護氏装甲_a=true;
	#bg031_八幡宮境内_01=true;
	#ev924_銀星号飢餓虚空魔王星=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_003.nss";

}

scene md02_002.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md02_001.nss"

//◆ホワイトイン。目覚め
//◆景明の部屋（堀越御所内）
	PrintBG("上背景", 30000);
	CreateColorSP("ホワイトイン", 5000, "White");
	OnBG(100, "bg097_堀越御所内景明の部屋_01.jpg");
	FadeBG(0, true);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg097_堀越御所内景明の部屋_01.jpg");
	SetShade("絵背景100", HEAVY);
	Delete("上背景");

	Wait(2000);

	FadeDelete("ホワイトイン",2000,true);
	FadeDelete("絵背景100", 3000, true);

	Wait(1000);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020010a00">
「……………………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　ここは、<k>
　
　………………何処だ？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020020a07">
「やっ」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020030a00">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm19", 0, 1000, true);

//◆ＥＶ：景明の上に乗っかってる茶々丸
	CreateTextureEX("ちゃちゃまる", 1000, @0, InBottom, "cg/ev/ev218_茶々丸と同衾する景明_a.jpg");
	Fade("ちゃちゃまる", 1000, 1000, null, true);

	Wait(1000);

	Move("ちゃちゃまる", 4000, @0, -120, null, true);

	Wait(1000);

	SetFwR("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020040a07">
「おはよ、お兄さん」

{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020050a00">
「お早うございます」

{	FwR("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020060a07">
「今日もいいお天気ですよ」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020070a00">
「そうですか。
　洗濯物が良く乾くでしょう」

{	FwR("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020080a07">
「いいこった」

{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020090a00">
「はい」

{	FwR("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020100a07">
「…………」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020110a00">
「…………」

{	FwR("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020120a07">
「朝もはよからじっと見詰め合う男と女」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020130a00">
「何処かで、お会いしたことがありましたで
しょうか」

{	FwR("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020140a07">
「ご記憶にない？」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020150a00">
「面目次第もなく」

{	FwR("cg/fw/fw茶々丸_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020160a07">
「寝床を共にするほどの仲なのに」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020170a00">
「でありますから、先程より脳味噌を沸騰さ
せる思いで思考を巡らせているのですが」

{	FwR("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020180a07">
「覚えてない」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020190a00">
「いえ。
　そこはかとなく――記憶に触れるものは」

{	FwR("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020200a07">
「あるかな？」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020210a00">
「……」

{	FwR("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020220a07">
「……」

{	FwR("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020230a07">
「朝もはよからちゅーでもしてしまいそうな
ほど見詰め合う男と女」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020240a00">
「誤解です。
　そもそもここは何処で、自分は何故ここに
いるのでしょうか」

{	FwR("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020250a07">
「それも覚えてない？」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020260a00">
「…………」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆フラッシュバック。護氏、銀星号、飢餓虚空
	EfRecoIn1(18000,300);

	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/ev/ev953_護氏装甲_a.jpg");

	EfRecoIn2(500);

	WaitKey(500);

	EfRecoIn1(18000,300);

	Delete("絵回想*");
	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg031_八幡宮境内_01.jpg");
	CreateTextureSP("絵回想200", 2100, 100, InBottom, "cg/st/3d銀星号_立ち_通常.png");

	EfRecoIn2(500);

	WaitKey(500);

	EfRecoIn1(18000,300);

	Delete("絵回想*");

//■CGこれだろうか inc櫻井
	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/ef/ef037_飢餓虚空魔王星b.jpg");

	EfRecoIn2(500);

	WaitKey(500);

	EfRecoOut1(500);

	Delete("絵回想*");
	Delete("絵板写");
	Move("ちゃちゃまる", 0, @0, -100, null, true);

	EfRecoOut2(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　――俺はあの黒い渦に巻き込まれ……
　
　いや。違う、か。

　そうなる直前で意識を失ったのだ。
　あれに呑み込まれて無事で済むとは思えない。今頃
は細胞一個すら残存していないだろう――<k>という事は
その前に、銀星号は術を解いたのか。

　それから……
　それから？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020270a00">
「……意識を失う前に何処で何をしていたか
は記憶しています」

{	FwR("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020280a07">
「けど、それがここにつながらない」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020290a00">
「はい」

{	FwR("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020300a07">
「そりゃ仕方ないかな」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020310a00">
「何故でしょう」

{	FwR("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020320a07">
「気絶して倒れてたお兄さんを、あてが勝手
にここまで連れてきたから」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020330a00">
「…………」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020340a00">
「つまり……
　貴方は<RUBY text="あそこ">八幡宮</RUBY>にいたのですか」

{	FwR("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸r】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020350a07">
「うん」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020360a00">
「……<RUBY text="・・・・・・・">あの時の八幡宮</RUBY>に？」

{	FwR("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020370a07">
「大変だったよー」

{	FwR("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020380a07">
「もうちょっとであの黒いのに巻き込まれる
とこだった……。
　怖いの怖くないのって……」

{	FwR("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020390a07">
「なんかあれ、風呂の栓を抜いた時にさ、水
と一緒に吸い込まれていく抜け毛の気持ちが
わかるよね」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020400a00">
「……………………………………確かに」

{	FwR("cg/fw/fw茶々丸_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020410a07">
「あれはトラウマもんだ」

{	FwR("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020420a07">
「上でお兄さん達が盛り上がってる最中、下
ではあても地味に大ピンチだったわけですよ。
　えーえー、誰も見ていないところで必死に
頑張りましたともさ！」

{	FwR("cg/fw/fw茶々丸_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020430a07">
「思い出したら悲しくなってきた。
　切ねぇ……」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020440a00">
「……御迷惑をお掛け致しました」

{	FwR("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020450a07">
「いえいえ。
　そのあとお兄さんと村正を抱えて、誰かに
見つからない内にすたこら退散してきたけど」

{	FwR("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020460a07">
「ま、それはそんなに苦労しなかった。
　その前の排水溝脱出ゲームに比べればねー」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020470a00">
「……」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆室内

	FadeDelete("ちゃちゃまる",1000,true);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　室内に視線を巡らせる。
　……いた。

　枕もとのすぐ近くに、赤い蜘蛛が<RUBY text="うずくま">蹲</RUBY>っている。
　身動きもせず。

　俺の意識にも反応を示さず。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020480a00">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　肝が氷結したのは、一瞬の間の事に過ぎなかった。

　仕手と劒冑の<RUBY text="リンク">結縁</RUBY>が教える。
　――休眠中だ。

　深い損傷を負ったため、再生以外の全機能を封じて
回復に努めているのだろう。
　それはそれで無論のこと由々しき事態だが、とりあ
えず最悪の状態ではない。

　俺はほっと息をついた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020490a07">
「……ふーん？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆茶々丸に戻り

	CreateTextureEX("ちゃちゃまる", 2000, @0, -120, "cg/ev/ev218_茶々丸と同衾する景明_a.jpg");
	Fade("ちゃちゃまる", 1000, 1000, null, true);

	SetFwR("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020500a07">
「劒冑のこと、心配なんだね」

{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020510a00">
「相棒ですから」

{	FwR("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020520a07">
「むぅ」

{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020530a00">
「何か？」

{	FwR("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020540a07">
「お兄さんのそういう言葉を聞くと、すこし
ばかりささくれ立つあての<RUBY text="ココロ">胸</RUBY>」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020550a00">
「……何故でしょう」

{	FwR("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020560a07">
「個人的な都合による感情であります。
　唐変木め」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020570a00">
「……？」

{	FwR("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020580a07">
「さーて。
　それでお兄さん。あてが何者でここが何処
だか、そろそろ見えてきたかな？」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020590a00">
「……」

//【景明】
<voice name="景明" class="景明" src="voice/md02/0020600a00">
「貴方は村正の<RUBY text="な">銘</RUBY>を口にした」

{	FwR("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020610a07">
「しましたね」

{	FwR("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020620a00">
「なら貴方は、自分に関わる人間か。
　さもなくば」

//【景明】
<voice name="景明" class="景明" src="voice/md02/0020630a00">
「銀星号に関わる人間という事になります。
　……乃至は、その両方に」

{	FwR("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020640a07">
「二領しか残ってないもんな。
　千子右衛門尉村正の真作は」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020650a00">
「……」

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020660a00">
「そして貴方は、あの時、八幡宮にいた」

{	FwR("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020670a07">
「はい」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020680a00">
「奉刀参拝の――
　部外者は立ち入りできない、重大な祭事の
最中であった八幡宮に」

{	FwR("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020690a07">
「そうですね」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020700a00">
「……以前から、訝しんでいた事があります。
　行方不明者として全国に手配が回っている
のに、なぜ<RUBY text="あれ">光</RUBY>の消息は全く知れないのか」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020710a00">
「二年もの間。
　これは、<RUBY text="あれ">光</RUBY>が誰か有力な人物に保護されて
いる証左なのではないか……と」

{	FwR("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020720a07">
「ごもっとも」

{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020730a00">
「……部屋の様相から類推するに……
　ここは相当の構えを誇る御屋敷の中」

{	FwR("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020740a07">
「それほどでも。
　あ、これ謙遜だからね。お兄さんの推測は
当たってますよ」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020750a00">
「…………」

{	FwR("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020760a07">
「<RUBY text="ぷりーず">どうぞ</RUBY>」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020770a00">
「貴方は、幕閣の方ですね」

{	FwR("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020780a07">
「堀越公方足利茶々丸。
　はじめまして、って言っておかないといけ
ないかな」

//◆語尾にハートマーク付く感じで
{	FwR("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020790a07">
「お兄さん」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020800a00">
「――――――――」

//◆ぐー。腹の虫。

{	OnSE("se擬音_コミカル_腹の虫01", 1000);
	FwR("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020810a07">
「……」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020820a00">
「…………」

{	FwR("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020830a07">
「おなか空いてる？」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020840a00">
「……その様子です」

{	FwR("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020850a07">
「じゃ、まずは朝飯にするかぁー」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,150);//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);
}

..//ジャンプ指定
//次ファイル　"md02_003.nss"