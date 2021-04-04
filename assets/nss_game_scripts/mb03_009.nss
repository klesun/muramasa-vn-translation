//<continuation number="160">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb03_009.nss_MAIN
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
	#bg001_空c_03=true;
	#bg033_署長宅景明私室_03b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb03_010.nss";

}

scene mb03_009.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb03_008.nss"

//◆夜空
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg001_空c_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　父親の命を奪ったのだと、一条は言った。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆部屋。暗
	SoundPlay("@mbgm33",0,1000,true);
	OnBG(100,"bg033_署長宅景明私室_03b.jpg");
	FadeBG(1000,true);

	SetFwC("cg/fw/fw一条_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0090010a02">
「父様は……
　あたしが一番尊敬していた人で」


//【一条】
<voice name="一条" class="一条" src="voice/mb03/0090020a02">
「あたしが一番最初に……死なせた人でした」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0090030a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　寝物語に、一条はそんな事を話した。
　返す言葉は見つからない。

　綾弥父娘に何があったのか。
　ある程度は想像がつくようであり――また、まるで
遠いようでもある。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0090040a00">
「それは……何故……」


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0090050a02">
「……何故でしょうね」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　はぐらかしている、ようには聴こえない響きだった。
　一条は本当にその答えを持っていない。そして答え
を求めてもいない。表情を見ればそうと知れる。

　おそらく、一条はまだその過去を直視できていない
のだろう。
　振り返れば疑問の答えはそこにある。そうと知って
いる。<RUBY text="・・・">だから</RUBY>、振り返ることができない。

　それはきっと、癒えぬ傷跡へ爪を立てることなのだ。
　
　傷の一端を俺に覗かせたのは、……先刻の<RUBY text="・・">あれ</RUBY>が何
がしかの<RUBY text="プラス">正</RUBY>作用を一条に及ぼしたから、で、あろうか。

　興味本位の追及は無益だ。
　それに、今の話だけでもわかる事がある。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0090060a02">
「湊斗さんも……同じだって、聞きました。
　呪いで……お母さんを……」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0090070a00">
「署長か……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　そう。
　この少女は、俺と同じ。

　誰より敬愛した親を殺し、
　それで――引き返せなくなった。

　親殺しの罪で人生を呪った。

　……今ならわかる。
　この少女の精神的<RUBY text="きけい">畸形</RUBY>。〝正義〟への執着が、何処
から来ているのか。

　その道が父の血をもって開闢したものであるなら、
否定も後戻りもできよう筈がない。
　それはあまりにも重く尊い犠牲を、無価値にしてし
まうのだから。

　俺と同じ。

　運命という言葉は逃避めいていて好まない。
　だが俺と一条の出会いは、まさにそれなのかもしれ
なかった。

　父殺しと母殺しの邂逅。

　……それが真実、運命とやらであるなら。
　最後は何処へ流転するのだろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0090080a02">
「湊斗さん……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0090090a00">
「ああ」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0090100a02">
「あたしは……戦います。
　戦い続けます。これからも」


//【一条】
<voice name="一条" class="一条" src="voice/mb03/0090110a02">
「もう……自分のしたことに怯えたりはしま
せん。
　泣きません。震えもしません」


//【一条】
<voice name="一条" class="一条" src="voice/mb03/0090120a02">
「……湊斗さんがそばにいてくれるなら」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0090130a00">
「…………」


{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0090140a02">
「悪を……
　人を食い物にするような奴らを……」


//【一条】
<voice name="一条" class="一条" src="voice/mb03/0090150a02">
「憎んで。
　戦って。
　……殺して」


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0090160a02">
「それで……いいんですよね……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　一条の声は次第に小さく、やがてかすれて。
　最後は寝息の中に溶けて消えた。

　――<RUBY text="・・">それ</RUBY>でいいのか。

　溶けた問いかけを反芻する。
　脳漿の中で噛み砕き、慎重に吟味する。

　それでいいのか。
　
　……いいのか？

　悪を憎み。
　正義を掲げてそれを罰する。

　それは――間違ってはいない筈だ。
　正しい――筈だ。

　正義。
　他ならぬこの少女が語るなら信じられる。

　彼女は善悪の判断において全く無私だ。
　厳正極まる裁きを下す。空恐ろしい程に。

　遊佐童心の殺害とて。
　不都合があるとすればそれはただ政略的にであって、
理非を問うなら一条の正しさは明らかだ。

　そう思う。
　
　だが。

　本当に。
　<RUBY text="・・・・・・・">それでいいのか</RUBY>？

　……答えは出ない。
　いくら考えても、俺はその答えを出せなかった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb03_010.nss"